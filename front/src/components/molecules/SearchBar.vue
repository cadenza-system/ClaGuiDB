<template>
  <div class="search-bar input-group">
    <SearchInput :placeholder="placeholder"/>
    <Button v-if="showButton" :name="buttonName"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import SearchInput from "../atoms/SearchInput.vue";
import Button from "../atoms/Button.vue";

@Component({
  components: {
    SearchInput,
    Button
  }
})
export default class SearchBar extends Vue {
  @Prop() private placeholder?: string;
  @Prop() private showButton!: boolean;

  private buttonName = "SEARCH";
}
</script>

<style scoped lang="scss">
.search-bar {
  display: flex;
  justify-content: center;
}
</style>
