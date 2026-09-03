This is a visually enhanced HTML page for "NexusShop," designed with a bright, clean, and highly visible user interface. It uses a clear color palette, spacious layouts, and modern card styles to make browsing and shopping intuitive.
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · bright & visible</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Poppins:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

  <style>
    /* reset & base – high contrast, clear spacing */
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --bg: #f5f9ff;
      --surface: #ffffff;
      --primary: #002642;
      --accent: #0088cc;
      --accent-light: #d4edff;
      --muted: #3e5a70;
      --border-light: #dce7f2;
      --shadow: 0 8px 24px rgba(0, 30, 60, 0.06);
      --shadow-hover: 0 18px 40px rgba(0, 40, 80, 0.10);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.2s ease;
      --container: 1280px;
    }

    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    button { cursor: pointer; border: none; background: none; font-family: inherit; }
    img { display: block; max-width: 100%; height: auto; }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ===== HEADER – clean, sticky, visible ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.94);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0, 38, 66, 0.06);
      box-shadow: 0 2px 12px rgba(0,0,0,0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      padding: 12px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand .accent { color: var(--accent); }

    /* navigation */
    .main-nav ul {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
      flex-wrap: wrap;
    }
    .main-nav li a {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 18px;
      border-radius: 60px;
      font-weight: 600;
      color: var(--primary);
      background: transparent;
      transition: background var(--transition), color var(--transition);
      font-size: 0.95rem;
    }
    .main-nav li a i { font-size: 1rem; opacity: 0.8; }
    .main-nav li a:hover {
      background: var(--accent-light);
      color: #005a88;
    }

    /* search – prominent */
    .search-wrapper {
      display: flex;
      align-items: center;
      background: white;
      border: 2px solid #d4e2f0;
      border-radius: 60px;
      padding: 0 4px 0 20px;
      transition: 0.15s;
      min-width: 200px;
      box-shadow: 0 2px 8px rgba(0, 20, 40, 0.02);
    }
    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(0, 136, 204, 0.15);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 12px 4px;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
    }
    .search-wrapper button {
      background: var(--accent);
      color: white;
      border-radius: 60px;
      padding: 10px 18px;
      font-weight: 600;
      transition: background 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrapper button:hover { background: #006fa8; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .icon-btn {
      color: var(--primary);
      font-size: 1.3rem;
      transition: color 0.2s, transform 0.1s;
      padding: 6px;
      border-radius: 40px;
    }
    .icon-btn:hover { color: var(--accent); transform: scale(1.04); }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 14px 6px 10px;
      border-radius: 60px;
      background: var(--accent-light);
      font-weight: 600;
      transition: background 0.2s;
    }
    .cart:hover { background: #c2e2ff; }
    .cart-count {
      background: var(--accent);
      color: white;
      font-weight: 700;
      font-size: 0.75rem;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: inline-grid;
      place-items: center;
      margin-left: 2px;
    }

    .mobile-toggle {
      display: none;
      font-size: 1.6rem;
      padding: 6px 14px;
      background: var(--surface);
      border-radius: 60px;
      box-shadow: var(--shadow);
    }

    /* ===== HERO – bold & visible ===== */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(145deg, #002642 0%, #1a4b6a 100%);
      color: white;
      min-height: 380px;
      padding: 52px 20px;
      border-radius: 0 0 48px 48px;
      margin: 0 12px 20px;
      box-shadow: 0 12px 30px rgba(0, 20, 40, 0.2);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 3rem;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
      text-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .hero p {
      opacity: 0.95;
      max-width: 660px;
      margin: 0 auto 24px;
      font-size: 1.15rem;
    }
    .btn-group { display: flex; gap: 16px; justify-content: center; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 700;
      transition: all 0.2s;
      border: none;
      font-size: 1rem;
    }
    .btn-primary {
      background: #00a3d6;
      color: #001b2b;
      box-shadow: 0 8px 20px rgba(0, 163, 214, 0.3);
    }
    .btn-primary:hover { background: #00b8f0; transform: scale(1.02); box-shadow: 0 12px 28px rgba(0, 163, 214, 0.4); }
    .btn-ghost {
      background: rgba(255,255,255,0.10);
      backdrop-filter: blur(4px);
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.20); }

    /* ===== SECTIONS ===== */
    .section { padding: 48px 0; }
    .section-title {
      text-align: center;
      font-family: 'Poppins', sans-serif;
      font-size: 2.2rem;
      letter-spacing: -0.3px;
    }
    .section-sub {
      text-align: center;
      color: var(--muted);
      margin: 4px 0 28px;
      font-size: 1.05rem;
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      border: 1px solid white;
      transition: transform var(--transition), box-shadow var(--transition);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon {
      font-size: 2.4rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1.05rem; }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 28px;
    }
    .product {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: transform var(--transition), box-shadow var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(255,255,255,0.7);
    }
    .product:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
    }
    .product img {
      height: 200px;
      width: 100%;
      object-fit: cover;
      background: #eef4fa;
    }
    .product-body {
      padding: 16px 18px 6px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 700;
      font-size: 1.05rem;
      margin-bottom: 2px;
    }
    .product-category {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
      letter-spacing: 0.3px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 10px;
      flex-wrap: wrap;
    }
    .price-current { font-weight: 700; font-size: 1.3rem; color: var(--primary); }
    .price-old {
      color: #7a8a9e;
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 6px;
    }
    .rating {
      color: #f5b342;
      font-size: 0.9rem;
      background: #fef6e0;
      padding: 2px 10px;
      border-radius: 40px;
    }
    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 12px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      padding: 12px 6px;
      border-radius: 60px;
      font-weight: 700;
      transition: background 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-size: 0.95rem;
    }
    .add-btn:hover { background: #004466; }
    .wish-btn {
      background: var(--bg);
      border-radius: 60px;
      padding: 8px 16px;
      transition: background 0.2s;
      font-size: 1.1rem;
    }
    .wish-btn:hover { background: #dce7f2; }

    /* deal card */
    .deal-card {
      display: flex;
      flex-wrap: wrap;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid white;
    }
    .deal-card .deal-img {
      flex: 1 1 280px;
      min-height: 220px;
      background: #dcebfa;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 5rem;
      color: var(--primary);
    }
    .deal-card .deal-body {
      flex: 2 1 360px;
      padding: 32px 36px;
    }
    .deal-body h3 { font-family: 'Poppins', sans-serif; font-size: 2rem; }
    .timer {
      display: flex;
      gap: 14px;
      margin: 18px 0;
      flex-wrap: wrap;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 18px;
      border-radius: var(--radius-sm);
      min-width: 68px;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    .time-box span { font-size: 1.8rem; font-weight: 700; display: block; line-height: 1.2; }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 24px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 280px;
      background: var(--surface);
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid white;
    }
    .testimonial .rating { background: transparent; padding: 0; }

    /* newsletter – high vis */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 24px;
      text-align: center;
      box-shadow: 0 8px 28px rgba(0, 38, 66, 0.15);
    }
    .newsletter-box input {
      padding: 14px 24px;
      border-radius: 60px;
      border: none;
      width: 300px;
      max-width: 100%;
      margin-right: 8px;
      font-size: 1rem;
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }
    .newsletter-box .btn-primary {
      background: #00a3d6;
      color: #001b2b;
      padding: 14px 32px;
    }
    .newsletter-box .btn-primary:hover { background: #00b8f0; }

    /* footer */
    footer {
      margin-top: 32px;
      padding: 32px 0;
      border-top: 2px solid #dce7f2;
      color: var(--muted);
      background: white;
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1024px) {
      .hero h1 { font-size: 2.5rem; }
    }
    @media (max-width: 860px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-flex; }
      .search-wrapper { min-width: 150px; }
    }
    @media (max-width: 640px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrapper { order: 3; flex: 1 1 100%; margin-top: 4px; }
      .hero { min-height: 280px; border-radius: 0 0 28px 28px; margin: 0 6px 12px; }
      .hero h1 { font-size: 2rem; }
      .products-grid { grid-template-columns: 1fr 1fr; gap: 16px; }
      .deal-card .deal-body { padding: 20px; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 440px) {
      .products-grid { grid-template-columns: 1fr; }
      .timer { gap: 8px; }
      .time-box { min-width: 56px; padding: 6px 10px; }
      .time-box span { font-size: 1.4rem; }
    }

    .muted { color: var(--muted); }
    .flex { display: flex; align-items: center; }
    .gap-8 { gap: 8px; }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div class="flex gap-8">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><span>Nexus<span class="accent">Shop</span></span></a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
      </nav>

      <div class="flex" style="gap:12px; flex-wrap:wrap;">
        <div class="search-wrapper" role="search">
          <input type="search" id="searchInput" placeholder="Search products…" aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
        </div>

        <div class="header-actions">
          <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user-circle"></i></a>
          <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" aria-label="Cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:2px solid #eaf0f6; padding:12px 0;">
      <div class="container">
        <ul style="list-style:none; display:flex; flex-direction:column; gap:8px;">
          <li><a href="#" style="padding:12px 16px; border-radius:12px; font-weight:600;">Home</a></li>
          <li><a href="#categories" style="padding:12px 16px; border-radius:12px; font-weight:600;">Categories</a></li>
          <li><a href="#products" style="padding:12px 16px; border-radius:12px; font-weight:600;">Trending</a></li>
          <li><a href="#deals" style="padding:12px 16px; border-radius:12px; font-weight:600;">Deals</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero" aria-label="Hero">
      <div class="container">
        <h1>New Winter Collection</h1>
        <p>Premium fashion, tech &amp; accessories — free shipping on first order.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" id="categories">
      <h2 class="section-title">Shop by Category</h2>
      <p class="section-sub">Browse curated collections</p>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" id="products">
      <h2 class="section-title">Trending Products</h2>
      <p class="section-sub">Popular picks based on recent activity</p>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section class="section container" id="deals">
      <h2 class="section-title">Flash Sale</h2>
      <p class="section-sub">Limited-time offers</p>
      <div class="deal-card">
        <div class="deal-img"><i class="fas fa-laptop"></i></div>
        <div class="deal-body">
          <h3>MacBook Air M2</h3>
          <p class="muted" style="font-size:1rem;">Thin, light, and powerful — M2 chip</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><span id="dealDays">0</span> Days</div>
            <div class="time-box"><span id="dealHours">00</span> Hrs</div>
            <div class="time-box"><span id="dealMinutes">00</span> Min</div>
            <div class="time-box"><span id="dealSeconds">00</span> Sec</div>
          </div>
          <div class="flex" style="gap:16px; flex-wrap:wrap; margin-top:6px;">
            <div><span class="price-current">$999</span> <span class="price-old">$1,199</span></div>
            <span style="background:#cc3344; color:white; padding:4px 18px; border-radius:40px; font-weight:700;">-17%</span>
          </div>
          <p style="margin:14px 0 0;"><strong>12</strong> items left at this price</p>
          <button class="btn btn-primary" id="buyDeal" style="margin-top:18px;"><i class="fas fa-bolt"></i> Buy Now</button>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container">
      <h2 class="section-title">Customer Reviews</h2>
      <p class="section-sub">Real feedback from verified buyers</p>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p style="margin:6px 0 12px;">"Fast shipping, excellent support. Exceeded expectations!"</p>
          <div class="flex" style="gap:12px;">
            <div style="background:#b3d4fc; width:44px; height:44px; border-radius:40px; display:grid; place-items:center; font-weight:700;">AM</div>
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.85rem;">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p style="margin:6px 0 12px;">"Great selection, checkout was seamless. Will shop again."</p>
          <div class="flex" style="gap:12px;">
            <div style="background:#b3d4fc; width:44px; height:44px; border-radius:40px; display:grid; place-items:center; font-weight:700;">ML</div>
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.85rem;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter-box">
        <h3 style="font-family:'Poppins',sans-serif; font-size:1.8rem;">Stay in the loop</h3>
        <p style="opacity:0.9; font-size:1.1rem;">Exclusive offers &amp; new arrivals</p>
        <form id="newsletterForm" style="display:flex; justify-content:center; gap:10px; flex-wrap:wrap; margin-top:16px;">
          <input type="email" id="newsletterEmail" placeholder="Your email address" required aria-label="Email" />
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:14px; display:none; font-weight:500;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex; flex-wrap:wrap; justify-content:space-between; gap:24px;">
      <div>
        <div style="font-weight:700; font-size:1.5rem;">NexusShop</div>
        <p class="muted" style="max-width:280px; margin-top:6px;">Modern e‑commerce demo built with clarity &amp; care.</p>
        <div style="display:flex; gap:16px; margin-top:12px; font-size:1.3rem;">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div style="display:flex; gap:48px; flex-wrap:wrap;">
        <div><strong>Company</strong><div class="muted" style="line-height:1.9;">About<br/>Careers<br/>Press</div></div>
        <div><strong>Support</strong><div class="muted" style="line-height:1.9;">Help Center<br/>Shipping<br/>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center; margin-top:24px; color:var(--muted); font-size:0.9rem;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </footer>

  <script>
    (function() {
      // ----- DATA -----
      const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
      ];

      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const productsGrid = document.getElementById('productsGrid');
      const categoriesGrid = document.getElementById('categoriesGrid');
      const searchInput = document.getElementById('searchInput');

      // ----- RENDER -----
      function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(c => {
          const el = document.createElement('div');
          el.className = 'cat-card';
          el.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
          el.addEventListener('click', () => {
            searchInput.value = c.name;
            filterProducts(c.name);
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
          });
          categoriesGrid.appendChild(el);
        });
      }

      function renderProducts(list) {
        productsGrid.innerHTML = '';
        list.forEach(p => {
          const el = document.createElement('article');
          el.className = 'product';
          const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-')?'#cc3344':'#2e7d32'};color:white;padding:4px 14px;border-radius:40px;font-weight:700;font-size:0.75rem;position:absolute;margin:14px;box-shadow:0 2px 8px rgba(0,0,0,0.1);">${p.badge}</span>` : '';
          el.innerHTML = `
            <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${p.title}" loading="lazy"></div>
            <div class="product-body">
              <h5>${p.title}</h5>
              <div class="product-category">${p.category}</div>
              <div class="price-row">
                <div><span class="price-current">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:0.75rem;color:var(--muted);">(${p.reviews})</span></div>
              </div>
            </div>
            <div class="product-footer">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
            </div>
          `;
          productsGrid.appendChild(el);
        });
        productsGrid.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', (e) => {
            const id = Number(btn.dataset.id);
            addToCart(id, btn);
          });
        });
      }

      function filterProducts(query) {
        const q = String(query || '').trim().toLowerCase();
        if (!q) { renderProducts(PRODUCTS); return; }
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
      }

      function addToCart(id, btn) {
        const p = PRODUCTS.find(x => x.id === id);
        if (!p) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        if (btn) {
          const orig = btn.innerHTML;
          btn.innerHTML = '<i class="fas fa-check"></i> Added';
          btn.disabled = true;
          setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
        }
      }

      // ----- DEAL TIMER -----
      (function setupDealTimer() {
        const now = new Date();
        const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
        function tick() {
          const diff = target - new Date();
          if (diff <= 0) { document.getElementById('dealDays').textContent = '0'; document.getElementById('dealHours').textContent = '00'; document.getElementById('dealMinutes').textContent = '00'; document.getElementById('dealSeconds').textContent = '00'; return; }
          document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
          document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2, '0');
          document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2, '0');
          document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2, '0');
        }
        tick();
        setInterval(tick, 1000);
      })();

      // ----- UI BINDINGS -----
      document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
      searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

      document.getElementById('mobileToggle').addEventListener('click', () => {
        const menu = document.getElementById('mobileMenu');
        menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
      });

      document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
      document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
      document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountEl.textContent = cartCount; alert('Deal added to cart (demo).'); });

      // Newsletter
      document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsletterEmail').value.trim();
        const msg = document.getElementById('newsletterMsg');
        if (!email || !email.includes('@')) {
          msg.style.display = 'block';
          msg.textContent = '⚠️ Please enter a valid email.';
          msg.style.color = '#ffb3b3';
          return;
        }
        msg.style.display = 'block';
        msg.textContent = '✅ Subscribed successfully!';
        msg.style.color = '#b3e0ff';
        document.getElementById('newsletterEmail').value = '';
        setTimeout(() => msg.style.display = 'none', 3000);
      });

      // Init
      renderCategories();
      renderProducts(PRODUCTS);
      document.getElementById('year').textContent = new Date().getFullYear();
    })();
  </script>
</body>
</html>
