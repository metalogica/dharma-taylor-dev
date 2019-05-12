module.exports = {
  props: {
    isHome:{
        type:Boolean,
        required:true
     }
  },
  computed: {
    brand: function () {
      return require('../../images/DTlogo-small-white.png')
    },
    projectPage: {
      get: function() {
        let mediaWidth = window.innerWidth <= 576;
        let pageUrl =  window.location.href.match(/featured\//) != null;
        console.log(mediaWidth)
        console.log(pageUrl)
        return (mediaWidth && pageURL) ? true : false;
      }
    }
  },
  methods: {
    isCurrentPath: function (path) {
      return location.pathname === path
    }
  }
}
