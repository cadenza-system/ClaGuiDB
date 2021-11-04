<template>
  <div class="navigation-panel" :class="setClass()">
    <router-link :to="link">
      <div class="nav-icon">
        <Img :path="iconPath" />
      </div>
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
export default class NavigationPanel extends Vue {
  @Prop() private link!: string;
  @Prop() private iconPath!: string;
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

<style lang="scss">
@import "../../scss/color.scss";

.navigation-panel {
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 25vw;
  height: 12vw;
}
.nav-icon img {
  width: 5vw;
  height: 5vw;
  margin-top: 2vw;
  margin-bottom: 2px;
}
.label {
  font-size: 1vw;
  user-select: none;
}

router-link {
  user-select: none;
}
.onPushed {
  background-color: $dark-theme-color;
}
</style>
