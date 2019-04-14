<template>
  <div class="form-picture"
        @mouseleave="showDelete = false">
    <img :src="imgUrlFull"
        v-on:mouseover="showDelete = true"
        width="260"
        height="260">
    <span><strong>Name:</strong> {{this.imgName}}</span>
    <span><strong>Format:</strong> {{this.imgformat}}</span>
    <div class="form-dlt-img" v-if="showDelete">X</div>
  </div>
</template>
<script src="./formgallery.js"></script>
<style lang="scss" src="./formgallery.scss"></style>
