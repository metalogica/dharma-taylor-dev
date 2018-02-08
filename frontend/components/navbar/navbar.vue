<template>
  <nav class="navbar" :class="[isHome ? 'is-transparent' : 'is-black']">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">
        <img :src='brand' alt="Dharma Tailor" width="49" height="48">
      </a>
      <a class="navbar-item" href="/featured">
        Featured
      </a>
      <a class="navbar-item" href="/information">
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
        <a class="navbar-item" href="/archive">
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
