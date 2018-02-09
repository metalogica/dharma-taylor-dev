<template>
  <div id="page-sidebar">
    <div class="page-sidebar-header">
      <i class="page-sidebar-button-close" @click="toogle">x</i>
      <i class="page-sidebar-button-open" @click="toogle">o</i>
      <div class="image-container">
        <img :src='brand' alt="Dharma Tailor">
      </div>
    </div>
    <div class="page-sidebar-content">
      <ul>
        <li v-for="url in urls">
          <a :href="url">{{ url }}</a>
         </li>
      </ul>
    </div>
  </div>

</template>
<script src="./sidebar.js"></script>
<style lang="scss" src="./sidebar.scss"></style>
