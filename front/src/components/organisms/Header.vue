<template>
  <header>
      <Logo />
      <SearchBar />
      <UserIcon />
  </header>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Logo from "../molecules/Logo.vue";
import SearchBar from "../molecules/SearchBar.vue";
import UserIcon from "../molecules/UserIcon.vue";

@Component({
  components: {
    Logo,
    SearchBar,
    UserIcon
  }
})
export default class Header extends Vue {}
</script>
<style scoped lang="scss">
header {
    // position: fixed;
    width: 100vw;
    // z-index: 1;
    height: 64px;
    // display: flex;
    // justify-content: space-around;
    background-color: darkgray;
}
</style>