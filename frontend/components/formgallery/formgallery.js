module.exports = {
  props: {
    imgurlstub: String,
    imgformat: String,
    imgFilename: String,
  },
  data: function() {
    return {
      imgUrlBase: 'https://res.cloudinary.com/ortsac/image/upload/',
      showDelete: false
    }
  },
  computed: {
    imgUrlFull: {
      get: function() {
        return this.imgUrlBase + this.imgurlstub
      }
    },
    imgName: {
      get: function() {
        if (this.imgFilename) {
          return this.imgFilename
        } else {
          let name = this.imgUrlFull;
          return `...${name.substring(name.length - 10)}`
        }
      }
    },
  },
  methods: {
    toggleDelete: function() {
      return this.showDelete = !this.showDelete
    },
    deactivateDelete: function() {
      return this.showDelete = false
    },
    activateDelete: function() {
      return this.showDelete = true
    }
  }
}
