<template>
  <div class="home">
    <HomeTemplate :movieInfoDto="movieInfoDto" />
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue } from "vue-property-decorator";
import HomeTemplate from "../../templates/main/Home.vue"
import MovieListDao from "../../../typeScript/dao/MovieListDao"
import MovieInfoDto from "../../../typeScript/dto/MovieInfoDto"

@Component({
  components: {
    HomeTemplate
  },
})
export default class Home extends Vue {
  private movieInfoDto?: MovieInfoDto[] | null = null;

  constructor() {
    super();
    this.fetchData();
  }
  async fetchData() {
    console.log("fetchData")
    this.movieInfoDto = await MovieListDao.fetchMovies();
  }
}
</script>
