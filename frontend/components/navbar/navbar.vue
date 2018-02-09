<template>
  <nav class="navbar" :class="[isHome ? 'is-transparent' : 'is-black']">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">
        <img :src='brand' alt="Dharma Tailor" width="49" height="48">
      </a>
      <a class="navbar-item" href="/featured">
        FEATURED
      </a>
      <a class="navbar-item" href="/information">
        INFORMATION
      </a>
      <div class="navbar-burger burger" data-target="navMenuColorblack">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>

    <div id="navMenuColorblack" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item" href="/archive">
          ARCHIVE
        </a>
        <a class="navbar-item" href="mailto:dharmataylorcontact@gmail.com">
          CONTACT
        </a>
      </div>
      <div class="navbar-end">
        <div class="navbar-item">
          DHARMA TAYLOR
        </div>
      </div>
    </div>
  </nav>
</template>
<script src="./navbar.js"></script>
<style lang="scss" src="./navbar.scss"></style>
