// Vue import
import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex)
import { mapState, mapStore, mapActions, mapGetters } from 'vuex';

import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';

// Components import
import Navbar from '../components/navbar/navbar.vue'
import Modal from '../components/modal/modal.vue'
import Breadcrumb from '../components/breadcrumb/breadcrumb.vue'
import Dashboard from '../components/dashboard/dashboard.vue'
import Controller from '../components/controller/controller.vue'
import Searchbar from '../components/searchbar/searchbar.vue'
import Card from '../components/card/card.vue'
import List from '../components/list/list.vue'
import Formproject from '../components/formproject/formproject.vue'
import Formgallery from '../components/formgallery/formgallery.vue'
import Footerview from '../components/footerview/footerview.vue'
import FormFooterview from '../components/formfooterview/formfooterview.vue'

// Layouts import
import '../layouts/projects'
import '../layouts/biography'
import '../layouts/archive'

// Main css import
import "./index.scss";

Vue.use(BootstrapVue);
Vue.component('breadcrumb', Breadcrumb);
Vue.component('dashboard', Dashboard);
Vue.component('controller', Controller);
Vue.component('searchbar', Searchbar);
Vue.component('card', Card);
Vue.component('list', List);
Vue.component('formproject', Formproject);
Vue.component('formgallery', Formgallery);
Vue.component('footerview', Footerview);
Vue.component('formfooterview', FormFooterview);

// Root element init
document.addEventListener('DOMContentLoaded', () => {
  // Vuex
  const store = new Vuex.Store({
    state: {
      cards: 0,
      cardView: true,
      listView: false,
      searchbarQuery: "",
    },
    mutations: {
      cardsCounted: function(state, cards) {
        state.cards = cards
      },
      toggleView: function(state) {
        state.cardView = !state.cardView
        state.listView = !state.listView
      },
      updateSearchbarQuery: function(state, query) {
        state.searchbarQuery = query
      },
    }
  })

  var app = new Vue({
    el: '#app',
    store,
    components: {
      Navbar,
      Modal,
      Controller,
      Card,
      List,
      Formproject,
      Formgallery,
      Dashboard,
      Searchbar,
      Footerview,
      FormFooterview
    },
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
      },
      countChildren: function() {
        var cardArray = this.$children.filter(child => child.constructor.options.name.match(/card/gim));
        let filterCards = function(card) { return card.hideCard === false };
        var visibleCards = cardArray.filter(filterCards).length
        this.$store.commit('cardsCounted', visibleCards);
      },
      countChildrenList: function () {
        var cardArray = this.$children.filter(child => child.constructor.options.name.match(/list/gim));
        let filterCards = function(card) { return card.hideListItem === false };
        var visibleCards = cardArray.filter(filterCards).length
        this.$store.commit('cardsCounted', visibleCards);
      }
    }
  })

  // Three js
  var scene = new THREE.Scene();

  var container = document.getElementById("3d-container");

  var camera = new THREE.PerspectiveCamera( 45, window.innerWidth/window.innerHeight, 1, 2000 );

  var renderer = new THREE.WebGLRenderer();
  renderer.setSize( window.innerWidth, window.innerHeight );
  container.appendChild(renderer.domElement);

  var light = new THREE.AmbientLight( 0xffffff ); // soft white light
  scene.add( light );

  var obj = null;

  var mtlLoader = new THREE.MTLLoader();
  mtlLoader.setTexturePath('/vendor/three/assets/');
  mtlLoader.setPath('/vendor/three/assets/');
  mtlLoader.load('newdharma4.mtl', function (materials) {

    materials.preload();

    var objLoader = new THREE.OBJLoader();
    objLoader.setMaterials(materials);
    objLoader.setPath('/vendor/three/assets/');
    objLoader.load('model5.obj', function (object) {

      obj = object;

      scene.add(object);

      camera.position.x = 0;
      camera.position.y = 0;
      camera.position.z = 250;

    });
  });

  var animate = function () {
    if (obj) {
      // obj.rotation.z += 0.005;
    }
  	requestAnimationFrame( animate );
    renderer.render(scene, camera);
  };

  animate();

});
