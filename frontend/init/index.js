// Bulma import
import "bulma/bulma";
// Vue import
import Vue from 'vue';

// Components import
import Navbar from '../components/navbar/navbar.vue'
import Sidebar from '../components/sidebar/sidebar.vue'

import '../layouts/home'
import '../layouts/projects'

// Main css import
import "./index.scss";

// Root element init
document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: '#app',
    components: { Navbar, Sidebar }
  })
});
