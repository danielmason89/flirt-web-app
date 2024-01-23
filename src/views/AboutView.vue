<script setup>
import axios from 'axios';
import { ref, onMounted } from 'vue';

const API_URL = "http://localhost:5260/"
const creatures = ref([]);
const currentIndex = ref(0)

async function refreshData() {
  axios.get(API_URL + "api/FlirtApp/GetPokemon").then(
    (response) => {
      creatures.value = response.data
      currentIndex.value = 0;
    }
  )
}

onMounted(() => {
  refreshData();
})

function nextCreature() {
  if (currentIndex.value < creatures.value.length - 1) {
    currentIndex.value++;
  }
}

function previousCreature() {
  if (currentIndex.value > 0) {
    currentIndex.value--;
  }
}
</script>

<template>
  <div class="about">
    <h1>This is an about page</h1>
    <div v-if="creatures.length > 0">
      <p>{{ creatures[currentIndex].description }}</p>
      <button @click="previousCreature">Previous</button>
      <button @click="nextCreature">Next</button>
    </div>
    <div v-else>
      <p>Loading creatures...</p>
    </div>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
