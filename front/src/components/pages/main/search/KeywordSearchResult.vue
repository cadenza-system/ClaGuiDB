<template>
  <div id="keywordsearch-result">
    <SearchBar v-if="!isSP" :placeholder="placreholder" :showButton="false"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import SearchBar from "@/components/molecules/SearchBar.vue";
import UserAgent from "@/typeScript/util/UserAgent";

@Component({
  components: {
    SearchBar
  }
})
export default class KeywordSearchResult extends Vue {
  private placreholder = "キーワード検索";
  private isSP = UserAgent.isPhone();
}
</script>

<style scoped lang="scss">
#keywordsearch-result {
  z-index: 2;
}
</style>
