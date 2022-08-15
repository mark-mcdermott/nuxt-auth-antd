<template>
  <div>
    <h1>{{name}}</h1>
    <p v-for="elem in private">{{elem}}</p>
  </div>
</template>

<script>
export default {
  name: 'Private',
  data () {
    return {
      private: []
    }
  },
  methods: {
    async updateData() {
      this.public = await this.$axios.$get('/private')
    }
  },
  mounted () {
    this.updateData()
  }
}
</script>
