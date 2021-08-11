<template>
<div class="content">
  <slot></slot>
</div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class Content extends Vue {}
</script>

<style scoped lang="scss">
.content{
  padding-top: 30vw;
  padding-bottom: 10vw;
}
</style>
