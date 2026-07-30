(function initCheckoutPage() {
  const root = document.body;
  const invoiceId = root.dataset.invoiceId;
  if (!invoiceId) return;

  const box = document.querySelector('#status');
  const title = document.querySelector('#status-title');
  const detail = document.querySelector('#status-detail');
  const clock = document.querySelector('#countdown');
  const button = document.querySelector('#copy');
  const address = document.querySelector('#address');
  const success = document.querySelector('#success');
  const qr = document.querySelector('.qr');

  if (!box || !title || !detail || !clock || !button || !address || !success) return;

  function t(key, fallback, vars) {
    let text = window.katanaI18n?.t(key, fallback) ?? fallback;
    if (vars) {
      Object.entries(vars).forEach(([name, value]) => {
        text = text.replace(`{${name}}`, value);
      });
    }
    return text;
  }

  function applyStaticCopy() {
    if (qr) {
      qr.setAttribute('alt', t('checkout.qrAlt', qr.getAttribute('alt') || ''));
    }
    button.setAttribute('aria-label', t('checkout.copyAria', button.getAttribute('aria-label') || ''));
    if (!button.classList.contains('done')) {
      button.textContent = t('checkout.copyBtn', button.textContent);
    }
  }

  function statusMessages() {
    return {
      New: [t('checkout.statusNewTitle', 'Aguardando pagamento'), t('checkout.statusNewDetail', '')],
      Processing: [t('checkout.statusProcessingTitle', 'Pagamento detectado'), t('checkout.statusProcessingDetail', '')],
      Settled: [t('checkout.statusSettledTitle', 'Pagamento confirmado'), t('checkout.statusSettledDetail', '')],
      Expired: [t('checkout.statusExpiredTitle', 'Cobrança expirada'), t('checkout.statusExpiredDetail', '')],
    };
  }

  function render(data) {
    const messages = statusMessages();
    const msg = messages[data.status] || [
      t('checkout.statusDefaultTitle', 'Verificando pagamento'),
      t('checkout.statusDefaultDetail', 'Aguarde a próxima atualização.'),
    ];
    box.dataset.state = data.status;
    title.textContent = msg[0];
    if (data.status === 'Processing') {
      detail.textContent = t(
        'checkout.statusProcessingSats',
        `${data.received_sats} sats recebidos; ${data.confirmed_sats} confirmados.`,
        { received: data.received_sats, confirmed: data.confirmed_sats },
      );
    } else {
      detail.textContent = msg[1];
    }
    success.classList.toggle('show', data.status === 'Settled');
  }

  async function refresh() {
    try {
      const response = await fetch(`/api/invoices/${encodeURIComponent(invoiceId)}`, { cache: 'no-store' });
      if (response.ok) render(await response.json());
    } catch (_err) {
    } finally {
      setTimeout(refresh, 15000);
    }
  }

  function tick() {
    const seconds = Math.max(0, Math.floor((new Date(clock.dataset.expires) - Date.now()) / 1000));
    clock.textContent = seconds
      ? `${Math.floor(seconds / 60)}:${String(seconds % 60).padStart(2, '0')}`
      : t('checkout.quoteExpired', 'Cotação expirada');
  }

  async function copyAddress() {
    try {
      await navigator.clipboard.writeText(address.textContent.trim());
      button.textContent = t('checkout.copiedBtn', 'Copiado');
      button.classList.add('done');
    } catch (_err) {
      const range = document.createRange();
      const selection = getSelection();
      range.selectNodeContents(address);
      selection.removeAllRanges();
      selection.addRange(range);
      button.textContent = t('checkout.selectBtn', 'Selecione');
    }
    setTimeout(() => {
      button.textContent = t('checkout.copyBtn', 'Copiar');
      button.classList.remove('done');
    }, 2200);
  }

  function boot() {
    applyStaticCopy();
    render({ status: root.dataset.invoiceStatus || 'New' });
    tick();
    setInterval(tick, 1000);
    setTimeout(refresh, 1000);
  }

  button.addEventListener('click', copyAddress);
  address.addEventListener('click', copyAddress);
  document.addEventListener('katana:langchange', () => {
    applyStaticCopy();
  });

  document.addEventListener('katana:langchange', boot, { once: true });
})();
