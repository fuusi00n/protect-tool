const button = document.querySelector('#pay-button');
const feedback = document.querySelector('#payment-feedback');

if (button && feedback) {
  button.addEventListener('click', async () => {
    button.disabled = true;
    feedback.className = 'feedback';
    feedback.textContent = 'Criando cobrança segura…';
    try {
      const response = await fetch('/api/payments', {method: 'POST'});
      const result = await response.json();
      if (!response.ok) throw new Error(result.error || 'Não foi possível gerar o pagamento.');
      window.location.assign(result.checkout_url);
    } catch (error) {
      feedback.className = 'feedback is-error';
      feedback.textContent = error.message;
      button.disabled = false;
    }
  });
}