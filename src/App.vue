<script setup>
import Navigation from "./components/AppNavigationBar.vue";
import Footer from "./components/AppFooter.vue";

defineExpose({
  components: { Navigation, Footer }
});
</script>

<template>
  <Navigation />
  <router-view v-slot="{ Component }">
    <transition name="route" mode="out-in">
      <component :is="Component" />
    </transition>
  </router-view>
  <Footer />
</template>

<style scoped>
/* Base App Styles */
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Raleway", sans-serif;
  font-weight: 400;
  font-size: 16px;
}

html,
body {
  height: 100vh;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.app {
  min-height: 100svh;
  height: 100vh;
  position: relative;
}

.container {
  padding: 0 1rem;
  margin: 0 auto;
}

@media (min-width: 768px) {
  .container {
    width: 90vw;
  }
}

/* Route Animations */

.route-enter-from {
  opacity: 0;
  transform: translateX(0px);
}

.route-enter-active {
  transition: all 0.5s ease;
}

.route-leave-to {
  opacity: 0;
  transition: all 0.5s ease-in;
}

.route-leave-active {
  transition: all 0.5s ease-in;
}
</style>
