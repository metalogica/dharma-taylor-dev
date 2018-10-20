// Vue import
import Vue from 'vue';

import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';

// Components import
import Navbar from '../components/navbar/navbar.vue'
import Modal from '../components/modal/modal.vue'
import Breadcrumb from '../components/breadcrumb/breadcrumb.vue'

// Layouts import
import '../layouts/home'
import '../layouts/projects'
import '../layouts/information'
import '../layouts/archive'

// Main css import
import "./index.scss";

Vue.use(BootstrapVue);
Vue.component('breadcrumb', Breadcrumb);

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

  // var scene = new THREE.Scene();
  //
  // var container = document.getElementsByClassName("page-content")[0];
  //
  // var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );
  // camera.position.z = 200;
  //
  // var renderer = new THREE.WebGLRenderer();
  // renderer.setSize( window.innerWidth, window.innerHeight );
  // container.appendChild(renderer.domElement);
  //
  // var controls = new THREE.OrbitControls(camera, renderer.domElement);
  // controls.enableDamping = true;
  // controls.dampingFactor = 0.25;
  // controls.enableZoom = true;
  //
  // var keyLight = new THREE.DirectionalLight(new THREE.Color('hsl(30, 100%, 75%)'), 1.0);
  // keyLight.position.set(-100, 0, 100);
  //
  // var fillLight = new THREE.DirectionalLight(new THREE.Color('hsl(240, 100%, 75%)'), 0.75);
  // fillLight.position.set(100, 0, 100);
  //
  // var backLight = new THREE.DirectionalLight(0xffffff, 1.0);
  // backLight.position.set(100, 0, -100).normalize();
  //
  // scene.add(keyLight);
  // scene.add(fillLight);
  // scene.add(backLight);
  //
  // var mtlLoader = new THREE.MTLLoader();
  // mtlLoader.setTexturePath('/vendor/three/assets/');
  // mtlLoader.setPath('/vendor/three/assets/');
  // mtlLoader.load('dharma_red_green.mtl', function (materials) {
  //
  //     materials.preload();
  //
  //     var objLoader = new THREE.OBJLoader();
  //     objLoader.setMaterials(materials);
  //     objLoader.setPath('/vendor/three/assets/');
  //     objLoader.load('dharma_red_green.obj', function (object) {
  //
  //         scene.add(object);
  //         object.positionn.y -= 60;
  //
  //     });
  //
  // });
  //
  // var animate = function () {
  // 	requestAnimationFrame( animate );
  // 	controls.update();
  // 	renderer.render(scene, camera);
  // };
  //
  // animate();

});
