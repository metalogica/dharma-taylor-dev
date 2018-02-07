// Bulma import
import "bulma/bulma";
// Vue import
import Vue from 'vue';

// Components import
import '../components/home/home'
import Navbar from '../components/navbar/navbar.vue'

// Main css import
import "./index.scss";


// Root element init
document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: '#app',
    components: { Navbar }
  })
});
