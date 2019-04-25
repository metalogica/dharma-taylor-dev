module.exports = {
  props: {
    cards: String
  },
  data: function() {
    return {
      txtInput: "",
      searched: false
    }
  },
  computed: {
    totalCards: {
      get: function() {
        return Number(this.cards)
      }
    },
    showNumberOfCards: {
      get: function() {
        if (this.searched === false) { return `Total: ${this.totalCards}` };
        if (this.$store.state.cards === this.totalCards) {
          return `Total: ${this.totalCards}`
        } else {
          return `${this.$store.state.cards} results`
        }
      }
    }
  },
  methods: {
    genQuery: function(event) {
      this.searched = true;
      this.$store.commit('updateSearchbarQuery', event.target.value);
      // setTimeout(this.$root.countChildren(), 250);
    }
  }
}
