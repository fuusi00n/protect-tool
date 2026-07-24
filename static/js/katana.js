async function katanaApi(url, options = {}) {
    const res = await fetch(url, {
        headers: { Accept: "application/json", ...(options.headers || {}) },
        ...options,
    });
    if (res.status === 401) {
        window.location.href = "/katana/admin/login";
        return null;
    }
    return res;
}

const ALLOWED_ICON_RE = /\.png$/i;
const ALLOWED_APK_RE = /\.apk$/i;
const MAX_APK_BYTES = 20 * 1024 * 1024;
const PNG_SIGNATURE = [0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a];

function validateIconFile(file) {
    if (!file) return "Icone obrigatorio. Envie um PNG.";
    if (!ALLOWED_ICON_RE.test(file.name)) {
        return "Icone invalido. Use apenas PNG.";
    }
    const mime = (file.type || "").toLowerCase();
    if (mime && mime !== "image/png") {
        return "Icone invalido. Use apenas PNG.";
    }
    return null;
}

async function validateIconFileDeep(file) {
    const basic = validateIconFile(file);
    if (basic) return basic;
    try {
        const header = new Uint8Array(await file.slice(0, 8).arrayBuffer());
        const isPng = PNG_SIGNATURE.every((byte, index) => header[index] === byte);
        if (!isPng) return "Arquivo de icone nao e um PNG valido.";
    } catch (_) {
        return "Arquivo de icone nao e um PNG valido.";
    }
    return null;
}

function validateApkFile(file) {
    if (!file) return "Arquivo APK obrigatorio.";
    if (!ALLOWED_APK_RE.test(file.name)) {
        return "Arquivo invalido. Envie apenas .apk.";
    }
    if (file.size > MAX_APK_BYTES) {
        return "APK excede o limite de 20 MB.";
    }
    return null;
}

function katanaLogin() {
    return {
        username: "",
        password: "",
        message: "",
        async login() {
            const res = await fetch("/katana/admin/login", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ username: this.username, password: this.password }),
            });
            const data = await res.json();
            if (data.success) window.location.href = data.redirect;
            else this.message = data.message || "Erro";
        },
    };
}

function katanaDashboard() {
    return {
        metrics: {},
        get successRate() {
            const ok = Number(this.metrics.completed_builds ?? 0);
            const fail = Number(this.metrics.failed_builds ?? 0);
            const total = ok + fail;
            if (!total) return 0;
            return Math.round((ok / total) * 100);
        },
        get healthLabel() {
            return this.metrics.server_health === "ok" ? "Servidor online" : "Servidor degradado";
        },
        async load() {
            const res = await katanaApi("/katana/admin/api/dashboard/metrics");
            if (!res) return;
            this.metrics = await res.json();
        },
        async logout() {
            await fetch("/katana/admin/logout", { method: "POST" });
            window.location.href = "/katana/admin/login";
        },
    };
}

function katanaMake() {
    return {
        appName: "",
        apk: null,
        apkError: "",
        icon: null,
        iconPreview: "",
        iconError: "",
        busy: false,
        status: "",
        progress: 0,
        buildId: "",
        downloadUrl: "",
        pollTimer: null,
        buildModalOpen: false,
        buildPhase: "",
        submitStep: 0,
        submitTimer: null,
        submitSteps: ["Validando arquivos", "Enviando para análise", "Preparando pipeline"],
        get buildTag() {
            if (this.buildPhase === "submitting") return "UPLOAD";
            if (this.buildPhase === "building") return "COMPILANDO";
            if (this.buildPhase === "done") return "CONCLUÍDO";
            if (this.buildPhase === "error") return "ERRO";
            return "";
        },
        get buildTitle() {
            if (this.buildPhase === "submitting") return "Enviando app para análise";
            if (this.buildPhase === "building") return "Gerando APK";
            if (this.buildPhase === "done") return "Build finalizado";
            if (this.buildPhase === "error") return "Algo deu errado";
            return "";
        },
        clearIconPreview() {
            if (this.iconPreview) {
                URL.revokeObjectURL(this.iconPreview);
                this.iconPreview = "";
            }
        },
        onApk(e) {
            const input = e.target;
            const file = input.files[0] || null;
            this.apkError = "";
            if (!file) {
                this.apk = null;
                return;
            }
            const err = validateApkFile(file);
            if (err) {
                this.apkError = err;
                this.apk = null;
                input.value = "";
                return;
            }
            this.apk = file;
        },
        async onIcon(e) {
            const input = e.target;
            const file = input.files[0];
            this.iconError = "";
            this.clearIconPreview();
            if (!file) {
                this.icon = null;
                return;
            }
            const err = await validateIconFileDeep(file);
            if (err) {
                this.iconError = err;
                this.icon = null;
                input.value = "";
                return;
            }
            this.icon = file;
            this.iconPreview = URL.createObjectURL(file);
        },
        startSubmitAnimation() {
            this.submitStep = 0;
            if (this.submitTimer) window.clearInterval(this.submitTimer);
            this.submitTimer = window.setInterval(() => {
                if (this.submitStep < this.submitSteps.length - 1) {
                    this.submitStep += 1;
                }
            }, 1000);
        },
        stopSubmitAnimation() {
            if (this.submitTimer) {
                window.clearInterval(this.submitTimer);
                this.submitTimer = null;
            }
        },
        openBuildModal() {
            this.buildModalOpen = true;
            this.buildPhase = "submitting";
            this.status = "";
            this.progress = 0;
            this.downloadUrl = "";
        },
        closeBuildModal() {
            this.buildModalOpen = false;
            this.buildPhase = "";
            this.stopSubmitAnimation();
            if (this.pollTimer) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
            }
            this.busy = false;
        },
        async submit() {
            if (this.busy) return;
            const apkErr = validateApkFile(this.apk);
            if (apkErr) {
                this.apkError = apkErr;
                return;
            }
            const iconErr = await validateIconFileDeep(this.icon);
            if (iconErr) {
                this.iconError = iconErr;
                return;
            }
            this.busy = true;
            this.openBuildModal();
            this.startSubmitAnimation();

            const fd = new FormData();
            fd.append("file", this.apk);
            fd.append("app_name", this.appName || "App");
            fd.append("icon", this.icon);

            let res;
            try {
                const submitPromise = katanaApi("/katana/admin/api/build", { method: "POST", body: fd });
                await Promise.all([submitPromise, new Promise((resolve) => window.setTimeout(resolve, 3000))]);
                res = await submitPromise;
            } catch (_) {
                this.stopSubmitAnimation();
                this.buildPhase = "error";
                this.status = "Falha ao enviar os arquivos. Tente novamente.";
                this.busy = false;
                return;
            }
            this.stopSubmitAnimation();
            if (!res) {
                this.buildPhase = "error";
                this.status = "Sessão expirada ou conexão interrompida.";
                this.busy = false;
                return;
            }
            const data = await res.json();
            if (data.error) {
                this.buildPhase = "error";
                this.status = data.message || data.error;
                this.busy = false;
                return;
            }

            this.buildId = data.build_id;
            this.buildPhase = "building";
            this.pollTimer = window.setInterval(() => this.poll(), 2000);
            this.poll();
        },
        async poll() {
            let res;
            try {
                res = await fetch(`/katana/admin/api/build/${this.buildId}/status`, {
                    headers: { Accept: "application/json" },
                });
            } catch (_) {
                return;
            }
            if (res.status === 401) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
                this.buildPhase = "error";
                this.status = "Build não encontrado ou sessão expirada. Tente gerar novamente.";
                this.busy = false;
                return;
            }
            if (!res.ok) return;
            const data = await res.json();
            if (data.error) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
                this.buildPhase = "error";
                this.status = data.error;
                this.busy = false;
                return;
            }
            this.status = data.status;
            this.progress = data.progress || 0;

            if (/erro/i.test(data.status || "")) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
                this.buildPhase = "error";
                this.busy = false;
                return;
            }
            if (data.progress === 100) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
                this.buildPhase = "done";
                this.downloadUrl = `/katana/admin/api/build/${this.buildId}/download`;
                this.busy = false;
            }
        },
        async logout() {
            await fetch("/katana/admin/logout", { method: "POST" });
            window.location.href = "/katana/admin/login";
        },
    };
}

function katanaUsers() {
    return {
        users: [],
        message: "",
        form: { username: "", password: "", license_days: 30, daily_build_limit: 3 },
        async load() {
            const res = await katanaApi("/katana/admin/api/users");
            if (!res) return;
            this.users = await res.json();
        },
        async createUser() {
            const res = await katanaApi("/katana/admin/api/users", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify(this.form),
            });
            const data = await res.json();
            this.message = data.message;
            if (data.success) this.load();
        },
        async saveLimit(user) {
            const res = await katanaApi(`/katana/admin/api/users/${user.username}`, {
                method: "PATCH",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ daily_build_limit: Number(user.daily_build_limit) }),
            });
            const data = await res.json();
            this.message = data.message;
        },
        async toggle(username) {
            await katanaApi(`/katana/admin/api/users/${username}/toggle`, { method: "POST" });
            this.load();
        },
        async remove(username) {
            await katanaApi(`/katana/admin/api/users/${username}`, { method: "DELETE" });
            this.load();
        },
        async logout() {
            await fetch("/katana/admin/logout", { method: "POST" });
            window.location.href = "/katana/admin/login";
        },
    };
}

function katanaLogs() {
    return {
        logs: [],
        page: 1,
        pageSize: 10,
        total: 0,
        totalPages: 1,
        get pageFrom() {
            if (!this.total) return 0;
            return (this.page - 1) * this.pageSize + 1;
        },
        get pageTo() {
            return Math.min(this.page * this.pageSize, this.total);
        },
        async load(page = this.page) {
            const res = await katanaApi(`/katana/admin/api/logs?page=${page}`);
            if (!res) return;
            const data = await res.json();
            this.logs = data.items || [];
            this.page = data.page || 1;
            this.pageSize = data.page_size || 10;
            this.total = data.total || 0;
            this.totalPages = data.total_pages || 1;
        },
        prevPage() {
            if (this.page <= 1) return;
            this.load(this.page - 1);
        },
        nextPage() {
            if (this.page >= this.totalPages) return;
            this.load(this.page + 1);
        },
        async logout() {
            await fetch("/katana/admin/logout", { method: "POST" });
            window.location.href = "/katana/admin/login";
        },
    };
}

document.addEventListener("alpine:init", () => {
    Alpine.data("katanaLogin", katanaLogin);
    Alpine.data("katanaDashboard", katanaDashboard);
    Alpine.data("katanaMake", katanaMake);
    Alpine.data("katanaUsers", katanaUsers);
    Alpine.data("katanaLogs", katanaLogs);
});
