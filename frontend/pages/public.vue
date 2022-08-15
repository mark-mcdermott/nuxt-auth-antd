<template>
  <div>
    <h1>{{name}}</h1>
    <p v-for="elem in public">{{elem}}</p>
  </div>
</template>

<script>
export default {
  name: 'Public',
  data () {
    return {
      public: []
    }
  },
  methods: {
    async updateData() {
      this.public = await this.$axios.$get('/public')
    }
  },
  mounted () {
    this.updateData()
  }
}
</script>
