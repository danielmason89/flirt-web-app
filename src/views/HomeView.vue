<script lang="ts" setup>
</script>

<template>
  <main>
    <div class="relative h-screen overflow-hidden isolate bg-gradient-to-b from-indigo-100/20 pt-14">
      <div
        class="absolute inset-y-0 right-1/2 -z-10 -mr-96 w-[200%] origin-top-right skew-x-[-30deg] bg-white shadow-xl shadow-indigo-600/10 ring-1 ring-indigo-50 sm:-mr-80 lg:-mr-96"
        aria-hidden="true" />
      <div class="px-6 py-32 mx-auto max-w-7xl sm:py-40 lg:px-8">
        <div
          class="max-w-2xl mx-auto lg:mx-0 lg:grid lg:max-w-none lg:grid-cols-2 lg:gap-x-16 lg:gap-y-6 xl:grid-cols-1 xl:grid-rows-1 xl:gap-x-8">
          <h1 class="max-w-2xl text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl lg:col-span-2 xl:col-auto">
            Flirt</h1>
          <div class="max-w-xl mt-6 lg:mt-0 xl:col-end-1 xl:row-start-1">
            <p class="text-lg leading-8 text-gray-600">A unique take on connecting
              crypto enthusiasts, artists, and the monster curious with a vast library of mythical and legendary
              monsters.</p>
            <div class="flex items-center mt-10 gap-x-6">
              <a href="/monster-library"
                class="rounded-md bg-gray-400 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-gray-300 hover:text-black focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-gray-400">Get
                started</a>
              <a href="/about" class="text-sm font-semibold leading-6 text-gray-900">Learn more <span
                  aria-hidden="true">→</span></a>
            </div>
          </div>
          <img src="../assets/175.jpg" alt="togepi-image"
            class="mt-10 aspect-[6/5] w-full max-w-lg rounded-2xl object-contain sm:mt-16 lg:mt-0 lg:max-w-none xl:row-span-2 xl:row-end-2 xl:mt-36" />
        </div>
      </div>
      <div class="absolute inset-x-0 bottom-0 h-24 -z-10 bg-gradient-to-t from-white sm:h-32" />
    </div>
  </main>
</template>
