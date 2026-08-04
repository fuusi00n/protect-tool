function normalizePublicLink(raw) {
    if (!raw) return "";
    let url = String(raw).trim();
    if (url.startsWith("//")) return `https:${url}`;
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

function formatPlanRemaining(isoDate) {
    if (!isoDate) return "Sem expiração definida";
    const ms = new Date(isoDate).getTime() - Date.now();
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
    const buildErrorMsg = "Erro ao gerar o APK. Contate o administrador.";
    return {
        appName: "",
        apk: null,
        apkError: "",
        icon: null,
        iconPreview: "",
        iconError: "",
        busy: false,
        progress: 0,
        buildId: "",
        pollTimer: null,
        tipModalOpen: false,
        tipTimer: null,
        buildModalOpen: false,
        buildPhase: "",
        errorMsg: "",
        limitError: null,
        init() {
            try {
                if (window.sessionStorage.getItem("make_tip_seen") === "1") return;
            } catch (_) {}
            this.tipTimer = window.setTimeout(() => {
                this.tipModalOpen = true;
                this.tipTimer = null;
                try {
                    window.sessionStorage.setItem("make_tip_seen", "1");
                } catch (_) {}
            }, 1000);
        },
        closeTipModal() {
            if (this.tipTimer) {
                window.clearTimeout(this.tipTimer);
                this.tipTimer = null;
            }
            this.tipModalOpen = false;
            try {
                window.sessionStorage.setItem("make_tip_seen", "1");
            } catch (_) {}
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
            if (!/\.apk$/i.test(file.name)) {
                this.apkError = "Envie um arquivo .apk.";
                this.apk = null;
                input.value = "";
                return;
            }
            if (file.size > 27 * 1024 * 1024) {
                this.apkError = "APK excede o limite de 20 MB.";
                this.apk = null;
                input.value = "";
                return;
            }
            this.apk = file;
        },
        onIcon(e) {
            const input = e.target;
            const file = input.files[0] || null;
            this.iconError = "";
            this.clearIconPreview();
            if (!file) {
                this.icon = null;
                return;
            }
            if (!/\.png$/i.test(file.name)) {
                this.iconError = "Envie um arquivo .png.";
                this.icon = null;
                input.value = "";
                return;
            }
            this.icon = file;
            this.iconPreview = URL.createObjectURL(file);
        },
        openBuildModal() {
            this.buildModalOpen = true;
            this.buildPhase = "sending";
            this.progress = 0;
            this.errorMsg = "";
            this.limitError = null;
        },
        closeBuildModal() {
            const reload = this.buildPhase === "done" || this.buildPhase === "error";
            this.buildModalOpen = false;
            this.buildPhase = "";
            this.limitError = null;
            if (this.pollTimer) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
            }
            this.busy = false;
            if (reload) window.location.reload();
        },
        goToApps() {
            window.location.href = "/subscriber/apps";
        },
        async submit() {
            if (this.busy) return;
            if (!this.apk) {
                this.apkError = "Selecione um APK.";
                return;
            }
            if (!this.icon) {
                this.iconError = "Selecione um ícone PNG.";
                return;
            }
            this.busy = true;
            this.openBuildModal();

            const fd = new FormData();
            fd.append("file", this.apk);
            fd.append("app_name", (this.appName || "App").trim().slice(0, 20) || "App");
            fd.append("icon", this.icon);

            let res;
            try {
                res = await api("/subscriber/api/build", { method: "POST", body: fd });
            } catch (_) {
                this.buildPhase = "error";
                this.errorMsg = buildErrorMsg;
                this.busy = false;
                return;
            }
            if (!res) {
                this.buildPhase = "error";
                this.errorMsg = buildErrorMsg;
                this.busy = false;
                return;
            }
            const data = await res.json();
            if (data.error) {
                this.buildPhase = "error";
                if (data.daily_build_limit != null && data.reset_in_label) {
                    this.limitError = { limit: data.daily_build_limit, resetIn: data.reset_in_label };
                } else {
                    this.errorMsg = buildErrorMsg;
                }
                this.busy = false;
                return;
            }

            this.buildId = data.build_id;
            this.buildPhase = "working";
            this.pollTimer = window.setInterval(() => this.poll(), 2000);
            this.poll();
        },
        async poll() {
            const res = await api(`/subscriber/api/build/${this.buildId}/status`);
            if (!res) return;
            const data = await res.json();
            this.progress = data.progress || 0;
            if (data.failed) {
                window.clearInterval(this.pollTimer);
                this.pollTimer = null;
                this.buildPhase = "error";
                this.errorMsg = buildErrorMsg;
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
        deleteConfirmName: "",
        deleteError: "",
        page: 1,
        pageSize: 10,
        get deleteNameConfirmed() {
            const expected = (this.deleteTarget?.app_name || "").trim();
            return expected.length > 0 && this.deleteConfirmName.trim() === expected;
        },
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
            try {
                await navigator.clipboard.writeText(normalizePublicLink(item.public_url));
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
            this.deleteConfirmName = "";
            this.deleteError = "";
            this.deleteModalOpen = true;
        },
        closeDeleteModal() {
            if (this.deleteBusyId) return;
            this.deleteModalOpen = false;
            this.deleteTarget = null;
            this.deleteConfirmName = "";
            this.deleteError = "";
        },
        async confirmDelete() {
            const item = this.deleteTarget;
            if (!item || this.deleteBusyId || !this.deleteNameConfirmed) return;
            this.deleteBusyId = item.build_id;
            this.deleteError = "";
            const res = await api(`/subscriber/api/build/${item.build_id}`, {
                method: "DELETE",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ confirm_name: this.deleteConfirmName.trim() }),
            });
            this.deleteBusyId = "";
            if (!res) return;
            const data = await res.json();
            if (!res.ok || data.error) {
                this.deleteError = "Erro ao excluir. Contate o administrador.";
                return;
            }
            this.apps = this.apps.filter((app) => app.build_id !== item.build_id);
            if (this.page > this.totalPages) this.page = this.totalPages;
            this.deleteModalOpen = false;
            this.deleteTarget = null;
            this.deleteConfirmName = "";
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
        previewOpen: false,
        previewProduct: null,
        previewUrl(id, embed) {
            const qs = embed ? "?embed=1&stage=welcome" : "?stage=full";
            return `/subscriber/api/store/preview/${id}${qs}`;
        },
        async load() {
            this.loading = true;
            try {
                const res = await api("/subscriber/api/store/products");
                if (!res) return;
                const data = await res.json();
                this.products = Array.isArray(data) ? data : [];
            } finally {
                this.loading = false;
            }
        },
        openPreview(product) {
            if (!product) return;
            this.previewProduct = product;
            this.previewOpen = true;
            this.$nextTick(() => {
                const frame = this.$refs.previewFrame;
                if (frame) frame.src = this.previewUrl(product.id);
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
