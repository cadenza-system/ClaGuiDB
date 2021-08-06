<template>
  <div class="search">
    <Header />
    <h2>SEARCH</h2>
    <Footer />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../organisms/Header.vue";
import Footer from "../../organisms/Footer.vue";

@Component({
  components: {
    Header,
    Footer
  },
})
export default class Search extends Vue {}
</script>