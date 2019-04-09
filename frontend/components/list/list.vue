<template>
  <div class="list-container"
       v-if="listView">
    <div class="project-list-item-header">
      <span id="title-text">Title</span>
      <span>Date Created</span>
      <span>Date Modified</span>
      <span>Controls</span>
    </div>
    <div class="project-list-item">
      <img v-bind:src="imageurl" />
      <span class="list-title">{{name}}</span>
      <span class="list-date">{{ datecreate }}</span>
      <span class="list-date">{{ dateupdate }}</span>
      <div class="list-controller">
        <!-- Edit Post -->
        <div
          class="controller-link edit"
          v-on:mouseover="isHoveringEdit = true"
          v-on:mouseout="isHoveringEdit = false">
          <a v-bind:href="makeEditUrl">
            <i class="fas fa-edit">
              <span v-bind:class="{noshowedit: !isHoveringEdit}">Edit</span>
            </i>
          </a>
        </div>
        <!-- Put post into archive -->
        <div
          class="controller-link archive hidden"
          v-on:mouseover="isHoveringArchive = true"
          v-on:mouseout="isHoveringArchive = false">
          <a v-bind:href="makeArchiveUrl">
            <i class="fas fa-archive">
              <span v-bind:class="{noshowarchive: !isHoveringArchive}">Archive</span>
            </i>
          </a>
        </div>
        <!-- Put post into portfolio -->
        <div
          class="controller-link portfolio"
          v-on:mouseover="isHoveringUnarchive = true"
          v-on:mouseout="isHoveringUnarchive = false">
          <!-- Put into Portfolio -->
          <a v-bind:href="makeUnarchiverUrl">
            <i class="fas fa-redo-alt">
              <span v-bind:class="{noshowunarchive: !isHoveringUnarchive}">Un-archive</span>
            </i>
          </a>
        </div>
        <!-- Delete post -->
        <div
          class="controller-link delete"
          v-on:mouseover="isHoveringDelete = true"
          v-on:mouseout="isHoveringDelete = false">
          <!-- Delete Request -->
          <i class="fas fa-trash"
            v-on:click="toggleModal">
            <input class="hidden-button" type="submit">
          <span v-bind:class="{noshowdelete: !isHoveringDelete}">Delete</span>
          </i>
        </div>
      </div>

      <!-- List Modal -->
      <div class="list-modal" v-if="showModal">
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
  </div>
</template>
<script src="./list.js"></script>
<style lang="scss" src="./list.scss"></style>
