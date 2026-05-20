---
layout: page-front
title: Applications and Research Areas
page_id: applications-landing
redirects:
  - /applications/
---

<!-- Intro section -->
<div class="container text-center appl-landing-intro">
  <h1 class="appl-landing-title">Applications and Research Areas</h1>
  <h2 class="appl-landing-subtitle">
    Explore What You Can <span class="highlight-green">Build</span>, <span class="highlight-green">Test</span>, and<br>
    <span class="highlight-green">Discover</span> with the <span class="cf-wordmark">Crazyflie™</span> Ecosystem
  </h2>
  <div class="row justify-content-center">
    <div class="col-md-7">
      <p>Bitcraze creates open tools for exploration in robotics. Our technology is used by researchers, educators, and innovators around the world to advance the understanding of autonomous flight, sensing, swarm behavior, and human–robot collaboration.</p>
      <p>Explore the main application areas below to see how the Crazyflie™ can be used in your field.</p>
    </div>
  </div>
</div>

<!-- Application cards -->
<div class="container appl-cards-section appl-cards-section--no-divider">
  <div class="row justify-content-center g-3">

    <div class="col-6 col-md-auto">
      <div class="appl-card appl-card--autosys appl-card--has-desc">
        <div class="appl-card-header">
          <h3>Autonomous<br>Systems</h3>
          <p class="appl-card-desc">Study autonomous flight, adaptive control, and multi-agent decision-making using an open, flexible hardware–software platform.</p>
          <a href="/applications/autonomous-systems/" class="btn appl-card-btn">Discover more</a>
        </div>
        <div class="appl-card-img-wrap">
          <img src="/images/frontpage/appl-autosys.png" alt="Autonomous Systems">
        </div>
      </div>
    </div>

    <div class="col-6 col-md-auto">
      <div class="appl-card appl-card--swarm appl-card--has-desc">
        <div class="appl-card-header">
          <h3>Swarm<br>Robotics</h3>
          <p class="appl-card-desc">Explore collective behavior, multi-drone coordination, and distributed algorithms with scalable swarm experiments.</p>
          <a href="/applications/swarm-robotics/" class="btn appl-card-btn">Discover more</a>
        </div>
        <div class="appl-card-img-wrap">
          <img src="/images/frontpage/appl-swarm.png" alt="Swarm Robotics">
        </div>
      </div>
    </div>

    <div class="col-6 col-md-auto">
      <div class="appl-card appl-card--hri appl-card--has-desc">
        <div class="appl-card-header">
          <h3>Human–Robot Interaction &amp; Education</h3>
          <p class="appl-card-desc">Study how humans perceive, interact with, and learn alongside aerial robots in controlled research settings.</p>
          <a href="/applications/human-robot-interaction/" class="btn appl-card-btn">Discover more</a>
        </div>
        <div class="appl-card-img-wrap">
          <img src="/images/frontpage/appl-hri.png" alt="Human-Robot Interaction and Education">
        </div>
      </div>
    </div>

    <div class="col-6 col-md-auto">
      <div class="appl-card appl-card--stem appl-card--has-desc">
        <div class="appl-card-header">
          <h3>STEM and Higher Education</h3>
          <p class="appl-card-desc">Bring robotics and programming to life in the classroom with a safe, hands-on nano-drone platform.</p>
          <a href="/applications/stem-education/" class="btn appl-card-btn">Discover more</a>
        </div>
        <div class="appl-card-img-wrap">
          <img src="/images/frontpage/appl-stem.png" alt="STEM and Higher Education">
        </div>
      </div>
    </div>

    <div class="col-6 col-md-auto">
      <div class="appl-card appl-card--percept appl-card--has-desc">
        <div class="appl-card-header">
          <h3>Perception &amp; Navigation</h3>
          <p class="appl-card-desc">Develop and test sensor fusion, localization, and onboard perception for autonomous indoor navigation.</p>
          <a href="/applications/perception-navigation/" class="btn appl-card-btn">Discover more</a>
        </div>
        <div class="appl-card-img-wrap">
          <img src="/images/frontpage/appl-percept.png" alt="Perception and Navigation">
        </div>
      </div>
    </div>

  </div>
</div>

<!-- Start Exploring CTA -->
<div class="container-fluid appl-landing-cta" id="appl-cta">
  <div class="row justify-content-center">
    <div class="col-md-8 text-center">
      <h2>Start Exploring</h2>
      <p>Each of these domains represents an active frontier of research. Visit our Research Portal for detailed case studies, published papers and open-source examples that show how the Crazyflie™ platform is already being used to make new discoveries and build new educational experiences.</p>
      <a href="#" class="btn btn-color-primary appl-landing-cta-btn">Click to visit the Research Portal</a>
    </div>
  </div>
</div>

<script>
  (function () {
    function updateLines() {
      var fp       = document.querySelector('.front-page');
      var cta      = document.getElementById('appl-cta');
      var subtitle = document.querySelector('.appl-landing-subtitle');
      if (!fp || !cta || !subtitle) return;
      var sy         = window.scrollY || window.pageYOffset || 0;
      var fpTop      = fp.getBoundingClientRect().top       + sy;
      var ctaTop     = cta.getBoundingClientRect().top      + sy;
      var subtitleTop = subtitle.getBoundingClientRect().top + sy;
      // Left line: full height from top of page to CTA
      fp.style.setProperty('--vline1-y', '0px');
      fp.style.setProperty('--vline1-h', Math.max(0, ctaTop - fpTop) + 'px');
      // Right line: starts at the horizontal divider line (top of subtitle)
      fp.style.setProperty('--vline3-y', (subtitleTop - fpTop) + 'px');
      fp.style.setProperty('--vline3-h', Math.max(0, ctaTop - subtitleTop) + 'px');
    }
    document.addEventListener('DOMContentLoaded', updateLines);
    window.addEventListener('load', updateLines);
    window.addEventListener('resize', updateLines);
  })();
</script>
