module.exports = {
  props: {
    imgurlstub: String,
    imgformat: String
  },
  data: function() {
    return {
      imgUrlBase: 'https://res.cloudinary.com/ortsac/image/upload/'
    }
  },
  computed: {
    imgUrlFull: {
      get: function() {
        return this.imgUrlBase + this.imgurlstub
      }
    }
  }
}
