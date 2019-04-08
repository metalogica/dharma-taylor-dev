<template>
  <div class="controller-container">
    <span class="controller-button" href="/featured/new">+</span>
    <span v-on:click="toggleVisibility" class="controller-button" id="grid-icon"><i class="fas fa-grip-horizontal"></i></span>
    <span class="controller-button" href=""><i class="fas fa-sort-numeric-down"></i></span>
    <span class="controller-button" href=""><i class="fab fa-safari"></i></span>
  </div>
</template>
<script src="./controller.js"></script>
<style lang="scss" src="./controller.scss"></style>
