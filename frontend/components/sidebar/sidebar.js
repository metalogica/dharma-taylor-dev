module.exports = {
  data: function () {
    return {
      urls: ['/featured/insectbite', '/featured/tate', '/featured/knockout'],
      brand: require('../../images/DTlogo-large-white.png')
    }
  },
  methods: {
    toogle: function (event) {
      var $target = document.getElementById("page-sidebar");
      $target.classList.toggle('active');
    }
  }
}
