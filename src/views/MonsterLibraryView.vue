<script setup lang="ts">

import axios from 'axios';
import { ref, onMounted } from 'vue';

const props = defineProps({
    profileImage: String,
    profileName: String,
    profileBio: String
});

const emit = defineEmits(['like', 'dislike', 'info']);

const onLike = () => {
    emit('like');
};

const onDislike = () => {
    emit('dislike');
};

const onInfo = () => {
    emit('info');
};

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
    <div class="monster-library">
        <div v-if="creatures.length > 0">
            <div class="card">
                <img class="profile-image" :src="profileImage" alt="Profile picture">
                <div class="profile-info">
                    <h2>{{ props.profileName }}</h2>
                    <p class="bio">{{ props.profileBio }}</p>
                </div>
                <div class="actions">
                    <button @click="onDislike"><i class="fa fa-times"></i></button>
                    <button @click="onLike"><i class="fa fa-heart"></i></button>
                    <button @click="onInfo"><i class="fa fa-info-circle"></i></button>
                </div>
            </div>
            <p>{{ creatures[currentIndex] }}</p>
            <button @click="previousCreature">Previous</button>
            <button @click="nextCreature">Next</button>
        </div>
        <!-- <div v-else>
            <p>Loading creatures...</p>
        </div> -->
    </div>
</template>

<style scoped>
.monster-library,
.loading {
    height: 100vh;
}

.card {
    width: 300px;
    border: 1px solid #8F5C5C;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.profile-image {
    width: 100%;
    height: auto;
}

.profile-info {
    padding: 15px;
    text-align: center;
}

.actions {
    display: flex;
    justify-content: space-around;
    padding: 10px;
}

.actions button {
    border: none;
    background: none;
    cursor: pointer;
    font-size: 20px;
}
</style>
