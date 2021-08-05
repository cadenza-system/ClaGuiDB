<template>
  <div class="search-bar">
    <TextInput />
    <BUtton />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import TextInput from "../atoms/TextInput.vue";
import Button from "../atoms/Button.vue";

@Component({
  components: {
    TextInput,
    Button
  }
})
export default class SearchBar extends Vue {}
</script>

<style scoped lang="scss">
</style>
