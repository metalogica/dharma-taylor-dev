<template>
  <div class="dashboard-container">
    <div class="dashboard-logo">
      <img src="/packs/images/DTlogo-small-white-9ad26e6ad0cf122f98f65140caaedf1c.png" alt="DT-logo" width="50">
      <span>ADMIN VIEW</span>
    </div>
    <ul>
      <li v-link="{path : '/admin', activeClass: 'active', exact: true}"><a href="/admin">Featured</a></li>
      <li><a href="/dashboard/archive">Archive</a></li>
      <li><a href="/dashboard/information">Information</a></li>
      <li><a href="/dashboard/footer">Footer</a></li>
    </ul>
    <span id="text-logout">LOGOUT</span>
  </div>
</template>
<script src="./dashboard.js"></script>
<style lang="scss" src="./dashboard.scss"></style>
