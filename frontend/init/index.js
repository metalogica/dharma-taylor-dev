// Vue import
import Vue from 'vue';
import Vuex from 'vuex';

// Vuex import
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
import Backbutton from '../components/backbutton/backbutton.vue'
import Card from '../components/card/card.vue'
import List from '../components/list/list.vue'
import Searchbar from '../components/searchbar/searchbar.vue'

// Layouts import
import '../layouts/projects'
import '../layouts/information'
import '../layouts/archive'
import '../layouts/login_screen_layout'

// Main css import
import "./index.scss";

Vue.use(BootstrapVue);
Vue.component('breadcrumb', Breadcrumb);
Vue.component('dashboard', Dashboard);
Vue.component('controller', Controller);
Vue.component('card', Card);
Vue.component('list', List);
Vue.component('searchbar', Searchbar);

// Root element init
document.addEventListener('DOMContentLoaded', () => {
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
    components: { Navbar, Modal, Dashboard, Controller, Backbutton, Card, List, Searchbar },
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
      },
      showModal: function(e) {
        this.modalData.image_url=e.srcElement.currentSrc;
        this.modalData.show=true;
      }
    }
  })
  //redandgreenhead
  //insectbitehead
  const modelsOptions = [
    {
      modelName:"redandgreenhead",
      cameraInitPos: [0,0,17],
      objectPos: [0,-7.5,0],
      url:'/featured/london-parallel'
    },
    {
      modelName:"insectbitehead",
      cameraInitPos: [0,0,13],
      objectPos: [2,-5.5,0],
      url:'/featured/insectbite'
    }
  ]
  const modelIdx = Math.round(Math.random());
  new Three3d(modelsOptions[modelIdx]);

});

class Three3d {
  constructor(options){
    this.radRotate = 0;
    this.object;
    this.options = {...options};
    this.modelsPath = '/vendor/three/assets/';
    this.scene = new THREE.Scene();
    this.container = (options.hasOwnProperty('container') ? options.container : document.getElementById('_3d-container'));
    this.container.style.width = '100%';
    this.renderer = new THREE.WebGLRenderer( { antialias: true } );
    this.loader = new THREE.ObjectLoader();
    this.light = new THREE.AmbientLight( 0xffffff );
    this.camera = new THREE.PerspectiveCamera( 45, this.container.offsetWidth/this.container.clientHeight, 1, 2000);
    this.controls = new THREE.OrbitControls( this.camera, this.renderer.domElement );

    if (this.options.hasOwnProperty('url')){
      this.container.style.cursor = 'pointer';
      this.container.addEventListener("click", () => {
        window.top.location.href = this.options.url;
      });
      this.container.addEventListener("touchend", () => {
        window.top.location.href = this.options.url;
      });
    }

    this.animate = () => {
      requestAnimationFrame( this.animate );
      this.renderer.render(this.scene, this.camera);
      this.controls.update();
    }
    this.init();
  }
  init(){
    this.controls.enableZoom = true;
    this.controls.enableKeys = false;
    // this.controls.enableDamping = true;
    this.controls.maxDistance = 40;
    this.controls.minDistance = 8;
    this.controls.autoRotate = true;

    this.scene.add(this.light);
    this.camera.position.set(
      this.options.cameraInitPos[0],
      this.options.cameraInitPos[1],
      this.options.cameraInitPos[2],
    );

    this.renderer.setPixelRatio( window.devicePixelRatio );
    this.renderer.setSize( this.container.offsetWidth, this.container.clientHeight );
    this.container.appendChild(this.renderer.domElement);
    this.loader.load(this.fullJsonPath(), (object) => {
      this.object = object;
      this.loaderCallback();
    });
    this.animate();
    window.addEventListener('resize', () => {this.onWindowResize()}, false );
  }
  fullJsonPath(){
    return this.modelsPath + this.options.modelName + "/" + this.options.modelName + ".json"
  }
  loaderCallback(){
    this.object.position.set(
      this.options.objectPos[0],
      this.options.objectPos[1],
      this.options.objectPos[2],
    );
    this.scene.add( this.object );
  }
  onWindowResize(){
    this.camera.aspect = this.container.offsetWidth / this.container.clientHeight;
    this.camera.updateProjectionMatrix();
    this.renderer.setSize( this.container.offsetWidth, this.container.clientHeight );
  }

}
