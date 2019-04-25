<template>
  <div class="controller-container">
    <!-- Button 1: Create new project -->
    <a class="controller-button"
       href="/admin/projects/new"
       @mouseover="toggleCreate"
       @mouseout="toggleCreate">+</a>
    <span class="highlight-text"
          :class="{noshow: !createIsHover}">New Post</span>
    <!-- Button 2.1: Change to list View -->
    <div class="controller-button"
         @click="toggleView"
         @mouseover="toggleList"
         @mouseout="toggleList"
         v-if="cardView">
      <i class="fas fa-list-ul"></i>
    </div>
    <span class="highlight-text"
          v-if="cardView"
          :class="{nowshow2: !listIsHover}">List View</span>
    <!-- Button 2.2: Change to Card view-->
    <div class="controller-button"
         @click="toggleView"
         @mouseover="toggleCard"
         @mouseout="toggleCard"
         v-if="listView">
      <i class="fas fa-grip-horizontal"></i>
    </div>
    <span class="highlight-text"
          v-if="listView"
          :class="{nowshow2: cardIsHover}">Card View</span>
    <!-- Button 3: Sort by date -->
    <a class="controller-button"
          href="https://analytics.google.com/"
          target="_blank"
          @mouseover="toggleSort"
          @mouseout="toggleSort">
      <i class="far fa-chart-bar"></i>
    </a>
    <span class="highlight-text"
          :class="{noshow: !sortIsHover}">Analytics</span>
    <!-- Button 4: Preview  -->
    <a class="controller-button"
          href="http://www.dharmataylor.com"
          target="_blank"
          @mouseover="togglePreview"
          @mouseout="togglePreview">
      <i class="fab fa-safari"></i>
    </a>
    <span class="highlight-text"
          :class="{noshow: !previewIsHover}">Preview Site</span>
  </div>
</template>
<script src="./controller.js"></script>
<style lang="scss" src="./controller.scss"></style>
