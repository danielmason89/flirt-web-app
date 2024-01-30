<script setup lang="ts">
import { watch, ref } from 'vue';
import { useRoute } from 'vue-router'

const navbarActive = ref(false);

const toggleNavbar = () => {
  navbarActive.value = !navbarActive.value;
};

const route = useRoute()

watch(route, () => {
  // showMobileMenu.value = false
})
</script>

<template>
  <nav class="navbar">
    <router-link to="/" class="navbar-brand">Flirt logo</router-link>
    <button class="navbar-toggler" @click="toggleNavbar">
      <span>Hamburger Menu</span>
    </button>
    <section :class="['navbar-menu', { 'is-active': navbarActive }]">
      <ul class="navbar-start">
        <router-link class="navbar-item" to="/about">About</router-link>
        <router-link class="navbar-item" to="/monster-library">Monster Library</router-link>
      </ul>
    </section>
  </nav>
</template>

<style scoped>
.navbar {
  background-color: #333;
  color: white;
  padding: 10px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.navbar-toggler {
  display: none;
}

.navbar-menu {
  display: flex;
}

.navbar-item {
  padding: 10px;
  color: white;
  text-decoration: none;
}

@media (max-width: 768px) {
  .navbar-toggler {
    display: block;
  }

  .navbar-menu {
    display: none;
    flex-direction: column;
  }

  .navbar-menu.is-active {
    display: flex;
  }
}
</style>
