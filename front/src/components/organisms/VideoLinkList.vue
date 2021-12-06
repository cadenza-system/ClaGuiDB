<template>
  <div class="video-link-list">
    <VideoLink />
    <VideoLink />
    <VideoLink />
    <VideoLink />
    <VideoLink />
    <VideoLink />
    <VideoLink />
    <VideoLink />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import VideoLink from "./VideoLink.vue";

@Component({
  components: {
    VideoLink
  }
})
export default class VideoLinkList extends Vue {}
</script>

<style scoped lang="scss">
</style>
