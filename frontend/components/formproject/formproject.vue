<template>
  <div class="form-container">
    <form class="form"
          v-bind:action="httpaction"
          method="post"
          enctype="multipart/form-data">
      <input type="hidden" name="_method" v-bind:value="httpverb">
      <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">
      <input type="hidden" name="project[id]" :value="Number(this.id)">

      <div class="form-line">
        <label for="">Project Name</label>
        <input type="text" name="project[name]" :value="projectname">
      </div>

      <div class="form-line">
      <label for="">Blurb</label>
        <input name="project[blurb]" :value="projectblurb"></input>
      </div>

      <div class="form-line form-text-area">
      <label for="">Description</label>
        <textarea name="project[description]" :value="projectdescription"></textarea>
      </div>

      <div class="form-upload-button-container">
        <label for="">Upload Images</label>
        <input multiple="multiple" type="file" name="project[user_upload][]"/>
      </div>

      <div class="form-button-container">
        <input class="form-button" href="/admin" value="Discard"></input>
        <input class="form-button" type="submit" value="Submit">
      </div>
    </form>
  </div>
</template>
<script src="./formproject.js"></script>
<style lang="scss" src="./formproject.scss"></style>
