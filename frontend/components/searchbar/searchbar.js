module.exports = {
  data: function() {
    return {
      txtInput: ""
    }
  },
  methods: {
    genQuery: function(event) {
      // console.log(this.txtInput);
      this.$store.commit('updateSearchbarQuery', event.target.value);
    }
  }
}
