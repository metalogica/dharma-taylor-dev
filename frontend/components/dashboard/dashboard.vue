<template>
  <div class="dashboard-container">
    <div class="dashboard-logo">
      <img src="/packs/images/DTlogo-small-white-9ad26e6ad0cf122f98f65140caaedf1c.png" alt="DT-logo" width="50">
      <span>ADMIN VIEW</span>
    </div>
    <ul v-if="this.formView">
      <li>
        <a class="active" href="/admin">Projects</a>
        <a href="/archives">Archives</a>
        <a href="/information/1/edit">Information</a>
        <a href="/footer/edit">Footer</a>
      </li>
    </ul>
    <ul v-else v-for="link in this.links">
      <li>
        <a :href="link.url" :class="{active: link.url === currentPage}">{{link.name}}</a>
      </li>
    </ul>
    <a href="/sign_me_out" id="text-logout">LOGOUT</a>
  </div>
</template>
<script src="./dashboard.js"></script>
<style lang="scss" src="./dashboard.scss"></style>
