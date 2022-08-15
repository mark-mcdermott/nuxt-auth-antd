<template>
  <div>
    <h1>{{title}}</h1>
    <p v-for="elem in public">{{elem}}</p>
  </div>
</template>

<script>
export default {
  data () {
    return {
      title: 'Public',
      public: []
    }
  },
  methods: {
    async updateData() {
      this.public = await this.$axios.$get('/publics')
    }
  },
  mounted () {
    this.updateData()
  }
}
</script>
