<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — User Friendly Store</title>

<!-- Keep these CDN links if your app has internet access. The UI itself needs no framework. -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --bg:#f7f8fc;--card:#fff;--text:#111827;--muted:#667085;--line:#e8ebf0;
  --brand:#635bff;--brand2:#4f46e5;--brand-soft:#eeecff;
  --dark:#171923;--success:#16a34a;--danger:#ef4444;--warning:#f59e0b;
  --shadow:0 10px 35px rgba(17,24,39,.07);--shadow2:0 20px 55px rgba(17,24,39,.13);
  --radius:20px;--small:12px;--max:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;scroll-padding-top:100px}
body{font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
body.lock{overflow:hidden}
a{text-decoration:none;color:inherit}button,input,select{font:inherit}
button{border:0;background:none;cursor:pointer}
img{max-width:100%;display:block}
.container{width:min(var(--max),calc(100% - 36px));margin:auto}
.muted{color:var(--muted)}
.hidden{display:none!important}

/* announcement */
.announce{background:var(--dark);color:#fff;font-size:13px}
.announce .container{height:38px;display:flex;justify-content:center;align-items:center;gap:10px}
.announce b{color:#b8b3ff}

/* header */
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.92);backdrop-filter:blur(18px);border-bottom:1px solid var(--line)}
.header-main{min-height:74px;display:flex;align-items:center;gap:22px}
.logo{display:flex;align-items:center;gap:10px;font-size:21px;font-weight:900;letter-spacing:-.7px;white-space:nowrap}
.logo-mark{width:38px;height:38px;border-radius:12px;background:linear-gradient(135deg,var(--brand),#8b5cf6);color:#fff;display:grid;place-items:center;box-shadow:0 7px 18px rgba(99,91,255,.28)}
.logo em{font-style:normal;color:var(--brand)}
.nav{display:flex;align-items:center;gap:3px}
.nav a{padding:10px 13px;border-radius:10px;color:#5b6472;font-size:14px;font-weight:600}
.nav a:hover,.nav a.active{background:#f1f2f6;color:var(--text)}
.header-search{flex:1;max-width:390px;margin-left:auto;position:relative}
.header-search i{position:absolute;left:15px;top:50%;transform:translateY(-50%);color:#98a2b3}
.header-search input{width:100%;height:44px;border:1px solid var(--line);background:#f6f7f9;border-radius:13px;padding:0 15px 0 43px;outline:none}
.header-search input:focus{background:#fff;border-color:#aaa4ff;box-shadow:0 0 0 4px rgba(99,91,255,.10)}
.actions{display:flex;align-items:center;gap:4px}
.icon-btn{width:42px;height:42px;border-radius:12px;display:grid;place-items:center;color:#4b5563;position:relative}
.icon-btn:hover{background:#f2f3f7;color:var(--brand)}
.count{position:absolute;right:2px;top:0;min-width:19px;height:19px;padding:0 5px;border-radius:20px;background:var(--brand);color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center;border:2px solid #fff}
.mobile-menu-btn{display:none}

/* main */
main{padding-bottom:20px}
.hero{margin:24px 0 8px;border-radius:28px;min-height:470px;overflow:hidden;position:relative;background:
linear-gradient(90deg,rgba(12,15,28,.92) 0%,rgba(12,15,28,.70) 48%,rgba(12,15,28,.20) 100%),
url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero-content{min-height:470px;display:flex;align-items:center;padding:50px}
.hero-copy{max-width:620px;color:#fff}
.eyebrow{display:inline-flex;align-items:center;gap:8px;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.18);padding:8px 13px;border-radius:30px;font-size:12px;font-weight:800;letter-spacing:.2px}
.hero h1{font-size:clamp(38px,5vw,68px);line-height:1.02;letter-spacing:-2.8px;margin:18px 0 18px}
.hero p{font-size:17px;line-height:1.7;color:rgba(255,255,255,.78);max-width:540px}
.hero-actions{display:flex;gap:10px;margin-top:28px;flex-wrap:wrap}
.btn{height:46px;padding:0 20px;border-radius:12px;display:inline-flex;align-items:center;justify-content:center;gap:9px;font-size:14px;font-weight:800;transition:.2s}
.btn-primary{background:var(--brand);color:#fff;box-shadow:0 10px 25px rgba(99,91,255,.28)}
.btn-primary:hover{background:var(--brand2);transform:translateY(-2px)}
.btn-light{background:#fff;color:var(--text)}
.btn-light:hover{transform:translateY(-2px);box-shadow:0 8px 22px rgba(0,0,0,.14)}
.btn-outline{background:#fff;border:1px solid var(--line);color:var(--text)}
.btn-outline:hover{border-color:#bcb8ff;color:var(--brand)}
.hero-meta{display:flex;gap:28px;margin-top:34px}
.hero-meta strong{display:block;font-size:19px}.hero-meta span{font-size:11px;color:rgba(255,255,255,.62)}

/* sections */
.section{padding:44px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:15px;margin-bottom:20px}
.section-head h2{font-size:27px;letter-spacing:-.8px}
.section-head p{font-size:14px;color:var(--muted);margin-top:3px}
.text-link{color:var(--brand);font-size:13px;font-weight:800}

/* categories */
.category-strip{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.category{background:var(--card);border:1px solid var(--line);border-radius:17px;padding:17px 10px;text-align:center;transition:.2s;cursor:pointer}
.category:hover,.category.selected{border-color:#c7c2ff;box-shadow:var(--shadow);transform:translateY(-3px)}
.category-icon{width:48px;height:48px;border-radius:15px;background:var(--brand-soft);color:var(--brand);display:grid;place-items:center;margin:0 auto 9px;font-size:19px}
.category strong{font-size:13px;display:block}.category small{color:#98a2b3;font-size:11px}

/* toolbar */
.shop-toolbar{display:flex;align-items:center;gap:10px;justify-content:space-between;background:#fff;border:1px solid var(--line);padding:12px;border-radius:16px;margin-bottom:18px}
.filter-pills{display:flex;gap:7px;overflow:auto}
.pill{border:1px solid var(--line);background:#fff;padding:8px 12px;border-radius:9px;font-size:12px;font-weight:700;white-space:nowrap}
.pill.active,.pill:hover{background:var(--brand-soft);border-color:#cbc7ff;color:var(--brand)}
.sort{height:36px;border:1px solid var(--line);border-radius:9px;padding:0 10px;background:#fff;color:#475467;font-size:12px;font-weight:700}

/* products */
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:16px}
.product{background:#fff;border:1px solid var(--line);border-radius:18px;overflow:hidden;transition:.22s;position:relative}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow2)}
.product-image{aspect-ratio:1/1;background:#f1f3f6;position:relative;overflow:hidden}
.product-image img{width:100%;height:100%;object-fit:cover;transition:.35s}
.product:hover .product-image img{transform:scale(1.045)}
.badge{position:absolute;left:10px;top:10px;padding:5px 9px;border-radius:7px;background:#111827;color:#fff;font-size:10px;font-weight:900;z-index:2}
.badge.sale{background:#fef3c7;color:#92400e}.badge.new{background:var(--brand);color:#fff}
.wish{position:absolute;right:10px;top:10px;width:35px;height:35px;border-radius:10px;background:rgba(255,255,255,.94);display:grid;place-items:center;color:#667085;z-index:3}
.wish.active{color:var(--danger);background:#fff0f1}
.product-body{padding:14px}
.product-cat{font-size:10px;text-transform:uppercase;letter-spacing:.7px;font-weight:800;color:#98a2b3}
.product h3{font-size:14px;margin:5px 0 7px;line-height:1.35;min-height:38px}
.rating{font-size:11px;color:#f59e0b}.rating span{color:#98a2b3;margin-left:3px}
.price-line{display:flex;align-items:center;gap:8px;margin:9px 0 12px}
.price{font-size:17px;font-weight:900}.old{text-decoration:line-through;color:#a3aab5;font-size:12px}
.add{width:100%;height:40px;border-radius:10px;background:#f1f2f6;color:#171923;font-size:12px;font-weight:900}
.add:hover{background:var(--brand);color:#fff}.add.added{background:#dcfce7;color:#166534}
.no-results{grid-column:1/-1;background:#fff;border:1px dashed #d8dce4;border-radius:18px;text-align:center;padding:55px 20px;color:var(--muted)}

/* flash deal */
.deal{background:linear-gradient(120deg,#171923,#25283b);border-radius:24px;overflow:hidden;color:#fff;display:grid;grid-template-columns:1fr 1fr}
.deal-image{min-height:370px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85') center/cover}
.deal-content{padding:45px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{color:#ffd66b;font-size:11px;font-weight:900;text-transform:uppercase;letter-spacing:1px}
.deal h2{font-size:34px;letter-spacing:-1.2px;margin:9px 0}
.deal p{color:#b7bcc9;font-size:14px;max-width:450px}
.deal-price{margin:18px 0;font-size:31px;font-weight:900}.deal-price del{font-size:17px;color:#818797;font-weight:500;margin-left:8px}
.timer{display:flex;gap:8px;margin:4px 0 20px}
.time{width:67px;padding:9px 5px;background:#303447;border:1px solid #3d4154;border-radius:11px;text-align:center}
.time b{display:block;font-size:20px}.time span{font-size:9px;color:#9fa5b4;text-transform:uppercase}
.deal .btn{align-self:flex-start}

/* benefits */
.benefits{display:grid;grid-template-columns:repeat(4,1fr);gap:12px}
.benefit{background:#fff;border:1px solid var(--line);border-radius:16px;padding:20px;display:flex;gap:13px}
.benefit i{color:var(--brand);font-size:20px}.benefit strong{font-size:12px;display:block}.benefit span{font-size:11px;color:var(--muted)}

/* reviews */
.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}
.review{background:#fff;border:1px solid var(--line);border-radius:18px;padding:21px}
.review .quote{font-size:25px;color:#c8c4ff}.review p{font-size:13px;color:#475467;line-height:1.7;margin:5px 0 16px}
.reviewer{display:flex;align-items:center;gap:10px}.avatar{width:40px;height:40px;border-radius:50%;object-fit:cover}.reviewer b{font-size:12px;display:block}.reviewer span{font-size:10px;color:#98a2b3}

/* newsletter */
.newsletter{background:linear-gradient(135deg,#635bff,#8b5cf6);border-radius:24px;color:#fff;padding:38px 42px;display:flex;align-items:center;justify-content:space-between;gap:25px}
.newsletter h2{font-size:25px}.newsletter p{font-size:13px;color:rgba(255,255,255,.75);margin-top:4px}
.newsletter form{display:flex;gap:8px;width:min(470px,100%)}.newsletter input{height:46px;border:0;border-radius:11px;padding:0 14px;outline:none;flex:1;min-width:0}.newsletter .btn{background:#111827;color:#fff}

/* footer */
footer{padding:40px 0 25px;background:#fff;border-top:1px solid var(--line);margin-top:30px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}
.footer-grid h4{font-size:12px;margin-bottom:12px}.footer-grid li{list-style:none;color:#667085;font-size:12px;margin:8px 0}.footer-grid li a:hover{color:var(--brand)}
.footer-brand p{font-size:12px;color:var(--muted);max-width:290px;margin-top:10px}
.social{display:flex;gap:7px;margin-top:15px}.social a{width:34px;height:34px;border-radius:9px;background:#f1f2f6;display:grid;place-items:center;font-size:12px}
.footer-bottom{border-top:1px solid var(--line);margin-top:30px;padding-top:18px;text-align:center;color:#98a2b3;font-size:11px}

/* toast */
.toast{position:fixed;right:20px;bottom:20px;z-index:100;transform:translateY(120px);opacity:0;background:#111827;color:#fff;border-radius:13px;padding:13px 16px;box-shadow:var(--shadow2);font-size:12px;font-weight:700;transition:.25s}
.toast.show{transform:none;opacity:1}

/* drawer */
.overlay{position:fixed;inset:0;background:rgba(15,23,42,.48);z-index:70;opacity:0;visibility:hidden;transition:.2s}
.overlay.open{opacity:1;visibility:visible}
.cart-drawer{position:fixed;right:0;top:0;height:100%;width:min(410px,92vw);background:#fff;z-index:80;transform:translateX(100%);transition:.28s;display:flex;flex-direction:column}
.cart-drawer.open{transform:none}
.drawer-head{height:70px;border-bottom:1px solid var(--line);display:flex;align-items:center;justify-content:space-between;padding:0 20px}
.drawer-head h3{font-size:16px}.close{width:36px;height:36px;border-radius:10px;background:#f2f3f6}
.cart-items{padding:18px;overflow:auto;flex:1}
.cart-empty{text-align:center;color:var(--muted);padding:70px 20px}.cart-empty i{font-size:42px;color:#d5d8df;margin-bottom:15px}
.cart-row{display:grid;grid-template-columns:58px 1fr auto;gap:11px;align-items:center;padding:11px 0;border-bottom:1px solid var(--line)}
.cart-row img{width:58px;height:58px;border-radius:10px;object-fit:cover}
.cart-row h4{font-size:12px}.cart-row small{color:var(--muted);font-size:10px}
.qty{display:flex;align-items:center;gap:7px;margin-top:5px}.qty button{width:23px;height:23px;border:1px solid var(--line);border-radius:6px}
.remove{color:#98a2b3;font-size:12px}
.drawer-foot{border-top:1px solid var(--line);padding:18px}.total{display:flex;justify-content:space-between;font-weight:900;margin-bottom:13px}.checkout{width:100%}

/* mobile */
.bottom-nav{display:none}
@media(max-width:1050px){
 .nav{display:none}.mobile-menu-btn{display:grid}.category-strip{grid-template-columns:repeat(3,1fr)}
 .products{grid-template-columns:repeat(3,1fr)}.benefits{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:760px){
 .container{width:min(var(--max),calc(100% - 24px))}
 .announce{font-size:11px}.header-main{min-height:64px;gap:8px}.logo{font-size:17px}.logo-mark{width:34px;height:34px}
 .header-search{order:5;position:absolute;left:12px;right:12px;top:68px;max-width:none;display:none}
 header.search-open .header-search{display:block}
 .actions .desktop-only{display:none}.icon-btn{width:38px;height:38px}
 .hero{margin-top:18px;border-radius:21px;min-height:500px}.hero-content{min-height:500px;padding:28px 24px;align-items:end}
 .hero h1{letter-spacing:-1.8px}.hero p{font-size:14px}.hero-meta{gap:18px}.hero-meta strong{font-size:16px}
 .section{padding:32px 0}.section-head h2{font-size:22px}
 .category-strip{display:flex;overflow:auto;padding:2px 1px 8px}.category{min-width:135px}
 .shop-toolbar{align-items:stretch;flex-direction:column}.filter-pills{order:1}.sort{width:100%}
 .products{grid-template-columns:repeat(2,1fr);gap:10px}.product h3{font-size:12px;min-height:34px}.product-body{padding:11px}.price{font-size:15px}.add{height:38px}
 .deal{grid-template-columns:1fr}.deal-image{min-height:220px}.deal-content{padding:28px 22px}.deal h2{font-size:27px}.deal-price{font-size:26px}
 .benefits{grid-template-columns:1fr 1fr;gap:9px}.benefit{padding:14px}.benefit i{font-size:16px}
 .reviews{grid-template-columns:1fr}.review:nth-child(n+3){display:none}
 .newsletter{padding:28px 20px;display:block}.newsletter form{margin-top:18px}
 .footer-grid{grid-template-columns:1fr 1fr;gap:25px}.footer-brand{grid-column:1/-1}
 .bottom-nav{position:fixed;bottom:0;left:0;right:0;height:63px;background:rgba(255,255,255,.96);backdrop-filter:blur(15px);border-top:1px solid var(--line);z-index:60;display:grid;grid-template-columns:repeat(4,1fr)}
 .bottom-nav button{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:3px;color:#667085;font-size:10px;font-weight:700}.bottom-nav button.active{color:var(--brand)}.bottom-nav i{font-size:17px}
 body{padding-bottom:62px}
}
@media(max-width:430px){.hero-meta{display:none}.hero-actions .btn{width:100%}.benefits{grid-template-columns:1fr}.footer-grid{grid-template-columns:1fr}.footer-brand{grid-column:auto}}
</style>
</head>

<body>
<div class="announce"><div class="container"><i class="fa-solid fa-bolt"></i> <span>Weekend special:</span> <b>Free shipping on orders over $50</b></div></div>

<header id="header">
  <div class="container header-main">
    <button class="icon-btn mobile-menu-btn" id="mobileMenuBtn" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a href="#" class="logo"><span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span><span>Nexus<em>Shop</em></span></a>

    <nav class="nav">
      <a class="active" href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Shop</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
    </nav>

    <div class="header-search" role="search">
      <i class="fa-solid fa-magnifying-glass"></i>
      <input id="searchInput" type="search" placeholder="Search products, brands..." aria-label="Search products">
    </div>

    <div class="actions">
      <button class="icon-btn desktop-only" id="searchBtn" title="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
      <button class="icon-btn" id="accountBtn" title="Account"><i class="fa-regular fa-user"></i></button>
      <button class="icon-btn" id="wishlistBtn" title="Wishlist"><i class="fa-regular fa-heart"></i><span class="count" id="wishCount">0</span></button>
      <button class="icon-btn" id="cartBtn" title="Cart"><i class="fa-solid fa-bag-shopping"></i><span class="count" id="cartCount">0</span></button>
    </div>
  </div>
</header>

<main id="home">
  <section class="container hero">
    <div class="hero-content">
      <div class="hero-copy">
        <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season · 2026</span>
        <h1>Everything you want, in one place.</h1>
        <p>Discover carefully selected tech, fashion and everyday essentials. Simple shopping, clear prices and fast delivery.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Start Shopping <i class="fa-solid fa-arrow-right"></i></button>
          <button class="btn btn-light" id="heroDeals"><i class="fa-solid fa-bolt"></i> Today's Deals</button>
        </div>
        <div class="hero-meta"><div><strong>10k+</strong><span>Happy customers</span></div><div><strong>4.8/5</strong><span>Average rating</span></div><div><strong>24h</strong><span>Fast dispatch</span></div></div>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-head"><div><h2>Shop by category</h2><p>Pick a category and find what you need faster.</p></div><a class="text-link" href="#products">View products <i class="fa-solid fa-arrow-right"></i></a></div>
      <div class="category-strip" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-head"><div><h2>Popular right now</h2><p id="resultText">Top picks from the NexusShop collection.</p></div></div>
      <div class="shop-toolbar">
        <div class="filter-pills" id="filterPills">
          <button class="pill active" data-filter="all">All products</button>
          <button class="pill" data-filter="new">New</button>
          <button class="pill" data-filter="sale">On sale</button>
          <button class="pill" data-filter="top">Top rated</button>
        </div>
        <select class="sort" id="sortSelect" aria-label="Sort products">
          <option value="featured">Sort: Featured</option><option value="low">Price: Low to high</option><option value="high">Price: High to low</option><option value="rating">Rating</option>
        </select>
      </div>
      <div class="products" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="deal">
        <div class="deal-image"></div>
        <div class="deal-content">
          <span class="deal-tag"><i class="fa-solid fa-bolt"></i> Flash deal</span>
          <h2>MacBook Air M2</h2>
          <p>Thin, light and powerful. Save $200 while this limited stock offer lasts.</p>
          <div class="deal-price">$999 <del>$1,199</del></div>
          <div class="timer" id="dealTimer">
            <div class="time"><b id="dealDays">0</b><span>Days</span></div><div class="time"><b id="dealHours">00</b><span>Hours</span></div>
            <div class="time"><b id="dealMinutes">00</b><span>Mins</span></div><div class="time"><b id="dealSeconds">00</b><span>Secs</span></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fa-solid fa-bag-shopping"></i> Add deal to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="benefits">
        <div class="benefit"><i class="fa-solid fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Reliable doorstep delivery.</span></div></div>
        <div class="benefit"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure checkout</strong><span>Your payment is protected.</span></div></div>
        <div class="benefit"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>Simple return process.</span></div></div>
        <div class="benefit"><i class="fa-solid fa-headset"></i><div><strong>Friendly support</strong><span>We're here when you need us.</span></div></div>
      </div>
    </div>
  </section>

  <section class="section" id="reviews">
    <div class="container">
      <div class="section-head"><div><h2>Customers love NexusShop</h2><p>Real feedback from our shoppers.</p></div></div>
      <div class="reviews" id="reviewsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container newsletter">
      <div><h2>Get better deals in your inbox</h2><p>New arrivals, price drops and exclusive offers. No spam.</p></div>
      <form id="newsletterForm"><input id="newsletterEmail" type="email" placeholder="Your email address" required><button class="btn" type="submit">Subscribe</button></form>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand"><a class="logo" href="#"><span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span><span>Nexus<em>Shop</em></span></a><p>A cleaner, friendlier shopping experience for everyday products.</p><div class="social"><a href="#"><i class="fa-brands fa-instagram"></i></a><a href="#"><i class="fa-brands fa-facebook-f"></i></a><a href="#"><i class="fa-brands fa-x-twitter"></i></a></div></div>
      <div><h4>Shop</h4><ul><li><a href="#products">All products</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Deals</a></li></ul></div>
      <div><h4>Support</h4><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
      <div><h4>Company</h4><ul><li><a href="#">About us</a></li><li><a href="#">Contact</a></li><li><a href="#">Privacy</a></li></ul></div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<nav class="bottom-nav">
  <button class="active" onclick="location.href='#home'"><i class="fa-solid fa-house"></i>Home</button>
  <button onclick="location.href='#categories'"><i class="fa-solid fa-grid-2"></i>Categories</button>
  <button onclick="location.href='#products'"><i class="fa-solid fa-shop"></i>Shop</button>
  <button id="mobileCartBtn"><i class="fa-solid fa-bag-shopping"></i>Cart</button>
</nav>

<div class="toast" id="toast"></div>
<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart">
  <div class="drawer-head"><h3>Your cart</h3><button class="close" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="cart-items" id="cartItems"></div>
  <div class="drawer-foot"><div class="total"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary checkout" id="checkoutBtn">Proceed to checkout</button></div>
</aside>

<script>
const CATEGORIES=[
 {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',count:24},
 {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
 {id:'clothing',name:'Clothing',icon:'fa-shirt',count:42},
 {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
 {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
 {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];
const PRODUCTS=[
 {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'Smartphones'},
 {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'Laptops'},
 {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'Footwear'},
 {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'Gadgets'},
 {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
 {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'Gadgets'}
];
const REVIEWS=[
 {name:'Ava Martin',role:'Verified buyer',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',text:'Fast shipping and excellent support. The product exceeded my expectations!',stars:5},
 {name:'Michael Lee',role:'Frequent shopper',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80',text:'Great selection and a smooth checkout. I will definitely shop again.',stars:4},
 {name:'Sophia Chen',role:'Verified buyer',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80',text:'Love the quality and packaging. Everything arrived in perfect condition.',stars:5}
];

let cart={},wishlist=new Set(),activeFilter='all',query='';

const $=id=>document.getElementById(id);
function money(n){return '$'+n.toLocaleString();}
function toast(msg){$('toast').textContent=msg;$('toast').classList.add('show');clearTimeout(window.toastT);window.toastT=setTimeout(()=>$('toast').classList.remove('show'),2200)}
function renderCategories(){
 $('categoriesGrid').innerHTML=CATEGORIES.map(c=>`<button class="category" data-cat="${c.name}">
  <span class="category-icon"><i class="fa-solid ${c.icon}"></i></span><strong>${c.name}</strong><small>${c.count} items</small>
 </button>`).join('');
 document.querySelectorAll('.category').forEach(b=>b.onclick=()=>{
   query=b.dataset.cat.toLowerCase();$('searchInput').value=b.dataset.cat;activeFilter='all';
   document.querySelectorAll('.pill').forEach(x=>x.classList.toggle('active',x.dataset.filter==='all'));
   renderProducts();location.hash='products';
 });
}
function filtered(){
 let list=PRODUCTS.filter(p=>{
   const matchesQuery=!query||p.title.toLowerCase().includes(query)||p.category.toLowerCase().includes(query);
   const matchesFilter=activeFilter==='all'||(activeFilter==='new'&&p.badge==='New')||(activeFilter==='sale'&&p.badge==='Sale')||(activeFilter==='top'&&p.rating>=5);
   return matchesQuery&&matchesFilter;
 });
 const sort=$('sortSelect').value;
 if(sort==='low')list.sort((a,b)=>a.price-b.price);
 if(sort==='high')list.sort((a,b)=>b.price-a.price);
 if(sort==='rating')list.sort((a,b)=>b.rating-a.rating);
 return list;
}
function renderProducts(){
 const list=filtered();
 $('resultText').textContent=list.length?`${list.length} product${list.length!==1?'s':''} found — choose your favorite.`:'No products match your search.';
 $('productsGrid').innerHTML=list.length?list.map(p=>{
   const wished=wishlist.has(p.id);
   return `<article class="product">
    <div class="product-image"><img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
      ${p.badge?`<span class="badge ${p.badge==='Sale'?'sale':'new'}">${p.badge}</span>`:''}
      <button class="wish ${wished?'active':''}" data-wish="${p.id}" aria-label="Wishlist"><i class="${wished?'fa-solid':'fa-regular'} fa-heart"></i></button>
    </div>
    <div class="product-body"><div class="product-cat">${p.category}</div><h3>${escapeHtml(p.title)}</h3>
      <div class="rating">${'★'.repeat(p.rating)}<span>(${p.reviews})</span></div>
      <div class="price-line"><span class="price">${money(p.price)}</span>${p.oldPrice?`<span class="old">${money(p.oldPrice)}</span>`:''}</div>
      <button class="add" data-add="${p.id}"><i class="fa-solid fa-bag-shopping"></i> Add to cart</button>
    </div></article>`;
 }).join(''):`<div class="no-results"><i class="fa-regular fa-face-frown" style="font-size:30px;margin-bottom:10px"></i><h3>Nothing found</h3><p>Try another product name or category.</p></div>`;
 document.querySelectorAll('[data-add]').forEach(b=>b.onclick=()=>addToCart(+b.dataset.add));
 document.querySelectorAll('[data-wish]').forEach(b=>b.onclick=()=>toggleWish(+b.dataset.wish));
}
function renderReviews(){
 $('reviewsList').innerHTML=REVIEWS.map(r=>`<article class="review"><div class="quote">“</div><div class="rating">${'★'.repeat(r.stars)}</div><p>${escapeHtml(r.text)}</p><div class="reviewer"><img class="avatar" src="${r.avatar}" alt=""><div><b>${escapeHtml(r.name)}</b><span>${escapeHtml(r.role)}</span></div></div></article>`).join('');
}
function addToCart(id){
 cart[id]=(cart[id]||0)+1;renderCart();renderProducts();toast('Added to your cart');
}
function changeQty(id,delta){
 cart[id]=(cart[id]||0)+delta;if(cart[id]<=0)delete cart[id];renderCart();
}
function toggleWish(id){
 if(wishlist.has(id)){wishlist.delete(id);toast('Removed from wishlist')}else{wishlist.add(id);toast('Added to wishlist')}
 $('wishCount').textContent=wishlist.size;renderProducts();
}
function renderCart(){
 let ids=Object.keys(cart).map(Number),total=0,count=0;
 if(!ids.length){$('cartItems').innerHTML='<div class="cart-empty"><i class="fa-solid fa-bag-shopping"></i><h3>Your cart is empty</h3><p>Add something you love and it will appear here.</p></div>'}
 else{
  $('cartItems').innerHTML=ids.map(id=>{const p=PRODUCTS.find(x=>x.id===id),q=cart[id];total+=p.price*q;count+=q;
   return `<div class="cart-row"><img src="${p.img}" alt=""><div><h4>${escapeHtml(p.title)}</h4><small>${money(p.price)} each</small><div class="qty"><button onclick="changeQty(${id},-1)">−</button><b>${q}</b><button onclick="changeQty(${id},1)">+</button></div></div><button class="remove" onclick="changeQty(${id},-${q})"><i class="fa-solid fa-trash"></i></button></div>`
  }).join('');
 }
 $('cartCount').textContent=count;$('cartTotal').textContent=money(total);
}
function openCart(){$('overlay').classList.add('open');$('cartDrawer').classList.add('open');document.body.classList.add('lock')}
function closeCart(){$('overlay').classList.remove('open');$('cartDrawer').classList.remove('open');document.body.classList.remove('lock')}
function escapeHtml(s){return String(s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]))}

$('searchInput').addEventListener('input',e=>{query=e.target.value.trim().toLowerCase();renderProducts()});
$('searchBtn').onclick=()=>{$('header').classList.toggle('search-open');$('searchInput').focus()};
$('sortSelect').onchange=renderProducts;
document.querySelectorAll('.pill').forEach(b=>b.onclick=()=>{activeFilter=b.dataset.filter;document.querySelectorAll('.pill').forEach(x=>x.classList.toggle('active',x===b));renderProducts()});
$('cartBtn').onclick=openCart;$('mobileCartBtn').onclick=openCart;$('closeCart').onclick=closeCart;$('overlay').onclick=closeCart;
$('accountBtn').onclick=()=>toast('Account area is ready for your login integration');
$('wishlistBtn').onclick=()=>{activeFilter='all';query='';$('searchInput').value='';renderProducts();location.hash='products';toast(`${wishlist.size} item${wishlist.size!==1?'s':''} in your wishlist`)};
$('shopNow').onclick=()=>location.hash='products';$('heroDeals').onclick=()=>location.hash='deals';
$('checkoutBtn').onclick=()=>toast(Object.keys(cart).length?'Checkout integration can be connected here':'Your cart is empty');
$('mobileMenuBtn').onclick=()=>{document.querySelector('.nav').style.display=document.querySelector('.nav').style.display==='flex'?'none':'flex';document.querySelector('.nav').style.position='absolute';document.querySelector('.nav').style.top='64px';document.querySelector('.nav').style.left='12px';document.querySelector('.nav').style.right='12px';document.querySelector('.nav').style.padding='10px';document.querySelector('.nav').style.background='#fff';document.querySelector('.nav').style.border='1px solid #e8ebf0';document.querySelector('.nav').style.borderRadius='14px';document.querySelector('.nav').style.flexDirection='column';document.querySelector('.nav').style.alignItems='stretch'};
document.querySelectorAll('.nav a').forEach(a=>a.onclick=()=>document.querySelector('.nav').style.display='none');

$('newsletterForm').onsubmit=e=>{e.preventDefault();const email=$('newsletterEmail').value.trim();if(!email.includes('@'))return toast('Please enter a valid email');$('newsletterEmail').value='';toast('Thanks for subscribing!')};

const dealEnd=Date.now()+24*60*60*1000+36*60*1000;
function tick(){
 let d=Math.max(0,dealEnd-Date.now()),days=Math.floor(d/86400000),h=Math.floor(d%86400000/3600000),m=Math.floor(d%3600000/60000),s=Math.floor(d%60000/1000);
 $('dealDays').textContent=days;$('dealHours').textContent=String(h).padStart(2,'0');$('dealMinutes').textContent=String(m).padStart(2,'0');$('dealSeconds').textContent=String(s).padStart(2,'0');
}
$('buyDeal').onclick=()=>addToCart(2);

renderCategories();renderProducts();renderReviews();renderCart();tick();setInterval(tick,1000);
$('year').textContent=new Date().getFullYear();
</script>
</body>
</html>
