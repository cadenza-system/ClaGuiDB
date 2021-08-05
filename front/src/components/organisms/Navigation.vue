<template>
    <div id="navigation">
      <router-link to="/">Home</router-link> |
      <router-link to="/ranking">Ranking</router-link> |
      <router-link to="/search">Search</router-link> |
      <router-link to="/favorite">Favorite</router-link> |
    </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
@Component
export default class Navigation extends Vue {}
</script>

<style scoped lang="scss">
$color: #42b983;
#navigation {
  padding: 30px;
}

#navigation a {
  font-weight: bold;
  color: #2c3e50;
}

#navigation a.router-link-exact-active {
  color: $color;
}
</style>