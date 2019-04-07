module.exports = {
  props: {
    name: String,
    img: String,
    mycsrf: String,
    posturl: String,
    slug: String,
    id: String
  },
  data: function(){
    return {
      urlImageStub: "https://res.cloudinary.com/ortsac/image/upload/",
      isHovering: false
    }
  },
  computed: {
    imageurl: {
      get: function() {
        return this.urlImageStub + this.img
      }
    },
    makePostUrl: {
      get: function() {
        return this.posturl + '/' + this.id
      }
    },
    makeArchiveUrl: {
      get: function() {
        return this.posturl + '/archiver/' + this.id
      }
    },
    makeEditUrl: {
      get: function() {
        return this.posturl + '/' + this.id + '/edit'
      }
    }
  }
}
