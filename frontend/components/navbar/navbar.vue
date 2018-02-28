<template>
  <b-navbar toggleable="md"  fixed="top" :class='{home: isHome}'>
    <b-navbar-brand href="/">
      <img :src='brand' alt="Dharma Tailor" width="49" height="48">
    </b-navbar-brand>

    <b-collapse is-nav id="nav_collapse">

      <b-navbar-nav>
        <b-nav-item href="/featured">FEATURED</b-nav-item>
        <b-nav-item href="/information">INFORMATION</b-nav-item>
        <b-nav-item href="/archive">ARCHIVE</b-nav-item>
        <b-nav-item href="mailto:dharmataylorcontact@gmail.com">CONTACT</b-nav-item>
      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-nav-text>DHARMA TAYLOR</b-nav-text>
      </b-navbar-nav>

    </b-collapse>

    <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
  </b-navbar>
</template>
<script src="./navbar.js"></script>
<style lang="scss" src="./navbar.scss"></style>
