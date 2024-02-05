<script setup lang="ts">
import { watch, ref } from 'vue';
import { Dialog, DialogPanel } from '@headlessui/vue';
import { ArrowRightCircleIcon, Bars3Icon, HeartIcon, XMarkIcon } from '@heroicons/vue/24/outline';
import { useRoute } from 'vue-router'

const mobileMenuOpen = ref(false)
const route = useRoute()

const toggleNavbar = () => {
  mobileMenuOpen.value = false;
}

watch(route, () => {
  mobileMenuOpen.value = false
})
</script>

<template>
  <div class="inset-x-0 top-0 z-5 bg-rose-100">
    <nav class="flex items-center justify-between p-6 mx-auto max-w-7xl lg:px-8" aria-label="Main Nav">
      <div class="flex lg:flex-1">
        <router-link to="/" class="-m-1.5 p-1.5 flex">
          <span class="sr-only">Flirt</span>
          <HeartIcon class="w-auto h-8" src="" alt="Flirt-Logo" />
        </router-link>
      </div>
      <div class="flex lg:hidden">
        <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5"
          @click="mobileMenuOpen = true">
          <span class="sr-only">Open main menu</span>
          <Bars3Icon class="w-6 h-6" aria-hidden="true" />
        </button>
      </div>
      <div class="hidden lg:flex lg:gap-x-12">

        <router-link to="/" class="text-sm font-semibold leading-6 text-gray-900">Home</router-link>
        <router-link to="/about" class="text-sm font-semibold leading-6 text-gray-900">About</router-link>
      </div>
      <div class="hidden lg:flex lg:flex-1 lg:justify-end">
        <router-link to="/monster-library"
          class="flex items-center justify-center text-sm font-semibold leading-6 text-gray-900">Monster
          Library
          <ArrowRightCircleIcon aria-hidden="true">&rarr;</ArrowRightCircleIcon>
        </router-link>
      </div>
    </nav>
  </div>
  <Dialog as="div" class="lg:hidden" @close="toggleNavbar" :open="mobileMenuOpen">
    <div class="fixed inset-0 z-50" />
    <DialogPanel
      class="fixed inset-y-0 right-0 z-50 w-full px-6 py-6 overflow-y-auto bg-white sm:max-w-sm sm:ring-1 sm:ring-gray-700/10">
      <div class="flex items-center justify-between">
        <router-link to="/" class="-m-1.5 p-1.5">
          <span class="sr-only">Flirt</span>
          <svg xmlns="http://www.w3.org/2000/svg" alt="Flirt-Logo" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
            stroke="currentColor" class="w-auto h-8">
            <path stroke-linecap="round" stroke-linejoin="round"
              d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
          </svg>
        </router-link>
        <button type="button" class="-m-2.5 rounded-md p-2.5" @click="toggleNavbar">
          <span class="sr-only">Close menu</span>
          <XMarkIcon class="w-6 h-6" aria-hidden="true" />
        </button>
      </div>
      <div class="flow-root mt-6">
        <div class="-my-6 divide-y divide-gray-500/10">
          <div class="py-6 space-y-2">
            <router-link to="/"
              class="block px-3 py-2 -mx-3 text-base font-semibold leading-7 text-gray-900 rounded-lg hover:bg-gray-50"
              @click="toggleNavbar">Home</router-link>
            <router-link to="/about"
              class="block px-3 py-2 -mx-3 text-base font-semibold leading-7 text-gray-900 rounded-lg hover:bg-gray-50"
              @click="toggleNavbar">About</router-link>
          </div>
          <div class="py-6">
            <router-link to="/monster-library"
              class="-mx-3 block rounded-lg px-3 py-2.5 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50"
              @click="toggleNavbar">Monster
              Library</router-link>
          </div>
        </div>
      </div>
    </DialogPanel>
  </Dialog>
</template>

<style scoped>
.navbar {
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
