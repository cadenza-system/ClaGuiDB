<template>
  <div class="works-search">
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
      <div id="performance-form-area">
        <label for="check-style" class="text">演奏形態</label>
        <div id="check-style">
          <div id="style-solo" class="style">
              <label for="style-solo-check" class="text">独奏</label>
              <input type="checkbox" name="style" id="style-solo-check">
          </div>
          <div id="style-duo" class="style">
              <label for="style-duo-check" class="text">2重奏</label>
              <input type="checkbox" name="style" id="style-duo-check">
          </div>
          <div id="style-trio" class="style">
              <label for="style-trio-check" class="text">3重奏</label>
              <input type="checkbox" name="style" id="style-trio-check">
          </div>
          <div id="style-qualtet" class="style">
              <label for="style-qualtet-check" class="text">4重奏</label>
              <input type="checkbox" name="style" id="style-qualtet-check">
          </div>
          <div id="style-quintet" class="style">
              <label for="style-quintet-check" class="text">5重奏</label>
              <input type="checkbox" name="style" id="style-quintet-check">
          </div>
          <div id="style-sextet" class="style">
              <label for="style-sextet-check" class="text">6重奏</label>
              <input type="checkbox" name="style" id="style-sextet-check">
          </div>
          <div id="style-ensemble" class="style">
              <label for="style-ensemble-check" class="text">合奏</label>
              <input type="checkbox" name="style" id="style-ensemble-check">
          </div>
          <div id="style-concerto" class="style">
              <label for="style-concerto-check" class="text">協奏曲</label>
              <input type="checkbox" name="style" id="style-concerto-check">
          </div>
        </div>
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
import SearchNavigation from "@/components/organisms/SearchNavigation.vue";
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
export default class WorksSearch extends Vue {
  constructor() {
    CurrentPushedPanel.pushWork();
    super()
  }
}
</script>
<style scoped lang="scss">
#name-area {
  display: flex;
}
#check-style {
  display: flex;
  flex-wrap: wrap;
}

#performance-form-area {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

#check-style {
  display: flex;
  flex-wrap: wrap;
}
.style {
  width: 20vw;
}
</style>