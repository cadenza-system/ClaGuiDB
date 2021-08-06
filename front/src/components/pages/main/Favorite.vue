<template>
  <div class="faovrite">
    <Header />
    <h2>FAVORITE</h2>
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
export default class Favorite extends Vue {
}
</script>