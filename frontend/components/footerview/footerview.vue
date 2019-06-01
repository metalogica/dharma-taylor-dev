<template>
  <div class="container">
    <ul>
      <li>© {{ this.copyright }} DHARMA TAYLOR</li>
      <li>All rights reserved.</li>
    </ul>
    <ul>
      <li>{{ this.telephone }}</li>
      <li>{{ this.primaryemail }}</li>
      <li>{{ this.location }}</li>
    </ul>
    <ul>
      <li>
        <a href="/archive">archive</a>
      </li>
      <li>
        <a href="/information">information</a>
      </li>
      <li>
        <a :href="`mailto:${this.contactemail}`" >contact</a>
      </li>
    </ul>
    <ul>
      <li v-for="media in socialMediaArray">
        <a :href="media.url" target="_blank">{{ media.title }}</a>
      </li>
    </ul>
  </div>
</template>
<script src="./footerview.js"></script>
<style lang="scss" src="./footerview.scss"></style>
