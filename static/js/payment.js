const buttons = [...document.querySelectorAll('[data-plan-code]')];
const feedback = document.querySelector('#payment-feedback');

if (buttons.length && feedback) {
  buttons.forEach((button) => button.addEventListener('click', async () => {
    buttons.forEach((item) => { item.disabled = true; });
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
      buttons.forEach((item) => { item.disabled = false; });
    }
  }));
}