function normalizePublicLink(raw) {
    if (!raw) return "";
    let url = String(raw).trim();
    if (url.startsWith("//")) {
        return `https:${url}`;
    }
    if (!/^https?:\/\//i.test(url)) {
        const path = url.startsWith("/") ? url : `/${url}`;
        url = `https://${window.location.host}${path}`;
    }
    return url.replace(/^http:\/\//i, "https://");
}

async function api(url, options = {}) {
    const res = await fetch(url, {
        headers: { Accept: "application/json", ...(options.headers || {}) },
        ...options,
    });
    if (res.status === 401) {
        window.location.href = "/subscriber/login";
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

function formatPlanRemaining(isoDate) {
    if (!isoDate) return "Sem expiração definida";
    const end = new Date(isoDate);
    const ms = end.getTime() - Date.now();
    if (ms <= 0) return "Plano expirado";
    const days = Math.floor(ms / 86400000);
    const hours = Math.floor((ms % 86400000) / 3600000);
    const mins = Math.floor((ms % 3600000) / 60000);
    if (days > 0) return `${days}d ${hours}h`;
    if (hours > 0) return `${hours}h ${mins}m`;
    return `${mins}m`;
}

function subscriberProfile() {
    return {
        username: "",
        licenseExpiresAt: null,
        remainingLabel: "—",
        _timer: null,
        async load() {
            const res = await api("/subscriber/api/session");
            if (!res) return;
            const data = await res.json();
            this.username = data.username || "";
            this.licenseExpiresAt = data.license_expires_at;
            this.updateRemaining();
        },
        updateRemaining() {
            this.remainingLabel = formatPlanRemaining(this.licenseExpiresAt);
        },
        init() {
            this.load();
            this._timer = setInterval(() => this.updateRemaining(), 60000);
        },
    };
}

function subscriberLogin() {
    return {
        username: "",
        password: "",
        message: "",
        async login() {
            const res = await fetch("/subscriber/login", {
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

function subscriberDashboard() {
    return {
        metrics: {},
        get quotaPercent() {
            const used = Number(this.metrics.daily_builds ?? 0);
            const limit = Number(this.metrics.daily_build_limit ?? 0);
            if (!limit) return 0;
            return Math.min(100, Math.round((used / limit) * 100));
        },
        get quotaRemaining() {
            const used = Number(this.metrics.daily_builds ?? 0);
            const limit = Number(this.metrics.daily_build_limit ?? 0);
            return Math.max(0, limit - used);
        },
        async load() {
            const res = await api("/subscriber/api/dashboard/metrics");
            if (!res) return;
            this.metrics = await res.json();
        },
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

function subscriberMake() {
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
        pollTimer: null,
        tipModalOpen: false,
        tipTimer: null,
        buildModalOpen: false,
        buildPhase: "",
        limitError: null,
        submitStep: 0,
        submitTimer: null,
        submitSteps: ["Validando arquivos", "Enviando para análise", "Preparando pipeline"],
        init() {
            try {
                if (window.sessionStorage.getItem("katana_make_tip_seen") === "1") return;
            } catch (_) {
                
            }
            this.tipTimer = window.setTimeout(() => {
                this.tipModalOpen = true;
                this.tipTimer = null;
                try {
                    window.sessionStorage.setItem("katana_make_tip_seen", "1");
                } catch (_) {  }
            }, 1000);
        },
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
        closeTipModal() {
            if (this.tipTimer) {
                window.clearTimeout(this.tipTimer);
                this.tipTimer = null;
            }
            this.tipModalOpen = false;
            try {
                window.sessionStorage.setItem("katana_make_tip_seen", "1");
            } catch (_) {  }
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
            this.limitError = null;
        },
        closeBuildModal() {
            const shouldReload = this.buildPhase === "done" || this.buildPhase === "error";
            this.buildModalOpen = false;
            this.buildPhase = "";
            this.limitError = null;
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
        goToApps() {
            window.location.href = "/subscriber/apps";
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
                const submitPromise = api("/subscriber/api/build", { method: "POST", body: fd });
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
                if (data.daily_build_limit != null && data.reset_in_label) {
                    this.limitError = {
                        limit: data.daily_build_limit,
                        resetIn: data.reset_in_label,
                    };
                    this.status = "";
                } else {
                    this.limitError = null;
                    this.status = data.message || data.error;
                }
                this.busy = false;
                return;
            }

            this.buildId = data.build_id;
            this.buildPhase = "building";
            this.pollTimer = window.setInterval(() => this.poll(), 2000);
            this.poll();
        },
        async poll() {
            const res = await api(`/subscriber/api/build/${this.buildId}/status`);
            if (!res) return;
            const data = await res.json();
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
                this.busy = false;
            }
        },
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

function subscriberApps() {
    return {
        apps: [],
        loading: true,
        copiedId: "",
        busyId: "",
        deleteBusyId: "",
        deleteModalOpen: false,
        deleteTarget: null,
        deleteError: "",
        page: 1,
        pageSize: 10,
        get totalPages() {
            return Math.max(1, Math.ceil(this.apps.length / this.pageSize));
        },
        get paginatedApps() {
            const start = (this.page - 1) * this.pageSize;
            return this.apps.slice(start, start + this.pageSize);
        },
        get pageFrom() {
            if (!this.apps.length) return 0;
            return (this.page - 1) * this.pageSize + 1;
        },
        get pageTo() {
            return Math.min(this.page * this.pageSize, this.apps.length);
        },
        async load() {
            this.loading = true;
            try {
                const res = await api("/subscriber/api/apps");
                if (!res) return;
                this.apps = await res.json();
                if (this.page > this.totalPages) this.page = this.totalPages;
            } finally {
                this.loading = false;
            }
        },
        prevPage() {
            if (this.page > 1) this.page -= 1;
        },
        nextPage() {
            if (this.page < this.totalPages) this.page += 1;
        },
        async copyLink(item) {
            if (!item.public_url) return;
            const url = normalizePublicLink(item.public_url);
            try {
                await navigator.clipboard.writeText(url);
                this.copiedId = item.build_id;
                window.setTimeout(() => {
                    if (this.copiedId === item.build_id) this.copiedId = "";
                }, 2000);
            } catch (_) {}
        },
        async regenerateToken(item) {
            if (!item.public_url || this.busyId) return;
            this.busyId = item.build_id;
            const res = await api(`/subscriber/api/build/${item.build_id}/regenerate-token`, {
                method: "POST",
                headers: { "Content-Type": "application/json" },
            });
            this.busyId = "";
            if (!res) return;
            const data = await res.json();
            if (data.error) return;
            item.public_url = data.public_url;
            this.copiedId = item.build_id;
            await this.copyLink(item);
        },
        openDeleteModal(item) {
            if (this.deleteBusyId) return;
            this.deleteTarget = item;
            this.deleteError = "";
            this.deleteModalOpen = true;
        },
        closeDeleteModal() {
            if (this.deleteBusyId) return;
            this.deleteModalOpen = false;
            this.deleteTarget = null;
            this.deleteError = "";
        },
        async confirmDelete() {
            const item = this.deleteTarget;
            if (!item || this.deleteBusyId) return;
            this.deleteBusyId = item.build_id;
            this.deleteError = "";
            const res = await api(`/subscriber/api/build/${item.build_id}`, { method: "DELETE" });
            this.deleteBusyId = "";
            if (!res) return;
            const data = await res.json();
            if (!res.ok || data.error) {
                this.deleteError = data.error || "Nao foi possivel excluir.";
                return;
            }
            this.apps = this.apps.filter((app) => app.build_id !== item.build_id);
            if (this.page > this.totalPages) this.page = this.totalPages;
            this.deleteModalOpen = false;
            this.deleteTarget = null;
            this.deleteError = "";
        },
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

function subscriberStore() {
    return {
        products: [],
        loading: true,
        previewsReady: 0,
        _bootTimer: null,
        previewOpen: false,
        previewProduct: null,
        previewUrl(id, embed) {
            const qs = embed ? "?embed=1&stage=welcome" : "?stage=full";
            return `/subscriber/api/store/preview/${id}${qs}`;
        },
        finishBoot() {
            if (this._bootTimer) {
                window.clearTimeout(this._bootTimer);
                this._bootTimer = null;
            }
            this.loading = false;
        },
        onCardPreviewLoad() {
            if (!this.loading) return;
            this.previewsReady += 1;
            if (this.previewsReady >= this.products.length) {
                this.finishBoot();
            }
        },
        async load() {
            this.loading = true;
            this.previewsReady = 0;
            if (this._bootTimer) {
                window.clearTimeout(this._bootTimer);
                this._bootTimer = null;
            }
            try {
                const res = await api("/subscriber/api/store/products");
                if (!res) {
                    this.finishBoot();
                    return;
                }
                const data = await res.json();
                this.products = Array.isArray(data) ? data : [];
                this.finishBoot();
            } catch (_) {
                this.finishBoot();
            }
        },
        openPreview(product) {
            if (!product) return;
            this.previewProduct = product;
            this.previewOpen = true;
            this.$nextTick(() => {
                const frame = this.$refs.previewFrame;
                if (!frame) return;
                frame.src = this.previewUrl(product.id);
            });
        },
        closePreview() {
            this.previewOpen = false;
            this.previewProduct = null;
            const frame = this.$refs.previewFrame;
            if (frame) frame.src = "about:blank";
        },
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

document.addEventListener("alpine:init", () => {
    Alpine.data("subscriberLogin", subscriberLogin);
    Alpine.data("subscriberDashboard", subscriberDashboard);
    Alpine.data("subscriberMake", subscriberMake);
    Alpine.data("subscriberApps", subscriberApps);
    Alpine.data("subscriberStore", subscriberStore);
    Alpine.data("subscriberProfile", subscriberProfile);
});
