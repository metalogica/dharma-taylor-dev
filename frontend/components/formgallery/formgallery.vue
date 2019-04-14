<template>
  <div class="form-picture"
        @mouseleave="showDelete = false">
    <img :src="imgUrlFull"
        @mouseover="showDelete = true">
    <span><strong>Name:</strong> {{this.imgName}}</span>
    <span><strong>Format:</strong> {{this.imgformat}}</span>
    <div class="form-dlt-img"
        v-if="showDelete"
        @click="clickDelete">
      <i class="fas fa-times"></i>
    </div>

    <!-- Card Modal -->
    <div
       class="card-modal"
       v-if="showModal"
       @mouseleave="showModal = false">
      <i class="fas fa-exclamation-circle"></i>
      <p>Are you sure you wan't to permanently delete this item?</p>
      <div class="modal-buttons">
        <form v-bind:action="makePostUrl" method="post" accept-charset="UTF-8">
          <input type="hidden" name="_method" value="delete">
          <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
          <input type="hidden" name="project" value="">
          <input class="modal-confirm" type="submit" value="Delete">
        </form>
        <button @click="toggleModal" class="modal-cancel">Cancel</button>
      </div>
    </div>

  </div>
</template>
<script src="./formgallery.js"></script>
<style lang="scss" src="./formgallery.scss"></style>
