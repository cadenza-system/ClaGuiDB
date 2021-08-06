<template>
  <div class="home">
    <Header />
    <VideoLinkList />
    <Footer />
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import VideoLinkList from "../../organisms/VideoLinkList.vue"
import Footer from "../../organisms/Footer.vue";

@Component({
  components: {
    Header,
    VideoLinkList,
    Footer
  },
})
export default class Home extends Vue {}
</script>
