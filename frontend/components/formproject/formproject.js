const myCsrf = document.querySelector('meta[name="csrf-token"]');

module.exports = {
  props: {
    mycsrf: String,
    pageurl: String,
    id: String,
    projectimages: Array,
    projectname: String,
    projectdescription: String
  },
  computed: {
    pagestub: {
      get: function() {
        return this.pageurl.split("/").pop()
      }
    },
    httpverb: {
      get: function() {
        if (this.pagestub === "new") {
          return "post"
        } else {
          return "put"
        }
      }
    },
    posturl: {
      get: function() {
        return '/' + this.pageurl.split('/')[1]
      }
    },
    patchurl: {
      get: function() {
        return '/' + this.pageurl.split('/')[1] + '/' + this.id
      }
    },
    httpaction: {
      get: function() {
        if (this.pagestub === "new") {
          return this.posturl
        } else {
          return this.patchurl
        }
      }
    }
  }
}
