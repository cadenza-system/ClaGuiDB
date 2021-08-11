<template>
<footer>
    <div id="navigation">
      <div class="nav-home">
        <Panel iconPath="nav/home.png" label="HOME" link="/" :onPushed="isHome()" />
      </div>
      <div class="nav-ranking">
        <Panel iconPath="nav/crown.png" label="RANKING" link="/ranking" :onPushed="isRanking()" />
      </div>
      <div class="nav-search">
        <Panel iconPath="nav/search.png" label="SEARCH" link="/search" :onPushed="isSearch()" />
      </div>
      <div class="nav-favorite">
        <Panel iconPath="nav/heart.png" label="FAVORITE" link="/favorite" :onPushed="isFavorite()" />
      </div>
    </div>
</footer>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Panel from "../molecules/NavigationPanel.vue";
import CurrentPushedPanel from "../../router/nav/CurrentPushedPanel";

@Component({
  components: {
    Panel
  }
})
export default class Navigation extends Vue {
  isHome(): boolean {
    return CurrentPushedPanel.isHome();
  }

  isRanking(): boolean {
    return CurrentPushedPanel.isRanking();
  }

  isSearch(): boolean {
    return CurrentPushedPanel.isSearch();
  }

  isFavorite(): boolean {
    return CurrentPushedPanel.isFavorite();
  }
}
</script>

<style lang="scss">
@import "../../scss/color.scss";

#navigation {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-around;
}

#navigation a {
  font-weight: bold;
  color: whitesmoke;
  height: 12vw;
}
</style>