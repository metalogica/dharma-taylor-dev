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
    }
  },
  methods: {
    isCurrentPath: function (path) {
      return location.pathname === path
    }
  }
}
