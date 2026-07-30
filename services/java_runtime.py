import os
import shutil
import subprocess

def find_java():
    candidates = []
    java_home = os.environ.get("JAVA_HOME")
    if java_home:
        candidates.append(os.path.join(java_home, "bin", "java"))
    candidates.extend(
        [
            "/opt/homebrew/opt/openjdk@17/bin/java",
            "/opt/homebrew/opt/openjdk/bin/java",
            "/usr/local/opt/openjdk@17/bin/java",
            "/usr/local/opt/openjdk/bin/java",
        ]
    )
    which_java = shutil.which("java")
    if which_java:
        candidates.append(which_java)

    for path in candidates:
        if not path or not os.path.isfile(path):
            continue
        try:
            result = subprocess.run(
                [path, "-version"],
                capture_output=True,
                text=True,
                timeout=10,
            )
            if result.returncode == 0:
                return path
        except (OSError, subprocess.TimeoutExpired):
            continue
    return None

JAVA_BIN = find_java()

def java_home():
    home = os.environ.get("JAVA_HOME")
    if home:
        return home
    if JAVA_BIN:
        return os.path.dirname(os.path.dirname(JAVA_BIN))
    return None

def java_env():
    env = os.environ.copy()
    home = java_home()
    if home:
        env["JAVA_HOME"] = home
        env["PATH"] = os.path.join(home, "bin") + os.pathsep + env.get("PATH", "")
    return env

def keytool_bin():
    home = java_home()
    if home:
        candidate = os.path.join(home, "bin", "keytool")
        if os.path.isfile(candidate):
            return candidate
    return shutil.which("keytool")
