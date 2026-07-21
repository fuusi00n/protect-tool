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

const ALLOWED_ICON_RE = /\.(png|jpe?g|webp|gif|bmp|ico)$/i;

function validateIconFile(file) {
    if (!file) return null;
    if (!ALLOWED_ICON_RE.test(file.name)) {
        return "Icone invalido. Use PNG, JPG, WEBP, GIF, BMP ou ICO.";
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
        icon: null,
        iconError: "",
        busy: false,
        status: "",
        progress: 0,
        downloadUrl: "",
        buildId: "",
        pollTimer: null,
        onApk(e) { this.apk = e.target.files[0]; },
        onIcon(e) {
            const input = e.target;
            const file = input.files[0];
            this.iconError = "";
            if (!file) {
                this.icon = null;
                return;
            }
            const err = validateIconFile(file);
            if (err) {
                this.iconError = err;
                this.icon = null;
                input.value = "";
                return;
            }
            this.icon = file;
        },
        async submit() {
            if (!this.apk) return;
            if (this.icon) {
                const err = validateIconFile(this.icon);
                if (err) {
                    this.iconError = err;
                    return;
                }
            }
            this.busy = true;
            this.downloadUrl = "";
            this.status = "";
            this.progress = 0;
            const fd = new FormData();
            fd.append("file", this.apk);
            fd.append("app_name", this.appName || "App");
            if (this.icon) fd.append("icon", this.icon);
            const res = await katanaApi("/katana/admin/api/build", { method: "POST", body: fd });
            if (!res) return;
            const data = await res.json();
            if (data.error) { this.status = data.error; this.busy = false; return; }
            this.buildId = data.build_id;
            this.pollTimer = setInterval(() => this.poll(), 2000);
        },
        async poll() {
            const res = await katanaApi(`/katana/admin/api/build/${this.buildId}/status`);
            if (!res) return;
            const data = await res.json();
            this.status = data.status;
            this.progress = data.progress || 0;
            if (data.progress === 100) {
                clearInterval(this.pollTimer);
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

function katanaApps() {
    return {
        apps: [],
        async load() {
            const res = await katanaApi("/katana/admin/api/apps");
            if (!res) return;
            this.apps = await res.json();
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
    Alpine.data("katanaApps", katanaApps);
});
