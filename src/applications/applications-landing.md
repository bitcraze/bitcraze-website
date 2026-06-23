---
layout: page-front
title: Applications Overview
page_id: applications-landing
redirects:
  - /applications/
---

<!-- Intro section -->
<div class="container text-center appl-landing-intro">
  <h1 class="appl-landing-title">Applications</h1>
  <h2 class="appl-landing-subtitle">
    Explore What You Can <span class="highlight-green">Build</span>, <span class="highlight-green">Test</span>, and<br>
    <span class="highlight-green">Discover</span> with the <span class="cf-wordmark">Crazyflie<sup>®</sup></span> Ecosystem
  </h2>
  <div class="row justify-content-center">
    <div class="col-md-7">
      <p>Progress in robotics depends on the ability to experiment, iterate, and validate ideas in the real world. The Crazyflie ecosystem provides an open foundation for research and education across autonomy, perception, navigation, swarm robotics, aerial manipulation, and human–robot interaction.</p>
      <p>Explore the application areas below to discover how researchers, educators, and innovators are using the Crazyflie to advance the state of the art and inspire the next generation of robotic systems.</p>
    </div>
  </div>
</div>

<!-- Application cards -->
<div class="container appl-cards-section appl-cards-section--no-divider appl-cards-section--grid">
  <div class="appl-cards-grid">
    <div class="appl-card appl-card--swarm">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-swarm.jpg" alt="Swarm Robotics">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-circle-nodes appl-card-icon"></i>
        <h3>Swarm<br>Robotics</h3>
        <p class="appl-card-desc">Investigate collective behavior, distributed control, and coordinated flight across groups of autonomous aerial robots.</p>
        <a href="/applications/swarm-robotics/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
    <div class="appl-card appl-card--autosys">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-auto.jpg" alt="Autonomous Systems">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-robot appl-card-icon"></i>
        <h3>Autonomous<br>Systems</h3>
        <p class="appl-card-desc">Develop and validate autonomous flight, adaptive control, and multi-agent decision-making in real-world robotic systems.</p>
        <a href="/applications/autonomous-systems/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
    <div class="appl-card appl-card--percept">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-perc-nav.jpg" alt="Perception and Navigation">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-compass appl-card-icon"></i>
        <h3>Perception & Navigation</h3>
        <p class="appl-card-desc">Explore sensing, localization, mapping, and navigation algorithms that enable robots to understand and move through complex environments.</p>
        <a href="/applications/perception-navigation/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
    <div class="appl-card appl-card--aerial">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-aerial.jpg" alt="Aerial Manipulation">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-hand appl-card-icon"></i>
        <h3>Aerial Manipulation</h3>
        <p class="appl-card-desc">Research grasping, physical interaction, and payload transport by combining flight with contact-based control and manipulation.</p>
        <a href="/applications/aerial-manipulation/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
    <div class="appl-card appl-card--stem">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-stem.jpg" alt="STEM and Higher Education">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-graduation-cap appl-card-icon"></i>
        <h3>STEM & Higher Education</h3>
        <p class="appl-card-desc">Bring robotics, autonomy, and engineering concepts to life through hands-on learning, experimentation, and research.</p>
        <a href="/applications/stem-education/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
    <div class="appl-card appl-card--hri">
      <div class="appl-card-img-wrap">
        <img src="/images/applications/appl-card-hri.jpg" alt="Human-Robot Interaction">
      </div>
      <div class="appl-card-header">
        <i class="fa-solid fa-people-arrows appl-card-icon"></i>
        <h3>Human–Robot Interaction</h3>
        <p class="appl-card-desc">Study how humans and autonomous systems communicate, collaborate, share control, and build trust in dynamic environments.</p>
        <a href="/applications/human-robot-interaction/" class="btn appl-card-btn">Discover more →</a>
      </div>
    </div>
  </div>
</div>

<!-- Start Exploring CTA -->
<div class="container-fluid appl-landing-cta" id="appl-cta">
  <div class="row justify-content-center">
    <div class="col-md-8 text-center">
      <h2>Start Exploring</h2>
      <p>Explore the platform architecture and open-source repositories to start turning ideas into experiments.</p>
      <div class="d-flex gap-3 justify-content-center flex-wrap">
        <a href="/documentation/system/" class="btn btn-color-primary appl-landing-cta-btn">System overview</a>
        <a href="/documentation/repository/" class="btn btn-color-secondary appl-landing-cta-btn">Repository overview</a>
      </div>
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
