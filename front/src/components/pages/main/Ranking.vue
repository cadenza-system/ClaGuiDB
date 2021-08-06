<template>
  <div class="ranking">
    <Header />
    <h2>RANKING</h2>
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
export default class Ranking extends Vue {}
</script>