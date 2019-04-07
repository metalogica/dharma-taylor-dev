<template>
  <form v-bind:action="httpaction" method="post">
    <input type="hidden" name="_method" v-bind:value="httpverb">
    <input type="hidden" name="authenticity_token" v-bind:value="mycsrf">

    <label for="">Name</label>
    <input type="text" name="project[name]">

    <label for="">Description</label>
    <input type="textarea" name="project[description]">

    <label for="">Cover Image</label>
    <input type="text" name="project[coverimage]">

    <label for="">Upload Image</label>
    <button>Select File</button>

    <input type="submit" value="Submit">
  </form>
</template>
<script src="./formproject.js"></script>
<style lang="scss" src="./formproject.scss"></style>




