<template>
<footer>
    <div id="navigation">
      <div class="nav-home">
        <Panel iconPath="nav/home.png" label="HOME" link="/" />
      </div>
      <div class="nav-ranking">
        <Panel iconPath="nav/crown.png" label="RANKING" link="/ranking" />
      </div>
      <div class="nav-search">
        <Panel iconPath="nav/search.png" label="SEARCH" link="/search" />
      </div>
      <div class="nav-favorite">
        <Panel iconPath="nav/heart.png" label="HEART" link="/favorite" />
      </div>
    </div>
</footer>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Panel from "../molecules/NavigationPanel.vue"
@Component({
  components: {
    Panel
  }
})
export default class Navigation extends Vue {}
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

#navigation a.router-link-exact-active {
  background-color: $dark-theme-color;
}
</style>