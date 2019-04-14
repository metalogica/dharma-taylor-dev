<template>
  <div class="form-container">
    <form class="form"
          v-bind:action="httpaction"
          method="post">
      <input type="hidden" name="_method" v-bind:value="httpverb">
      <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">

      <div class="form-line">
        <label for="">Project Name</label>
        <input type="text" name="project[name]" :value="projectname">
      </div>

      <div class="form-line form-text-area">
      <label for="">Description</label>
        <textarea name="project[description]" :value="projectdescription"></textarea>
      </div>

      <div class="form-line">
        <label for="">Cover Image</label>
        <select name="project[coverimage]" id="">
          <option v-for="option in this.selectCoverImage" :value="option.id">{{ option.text }}</option>
        </select>
      </div>

      <div class="form-line">
        <label for="">Upload Image</label>
        <input class="form-button-inverted" multiple="multiple" type="file" name="project[images][]" />
      </div>

      <div class="form-button-container">
        <input class="form-button" type="submit" href="/admin" value="Discard"></input>
        <input class="form-button" type="submit" value="Submit">
      </div>
    </form>
  </div>
</template>
<script src="./formproject.js"></script>
<style lang="scss" src="./formproject.scss"></style>
