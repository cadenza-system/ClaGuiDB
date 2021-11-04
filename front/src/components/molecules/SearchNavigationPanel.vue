<template>
  <div class="search-navigation-panel" :class="setClass()">
    <router-link class="content" :to="link">
      <div class="label">
        {{ label }}
      </div>
    </router-link>
  </div>
</template>
<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import Img from "../atoms/Img.vue";

@Component({
  components: {
    Img
  }
})
export default class SearchNavigationPanel extends Vue {
  @Prop() private link!: string;
  @Prop() private label!: string;
  @Prop() private onPushed!: boolean;

  setClass(): string {
    if (this.onPushed) {
      return "onPushed"
    }

    return "";
  }
}
</script>

<style scoped lang="scss">
@import "../../scss/color.scss";

.search-navigation-panel {
  width: 25vw;
  height: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.content {
  width: 25vw;
  height: 20px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}
.label {
  font-weight: bold;
  color: whitesmoke;
  font-size: 1vw;
  user-select: none;
}

.onPushed {
  background-color: $dark-theme-color2;
}
</style>
