<template>
  <div class="user-icon">
    <Img path="test/bosatu.png" />
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

<style lang="scss">
.user-icon img {
    width: 25px;
    height: 25px;
    border-radius: 40%;
    box-shadow: 0 2px 6px #c1ced7;
    margin: 20px 0 10px;
    object-fit: cover;
    margin-bottom: 20px;
}
</style>
