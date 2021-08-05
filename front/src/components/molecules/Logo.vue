<template>
  <div class="logo">
    logo
    <Img />
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

<style scoped lang="scss">
</style>
