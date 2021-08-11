<template>
  <div class="comporser-search">
    <SearchNavigation />
    <h1>COMPORSERs</h1>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../../organisms/Header.vue";
import Footer from "../../../organisms/Footer.vue";
import Content from "../../../organisms/Content.vue";
import CurrentPushedPanel from "@/router/search/CurrentPushedPanel";
import SearchNavigation from "@/components/organisms/SearchNavigation.vue"

@Component({
  components: {
    Header,
    Footer,
    Content,
    SearchNavigation
  },
})
export default class ComporserSearch extends Vue {
  constructor() {
    CurrentPushedPanel.pushComporser();
    super()
  }
}
</script>