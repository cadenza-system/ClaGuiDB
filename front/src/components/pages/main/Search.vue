<template>
  <div class="search">
    <Header />
    <h2>SEARCH</h2>
    <Navigation />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../organisms/Header.vue";
import Navigation from "../organisms/Navigation.vue";

@Component({
  components: {
    Header,
    Navigation
  },
})
export default class Search extends Vue {}
</script>