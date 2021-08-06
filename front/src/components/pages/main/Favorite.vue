<template>
  <div class="faovrite">
    <Header />
    <h2>FAVORITE</h2>
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
export default class Favorite extends Vue {
}
</script>