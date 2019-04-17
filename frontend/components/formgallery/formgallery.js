module.exports = {
  props: {
    new: String,
    imgurlstub: String,
    imgformat: String,
    imgFilename: String,
    mycsrf: String,
    pageurl: String,
    id: String
  },
  data: function() {
    return {
      imgUrlBase: 'https://res.cloudinary.com/ortsac/image/upload/',
      showDelete: false,
      showModal: false
    }
  },
  computed: {
    newProject: {
      get: function() {
        return (this.new === "true") ? true : false
      }
    },
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
    makePostUrl: {
      get: function() {
        return '/featured/' + this.id + '/edit/delete_image'
      }
    }
  },
  methods: {
    toggleDelete: function() {
      return this.showDelete = !this.showDelete
    },
    toggleModal: function() {
      return this.showModal = !this.showModal
    },
    clickDelete: function() {
      this.showDelete = false
      this.showModal = true
    }
  }
}
