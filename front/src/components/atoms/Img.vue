<template>
  <div class="img">
    <img :src="loadImg()" alt="">
  </div>
</template>

<script lang="ts">
import { Component, Vue ,Prop} from "vue-property-decorator";

@Component
export default class Img extends Vue {
  @Prop() private path!: string;

  /** 
   * パスを返す
   */
  private loadImg(): any {
    return require(`../../assets/${this.path}`);
  }
}
</script>

<style scoped lang="scss">
</style>
