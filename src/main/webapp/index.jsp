This is a modern, user-friendly e-commerce HTML page I've created for the "NexusShop" brand. It features a clean layout, a sticky header with a search bar, and interactive elements like product listings, a shopping cart counter, and a deal timer.
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · Modern E‑Commerce</title>

  <!-- Fonts & Icons (friendly, fast) -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

  <style>
    /* ===== ROOT ===== */
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --bg: #fafcff;
      --primary: #0b2b44;
      --accent: #00b8d4;
      --accent-light: #e1f5fe;
      --muted: #5f6c80;
      --card: #ffffff;
      --surface: #f2f6fb;
      --success: #2e7d32;
      --radius: 16px;
      --shadow-sm: 0 6px 18px rgba(0, 20, 40, 0.04);
      --shadow-hover: 0 16px 36px rgba(0, 30, 50, 0.08);
      --transition: 0.2s ease;
      --container: 1240px;
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
    img { display: block; max-width: 100%; }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ===== HEADER (friendly & sticky) ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0, 20, 40, 0.04);
      box-shadow: 0 2px 12px rgba(0,0,0,0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      padding: 10px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.3px;
    }
    .brand .accent { color: var(--accent); }

    /* navigation */
    .main-nav ul {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }
    .main-nav li a {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: background var(--transition), color var(--transition);
    }
    .main-nav li a:hover {
      background: var(--accent-light);
      color: #005b7a;
    }
    .main-nav li a i { font-size: 0.95rem; }

    /* search */
    .search-wrapper {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid #e2eaf2;
      border-radius: 60px;
      padding: 0 6px 0 18px;
      transition: box-shadow 0.2s;
      min-width: 200px;
      box-shadow: var(--shadow-sm);
    }
    .search-wrapper:focus-within {
      box-shadow: 0 0 0 3px rgba(0, 184, 212, 0.25);
      border-color: var(--accent);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 10px 4px;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
    }
    .search-wrapper button {
      background: var(--accent);
      color: white;
      border-radius: 40px;
      padding: 8px 14px;
      font-size: 0.95rem;
      transition: background 0.2s;
    }
    .search-wrapper button:hover { background: #0097b0; }

    /* header actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .icon-btn {
      color: var(--primary);
      font-size: 1.2rem;
      transition: color 0.2s, transform 0.1s;
      padding: 6px;
      border-radius: 40px;
    }
    .icon-btn:hover { color: var(--accent); transform: scale(1.03); }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 10px 6px 6px;
      border-radius: 40px;
      background: var(--surface);
      transition: background 0.2s;
    }
    .cart:hover { background: #e4ecf5; }
    .cart-count {
      background: var(--accent);
      color: #fff;
      font-weight: 700;
      font-size: 0.7rem;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: inline-grid;
      place-items: center;
      margin-left: 2px;
    }

    .mobile-toggle {
      display: none;
      font-size: 1.5rem;
      padding: 6px 8px;
      background: var(--surface);
      border-radius: 40px;
    }

    /* ===== HERO (warmer) ===== */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(145deg, #0b2b44 0%, #1a405a 100%);
      color: white;
      min-height: 380px;
      padding: 50px 20px;
      border-radius: 0 0 40px 40px;
      margin: 0 12px 12px;
      box-shadow: inset 0 0 0 1px rgba(255,255,255,0.05);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }
    .hero p {
      opacity: 0.9;
      max-width: 660px;
      margin: 0 auto 24px;
      font-size: 1.1rem;
    }
    .btn-group { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      transition: all 0.2s;
      border: none;
    }
    .btn-primary {
      background: var(--accent);
      color: #001f2b;
      box-shadow: 0 6px 14px rgba(0, 184, 212, 0.3);
    }
    .btn-primary:hover { background: #00c8e6; transform: scale(1.02); box-shadow: 0 8px 20px rgba(0, 184, 212, 0.4); }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.18); }

    /* ===== SECTIONS ===== */
    .section { padding: 40px 0; }
    .section-title {
      text-align: center;
      font-family: 'Poppins', sans-serif;
      font-size: 1.9rem;
      letter-spacing: -0.3px;
    }
    .section-sub {
      text-align: center;
      color: var(--muted);
      margin: 6px 0 24px;
    }

    /* categories grid */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 22px 10px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: transform var(--transition), box-shadow var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      background: white;
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
    }
    .product {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: transform var(--transition), box-shadow var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid #f0f4fa;
    }
    .product:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product img {
      height: 180px;
      width: 100%;
      object-fit: cover;
      background: #f4f8fe;
    }
    .product-body {
      padding: 14px 16px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-category {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 8px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 6px;
    }
    .rating {
      color: #f5b342;
      font-size: 0.9rem;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      transition: background 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover { background: #1a405a; }
    .wish-btn {
      background: var(--surface);
      border-radius: 40px;
      padding: 8px 14px;
      transition: background 0.2s;
    }
    .wish-btn:hover { background: #e1eaf2; }

    /* deal card */
    .deal-card {
      display: flex;
      flex-wrap: wrap;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      border: 1px solid #eef4fa;
    }
    .deal-card .deal-img {
      flex: 1 1 300px;
      min-height: 240px;
      background: #e3ecf5;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 5rem;
      color: #0b2b44;
    }
    .deal-card .deal-body {
      flex: 2 1 340px;
      padding: 28px 32px;
    }
    .deal-body h3 { font-family: 'Poppins', sans-serif; font-size: 1.7rem; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 14px;
      border-radius: 12px;
      min-width: 60px;
      text-align: center;
    }
    .time-box span { font-size: 1.6rem; font-weight: 600; display: block; }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 10px 4px 20px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      border: 1px solid #f0f4fa;
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 40px 20px;
      text-align: center;
    }
    .newsletter-box input {
      padding: 12px 20px;
      border-radius: 60px;
      border: none;
      width: 280px;
      max-width: 100%;
      margin-right: 6px;
      font-size: 0.95rem;
    }
    .newsletter-box .btn-primary {
      background: var(--accent);
      color: #001f2b;
    }

    /* footer */
    footer {
      margin-top: 30px;
      padding: 28px 0;
      border-top: 1px solid #eaf0f6;
      color: var(--muted);
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 900px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-flex; }
      .search-wrapper { min-width: 140px; }
      .hero h1 { font-size: 2.2rem; }
    }
    @media (max-width: 640px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrapper { order: 3; flex: 1 1 100%; margin-top: 4px; }
      .hero { min-height: 280px; border-radius: 0 0 24px 24px; }
      .hero h1 { font-size: 1.8rem; }
      .products-grid { grid-template-columns: 1fr 1fr; }
      .deal-card .deal-body { padding: 20px; }
    }
    @media (max-width: 440px) {
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .timer { flex-wrap: wrap; }
    }

    /* utilities */
    .muted { color: var(--muted); }
    .mt-12 { margin-top: 12px; }
    .gap-8 { gap: 8px; }
    .flex { display: flex; align-items: center; }
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

      <div class="flex" style="gap:12px;">
        <div class="search-wrapper" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user"></i></a>
          <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" aria-label="Cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eaf0f6; padding:8px 0;">
      <div class="container">
        <ul style="list-style:none; display:flex; flex-direction:column; gap:6px;">
          <li><a href="#" style="padding:8px 12px; border-radius:8px;">Home</a></li>
          <li><a href="#categories" style="padding:8px 12px; border-radius:8px;">Categories</a></li>
          <li><a href="#products" style="padding:8px 12px; border-radius:8px;">Trending</a></li>
          <li><a href="#deals" style="padding:8px 12px; border-radius:8px;">Deals</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero" aria-label="Hero">
      <div class="container">
        <h1>New Winter Collection</h1>
        <p>Premium picks in fashion, tech &amp; accessories. Free shipping on first order.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" id="categories">
      <h2 class="section-title">Shop by Category</h2>
      <p class="section-sub">Explore curated collections</p>
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
          <p class="muted">Thin, light, and powerful — M2 chip</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><span id="dealDays">0</span> Days</div>
            <div class="time-box"><span id="dealHours">00</span> Hrs</div>
            <div class="time-box"><span id="dealMinutes">00</span> Min</div>
            <div class="time-box"><span id="dealSeconds">00</span> Sec</div>
          </div>
          <div class="flex" style="gap:14px; flex-wrap:wrap;">
            <div><span class="price-current">$999</span> <span class="price-old">$1,199</span></div>
            <span style="background:#d32f2f; color:white; padding:4px 14px; border-radius:40px; font-weight:600;">-17%</span>
          </div>
          <p style="margin:10px 0 0;"><strong>12</strong> items left</p>
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
          <p>"Fast shipping, excellent support. Exceeded expectations!"</p>
          <div class="flex" style="gap:12px; margin-top:10px;">
            <div style="background:#b3d4fc; width:40px; height:40px; border-radius:40px; display:grid; place-items:center; font-weight:700;">AM</div>
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection, checkout was seamless. Will shop again."</p>
          <div class="flex" style="gap:12px; margin-top:10px;">
            <div style="background:#b3d4fc; width:40px; height:40px; border-radius:40px; display:grid; place-items:center; font-weight:700;">ML</div>
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter-box">
        <h3 style="font-family:'Poppins',sans-serif;">Stay in the loop</h3>
        <p style="opacity:0.9;">Exclusive offers &amp; new arrivals</p>
        <form id="newsletterForm" style="display:flex; justify-content:center; gap:8px; flex-wrap:wrap; margin-top:12px;">
          <input type="email" id="newsletterEmail" placeholder="Your email" required aria-label="Email" />
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:10px; display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex; flex-wrap:wrap; justify-content:space-between; gap:20px;">
      <div>
        <div style="font-weight:700; font-size:1.3rem;">NexusShop</div>
        <p class="muted" style="max-width:260px; margin-top:6px;">Modern e‑commerce demo built with care.</p>
        <div style="display:flex; gap:12px; margin-top:10px;">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div style="display:flex; gap:40px; flex-wrap:wrap;">
        <div><strong>Company</strong><div class="muted" style="line-height:1.8;">About<br/>Careers<br/>Press</div></div>
        <div><strong>Support</strong><div class="muted" style="line-height:1.8;">Help Center<br/>Shipping<br/>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center; margin-top:18px; color:var(--muted); font-size:0.85rem;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
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
          const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-')?'#d32f2f':'#2e7d32'};color:white;padding:4px 12px;border-radius:40px;font-weight:600;font-size:0.7rem;position:absolute;margin:12px;">${p.badge}</span>` : '';
          el.innerHTML = `
            <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${p.title}" loading="lazy"></div>
            <div class="product-body">
              <h5>${p.title}</h5>
              <div class="product-category">${p.category}</div>
              <div class="price-row">
                <div><span class="price-current">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:0.7rem;color:var(--muted)">(${p.reviews})</span></div>
              </div>
            </div>
            <div class="product-footer">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
            </div>
          `;
          productsGrid.appendChild(el);
        });
        // attach add events
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
          msg.textContent = 'Please enter a valid email.';
          msg.style.color = '#ffb3b3';
          return;
        }
        msg.style.display = 'block';
        msg.textContent = '✅ Subscribed!';
        msg.style.color = '#cce7ff';
        document.getElementById('newsletterEmail').value = '';
        setTimeout(() => msg.style.display = 'none', 2800);
      });

      // Init
      renderCategories();
      renderProducts(PRODUCTS);
      document.getElementById('year').textContent = new Date().getFullYear();
    })();
  </script>
</body>
</html>
`````
