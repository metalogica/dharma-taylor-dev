<template>
  <div class="searchbar-container">
    <i class="fas fa-search"></i>
    <input
        class="search-form"
        type="text"
        placeholder="Search"
        v-model="txtInput"
        @keyup="genQuery"
        @keydown="genQuery"
        @keyup.enter="genQuery">
    <span>0 search results</span>
  </div>
</template>
<script src="./searchbar.js"></script>
<style lang="scss" src="./searchbar.scss"></style>
