module.exports = {
  data: function() {
    return {
      links: [
        {name: 'Projects', url: "/admin"},
        {name: 'Archives', url: "/admin/archives"},
        {name: 'Information', url: "/admin/information/1/edit"},
        {name: 'Footer', url: "/admin/footer/1/edit"},
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
    },
    routedFromAdmin: {
      get: function() {
        var previousPage = document.referrer;
        var pattern = new RegExp('admin', 'gim');
        return pattern.test(previousPage) ? true : false;
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
