<template>
  <div class="comporser-search">
    <SearchNavigation />
    <div id="input-area">
      <div id="name-area">
        <label for="input-name" class="text">名前</label>
        <SearchBar id="input-name" placeholder="" :showButton="false"/>
      </div>
      <div id="country-area">
        <label for="select-country" class="text">国</label>
        <select name="country" id="select-country"></select>
      </div>
      <div id="age-area">
        <select name="aliveFlg" id="aliveFlg">
          <option value="0">生年</option>
          <option value="1">没年</option>
        </select>
        <select name="ageFrom" id="age-from"></select>
        <div class="text">～</div>
        <select name="ageTo" id="age-to"></select>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../../organisms/Header.vue";
import Footer from "../../../organisms/Footer.vue";
import Content from "../../../organisms/Content.vue";
import CurrentPushedPanel from "@/router/search/CurrentPushedPanel";
import SearchNavigation from "@/components/organisms/SearchNavigation.vue"
import SearchBar from "@/components/molecules/SearchBar.vue";

@Component({
  components: {
    Header,
    Footer,
    Content,
    SearchNavigation,
    SearchBar
  },
})
export default class ComporserSearch extends Vue {
  constructor() {
    CurrentPushedPanel.pushComporser();
    super()
  }
}
</script>
<style scoped lang="scss">
#name-area {
  display: flex;
}

#age-area {
  display: flex;
}
</style>