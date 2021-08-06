<template>
  <footer>
    <Navigation />
  </footer>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Navigation from "../organisms/Navigation.vue"

@Component({
  components: {
    Navigation
  }
})
export default class Footer extends Vue {}
</script>

<style scoped lang="scss">
footer {
    height: 16vw;
    width: 100vw;
    z-index: 99;
    position: fixed;
    bottom: 0;
}
</style>
