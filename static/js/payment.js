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

  window.addEventListener('pageshow', resetPaymentUi);
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') resetPaymentUi();
  });
}

(function initSmoothSectionScroll() {
  const navToggle = document.getElementById('nav-toggle');
  const sectionLinks = [...document.querySelectorAll('a[href^="#"]')].filter((link) => {
    const id = link.getAttribute('href').slice(1);
    return id && document.getElementById(id);
  });
  if (!sectionLinks.length) return;

  const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  function getScrollOffset() {
    const probe = document.querySelector('[id]');
    if (!probe) return 96;
    const margin = parseFloat(getComputedStyle(probe).scrollMarginTop);
    return Number.isFinite(margin) ? margin : 96;
  }

  function easeInOutCubic(t) {
    return t < 0.5 ? 4 * t * t * t : 1 - ((-2 * t + 2) ** 3) / 2;
  }

  function animateScrollTo(targetY, duration = 880) {
    const startY = window.scrollY;
    const distance = targetY - startY;
    if (Math.abs(distance) < 2) return;
    const startTime = performance.now();

    function step(now) {
      const progress = Math.min((now - startTime) / duration, 1);
      window.scrollTo(0, startY + distance * easeInOutCubic(progress));
      if (progress < 1) requestAnimationFrame(step);
    }

    requestAnimationFrame(step);
  }

  sectionLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
      const id = link.getAttribute('href').slice(1);
      const target = document.getElementById(id);
      if (!target) return;
      event.preventDefault();
      if (navToggle) navToggle.checked = false;
      if (prefersReducedMotion) {
        target.scrollIntoView({ block: 'start' });
        return;
      }
      const offset = getScrollOffset();
      const targetY = target.getBoundingClientRect().top + window.scrollY - offset;
      animateScrollTo(Math.max(0, targetY));
    });
  });
})();
