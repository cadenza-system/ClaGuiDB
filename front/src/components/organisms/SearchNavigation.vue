<template>
  <div class="search-navigation">
      <div class="nav-home">
        <SearchNavigationPanel label="WORK" link="/search/work" :onPushed="isWork()" />
      </div>
      <div class="nav-ranking">
        <SearchNavigationPanel label="COMPORSER" link="/search/comporser" :onPushed="isComporser()" />
      </div>
      <div class="nav-search">
        <SearchNavigationPanel label="PLAYER" link="/search/player" :onPushed="isPlayer()" />
      </div>
      <div class="nav-favorite">
        <SearchNavigationPanel label="CD" link="/search/cd" :onPushed="isCD()" />
      </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import SearchNavigationPanel from "../molecules/SearchNavigationPanel.vue"
import CurrentPushedPanel from "../../router/search/CurrentPushedPanel";

@Component({
  components: {
    SearchNavigationPanel
  }
})
export default class SearchNavigation extends Vue {
    isWork(): boolean {
    return CurrentPushedPanel.isWork();
  }

  isComporser(): boolean {
    return CurrentPushedPanel.isComporser();
  }

  isPlayer(): boolean {
    return CurrentPushedPanel.isPlayer();
  }

  isCD(): boolean {
    return CurrentPushedPanel.isCD();
  }
}
</script>

<style scoped lang="scss">
@import "../../scss/color.scss";

.search-navigation {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  background-color: $main-theme-color;
}

// .search-navigation a {
//   font-weight: bold;
//   color: whitesmoke;
//   height: 12vw;
// }
</style>
