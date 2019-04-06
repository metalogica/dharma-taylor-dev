<template>
  <div class="project-list-item">
    <img v-bind:src="imageurl" />
    <span class="list-title">{{name}}</span>
    <span class="list-date">{{ datecreate }}</span>
    <span class="list-date">{{ dateupdate }}</span>
    <div class="list-controller">
      <div
        class="controller-link edit"
        v-on:mouseover="isHoveringEdit = true"
        v-on:mouseout="isHoveringEdit = false">
        <!-- Edit Request -->
        <a href="featured/1/edit">
          <i class="fas fa-edit">
            <span v-bind:class="{noshowedit: !isHoveringEdit}">Edit</span>
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
  </div>
</template>
<script src="./list.js"></script>
<style lang="scss" src="./list.scss"></style>
