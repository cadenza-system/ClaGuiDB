<template>
<div class="content">
  <Header style="position: inherit; opacity: 0;"/>
  <slot></slot>
</div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "./Header.vue";
import Footer from "./Footer.vue";

@Component({
  components: {
    Header,
    Footer
  }
})
export default class Content extends Vue {}
</script>

<style scoped lang="scss">
.content {
  height: 100%;
  margin-bottom: 12vw;
}
</style>
