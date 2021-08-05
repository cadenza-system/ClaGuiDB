<template>
  <div class="user-icon">
    user
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
export default class UserIcon extends Vue {}
</script>

<style scoped lang="scss">
</style>
