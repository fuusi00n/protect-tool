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

const ALLOWED_ICON_RE = /\.(png|jpe?g|webp|gif|bmp|ico)$/i;

function validateIconFile(file) {
    if (!file) return null;
    if (!ALLOWED_ICON_RE.test(file.name)) {
        return "Icone invalido. Use PNG, JPG, WEBP, GIF, BMP ou ICO.";
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
        icon: null,
        iconPreview: "",
        iconError: "",
        busy: false,
        status: "",
        progress: 0,
        buildId: "",
        pollTimer: null,
        buildModalOpen: false,
        buildPhase: "",
        limitError: null,
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
        onApk(e) { this.apk = e.target.files[0] || null; },
        onIcon(e) {
            const input = e.target;
            const file = input.files[0];
            this.iconError = "";
            this.clearIconPreview();
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
            this.buildModalOpen = false;
            this.buildPhase = "";
            this.limitError = null;
            this.stopSubmitAnimation();
            if (this.pollTimer) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
            }
            this.busy = false;
        },
        goToApps() {
            window.location.href = "/subscriber/apps";
        },
        async submit() {
            if (!this.apk || this.busy) return;
            if (this.icon) {
                const err = validateIconFile(this.icon);
                if (err) {
                    this.iconError = err;
                    return;
                }
            }
            this.busy = true;
            this.openBuildModal();
            this.startSubmitAnimation();

            const fd = new FormData();
            fd.append("file", this.apk);
            fd.append("app_name", this.appName || "App");
            if (this.icon) fd.append("icon", this.icon);

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
        copiedId: "",
        busyId: "",
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
            const res = await api("/subscriber/api/apps");
            if (!res) return;
            this.apps = await res.json();
            if (this.page > this.totalPages) this.page = this.totalPages;
        },
        prevPage() {
            if (this.page > 1) this.page -= 1;
        },
        nextPage() {
            if (this.page < this.totalPages) this.page += 1;
        },
        async copyLink(item) {
            if (!item.public_url) return;
            const url = item.public_url.startsWith("http")
                ? item.public_url
                : `${window.location.origin}${item.public_url}`;
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
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

function subscriberStore() {
    return {
        products: [],
        previewOpen: false,
        previewProduct: null,
        toast: "",
        previewUrl(id, embed) {
            const qs = embed ? "?embed=1&stage=welcome" : "?stage=full";
            return `/subscriber/api/store/preview/${id}${qs}`;
        },
        async load() {
            const res = await api("/subscriber/api/store/products");
            if (!res) return;
            this.products = await res.json();
        },
        openPreview(product) {
            this.previewProduct = product;
            this.previewOpen = true;
        },
        closePreview() {
            this.previewOpen = false;
            this.previewProduct = null;
        },
        buy(product) {
            window.location.href = `/subscriber/store/checkout/${product.id}`;
        },
        async logout() {
            await fetch("/subscriber/logout", { method: "POST" });
            window.location.href = "/subscriber/login";
        },
    };
}

function subscriberCheckout() {
    return {
        productId: "",
        method: "bitcoin",
        payModalOpen: false,
        payPhase: "loading",
        result: null,
        busy: false,
        copied: false,
        qrReady: false,
        loadingIndex: 0,
        loadingMessage: "Aguarde um instante…",
        loadingSteps: ["Validando pedido", "Reservando instruções", "Finalizando"],
        loadingTimer: null,
        boot(productId) {
            this.productId = productId || "";
        },
        startLoadingAnimation() {
            this.loadingIndex = 0;
            this.loadingMessage = this.loadingSteps[0];
            if (this.loadingTimer) window.clearInterval(this.loadingTimer);
            this.loadingTimer = window.setInterval(() => {
                if (this.payPhase !== "loading") return;
                this.loadingIndex = Math.min(this.loadingIndex + 1, this.loadingSteps.length - 1);
                this.loadingMessage = this.loadingSteps[this.loadingIndex];
            }, 520);
        },
        stopLoadingAnimation() {
            if (this.loadingTimer) {
                window.clearInterval(this.loadingTimer);
                this.loadingTimer = null;
            }
        },
        closePayModal() {
            if (this.busy) return;
            this.stopLoadingAnimation();
            this.payModalOpen = false;
            this.payPhase = "loading";
            this.result = null;
            this.copied = false;
            this.qrReady = false;
        },
        async pay() {
            if (this.busy || !this.productId) return;
            this.busy = true;
            this.copied = false;
            this.qrReady = false;
            this.result = null;
            this.payPhase = "loading";
            this.payModalOpen = true;
            this.loadingSteps = this.method === "bitcoin"
                ? ["Validando pedido", "Gerando endereço on-chain", "Montando QR Code"]
                : ["Validando pedido", "Consultando Pix", "Finalizando"];
            this.startLoadingAnimation();
            const delay = this.method === "bitcoin" ? 1800 : 900;
            const [res] = await Promise.all([
                api(`/subscriber/api/store/checkout/${this.productId}/intent`, {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({ method: this.method }),
                }),
                new Promise((resolve) => window.setTimeout(resolve, delay)),
            ]);
            this.stopLoadingAnimation();
            this.busy = false;
            if (!res) {
                this.payModalOpen = false;
                return;
            }
            const data = await res.json();
            if (data.error) {
                this.payModalOpen = false;
                return;
            }
            this.result = data;
            if (data.status === "ready") {
                this.payPhase = "bitcoin";
            } else {
                this.payPhase = "unavailable";
            }
        },
        async copyAddress() {
            if (!this.result || !this.result.address) return;
            try {
                await navigator.clipboard.writeText(this.result.address);
                this.copied = true;
                window.setTimeout(() => { this.copied = false; }, 2000);
            } catch (_) {}
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
    Alpine.data("subscriberCheckout", subscriberCheckout);
    Alpine.data("subscriberProfile", subscriberProfile);
});
