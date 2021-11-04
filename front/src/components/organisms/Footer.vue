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
export default class Footer extends Vue {
  public height(): number {
    let dom = document.getElementById("footer");
    if (!dom) {
      return 0;
    }
    return dom.clientHeight;
  }
}
</script>

<style scoped lang="scss">
@import "../../scss/color.scss";
footer {
    width: 100vw;
    z-index: 3;
    position: fixed;
    bottom: 0;
    background-color: $main-theme-color;
}
</style>
