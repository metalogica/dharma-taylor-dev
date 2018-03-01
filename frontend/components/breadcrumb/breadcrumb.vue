<template>
  <div class="breadcrumbs">

    <template v-for="(item, index) in urls">
      <a :href="item.path">{{item.name}}</a>
      <span v-if="urls.length > 0 && urls.length-1 > index"> ⟶ </span>
    </template>


  </div>
</template>
<script src="./breadcrumb.js"></script>
<style lang="scss" src="./breadcrumb.scss"></style>
