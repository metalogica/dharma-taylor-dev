<template>
  <div class="project-card"
       v-if="cardView && !hideCard">
    <div
      class="img-wrapper"
      v-on:mouseover="isHovering = true"
      v-on:mouseout="isHovering = false">
      <div
        class="img-overlay"
        v-bind:class="{hidden: !isHovering}">
        <div v-if="!showModal" class="card-controller">

          <!-- Edit Request -->
          <a v-bind:href="makeEditUrl"><i class="far fa-edit"><span>Edit</span></i></a>

          <!-- Archive Request -->
          <a v-bind:href="makeArchiveUrl"><i class="fas fa-archive"><span>Archive</span></i></a>

          <!-- Delete Request -->
          <i v-on:click="toggleModal" class="fas fa-trash">
            <span>Delete</span>
          </i>

        </div>

        <!-- Card Modal -->
        <div
           class="card-modal"
           v-if="showModal">
          <i class="fas fa-exclamation-circle"></i>
          <p>Are you sure you wan't to permanently delete this item?</p>
          <div class="modal-buttons">
            <form v-bind:action="makePostUrl" method="post" accept-charset="UTF-8">
              <input type="hidden" name="_method" value="delete">
              <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
              <input class="modal-confirm" type="submit" value="Delete">
            </form>
            <button v-on:click="toggleModal" class="modal-cancel">Cancel</button>
          </div>
        </div>
      </div>
      <img v-bind:src="imageurl" v-on:mouseout="hideModal"/>
    </div>
    <div class="proj-name">{{name}}</div>
  </div>
</template>
<script src="./card.js"></script>
<style lang="scss" src="./card.scss"></style>




