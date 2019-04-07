<template>
  <div class="project-card">
    <div
      class="img-wrapper"
      v-on:mouseover="isHovering=true"
      v-on:mouseout="isHovering = false">
      <div
        class="img-overlay"
        v-bind:class="{hidden: !isHovering}">
        <div class="card-controller">

          <!-- Edit Request -->
          <a v-bind:href="makeEditUrl"><i class="far fa-edit"><span>Edit</span></i></a>

          <!-- Archive Request -->
          <a v-bind:href="makeArchiveUrl"><i class="fas fa-archive"><span>Archive</span></i></a>

          <!-- Delete Request -->
          <form v-bind:action="makePostUrl" method="post" accept-charset="UTF-8">
            <input type="hidden" name="_method" value="delete">
            <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
            <i class="fas fa-trash">
              <input class="hidden-button" type="submit">
              <span>Delete</span>
            </i>
          </form>

          <!-- Card Modal -->
          <div class="card-modal">
            <button>Delete</button>
            <button>Don't Delete</button>
          </div>

        </div>
      </div>
      <img v-bind:src="imageurl" />
    </div>
    <div class="proj-name">{{name}}</div>
  </div>
</template>
<script src="./card.js"></script>
<style lang="scss" src="./card.scss"></style>




