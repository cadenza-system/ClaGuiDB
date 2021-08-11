<template>
  <header>
    <div class="icon-area px-3">
      <Logo />
      <SearchBar v-if="!isSP" :placeholder="placreholder" :showButton="false"/>
      <UserIcon />
    </div>
    <div v-if="isSP" class="search-area">
      <SearchBar :placeholder="placreholder" :showButton="false"/>
    </div>
  </header>
</template>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Logo from "../molecules/Logo.vue";
import SearchBar from "../molecules/SearchBar.vue";
import UserIcon from "../molecules/UserIcon.vue";
import UserAgent from "../../typeScript/util/UserAgent"
import SearchNavigation from "@/components/organisms/SearchNavigation.vue";

@Component({
  components: {
    Logo,
    SearchBar,
    UserIcon
  }
})
export default class Header extends Vue {
  private placreholder = "キーワード検索";
  private isSP = UserAgent.isPhone();

    public height(): number {
    let dom = document.getElementById("footer");
    if (!dom) {
      return 0;
    }
    return dom.clientHeight;
  }
}
</script>
<style scoped lang="scss">
@import "../../scss/color.scss";
header {
    position: fixed;
    z-index: 1;
    top: 0;
    width: 100vw;
    background-color: $main-theme-color;
}
.icon-area {
    display: flex;
    align-items: center;
    justify-content: space-between;
}
</style>