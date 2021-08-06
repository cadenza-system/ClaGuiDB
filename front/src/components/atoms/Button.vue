<template>
  <div class="button">
    <button class="btn btn-outline-light">{{ name }}</button>
  </div>
</template>

<script lang="ts">
import { Component, Vue , Prop} from "vue-property-decorator";

@Component
export default class Button extends Vue {
  @Prop() private name!: string;
}
</script>

<style scoped lang="scss">
</style>
