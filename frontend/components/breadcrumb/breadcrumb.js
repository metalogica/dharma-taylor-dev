module.exports = {
  name: 'breadcrumb',
  data: function () {
    return {
      urls: []
    }
  },
  mounted: function () {
    pathArray = window.location.pathname.split('/');
    pathArray.shift()

    pathArray.forEach(function (element, index) {
      path="";
      for (i = 0; i <= index; i++) {
        path = path.concat('/' + pathArray[i]);
      }
      this.urls.push({name:element.toUpperCase(), path: path})
    }.bind(this));
  }
}
