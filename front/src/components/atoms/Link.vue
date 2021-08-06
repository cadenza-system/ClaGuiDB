<template>
<a :href="href">
  <slot></slot>
</a>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";

@Component
export default class Link extends Vue {
  @Prop() private href!: string;
}
</script>

<style scoped lang="scss">
a {
    text-decoration: none;
}
a:hover {
    text-decoration: none;
}
</style>
