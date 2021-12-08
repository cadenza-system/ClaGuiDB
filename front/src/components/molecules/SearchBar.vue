<template>
  <div class="search-bar input-group">
    <SearchInput :placeholder="placeholder" @onInput="input"/>
    <Button v-if="showButton" :name="buttonName"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop, Emit } from "vue-property-decorator";
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
  private inputValue = "";

  private buttonName = "SEARCH";

  input(value: string) {
    console.log(`SearchBarinput:${value}`)
    this.inputValue = value;
    this.onInput();
  }

  @Emit("onSearch")
  onInput(): string {
    console.log(`SearchBaroninput:${this.inputValue}`)
    return this.inputValue;
  }
}
</script>

<style scoped lang="scss">
.search-bar {
  display: flex;
  justify-content: center;
}
</style>
