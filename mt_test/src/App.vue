<template>
  <Login></Login>
  <!-- <Main></Main> -->
</template>

<script>
import Login from './components/Login.vue'
// import Main from './components/Main.vue'

export default {
  name: 'App',
  components: {
    Login,
    // Main
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
