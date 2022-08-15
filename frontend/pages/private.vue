<template>
  <div>
    <h1>{{title}}</h1>
    <p v-for="elem in private">{{elem}}</p>
  </div>
</template>

<script>
export default {
  data () {
    return {
      title: 'Private',
      private: []
    }
  },
  methods: {
    async updateData() {
      this.private = await this.$axios.$get('/privates')
    }
  },
  mounted () {
    this.updateData()
  }
}
</script>
