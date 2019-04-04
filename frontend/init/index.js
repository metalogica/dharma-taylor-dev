// Vue import
import Vue from 'vue';

import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';

// Components import
import Navbar from '../components/navbar/navbar.vue'
import Modal from '../components/modal/modal.vue'
import Breadcrumb from '../components/breadcrumb/breadcrumb.vue'
import Dashboard from '../components/dashboard/dashboard.vue'
import Controller from '../components/controller/controller.vue'
import Searchbar from '../components/searchbar/searchbar.vue'

// Layouts import
import '../layouts/projects'
import '../layouts/biography'
import '../layouts/archive'
import '../layouts/dashboard'

// Main css import
import "./index.scss";

Vue.use(BootstrapVue);
Vue.component('breadcrumb', Breadcrumb);
Vue.component('dashboard', Dashboard);
Vue.component('controller', Controller);
Vue.component('searchbar', Searchbar);

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
