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
            const res = await api("/subscriber/api/build", { method: "POST", body: fd });
            if (!res) return;
            const data = await res.json();
            if (data.error) { this.status = data.error; this.busy = false; return; }
            this.buildId = data.build_id;
            this.pollTimer = setInterval(() => this.poll(), 2000);
        },
        async poll() {
            const res = await api(`/subscriber/api/build/${this.buildId}/status`);
            if (!res) return;
            const data = await res.json();
            this.status = data.status;
            this.progress = data.progress || 0;
            if (data.progress === 100) {
                clearInterval(this.pollTimer);
                this.downloadUrl = `/subscriber/api/build/${this.buildId}/download`;
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
        async load() {
            const res = await api("/subscriber/api/apps");
            if (!res) return;
            this.apps = await res.json();
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
