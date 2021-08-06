<template>
  <div id="app">
    <router-view />
  </div>
</template>

<style lang="scss">
@import "./scss/color.scss";
body {
  background-color: $dark-theme-color;
}
$color: #42b983;
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>