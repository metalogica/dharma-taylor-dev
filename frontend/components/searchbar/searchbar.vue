<template>
  <div class="searchbar-container">
    <i class="fas fa-search"></i>
    <input
        class="search-form"
        style="border-radius: 0;"
        type="text"
        placeholder="Search"
        v-model="txtInput"
        @keyup="genQuery"
        @keydown="genQuery"
        @keyup.enter="genQuery">
    <span>{{ showNumberOfCards }}</span>
  </div>
</template>
<script src="./searchbar.js"></script>
<style lang="scss" src="./searchbar.scss"></style>
