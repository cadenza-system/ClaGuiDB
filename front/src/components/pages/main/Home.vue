<template>
  <div class="home">
    <Header />
    <VideoLink />
    <VideoLink />
    <Navigation />
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../organisms/Header.vue";
import VideoLink from "../organisms/VideoLink.vue"
import Navigation from "../organisms/Navigation.vue";

@Component({
  components: {
    Header,
    VideoLink,
    Navigation
  },
})
export default class Home extends Vue {}
</script>
