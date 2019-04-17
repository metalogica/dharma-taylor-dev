<template>
  <!-- New project -->
  <div v-if="this.newProject" id="no-photos-container">
    <p>No Photos Uploaded</p>
  </div>
  <!-- Edit Form -->
  <div v-else class="form-picture"
        @mouseleave="showDelete = false">
    <img :src="imgUrlFull"
        @mouseover="showDelete = true">
    <div v-if="coverImage" class="cover-image-text">
      <span>Cover Image</span>
    </div>
    <span><strong>Name:</strong> {{this.imgName}}</span>
    <span><strong>Format:</strong> {{this.imgformat}}</span>
    <div class="form-dlt-img"
        v-if="showDelete"
        @click="clickDelete">
      <i class="fas fa-times"></i>
    </div>


    <!-- Permanent bookmark sign for coverimage -->
    <div v-if="this.coverimage === 'true'" class="form-bmk-img permanent">
      <i id="permanent" class="fas fa-bookmark"></i>
    </div>
    <form class="form-bmk-img"
         v-else-if="showDelete"
         :action="makeCoverUrl"
         method="post">
      <i class="far fa-bookmark"></i>
      <input type="hidden" name="_method" value="get">
      <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
      <input type="hidden" name="id" :value="this.id">
      <input type="submit">
    </form>

    <!-- Card Modal -->
    <div
       class="form-gallery-card-modal"
       v-if="showModal"
       @mouseleave="showModal = false">
      <i class="fas fa-exclamation-circle"></i>
      <p>Are you sure you want to permanently delete this item?</p>
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
