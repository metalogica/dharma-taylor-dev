module.exports = {
  data: function() {
    return {
      cardVisibility: true,
    }
  },
  methods: {
    toggleVisibility: function() {
      this.$emit("changeVisibility", this.cardVisibility)
      console.log('emitted event from controller')
    }
  }
}
