<template>
  <div class="search">
    <Header />
      <Content>
        <component :is="loadSearchArea()" />
      </Content>
    <Footer />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import Footer from "../../organisms/Footer.vue";
import Content from "../../organisms/Content.vue";
import WorksSearch from "../main/search/WorksSearch.vue";
import ComporserSearch from "../main/search/ComporserSearch.vue";
import CdSearch from "../main/search/CdSearch.vue";
import PlayerSearch from "../main/search/PlayersSearch.vue";
import CurrentPath from "../../../router/search/CurrentPath";
import CurrentPushedPanel from "../../../router/nav/CurrentPushedPanel";

@Component({
  components: {
    Header,
    Footer,
    Content,
    WorksSearch,
    ComporserSearch,
    PlayerSearch,
    CdSearch
  },
})
export default class Search extends Vue {
  constructor() {
    CurrentPushedPanel.pushSearch();
    super()
  }

  private loadSearchArea(): any {
    // パスを記録
    CurrentPath.setCurrentPath(this.$route.path);
    // // パスを取得
    let currentPath: string = CurrentPath.path();

    if (currentPath === "/search/comporser") {
      return ComporserSearch;
    }

    if (currentPath === "/search/player") {
      return PlayerSearch;
    }

    if (currentPath === "/search/cd") {
      return CdSearch;
    }

    return WorksSearch;
  }
}
</script>
<style lang="scss">
@import "../../../scss/color.scss";

#input-area {
  background-color:$dark-theme-color2 ;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 4vw;
}
#search-nav {
  z-index: 2;
}
</style>