<template>
  <div class="home">
    <Header />
    <h2>HOME</h2>
    <Navigation />
  </div>
</template>

<script scoped lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../organisms/Header.vue";
import Navigation from "../organisms/Navigation.vue";

@Component({
  components: {
    Header,
    Navigation
  },
})
export default class Home extends Vue {}
</script>
