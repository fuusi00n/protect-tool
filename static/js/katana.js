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

function katanaProfile() {
    return {
        username: "",
        role: "owner",
        get roleLabel() {
            return this.role === "owner" ? "Admin" : (this.role || "Admin");
        },
        async init() {
            const res = await katanaApi("/katana/admin/api/session");
            if (!res) return;
            const data = await res.json();
            this.username = data.username || "";
            this.role = data.role || "owner";
        },
    };
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
            const shouldReload = this.buildPhase === "done" || this.buildPhase === "error";
            this.buildModalOpen = false;
            this.buildPhase = "";
            this.stopSubmitAnimation();
            if (this.pollTimer) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
            }
            this.busy = false;
            if (shouldReload) {
                window.location.reload();
            }
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
            fd.append("app_name", (this.appName || "App").trim().slice(0, 20) || "App");
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
        loading: true,
        userSearch: "",
        page: 1,
        pageSize: 10,
        form: { username: "", password: "", license_days: 30, daily_build_limit: 3, store: false, playstore: false },
        passwordVisible: false,
        createModalOpen: false,
        createPhase: "",
        createBusy: false,
        createError: "",
        createdUsername: "",
        createdPassword: "",
        createdExpires: "",
        copiedCreateMessage: false,
        blankCreateForm() {
            return { username: "", password: "", license_days: 30, daily_build_limit: 3, store: false, playstore: false };
        },
        get createdUserMessage() {
            return this.buildCreatedUserMessage();
        },
        extendModalOpen: false,
        extendPhase: "form",
        extendTarget: null,
        extendDays: 7,
        extendCustomDays: "",
        extendBusy: false,
        extendError: "",
        extendSuccessMessage: "",
        extendSuccessExpires: "",
        limitModalOpen: false,
        limitPhase: "form",
        limitTarget: null,
        limitDelta: 2,
        limitCustomDelta: "",
        limitBusy: false,
        limitError: "",
        limitSuccessMessage: "",
        limitSuccessValue: "",
        buildsModalOpen: false,
        buildsTarget: null,
        buildsList: [],
        buildsLoading: false,
        buildsError: "",
        get filteredUsers() {
            const query = (this.userSearch || "").trim().toLowerCase();
            if (!query) return this.users;
            return this.users.filter((user) =>
                (user.username || "").toLowerCase().includes(query),
            );
        },
        get totalPages() {
            return Math.max(1, Math.ceil(this.filteredUsers.length / this.pageSize));
        },
        get paginatedUsers() {
            const start = (this.page - 1) * this.pageSize;
            return this.filteredUsers.slice(start, start + this.pageSize);
        },
        get pageFrom() {
            if (!this.filteredUsers.length) return 0;
            return (this.page - 1) * this.pageSize + 1;
        },
        get pageTo() {
            return Math.min(this.page * this.pageSize, this.filteredUsers.length);
        },
        formatLicenseDate(value) {
            if (!value) return "—";
            const normalized = String(value).trim().replace(" ", "T");
            const date = new Date(normalized);
            if (Number.isNaN(date.getTime())) return "—";
            return date.toLocaleString("pt-BR", {
                day: "2-digit",
                month: "2-digit",
                year: "numeric",
                hour: "2-digit",
                minute: "2-digit",
            });
        },
        isLicenseExpired(value) {
            if (!value) return false;
            const date = new Date(value);
            return !Number.isNaN(date.getTime()) && date.getTime() < Date.now();
        },
        licenseDaysRemaining(value) {
            if (!value) return null;
            const date = new Date(String(value).trim().replace(" ", "T"));
            if (Number.isNaN(date.getTime())) return null;
            const ms = date.getTime() - Date.now();
            return Math.ceil(ms / 86400000);
        },
        formatLicenseDaysRemaining(value) {
            const days = this.licenseDaysRemaining(value);
            if (days === null) return "—";
            if (days < 0) return "expirado";
            if (days === 0) return "hoje";
            return String(days);
        },
        isLicenseExpiringSoon(value) {
            const days = this.licenseDaysRemaining(value);
            return days !== null && days >= 0 && days <= 7;
        },
        async load() {
            this.loading = true;
            try {
                const res = await katanaApi("/katana/admin/api/users");
                if (!res) return;
                this.users = await res.json();
                this.clampUserPage();
            } finally {
                this.loading = false;
            }
        },
        clampUserPage() {
            if (this.page > this.totalPages) this.page = this.totalPages;
            if (this.page < 1) this.page = 1;
        },
        resetUserPage() {
            this.page = 1;
        },
        generateOperatorPassword() {
            const length = 16;
            const lower = "abcdefghjkmnpqrstuvwxyz";
            const upper = "ABCDEFGHJKMNPQRSTUVWXYZ";
            const digits = "23456789";
            const symbols = "-@#$%&*!?";
            const all = lower + upper + digits + symbols;
            const randomIndex = (max) => {
                const values = new Uint32Array(1);
                window.crypto.getRandomValues(values);
                return values[0] % max;
            };
            const pick = (chars) => chars[randomIndex(chars.length)];
            const chars = [pick(lower), pick(upper), pick(digits), pick(symbols)];
            while (chars.length < length) {
                chars.push(pick(all));
            }
            for (let i = chars.length - 1; i > 0; i -= 1) {
                const j = randomIndex(i + 1);
                [chars[i], chars[j]] = [chars[j], chars[i]];
            }
            this.form.password = chars.join("");
            this.passwordVisible = true;
        },
        prevPage() {
            if (this.page > 1) this.page -= 1;
        },
        nextPage() {
            if (this.page < this.totalPages) this.page += 1;
        },
        openCreateForm() {
            if (this.createBusy) return;
            this.form = this.blankCreateForm();
            this.passwordVisible = false;
            this.createError = "";
            this.createdUsername = "";
            this.createdPassword = "";
            this.createdExpires = "";
            this.copiedCreateMessage = false;
            this.createPhase = "form";
            this.createModalOpen = true;
        },
        openCreateModal() {
            this.createModalOpen = true;
            this.createPhase = "loading";
            this.createError = "";
            this.createdUsername = "";
            this.createdPassword = "";
            this.createdExpires = "";
            this.copiedCreateMessage = false;
        },
        closeCreateModal() {
            if (this.createBusy) return;
            this.createModalOpen = false;
            this.createPhase = "";
            this.createError = "";
            this.createdUsername = "";
            this.createdPassword = "";
            this.createdExpires = "";
            this.copiedCreateMessage = false;
            this.form = this.blankCreateForm();
            this.passwordVisible = false;
        },
        buildCreatedUserMessage() {
            if (!this.createdUsername) return "";
            const loginUrl = "https://hubdeapps.cloud/subscriber/login";
            const expires = this.formatLicenseDate(this.createdExpires);
            return [
                "🎉🥳 **CONTA CRIADA COM SUCESSO!** 🎉🥳",
                "",
                "Olá! Seu acesso ao painel foi liberado.",
                "",
                "🔗 **Link de acesso:**",
                loginUrl,
                "",
                `👤 **Usuário:** ${this.createdUsername}`,
                `🔑 **Senha:** ${this.createdPassword}`,
                "",
                "📅 **Licença válida até:**",
                expires,
                "",
                "🚀 **Aproveite seu uso!**",
                "Qualquer dúvida, estamos à disposição.",
            ].join("\n");
        },
        async copyCreatedMessage() {
            const text = this.buildCreatedUserMessage();
            if (!text) return;
            try {
                await navigator.clipboard.writeText(text);
                this.copiedCreateMessage = true;
                window.setTimeout(() => {
                    this.copiedCreateMessage = false;
                }, 2500);
            } catch (_) {}
        },
        async createUser() {
            const username = (this.form.username || "").trim();
            const password = this.form.password || "";
            if (!username || !password) {
                this.createError = "Preencha usuário e senha.";
                this.createModalOpen = true;
                this.createPhase = "form";
                return;
            }
            this.createError = "";
            this.createBusy = true;
            this.createModalOpen = true;
            this.createPhase = "loading";
            try {
                const res = await katanaApi("/katana/admin/api/users", {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({
                        username,
                        password,
                        license_days: this.form.license_days,
                        daily_build_limit: this.form.daily_build_limit,
                        store: !!this.form.store,
                        playstore: !!this.form.playstore,
                    }),
                });
                if (!res) {
                    this.createPhase = "error";
                    this.createError = "Sessão expirada.";
                    return;
                }
                const data = await res.json();
                if (!res.ok || !data.success) {
                    this.createPhase = "error";
                    this.createError = data.message || "Não foi possível criar o operador.";
                    return;
                }
                this.createdUsername = username;
                this.createdPassword = password;
                const licenseDays = Number(this.form.license_days) || 30;
                this.form = this.blankCreateForm();
                this.passwordVisible = false;
                await this.load();
                const created = this.users.find((user) => user.username === username);
                this.createdExpires =
                    data.user?.license_expires_at ||
                    created?.license_expires_at ||
                    "";
                if (!this.createdExpires && licenseDays > 0) {
                    const expires = new Date();
                    expires.setDate(expires.getDate() + licenseDays);
                    this.createdExpires = expires.toISOString();
                }
                this.createPhase = "done";
            } catch (_) {
                this.createPhase = "error";
                this.createError = "Erro de conexão ao criar o operador.";
            } finally {
                this.createBusy = false;
            }
        },
        openLimitModal(user) {
            this.limitTarget = user;
            this.limitPhase = "form";
            this.limitDelta = 2;
            this.limitCustomDelta = "";
            this.limitError = "";
            this.limitSuccessMessage = "";
            this.limitSuccessValue = "";
            this.limitBusy = false;
            this.limitModalOpen = true;
        },
        closeLimitModal() {
            if (this.limitBusy) return;
            this.limitModalOpen = false;
            this.limitPhase = "form";
            this.limitTarget = null;
            this.limitDelta = 2;
            this.limitCustomDelta = "";
            this.limitError = "";
            this.limitSuccessMessage = "";
            this.limitSuccessValue = "";
        },
        selectLimitPreset(delta) {
            this.limitDelta = delta;
            this.limitCustomDelta = "";
            this.limitError = "";
        },
        resolveLimitDelta() {
            const preset = Number(this.limitDelta);
            if (Number.isFinite(preset) && preset !== 0) {
                return preset;
            }
            const custom = Number(this.limitCustomDelta);
            if (Number.isFinite(custom) && custom !== 0) {
                return custom;
            }
            return null;
        },
        async applyLimitAdjust() {
            const delta = this.resolveLimitDelta();
            if (!delta) {
                this.limitError = "Informe um ajuste válido.";
                return;
            }
            if (!this.limitTarget?.username) return;

            this.limitBusy = true;
            this.limitError = "";
            try {
                const res = await katanaApi(
                    `/katana/admin/api/users/${encodeURIComponent(this.limitTarget.username)}/adjust-limit`,
                    {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify({ delta }),
                    },
                );
                if (!res) {
                    this.limitError = "Sessão expirada.";
                    return;
                }
                const data = await res.json();
                if (!res.ok || !data.success) {
                    this.limitError = data.message || "Não foi possível ajustar o limite.";
                    return;
                }
                this.limitSuccessMessage = data.message;
                this.limitSuccessValue = data.daily_build_limit ?? "—";
                this.limitPhase = "success";
                await this.load();
            } catch (_) {
                this.limitError = "Erro de conexão ao ajustar o limite.";
            } finally {
                this.limitBusy = false;
            }
        },
        openExtendModal(user) {
            this.extendTarget = user;
            this.extendPhase = "form";
            this.extendDays = 7;
            this.extendCustomDays = "";
            this.extendError = "";
            this.extendSuccessMessage = "";
            this.extendSuccessExpires = "";
            this.extendBusy = false;
            this.extendModalOpen = true;
        },
        openBuildsModal(user) {
            this.buildsTarget = user;
            this.buildsList = [];
            this.buildsError = "";
            this.buildsModalOpen = true;
            this.loadUserBuilds();
        },
        closeBuildsModal() {
            this.buildsModalOpen = false;
            this.buildsTarget = null;
            this.buildsList = [];
            this.buildsError = "";
            this.buildsLoading = false;
        },
        async loadUserBuilds() {
            if (!this.buildsTarget?.username) return;
            this.buildsLoading = true;
            this.buildsError = "";
            try {
                const res = await katanaApi(
                    `/katana/admin/api/users/${encodeURIComponent(this.buildsTarget.username)}/builds`,
                );
                if (!res) {
                    this.buildsError = "Sessão expirada.";
                    return;
                }
                let data = {};
                try {
                    data = await res.json();
                } catch (_) {
                    this.buildsError = res.status === 404
                        ? "Endpoint não encontrado. Reinicie o servidor Flask."
                        : "Resposta inválida do servidor.";
                    return;
                }
                if (!res.ok || !data.success) {
                    this.buildsError = data.message || "Não foi possível carregar os builds.";
                    return;
                }
                this.buildsList = data.items || [];
            } catch (_) {
                this.buildsError = "Erro de conexão ao carregar builds.";
            } finally {
                this.buildsLoading = false;
            }
        },
        closeExtendModal() {
            if (this.extendBusy) return;
            this.extendModalOpen = false;
            this.extendPhase = "form";
            this.extendTarget = null;
            this.extendDays = 7;
            this.extendCustomDays = "";
            this.extendError = "";
            this.extendSuccessMessage = "";
            this.extendSuccessExpires = "";
        },
        selectExtendPreset(days) {
            this.extendDays = days;
            this.extendCustomDays = "";
            this.extendError = "";
        },
        resolveExtendDays() {
            const preset = Number(this.extendDays);
            if (Number.isFinite(preset) && preset !== 0) {
                return preset;
            }
            const custom = Number(this.extendCustomDays);
            if (Number.isFinite(custom) && custom !== 0) {
                return custom;
            }
            return null;
        },
        async applyExtendDays() {
            const days = this.resolveExtendDays();
            if (!days) {
                this.extendError = "Informe um número válido de dias.";
                return;
            }
            if (!this.extendTarget?.username) return;

            this.extendBusy = true;
            this.extendError = "";
            try {
                const res = await katanaApi(
                    `/katana/admin/api/users/${encodeURIComponent(this.extendTarget.username)}/extend-license`,
                    {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify({ days }),
                    },
                );
                if (!res) {
                    this.extendError = "Sessão expirada.";
                    return;
                }
                const data = await res.json();
                if (!res.ok || !data.success) {
                    this.extendError = data.message || "Não foi possível ajustar a licença.";
                    return;
                }
                this.extendSuccessMessage = data.message;
                this.extendSuccessExpires = data.license_expires_at || "";
                this.extendPhase = "success";
                await this.load();
            } catch (_) {
                this.extendError = "Erro de conexão ao estender a licença.";
            } finally {
                this.extendBusy = false;
            }
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
        actions: [],
        actionFilter: "",
        page: 1,
        pageSize: 10,
        total: 0,
        totalPages: 1,
        get pageFrom() {
            if (!this.total) return 0;
            return (this.page - 1) * this.pageSize + 1;
        },
        get actionFilterOptions() {
            return ["", ...this.actions];
        },
        get actionFilterLabel() {
            return this.actionFilter || "Todas";
        },
        async init() {
            await Promise.all([this.loadActions(), this.load()]);
        },
        async loadActions() {
            const res = await katanaApi("/katana/admin/api/logs/actions");
            if (!res) return;
            this.actions = await res.json();
        },
        async load(page = this.page) {
            const params = new URLSearchParams({ page: String(page) });
            if (this.actionFilter) {
                params.set("action", this.actionFilter);
            }
            const res = await katanaApi(`/katana/admin/api/logs?${params}`);
            if (!res) return;
            const data = await res.json();
            this.logs = data.items || [];
            this.page = data.page || 1;
            this.pageSize = data.page_size || 10;
            this.total = data.total || 0;
            this.totalPages = data.total_pages || 1;
        },
        cycleActionFilter() {
            const options = this.actionFilterOptions;
            if (!options.length) return;
            const currentIndex = options.indexOf(this.actionFilter);
            const nextIndex = currentIndex === -1 ? 0 : (currentIndex + 1) % options.length;
            this.actionFilter = options[nextIndex];
            this.load(1);
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

function katanaBillingList(endpoint) {
    return {
        items: [],
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
            const params = new URLSearchParams({ page: String(page) });
            const res = await katanaApi(`${endpoint}?${params}`);
            if (!res) return;
            const data = await res.json();
            this.items = data.items || [];
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

function katanaInvoices() {
    return katanaBillingList("/katana/admin/api/invoices");
}

function katanaPayments() {
    return katanaBillingList("/katana/admin/api/payments");
}

document.addEventListener("alpine:init", () => {
    Alpine.data("katanaLogin", katanaLogin);
    Alpine.data("katanaDashboard", katanaDashboard);
    Alpine.data("katanaMake", katanaMake);
    Alpine.data("katanaUsers", katanaUsers);
    Alpine.data("katanaLogs", katanaLogs);
    Alpine.data("katanaInvoices", katanaInvoices);
    Alpine.data("katanaPayments", katanaPayments);
    Alpine.data("katanaProfile", katanaProfile);
});
