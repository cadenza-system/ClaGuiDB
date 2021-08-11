<template>
  <div class="works-search">
    <SearchNavigation />
    <h1>WORKs</h1>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../../organisms/Header.vue";
import Footer from "../../../organisms/Footer.vue";
import Content from "../../../organisms/Content.vue";
import CurrentPushedPanel from "@/router/search/CurrentPushedPanel";
import SearchNavigation from "@/components/organisms/SearchNavigation.vue";

@Component({
  components: {
    Header,
    Footer,
    Content,
    SearchNavigation
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
</style>