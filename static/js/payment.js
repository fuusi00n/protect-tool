const buttons = [...document.querySelectorAll('[data-plan-code]')];
const feedback = document.querySelector('#payment-feedback');

function setButtonsDisabled(disabled) {
  buttons.forEach((item) => {
    if (item.dataset.wasDisabled === '1') return;
    item.disabled = disabled;
  });
}

function resetPaymentUi() {
  setButtonsDisabled(false);
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
      setButtonsDisabled(false);
    }
  }));

  // Ao voltar do checkout (bfcache), os botoes ficavam disabled.
  window.addEventListener('pageshow', resetPaymentUi);
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') resetPaymentUi();
  });
}
