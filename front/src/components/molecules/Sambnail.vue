<template>
  <div class="sambnail">
    <Link :href="link">
      <img :src="loadPath()" alt="">
    </Link>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import Img from "../atoms/Img.vue";
import Link from "../atoms/Link.vue";
@Component({
  components: {
    Img,
    Link
  }
})
export default class Sambnail extends Vue {
  @Prop() private videoId!: string;
  @Prop() private link!: string;

  private loadPath(): string {
    return `http://img.youtube.com/vi/${this.videoId}/maxresdefault.jpg`;
  }
}
</script>

<style scoped lang="scss">
.sambnail img{
  width: 100vw;
}
</style>
