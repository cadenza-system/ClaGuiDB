<template>
  <div class="home">
    <Header/>
    <Content>
      <VideoLinkList :dto="dto" />
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
import CurrentPushedPanel from "../../../router/nav/CurrentPushedPanel";
import MovieListDao from "../../../typeScript/dao/MovieListDao"
import MovieListDto from "../../../typeScript/dto/MovieListDto"

@Component({
  components: {
    Header,
    VideoLinkList,
    Footer,
    Content
  },
})
export default class Home extends Vue {
  private dto: MovieListDto[] | null = null;
  constructor() {
    super();
    CurrentPushedPanel.pushHome();
    this.fetchData();
  }

  async fetchData() {
    this.dto = await MovieListDao.fetchMovies();
    console.log("fetchData")
  }
}
</script>
