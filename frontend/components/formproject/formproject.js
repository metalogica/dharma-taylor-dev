const myCsrf = document.querySelector('meta[name="csrf-token"]');

module.exports = {
  props: {
    new: String,
    mycsrf: String,
    pageurl: String,
    id: String,
    projectimages: String,
    projectname: String,
    projectdescription: String,
    projectimagesid: String,
    projectblurb: String
  },
  computed: {
    newProject: {
      get: function() {
        return (this.new === "true") ? true : false
      }
    },
    selectCoverImage: {
      get: function() {
        idImageArr = [];
        idArray = this.imgId;
        nameArray = this.imgName;
        idArray.forEach((key, value) => {
          var obj = {};
          obj.id = key;
          obj.text = nameArray[value];
          idImageArr.push(obj);
        });
        return idImageArr;
      }
    },
    imgName: {
      get: function() {
        if (this.projectimages.match(/".*"/gi) === null) {return "new project"};
        imageArray = [];
        match = this.projectimages.match(/".*"/gi).pop().split(',');
        match.forEach((img) => {imageArray.push(img.trim().replace(/"/gi,''))});
        return imageArray;
      }
    },
    imgId: {
      get: function() {
        idArray = [];
        this.projectimagesid.split(',').forEach((e) => {idArray.push(Number(e.replace(/\D/g, '')))});
        return idArray
      }
    },
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
        return '/admin/projects'
      }
    },
    patchurl: {
      get: function() {
        return '/admin/projects/' + this.id
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
