module.exports = {
  props: {
    route: String,
    name: String
  },
  data: function() {
    return {
      hover: false
    }
  },
  computed: {
    pageURL: {
      get: function() {
        var url = window.location.pathname;
        var pattern = new RegExp('featured', 'gim');
        return (pattern.test(url)) ? '/admin' : 'archives'
      }
    }
  },
  methods: {
    toggleHover: function() {
      this.hover = !this.hover
    }
  }
}
