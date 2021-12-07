<template>
  <div class="video-link-list">
    <div v-for="movie in movieInfoDto" :key="movie.movie().id()">
      <VideoLink :dto="movie" />
    </div>
  </div>
</template>

<script lang="ts">
import MovieInfoDto from "@/typeScript/dto/MovieInfoDto";
import { Component, Vue, Prop } from "vue-property-decorator";
import VideoLink from "./VideoLink.vue";

@Component({
  components: {
    VideoLink
  }
})
export default class VideoLinkList extends Vue {
    @Prop() private movieInfoDto!: MovieInfoDto[];
}
</script>

<style scoped lang="scss">
</style>
