module.exports = {
  props: {
    name: String,
    img: String,
    mycsrf: String,
    posturl: String,
    slug: String,
    id: String,
    datecreate: String,
    dateupdate: String
  },
  data: function(){
    return {
      urlImageStub: "https://res.cloudinary.com/ortsac/image/upload/",
      isHoveringEdit: false,
      isHoveringArchive: false,
      isHoveringDelete: false
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
    }
  }
}
