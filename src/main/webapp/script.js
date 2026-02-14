// --- Utility: Debounce ---
function debounce(fn, delay = 200) {
  let t;
  return (...args) => {
    clearTimeout(t);
    t = setTimeout(() => fn(...args), delay);
  };
}

// --- Elements ---
const searchInput = document.getElementById('searchInput');
const clearBtn = document.getElementById('clearSearch');
const sections = document.querySelectorAll('.category-section');

function normalize(str) {
  return (str || '').toLowerCase().trim();
}

// Remove existing highlights
function clearHighlights(el) {
  el.innerHTML = el.textContent;
}

// Apply simple highlight to matching part of title
function highlightMatch(titleEl, query) {
  const text = titleEl.textContent;
  const q = normalize(query);
  if (!q) return;

  const idx = text.toLowerCase().indexOf(q);
  if (idx === -1) return;

  const before = text.slice(0, idx);
  const match = text.slice(idx, idx + q.length);
  const after = text.slice(idx + q.length);
  titleEl.innerHTML = `${before}<mark class="match">${match}</mark>${after}`;
}

function filterProducts(query) {
  const q = normalize(query);

  sections.forEach(section => {
    const products = section.querySelectorAll('.product');
    const noResultsEl = section.querySelector('.no-results');

    let visibleCount = 0;

    products.forEach(card => {
      const titleEl = card.querySelector('.product-title');
      // Clear any previous highlight
      clearHighlights(titleEl);

      const haystack = normalize(
        (card.getAttribute('data-name') || '') + ' ' + (titleEl?.textContent || '')
      );

      const match = q === '' || haystack.includes(q);

      card.style.display = match ? '' : 'none';
      if (match) {
        visibleCount++;
        if (q) highlightMatch(titleEl, q);
      }
    });

    // Toggle the section "no results" message
    if (noResultsEl) {
      noResultsEl.hidden = visibleCount !== 0;
    }
  });
}

// Wire events
const onInput = debounce((e) => filterProducts(e.target.value), 150);
searchInput.addEventListener('input', onInput);

clearBtn.addEventListener('click', () => {
  searchInput.value = '';
  filterProducts('');
  searchInput.focus();
});

// Initial state
filterProducts('');
