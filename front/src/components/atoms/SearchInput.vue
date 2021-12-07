<template>
    <input type="search"
    class="form-control search-input"
    :placeholder="placeholder"
    v-model="value"
    v-on:keydown.enter = "search()">
</template>

<script lang="ts">
import { Component, Vue, Prop} from "vue-property-decorator";

@Component
export default class SearchInput extends Vue {
  @Prop() private placeholder?: string;
  private value = "";

  search() {
    this.$router.push({name: "Home", query: {v: this.value}})
  }
}
</script>

<style scoped lang="scss">
@import "../../scss/color.scss";
.search-input {
  background-color: $main-theme-color;
  color:whitesmoke;
  caret-color: whitesmoke;
  border: none;
}
// input :focus {
//   background-color: $main-theme-color;
//   border: none;
// }
</style>
