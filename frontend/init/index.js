// Vue import
import Vue from 'vue';

import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css';
// Components import
import Navbar from '../components/navbar/navbar.vue'
import Modal from '../components/modal/modal.vue'

import '../layouts/home'
import '../layouts/projects'
import '../layouts/information'
import '../layouts/archive'

// Main css import
import "./index.scss";

Vue.use(BootstrapVue);
// Root element init
document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: '#app',
    components: { Navbar, Modal},
    data: function () {
      return {
        modalData: {
          show: false,
          image_url: ''
        }
      }
    },
    methods: {
      showModal: function(e) {
        this.modalData.image_url=e.srcElement.currentSrc;
        this.modalData.show=true;
      }
    }
  })
});
