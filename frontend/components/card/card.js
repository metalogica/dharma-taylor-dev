module.exports = {
  props: {
    name: String,
    description: String,
    img: String,
    mycsrf: String,
    posturl: String,
    slug: String,
    id: String
  },
  data: function(){
    return {
      urlImageStub: "https://res.cloudinary.com/ortsac/image/upload/",
      isHovering: false,
      isClicked: false,
      showModal: false,
      hideCard: false
    }
  },
  computed: {
    currentQuery: {
      get: function() {
        var query = this.$store.state.searchbarQuery;
        var pattern = new RegExp(query, 'gim');
        if (this.name.match(pattern) != null || this.description.match(pattern) != null) {
          this.hideCard = false
        } else {
          this.hideCard = true
        }
      }
    },
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
    },
    cardView: {
      get: function() {
        return this.$store.state.cardView
      }
    }
  },
  methods: {
    toggleModal: function() {
      this.showModal = !this.showModal
    },
    hideModal: function() {
      this.showModal = false
    }
  }
}
