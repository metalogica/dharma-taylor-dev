<template>
  <div class="back-button-container">
    <a :href="this.route" class="back-button"
        @mouseover="toggleHover"
        @mouseout="toggleHover">
      <i id="back-arrow" class="fas fa-arrow-left"></i>
    </a>
    <span v-if="this.hover == true">Previous Page</span>
  </div>
</template>
<script src="./backbutton.js"></script>
<style lang="scss" src="./backbutton.scss"></style>




