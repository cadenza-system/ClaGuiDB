<template>
  <div class="home">
    <Header @onSearch="onSearch"/>
    <Content>
      <VideoLinkList :movieInfoDto="movieInfoDto" />
    </Content>
    <Footer/>
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue, Prop, Emit } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import VideoLinkList from "../../organisms/VideoLinkList.vue"
import Footer from "../../organisms/Footer.vue";
import Content from "../../organisms/Content.vue";
import CurrentPushedPanel from "../../../router/nav/CurrentPushedPanel";
import MovieInfoDto from "../../../typeScript/dto/MovieInfoDto"

@Component({
  components: {
    Header,
    VideoLinkList,
    Footer,
    Content
  },
})
export default class Home extends Vue {
  @Prop() private movieInfoDto!: MovieInfoDto[];
  constructor() {
    super();
    CurrentPushedPanel.pushHome();
  }

  @Emit()
  onSearch(value: string) {
    this.$emit("onSearch", value)
  }
}
</script>
