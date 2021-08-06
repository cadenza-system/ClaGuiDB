import Vue from "vue";
import VueRouter, { RouteConfig } from "vue-router";
import Home from "../components/pages/main/Home.vue";
import Ranking from "../components/pages/main/Ranking.vue";
import Search from "../components/pages/main/Search.vue";
import Favorite from "../components/pages/main/Favorite.vue";
Vue.use(VueRouter);

const routes: Array<RouteConfig> = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },  
  {
    path: "/ranking",
    name: "Ranking",
    component: Ranking,
  },{
    path: "/search",
    name: "Search",
    component: Search,
  },
  {
    path: "/favorite",
    name: "Favorite",
    component: Favorite,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
