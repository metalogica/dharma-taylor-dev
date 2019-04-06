<template>
  <div class="list-controller">
    <div
      class="controller-link edit"
      v-on:mouseover="isHovering = true"
      v-on:mouseout="isHovering = false">
      <!-- Edit Request -->
      <a href="featured/1/edit">
        <i class="fas fa-edit">
          <span v-bind:class="{noshow: !isHovering}">Edit</span>
        </i>
      </a>
    </div>
    <div
      class="controller-link archive">
      <!-- Put Back in Portfolio -->
      <a v-bind:href="makeArchiveUrl">
        <i class="fas fa-archive">
          <span >Archive</span>
        </i>
      </a>
    </div>
    <div class="controller-link delete">
      <!-- Delete Request -->
      <form v-bind:action="makePostUrl" method="post" accept-charset="UTF-8">
      <input type="hidden" name="_method" value="delete">
      <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
      <i class="fas fa-trash">
        <input class="hidden-button" type="submit">
        <span>Delete</span>
      </i>
      </form>
    </div>
  </div>
</template>
<script src="./minilinks.js"></script>
<style lang="scss" src="./minilinks.scss"></style>
