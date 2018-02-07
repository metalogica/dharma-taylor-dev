<template>
  <nav class="navbar" :class="[isHome ? 'is-transparent' : 'is-black']">
    <div class="navbar-brand">
      <a class="navbar-item" href="https://bulma.io">
        <img src="https://image.ibb.co/cWRgM6/DTlogo_small_black.png" alt="Dharma Tailor" width="49" height="48">
      </a>
      <a class="navbar-item">
        Projects
      </a>
      <a class="navbar-item">
        Information
      </a>
      <div class="navbar-burger burger" data-target="navMenuColorblack">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>

    <div id="navMenuColorblack" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item">
          Archive
        </a>
        <a class="navbar-item" href="mailto:dharmataylorcontact@gmail.com">
          Contact
        </a>
      </div>
      <div class="navbar-end">
        <div class="navbar-item">
          Dharma Tailor
        </div>
      </div>
    </div>
  </nav>
</template>
<script src="./navbar.js"></script>
<style lang="scss" src="./navbar.scss"></style>
