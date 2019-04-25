<template>
  <div class="dashboard-container">
    <div class="dashboard-logo">
      <img src="https://res.cloudinary.com/ortsac/image/upload/v1556158636/gy6tjkugkrdrwg8m1dke.png" alt="DT-logo" class="DTlogo" width="50">
      <span>ADMIN VIEW</span>
    </div>
    <ul v-if="this.formView">
      <li><a :class="{active: routedFromAdmin}" href="/admin">Projects</a></li>
      <li><a :class="{active: !routedFromAdmin}" href="/archives">Archives</a></li>
      <li><a href="/admin/information/1/edit">Information</a></li>
      <li><a href="/admin/footer/1/edit">Footer</a></li>
    </ul>
    <ul v-else >
      <li v-for="link in this.links">
        <a :href="link.url" :class="{active: link.url === currentPage}">{{link.name}}</a>
      </li>
    </ul>
    <a href="/sign_me_out" id="text-logout">LOGOUT</a>
  </div>
</template>
<script src="./dashboard.js"></script>
<style lang="scss" src="./dashboard.scss"></style>
