<template>
  <div class="video-link mb-4">
    <Sambnail :videoId="videoId" :link="link"/>
    <div class="info">
      <div class="info-content mt-2 ml-3">
        <Link class="info-text title" href="#"> {{ title() }} </Link>
        <Link class="info-text comporser" href="#"> {{ comporserName() }} </Link>
      </div>
      <div class="menu-icon">
          ... 
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import Sambnail from "../molecules/Sambnail.vue";
import Link from "../atoms/Link.vue";
import MovieListDto from "../../typeScript/dto/MovieInfoDto"

@Component({
  components: {
    Sambnail,
    Link
  }
})
export default class VideoLink extends Vue {
  @Prop() private dto!: MovieListDto;
  private videoId = this.dto.movie().url();
  private link = "#";

  private eTitle = this.dto.work().eTitle();
  private jTitle = this.dto.work().jTitle();

  private eComporserName = this.dto.composer().eName();
  private jComporserName = this.dto.composer().jName();

  private title() {
    if (!this.eTitle) {
      return this.jTitle;
    }

    if (!this.jTitle) {
      return this.eTitle;
    }

    return `${this.eTitle} | ${this.jTitle}`;
  }

  private comporserName() {

    if (!this.eComporserName) {
      return this.jComporserName;
    }

    if (!this.jComporserName) {
      return this.eComporserName;
    }

    return `${this.eComporserName} | ${this.jComporserName}`;
  }
}
</script>

<style scoped lang="scss">
.info-text {
  text-align: left; 
}

.video-link {
  width: 100vw;
}

.info {
  display: flex;
  justify-content: space-between;
}

.info-content {
    display: flex;
    flex-direction: column;
}

.info a {
  color: whitesmoke;
}
</style>