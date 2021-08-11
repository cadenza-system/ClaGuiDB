<template>
  <div class="ranking">
    <Header />
    <Content>
      <VideoLinkList />
    </Content>
    <Footer />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import Footer from "../../organisms/Footer.vue";
import VideoLinkList from "../../organisms/VideoLinkList.vue"
import Content from "../../organisms/Content.vue";

@Component({
  components: {
    Header,
    Footer,
    VideoLinkList,
    Content
  },
})
export default class Ranking extends Vue {}
</script>