(function initKatanaI18n() {
  const STORAGE_KEY = 'katana_lang';
  const DEFAULT_LANG = 'pt';
  const SUPPORTED = ['pt', 'en', 'ru'];

  const LANG_LABELS = {
    pt: 'PT',
    en: 'EN',
    ru: 'RU',
  };

  const FLAG_SVGS = {
    pt: '<svg class="flag" viewBox="0 0 28 20" width="20" height="14" aria-hidden="true" focusable="false"><rect width="28" height="20" fill="#009C3B"></rect><polygon points="14,3 25,10 14,17 3,10" fill="#FFDF00"></polygon><circle cx="14" cy="10" r="4" fill="#002776"></circle><path d="M10.5 10.6 a4 4 0 0 1 7 -0.6" stroke="#fff" stroke-width="0.7" fill="none"></path></svg>',
    en: '<svg class="flag" viewBox="0 0 28 20" width="20" height="14" aria-hidden="true" focusable="false"><rect width="28" height="20" fill="#B22234"></rect><rect y="1.54" width="28" height="1.54" fill="#fff"></rect><rect y="4.62" width="28" height="1.54" fill="#fff"></rect><rect y="7.69" width="28" height="1.54" fill="#fff"></rect><rect y="10.77" width="28" height="1.54" fill="#fff"></rect><rect y="13.85" width="28" height="1.54" fill="#fff"></rect><rect y="16.92" width="28" height="1.54" fill="#fff"></rect><rect width="11.2" height="10.77" fill="#3C3B6E"></rect></svg>',
    ru: '<svg class="flag" viewBox="0 0 28 20" width="20" height="14" aria-hidden="true" focusable="false"><rect width="28" height="6.67" fill="#fff"></rect><rect y="6.67" width="28" height="6.67" fill="#0039A6"></rect><rect y="13.33" width="28" height="6.67" fill="#D52B1E"></rect></svg>',
  };

  const CARET_SVG = '<svg class="caret" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" xmlns="http://www.w3.org/2000/svg"><path d="M19.92 15.05 13.4 8.53a2 2 0 0 0-2.8 0l-6.52 6.52"></path></svg>';

  let currentLang = DEFAULT_LANG;
  let strings = {};
  let i18nBase = '/static/i18n';

  function resolveBase() {
    const script = document.querySelector('script[data-i18n-base]');
    if (script) {
      i18nBase = script.getAttribute('data-i18n-base') || i18nBase;
    }
  }

  function getNested(obj, key) {
    return key.split('.').reduce((acc, part) => (acc && acc[part] != null ? acc[part] : null), obj);
  }

  function t(key, fallback) {
    const value = getNested(strings, key);
    if (value == null || value === '') return fallback != null ? fallback : key;
    return value;
  }

  function normalizeLang(lang) {
    if (!lang) return DEFAULT_LANG;
    const code = String(lang).toLowerCase();
    if (code.startsWith('pt')) return 'pt';
    if (code.startsWith('en')) return 'en';
    if (code.startsWith('ru')) return 'ru';
    return SUPPORTED.includes(code) ? code : DEFAULT_LANG;
  }

  function readStoredLang() {
    try {
      const params = new URLSearchParams(window.location.search);
      const fromUrl = params.get('lang');
      if (fromUrl) return normalizeLang(fromUrl);
      return normalizeLang(localStorage.getItem(STORAGE_KEY));
    } catch (_err) {
      return DEFAULT_LANG;
    }
  }

  function storeLang(lang) {
    try {
      localStorage.setItem(STORAGE_KEY, lang);
    } catch (_err) {
      /* ignore */
    }
  }

  async function loadLang(lang) {
    const normalized = normalizeLang(lang);
    const response = await fetch(`${i18nBase}/${normalized}.json`, { cache: 'no-cache' });
    if (!response.ok) throw new Error(`i18n load failed: ${normalized}`);
    strings = await response.json();
    currentLang = normalized;
    return normalized;
  }

  function updateLangMenuLabels() {
    document.querySelectorAll('[data-lang-option]').forEach((option) => {
      const lang = option.dataset.langOption;
      const key = `nav.lang${lang.charAt(0).toUpperCase()}${lang.slice(1)}`;
      const labelSpan = option.querySelector('span:last-child');
      if (labelSpan) labelSpan.textContent = t(key, LANG_LABELS[lang]);
    });
  }

  function applyTranslations() {
    document.querySelectorAll('[data-i18n]').forEach((el) => {
      const key = el.getAttribute('data-i18n');
      if (!key) return;
      el.textContent = t(key, el.textContent);
    });

    document.querySelectorAll('[data-i18n-aria]').forEach((el) => {
      const key = el.getAttribute('data-i18n-aria');
      if (!key) return;
      el.setAttribute('aria-label', t(key, el.getAttribute('aria-label') || ''));
    });

    document.querySelectorAll('[data-i18n-title]').forEach((el) => {
      const key = el.getAttribute('data-i18n-title');
      if (!key) return;
      document.title = t(key, document.title);
    });

    const htmlLang = t('meta.lang', currentLang === 'pt' ? 'pt-BR' : currentLang);
    document.documentElement.lang = htmlLang;

    updateLangTriggers();
    updateLangMenuLabels();
    syncLangMenuState();
    document.dispatchEvent(new CustomEvent('katana:langchange', { detail: { lang: currentLang } }));
  }

  function updateLangTriggers() {
    document.querySelectorAll('[data-lang-trigger]').forEach((trigger) => {
      const compact = trigger.classList.contains('nav-lang-sm');
      const flag = FLAG_SVGS[currentLang] || FLAG_SVGS.pt;
      const label = LANG_LABELS[currentLang] || LANG_LABELS.pt;
      const aria = t('nav.langAria', `Idioma: ${label}`);

      if (compact) {
        trigger.innerHTML = `${flag}${CARET_SVG}`;
      } else {
        trigger.innerHTML = `${flag}<span class="label">${label}</span>${CARET_SVG}`;
      }
      trigger.setAttribute('aria-label', aria);
    });
  }

  function syncLangMenuState() {
    document.querySelectorAll('[data-lang-option]').forEach((option) => {
      const active = option.dataset.langOption === currentLang;
      option.classList.toggle('is-active', active);
      option.setAttribute('aria-selected', active ? 'true' : 'false');
    });
  }

  function closeAllMenus() {
    document.querySelectorAll('.nav-lang-wrap.is-open').forEach((wrap) => {
      wrap.classList.remove('is-open');
      const trigger = wrap.querySelector('[data-lang-trigger]');
      if (trigger) trigger.setAttribute('aria-expanded', 'false');
    });
  }

  function openMenu(wrap) {
    closeAllMenus();
    wrap.classList.add('is-open');
    const trigger = wrap.querySelector('[data-lang-trigger]');
    if (trigger) trigger.setAttribute('aria-expanded', 'true');
  }

  function buildLangMenu(wrap) {
    if (wrap.querySelector('.nav-lang-menu')) return;

    const menu = document.createElement('div');
    menu.className = 'nav-lang-menu';
    menu.setAttribute('role', 'menu');

    SUPPORTED.forEach((lang) => {
      const option = document.createElement('button');
      option.type = 'button';
      option.className = 'nav-lang-option';
      option.dataset.langOption = lang;
      option.setAttribute('role', 'menuitemradio');
      option.innerHTML = `${FLAG_SVGS[lang]}<span>${t(`nav.lang${lang.charAt(0).toUpperCase()}${lang.slice(1)}`, LANG_LABELS[lang])}</span>`;
      option.addEventListener('click', async (event) => {
        event.stopPropagation();
        await setLanguage(lang);
        closeAllMenus();
      });
      menu.appendChild(option);
    });

    wrap.appendChild(menu);
  }

  function initLangMenus() {
    document.querySelectorAll('.nav-lang-wrap').forEach((wrap) => {
      buildLangMenu(wrap);
      const trigger = wrap.querySelector('[data-lang-trigger]');
      if (!trigger) return;

      trigger.addEventListener('click', (event) => {
        event.stopPropagation();
        if (wrap.classList.contains('is-open')) {
          closeAllMenus();
          return;
        }
        openMenu(wrap);
      });
    });

    document.addEventListener('click', closeAllMenus);
    document.addEventListener('keydown', (event) => {
      if (event.key === 'Escape') closeAllMenus();
    });
  }

  async function setLanguage(lang) {
    const normalized = normalizeLang(lang);
    if (normalized === currentLang && Object.keys(strings).length) {
      applyTranslations();
      return normalized;
    }
    await loadLang(normalized);
    storeLang(normalized);
    applyTranslations();
    return normalized;
  }

  async function init() {
    resolveBase();
    initLangMenus();
    const initial = readStoredLang();
    try {
      await setLanguage(initial);
    } catch (_err) {
      await setLanguage(DEFAULT_LANG);
    }
  }

  window.katanaI18n = {
    t,
    setLanguage,
    getLanguage: () => currentLang,
  };

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
