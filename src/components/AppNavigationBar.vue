<script setup lang="ts">
import { watch, ref } from 'vue';
import { Dialog, DialogPanel } from '@headlessui/vue';
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { useRoute } from 'vue-router'

const mobileMenuOpen = ref(false)

const navigation = [
  { name: 'About', href: '/about' },
]

const route = useRoute()

watch(route, () => {
  // showMobileMenu.value = false
})
</script>

<template>
  <!-- <nav class="navbar">
    <section :class="['navbar-menu', { 'is-active': navbarActive }]">
      <ul class="navbar-start">
        <router-link class="navbar-item" to="/about">About</router-link>
        <router-link class="navbar-item" to="/monster-library">Monster Library</router-link>
      </ul>
    </section>
  </nav> -->
  <div class="inset-x-0 top-0 z-5">
    <nav class="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Main Nav">
      <div class="flex lg:flex-1">
        <router-link to="/" class="-m-1.5 p-1.5 flex">
          <span class="sr-only">Flirt</span>
          <img class="h-8 w-auto" src="" alt="Flirt-Logo" />
        </router-link>
      </div>
      <div class="flex lg:hidden">
        <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700"
          @click="mobileMenuOpen = true">
          <span class="sr-only">Open main menu</span>
          <Bars3Icon class="h-6 w-6" aria-hidden="true" />
        </button>
      </div>
      <div class="hidden lg:flex lg:gap-x-12">
        <a v-for="item in navigation" :key="item.name" :href="item.href"
          class="text-sm font-semibold leading-6 text-gray-900">{{ item.name }}</a>
      </div>
      <div class="hidden lg:flex lg:flex-1 lg:justify-end">
        <a href="/monster-library" class="text-sm font-semibold leading-6 text-gray-900">Monster Library<span
            aria-hidden="true">&rarr;</span></a>
      </div>
    </nav>
  </div>
  <Dialog as="div" class="lg:hidden" @close="mobileMenuOpen = false" :open="mobileMenuOpen">
    <div class="fixed inset-0 z-50" />
    <DialogPanel
      class="fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
      <div class="flex items-center justify-between">
        <a href="#" class="-m-1.5 p-1.5">
          <span class="sr-only">Your Company</span>
          <img class="h-8 w-auto" src="" alt="Flirt-Logo" />
        </a>
        <button type="button" class="-m-2.5 rounded-md p-2.5 text-gray-700" @click="mobileMenuOpen = false">
          <span class="sr-only">Close menu</span>
          <XMarkIcon class="h-6 w-6" aria-hidden="true" />
        </button>
      </div>
      <div class="mt-6 flow-root">
        <div class="-my-6 divide-y divide-gray-500/10">
          <div class="space-y-2 py-6">
            <a v-for="item in navigation" :key="item.name" :href="item.href"
              class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">{{
                item.name }}</a>
          </div>
          <div class="py-6">
            <a href="#"
              class="-mx-3 block rounded-lg px-3 py-2.5 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">Log
              in</a>
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
