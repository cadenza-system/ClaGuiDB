<template>
  <div class="comporser-search">
    <Header />
      <Content>
        <h1>COMPORSERs</h1>
        <router-link to="/search/work">work</router-link>
        <router-link to="/search/comporser">comporser</router-link>
        <router-link to="/search/player">player</router-link>
        <router-link to="/search/cd">cd</router-link>
      </Content>
    <Footer />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "../../../organisms/Header.vue";
import Footer from "../../../organisms/Footer.vue";
import Content from "../../../organisms/Content.vue";

@Component({
  components: {
    Header,
    Footer,
    Content
  },
})
export default class ComporserSearch extends Vue {}
</script>