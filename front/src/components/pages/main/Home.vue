<template>
  <div class="home">
    <HomeTemplate :movieInfoDto="movieInfoDto" @onSearch="searchMovie"/>
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
  }
  // watch: {
  //   $route() {
  //     this.$router.go(0)
  //   }
  // }
})
export default class Home extends Vue {
  private movieInfoDto?: MovieInfoDto[] | null = null;

  constructor() {
    super();
    const query = this.$route.query.v
    console.log(`query: ${query}`)
    if (query) {
      this.searchMovie(query.toString())
      return
    }
    this.fetchMovie();
  }
  async fetchMovie() {
    console.log("fetchMovie")
    this.movieInfoDto = await MovieListDao.fetchMovies();
  }

  async searchMovie(params: string) {
      console.log(`search:${params}`)
      params = params.replace('　', ' ');
      this.movieInfoDto = await MovieListDao.searchMovies(params);
  }
}
</script>
