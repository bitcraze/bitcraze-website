---
layout: page-front
title: Aerial Manipulation
page_id: aerial-manipulation
redirects:
  - /aerial-manipulation/
---

<div class="app-page">

<!-- ── Page title ────────────────────────────────────────────────────────── -->
<div class="container app-page-header">
  <h1 class="app-page-title">Aerial Manipulation</h1>
</div>

<!-- ── Section 1: Intro ──────────────────────────────────────────────────── -->
<div class="container app-intro-section">
  <h2 class="text-center">
    Interaction <span class="highlight-green">Beyond</span> Flight
  </h2>
  <div class="row justify-content-center">
    <div class="col-md-7">
      <div class="app-feature-row">
        <i class="fa-solid fa-hand-lizard"></i>
        <p>Aerial manipulation expands the role of flying robots beyond perception and motion into physical interaction. The Crazyflie<sup>®</sup>’s lightweight, modular architecture makes it ideal for exploring the control challenges and dynamics of contact-based operations and grasping in the air.</p>
      </div>
      <div class="app-feature-row">
        <i class="fa-solid fa-handshake"></i>
        <p>Researchers use the Crazyflie<sup>®</sup> for developing novel actuation mechanisms, adaptive control strategies, and cooperative manipulation techniques. Its open-source firmware and precise localization systems allow detailed evaluation of control responses during interaction.</p>
      </div>
    </div>
  </div>
</div>

<!-- ── Section 2: From Concept to Controlled Autonomy ───────────────────── -->
<div class="app-concept-row">
  <div class="app-concept-img-bleed">
    <img src="/images/applications/appl-card-aerial.webp" alt="Aerial Manipulation">
  </div>
  <div class="container">
    <div class="row align-items-stretch">
      <div class="col-md-5 app-concept-spacer"></div>
      <div class="col-12 col-md-7 text-box_platform d-flex align-items-center">
        <div>
          <h2 style="text-align: left;">Research Opportunities</h2>
          <p style="text-align: left; margin-bottom: 1rem;">With Crazyflie, researchers can implement and evaluate:</p>
          <ul class="app-concept-list">
            <li>Grasping and object transport using micro-manipulators.</li>
            <li>Force control and compliant interaction.</li>
            <li>Collaborative manipulation with multi-drone systems.</li>
            <li>Hybrid flight–contact modeling and control.</li>
            <li>Aerial reconfiguration and task adaptation.</li>
            <li>Physical interaction with structures and environments.</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- ── Section 3: Research in Action ────────────────────────────────────── -->
<div class="container app-research-section">
  <div class="app-research-card">
    <h2>Research in Action</h2>
    <p>Aerial manipulation extends robotics beyond flight alone, combining mobility with physical interaction. Projects using Crazyflie have demonstrated payload delivery, surface interaction, and force-controlled contact using lightweight grippers and extension decks.</p>
    <ul class="app-paper-card-list">
      <li><a href="https://ieeexplore.ieee.org/document/10382688"><h3>Efficient Optimization-Based Cable Force Allocation for Geometric Control of a Multirotor Team Transporting a Payload</h3><p>TU Berlin</p></a></li>
      <li><a href="https://ieeexplore.ieee.org/document/10802794"><h3>Kinodynamic Motion Planning for a Team of Multirotors Transporting a Cable-Suspended Payload in Cluttered Environments</h3><p>TU Berlin</p></a></li>
      <li><a href="https://ieeexplore.ieee.org/document/8461014"><h3>ModQuad: The Flying Modular Structure that Self-Assembles in Midair</h3><p>University of Pennsylvania</p></a></li>
      <li><a href="https://ieeexplore.ieee.org/document/8460682"><h3>A Flying Gripper Based on Cuboid Modular Robots</h3><p>University of Pennsylvania</p></a></li>
      <li><a href="https://ieeexplore.ieee.org/document/8793936"><h3>Compliant Bistable Gripper for Aerial Perching and Grasping</h3><p>Colorado State University</p></a></li>
    </ul>
  </div>
</div>

<!-- ── Section 4: Why the Crazyflie<sup>®</sup>? ───────────────────────────────────── -->
<div class="container-fluid value-props-banner">
  <div class="row justify-content-center mb-3">
    <div class="col-12 text-center">
      <h2 style="color: white;">
        <i class="fa-solid fa-drone highlight-green"></i>
        Why the <span class="highlight-dark-green">Crazyflie<sup>®</sup></span>?
      </h2>
    </div>
  </div>
  <div class="container">
    <div class="row g-4 align-items-start">
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-screwdriver-wrench"></i></div>
            <h3>Fully customizable hardware extensions for manipulators.</h3>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-crosshairs"></i></div>
            <h3>Precise motion capture and Lighthouse integration.</h3>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-sliders"></i></div>
            <h3>Open control architecture with high-rate feedback.</h3>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-shield-halved"></i></div>
            <h3>Safe and repeatable indoor experimentation.</h3>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-clone"></i></div>
            <h3>Reproducible experimental workflows across hardware, software, and localization systems.</h3>
          </div>
        </div>
        <div class="col-6 col-md-4">
          <div class="value-prop-card">
            <div class="card-icon"><i class="fa-solid fa-flask"></i></div>
            <h3>Simulation-to-hardware validation for evaluating manipulation strategies in physical environments.</h3>
          </div>
        </div>
      </div>
  </div>
</div>

<!-- ── Section 5: Reference Setup ────────────────────────────────────── -->
<div class="container app-product-section">
  <div class="app-bundle-section">
    <h3>Reference Setup</h3>
    <p>Every project has unique requirements, but many share common building blocks. The configurations below provide practical starting points for aerial manipulation research, combining flight platforms, localization systems, and expansion capabilities commonly used in grasping, payload transport, and physical interaction experiments.</p>
    <div class="row g-3 mt-4">
      <div class="col-12 col-md-4">
        <div class="app-bundle-card">
          <img src="/images/applications/bundle-lh-exp-2.1+.webp" alt="Lighthouse explorer bundle - Crazyflie 2.1 Brushless" class="app-bundle-img">
          <div class="app-bundle-tag">Featured</div>
          <div class="app-bundle-name">Lighthouse explorer bundle - Crazyflie 2.1 Brushless</div>
          <p class="app-bundle-desc">With the Lighthouse explorer bundle you'll get everything you need to try out the Lighthouse positioning system.</p>
          <a href="https://store.bitcraze.io/collections/bundles/products/lighthouse-explorer-bundle-crazyflie-2-1-brushless" class="btn btn-color-primary">Shop Bundle</a>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="app-bundle-card">
          <img src="/images/applications/bundle-lh-swarm-bl.webp" alt="Lighthouse swarm bundle - Crazyflie 2.1 Brushless" class="app-bundle-img">
          <div class="app-bundle-tag">Featured</div>
          <div class="app-bundle-name">Lighthouse swarm bundle - Crazyflie 2.1 Brushless</div>
          <p class="app-bundle-desc">With the Lighthouse swarm bundle, you will get your very own swarm of Crazyflie Brushless.</p>
          <a href="https://store.bitcraze.io/collections/bundles/products/lighthouse-swarm-bundle-crazyflie-2-1-brushless" class="btn btn-color-primary">Shop Bundle</a>
        </div>
      </div>
      <div class="col-12 col-md-4">
        <div class="app-bundle-card">
          <img src="/images/applications/bundle-happy-hacker-bl.webp" alt="Happy hacker bundle - Crazyflie 2.1 Brushless" class="app-bundle-img">
          <div class="app-bundle-tag">Featured</div>
          <div class="app-bundle-name">Happy hacker bundle - Crazyflie 2.1 Brushless</div>
          <p class="app-bundle-desc">The "Happy hacker bundle" has everything you need to get started with software, firmware and hardware development.</p>
          <a href="https://store.bitcraze.io/collections/bundles-crazyflie-2-1-brushless/products/happy-hacker-bundle-crazyflie-2-1-brushless" class="btn btn-color-primary">Shop Bundle</a>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- ── Section 6: Related Resources ────────────────────────────────────── -->
<div class="container-fluid appl-landing-cta" id="appl-cta">
  <div class="row justify-content-center">
    <div class="col-md-8 text-center">
      <h2>Related Resources</h2>
      <p>Aerial manipulation research is shaping new frontiers of autonomy and dexterity. Crazyflie provides a reproducible, open, and accessible foundation for these studies.</p>
      <div class="d-flex gap-3 justify-content-center flex-wrap">
        <a href="/documentation/system/" class="btn btn-color-primary appl-landing-cta-btn">System overview</a>
        <a href="/documentation/repository/" class="btn btn-color-secondary appl-landing-cta-btn">Repository overview</a>
      </div>
    </div>
  </div>
</div>

</div><!-- end .app-page -->

<script>
  (function () {
    function updateLines() {
      var fp  = document.querySelector('.front-page');
      var cta = document.getElementById('appl-cta');
      if (!fp || !cta) return;
      var sy     = window.scrollY || window.pageYOffset || 0;
      var fpTop  = fp.getBoundingClientRect().top  + sy;
      var ctaTop = cta.getBoundingClientRect().top + sy;
      // Left vertical line: navbar → top of Start Exploring
      fp.style.setProperty('--vline1-y', '0px');
      fp.style.setProperty('--vline1-h', Math.max(0, ctaTop - fpTop) + 'px');
    }
    function schedule() { requestAnimationFrame(updateLines); }
    document.addEventListener('DOMContentLoaded', schedule);
    window.addEventListener('load', schedule);
    window.addEventListener('resize', schedule);
  })();
</script>