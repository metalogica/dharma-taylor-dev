//Image import
import '../images/*'

// Vue import
import Vue from 'vue';

import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';

// Components import
import Navbar from '../components/navbar/navbar.vue'
import Modal from '../components/modal/modal.vue'
import Breadcrumb from '../components/breadcrumb/breadcrumb.vue'

// Layouts import
import '../layouts/projects'
import '../layouts/information'
import '../layouts/archive'
import '../layouts/devise'

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
