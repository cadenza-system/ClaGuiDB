<template>
  <div class="logo">
    <Img path="logo.png"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Img from "../atoms/Img.vue";

@Component({
  components: {
    Img,
  }
})
export default class Logo extends Vue {}
</script>

<style lang="scss">
.logo img {
  width: 20vw;
}
</style>
