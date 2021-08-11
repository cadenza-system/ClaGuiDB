<template>
  <div class="home">
    <Header/>
    <Content>
      <VideoLinkList />
    </Content>
    <Footer/>
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import VideoLinkList from "../../organisms/VideoLinkList.vue"
import Footer from "../../organisms/Footer.vue";
import Content from "../../organisms/Content.vue";

@Component({
  components: {
    Header,
    VideoLinkList,
    Footer,
    Content
  },
})
export default class Home extends Vue {}
</script>
