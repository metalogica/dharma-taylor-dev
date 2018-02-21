<template>
  <div class="modal" :class="{'is-active': modalData.show}">
    <div class="modal-background"></div>
    <div class="modal-content">
      <img :src="modalData.image_url">
    </div>
    <button class="modal-close is-large" aria-label="close" @click="$emit('close')"></button>
  </div>
</template>
<script src="./modal.js"></script>
<style lang="scss" src="./modal.scss"></style>
