module.exports = {
  computed: {
    count: {
      get: function() {
        return this.$store.state.count
      },
      set: function() {
        this.$store.commit('increment')
      }
    },
    cardView: {
      get: function() {
        return this.$store.state.cardView
      },
      set: function() {
        this.$store.commit('toggleView')
      }
    }
  },
  methods: {
    incrementer: function() {
      this.$store.commit('increment')
    },
    toggleCardView: function() {
      this.$store.commit('toggleView')
    }
  }
}
