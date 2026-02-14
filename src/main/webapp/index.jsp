<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Iran E-Commerce Store</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <h1>Iran E-Commerce Store 🇮🇷</h1>

    <!-- 🔎 Search Bar -->
    <div class="search-wrap">
      <input
        type="search"
        id="searchInput"
        placeholder="Search products (e.g., iPhone, jacket, Dell)..."
        aria-label="Search products"
      />
      <button id="clearSearch" aria-label="Clear search">✕</button>
    </div>

    <nav>
      <a href="#mobiles">Mobiles</a>
      <a href="#laptops">Laptops</a>
      <a href="#clothes">Clothes</a>
    </nav>
  </header>

  <!-- 🛒 Mobiles -->
  <section id="mobiles" class="category-section">
    <h2>📱 Mobiles</h2>
    <div class="product-grid">

      <div class="product" data-name="iPhone 14 Pro Max apple mobile phone">
        <img src="https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg" alt="iPhone 14 Pro Max"/>
        <h3 class="product-title">iPhone 14 Pro Max</h3>
        <p class="price">Price: 1,200,000,000 IRR</p>
      </div>

      <div class="product" data-name="Samsung Galaxy S23 Ultra android phone">
        <img src="https://fdn.gsmarena.com/imgroot/reviews/23/samsung-galaxy-s23-ultra/lifestyle/-1200w5/gsmarena_004.jpg" alt="Samsung S23 Ultra"/>
        <h3 class="product-title">Samsung S23 Ultra</h3>
        <p class="price">Price: 950,000,000 IRR</p>
      </div>

    </div>
    <p class="no-results" hidden>No mobiles match your search.</p>
  </section>

  <!-- 💻 Laptops -->
  <section id="laptops" class="category-section">
    <h2>💻 Laptops</h2>
    <div class="product-grid">

      <div class="product" data-name="Apple MacBook Air M1 laptop">
        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-macbook-air-gold-2020?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1594153394000" alt="MacBook Air M1"/>
        <h3 class="product-title">MacBook Air M1</h3>
        <p class="price">Price: 750,000,000 IRR</p>
      </div>

      <div class="product" data-name="Dell XPS 15 laptop windows">
        <img src="https://i.dell.com/sites/csimages/Master_Imagery/all/xps-15-9520-laptop-campaign-hero-504x350-ng.psd" alt="Dell XPS 15"/>
        <h3 class="product-title">Dell XPS 15</h3>
        <p class="price">Price: 680,000,000 IRR</p>
      </div>

    </div>
    <p class="no-results" hidden>No laptops match your search.</p>
  </section>

  <!-- 👗 Clothes -->
  <section id="clothes" class="category-section">
    <h2>👗 Clothes</h2>
    <div class="product-grid">

      <div class="product" data-name="Cotton T-Shirt shirt clothing">
        <img src="https://images.unsplash.com/photo-1520975922071-aaf2e3d6cfdd" alt="Cotton T-Shirt"/>
        <h3 class="product-title">Cotton T‑Shirt</h3>
        <p class="price">Price: 1,000,000 IRR</p>
      </div>

      <div class="product" data-name="Winter Jacket coat warm clothing">
        <img src="https://images.unsplash.com/photo-1542060747-10c28b62716f" alt="Winter Jacket"/>
        <h3 class="product-title">Winter Jacket</h3>
        <p class="price">Price: 3,500,000 IRR</p>
      </div>

    </div>
    <p class="no-results" hidden>No clothes match your search.</p>
  </section>

  <footer>
    <p>© 2026 Iran E-Commerce Store</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>
