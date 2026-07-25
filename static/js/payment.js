const buttons = [...document.querySelectorAll('[data-plan-code]')];
const feedback = document.querySelector('#payment-feedback');

function setButtonsDisabled(disabled) {
  buttons.forEach((item) => {
    if (item.dataset.wasDisabled === '1') return;
    item.disabled = disabled;
  });
}

function resetButtonsUi() {
  setButtonsDisabled(false);
  buttons.forEach((button) => {
    button.classList.remove('is-loading');
    button.removeAttribute('aria-busy');
    if (button.dataset.originalLabel) {
      button.textContent = button.dataset.originalLabel;
    }
  });
}

function resetPaymentUi() {
  resetButtonsUi();
  if (feedback && !feedback.dataset.serverError) {
    feedback.className = 'payment-feedback';
    feedback.textContent = '';
  }
}

if (buttons.length && feedback) {
  buttons.forEach((button) => {
    if (button.disabled) {
      button.dataset.wasDisabled = '1';
    }
  });

  if (feedback.textContent.trim()) {
    feedback.dataset.serverError = '1';
  }

  buttons.forEach((button) => button.addEventListener('click', async () => {
    if (button.disabled) return;
    button.dataset.originalLabel ||= button.textContent;
    button.textContent = 'Processando...';
    button.classList.add('is-loading');
    button.setAttribute('aria-busy', 'true');
    setButtonsDisabled(true);
    feedback.className = 'payment-feedback';
    feedback.textContent = 'Criando cobranca segura...';
    try {
      const response = await fetch('/api/payments', {
        method: 'POST',
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
        body: JSON.stringify({plan_code: button.dataset.planCode}),
      });
      const result = await response.json();
      if (!response.ok) {
        throw new Error(result.error || 'Nao foi possivel gerar o pagamento.');
      }
      window.location.assign(result.checkout_url);
    } catch (error) {
      feedback.className = 'payment-feedback is-error';
      feedback.textContent = error.message;
      resetButtonsUi();
    }
  }));

  // Ao voltar do checkout (bfcache), os botoes ficavam disabled.
  window.addEventListener('pageshow', resetPaymentUi);
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') resetPaymentUi();
  });
}
