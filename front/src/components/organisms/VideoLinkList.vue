<template>
  <div class="video-link-list">
    <div v-for="movie in dto" :key="movie">
      <VideoLink :dto="movie" />
    </div>
  </div>
</template>

<script lang="ts">
import MovieListDto from "@/typeScript/dto/MovieListDto";
import { Component, Vue, Prop } from "vue-property-decorator";
import VideoLink from "./VideoLink.vue";

@Component({
  components: {
    VideoLink
  }
})
export default class VideoLinkList extends Vue {
    @Prop() private dto!: MovieListDto[];
}
</script>

<style scoped lang="scss">
</style>
