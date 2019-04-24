<template>
  <b-navbar toggleable="md"  fixed="top" :class='{home: isHome}'>
    <b-navbar-brand href="/" class="d-md-block" :class='{"d-block": isHome}'>
      <img :src='brand' alt="Dharma Tailor" width="49" height="48">
    </b-navbar-brand>

    <b-navbar-brand class="d-md-none">
      <breadcrumb></breadcrumb>
    </b-navbar-brand>
    
    <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
    <b-collapse is-nav id="nav_collapse">

      <b-navbar-nav>
        <b-nav-item href="/featured" :class='{"d-none": isCurrentPath("/featured"), "d-md-block": isCurrentPath("/featured")}'>FEATURED</b-nav-item>
        <b-nav-item href="/information" :class='{"d-none": isCurrentPath("/information"), "d-md-block": isCurrentPath("/information")}'>INFORMATION</b-nav-item>
        <b-nav-item href="/archive" :class='{"d-none": isCurrentPath("/archive"), "d-md-block": isCurrentPath("/archive")}'>ARCHIVE</b-nav-item>
      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-nav-item href="/">DHARMA TAYLOR</b-nav-item>
      </b-navbar-nav>

    </b-collapse>


  </b-navbar>
</template>
<script src="./navbar.js"></script>
<style lang="scss" src="./navbar.scss"></style>
