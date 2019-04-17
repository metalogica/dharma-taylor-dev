module.exports = {
  data: function() {
    return {
      links: [
        {name: 'Projects', url: "/admin"},
        {name: 'Archives', url: "/archives"},
        {name: 'Information', url: "/information/1/edit"},
        {name: 'Footer', url: "/footer/edit"},
      ]
    }
  },
  computed: {
    currentPage: {
      get: function() {
        return window.location.pathname
      }
    },
    activePage: {
      get: function() {
        this.links.forEach((item) => {
          item.currentpage = this.currentPage
          item.active = false
          if (item.url === item.currentpage) { item.active = true}
        })
      }
    },
    formView: {
      get: function() {
        var pattern = new RegExp('featured|new', 'gim');
        return pattern.test(this.currentPage)
      }
    }
  },
  methods: {
    checkPage: function() {
      if (url === page) {
        return true;
      } else {
        return false;
      }
    }
  }
}
