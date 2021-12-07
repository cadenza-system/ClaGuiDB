<template>
  <div class="sambnail">
    <Link :href="link">
      <img :src="src" alt="">
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
  private src = require(`../../assets/sambnail.png`);

  constructor() {
    super();
    this.loadPath();
  }
  private async loadPath() {
    const sizeList: string[] = ["maxresdefault", "sddefault", "hqdefault", "mqdefault", "default"];

    for (const size of sizeList) {
      const url = `http://img.youtube.com/vi/${this.videoId}/${size}.jpg`
      if(await this.checkStatus(url)) {
        this.src = url;
        return;
      }
    }

    this.src = `http://img.youtube.com/vi/${this.videoId}/0.jpg`
  }

  private async checkStatus(url: string): Promise<boolean>{
    const res = await fetch(url);
    return res.ok
  }
}
</script>

<style scoped lang="scss">
.sambnail img{
  width: 100vw;
}
</style>
