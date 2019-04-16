module.exports = {
  props: {
    cards: String
  },
  data: function() {
    return {
      txtInput: ""
    }
  },
  computed: {
    totalCards: {
      get: function() {
      return Number(this.cards)
      }
    }
  },
  methods: {
    genQuery: function(event) {
      // console.log(this.txtInput);
      this.$store.commit('updateSearchbarQuery', event.target.value);
    }
  }
}
