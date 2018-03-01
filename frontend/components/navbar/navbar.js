module.exports = {
  props: {
    isHome:{
        type:Boolean,
        required:true
     }
  },
  computed: {
    brand: function () {
      return require((this.isHome ? '../../images/DTlogo-small-black.png' : '../../images/DTlogo-small-white.png'))
    }
  }
}
