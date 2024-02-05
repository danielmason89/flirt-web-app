<script setup lang="ts">

import { ref, onMounted } from 'vue';

interface Card {
    imageUrl: string;
    dismissing: boolean;
}

let cards = ref<Card[]>([]);
let cardCount = ref(0);

const urls = [
    'https://source.unsplash.com/random/1000x1000/?sky',
    'https://source.unsplash.com/random/1000x1000/?landscape',
    'https://source.unsplash.com/random/1000x1000/?ocean',
    'https://source.unsplash.com/random/1000x1000/?moutain',
    'https://source.unsplash.com/random/1000x1000/?forest'
];

// function appendNewCard() {
//     cards.value.push({
//         imageUrl: urls[cardCount.value % urls.length],
//         dismissing: false
//     });
//     cardCount.value++;
// }

// onMounted(() => {
//     for (let i = 0; i < 5; i++) {
//         appendNewCard();
//     }
// });

// DOM
const swiper = document.querySelector('#swiper');
const like = document.querySelector('#like');
const dislike = document.querySelector('#dislike');

// // functions
// function appendNewCard() {
//     const card = new Card({
//         imageUrl: urls[cardCount % 5],
//         onDismiss: appendNewCard,
//         onLike: () => {
//             like.style.animationPlayState = 'running';
//             like.classList.toggle('trigger');
//         },
//         onDislike: () => {
//             dislike.style.animationPlayState = 'running';
//             dislike.classList.toggle('trigger');
//         }
//     });
//     swiper.append(card.element);
//     cardCount++;

//     const cards = swiper.querySelectorAll('.card:not(.dismissing)');
//     cards.forEach((card, index) => {
//         card.style.setProperty('--i', index);
//     });
// }

// // first 5 cards
// for (let i = 0; i < 5; i++) {
//     appendNewCard();
// }

// class Card {
//     constructor({
//         imageUrl,
//         onDismiss,
//         onLike,
//         onDislike
//     }) {
//         this.imageUrl = imageUrl;
//         this.onDismiss = onDismiss;
//         this.onLike = onLike;
//         this.onDislike = onDislike;
//         this.#init();
//     }

//     // private properties
//     #startPoint;
//     #offsetX;
//     #offsetY;

//     function handleSwipe(cardIndex, direction) {
//     const card = cards.value[cardIndex];
//     if (direction === 'left') {
//         // handle left swipe
//     } else if (direction === 'right') {
//         // handle right swipe
//     }
//     card.dismissing = true;

//     // Remove card after animation
//     setTimeout(() => {
//         cards.value.splice(cardIndex, 1);
//     }, 1000);
// }

function handleLike() {
    // Your logic for a like
}
function handleRefresh() {
    // Your logic for a like
}
function handleDislike() {
    // Your logic for a like
}

</script>

<template>
    <!-- <div id="swiper">
        <div v-for="(card, index) in cards" :key="index" class="card" :class="{ dismissing: card.dismissing }">
            <img :src="card.imageUrl" alt="">
        </div>
    </div> -->
    <section class="parent-container">
        <div id="swiper">
            <div class="card" style="--i:0">
                <img src="https://source.unsplash.com/random/1000x1000/?sky" alt="">
            </div>
            <div class="card" style="--i:1">
                <img src="https://source.unsplash.com/random/1000x1000/?landscape" alt="">
            </div>
            <div class="card" style="--i:2">
                <img src="https://source.unsplash.com/random/1000x1000/?ocean" alt="">
            </div>
            <div class="card" style="--i:3">
                <img src="https://source.unsplash.com/random/1000x1000/?moutain" alt="">
            </div>
            <div class="card" style="--i:4">
                <img src="https://source.unsplash.com/random/1000x1000/?forest" alt="">
            </div>
        </div>
    </section>
    <section style="width: 35rem; border: solid 2px black;"
        class="flex items-center justify-center py-3 mx-auto rounded-md bg-rose-100">
        <div class="flex flex-col items-center" @click="handleDislike">
            <svg style="width: 100px; height: 100px; background-color: oldlace; border-radius: 25%; border: solid 2px black;"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="red"
                class="w-6 h-6 cursor-pointer transform active:shadow-sm active:translate-y-0.5 shadow-md hover:opacity-80">
                <path
                    d="M15.73 5.5h1.035A7.465 7.465 0 0 1 18 9.625a7.465 7.465 0 0 1-1.235 4.125h-.148c-.806 0-1.534.446-2.031 1.08a9.04 9.04 0 0 1-2.861 2.4c-.723.384-1.35.956-1.653 1.715a4.499 4.499 0 0 0-.322 1.672v.633A.75.75 0 0 1 9 22a2.25 2.25 0 0 1-2.25-2.25c0-1.152.26-2.243.723-3.218.266-.558-.107-1.282-.725-1.282H3.622c-1.026 0-1.945-.694-2.054-1.715A12.137 12.137 0 0 1 1.5 12.25c0-2.848.992-5.464 2.649-7.521C4.537 4.247 5.136 4 5.754 4H9.77a4.5 4.5 0 0 1 1.423.23l3.114 1.04a4.5 4.5 0 0 0 1.423.23ZM21.669 14.023c.536-1.362.831-2.845.831-4.398 0-1.22-.182-2.398-.52-3.507-.26-.85-1.084-1.368-1.973-1.368H19.1c-.445 0-.72.498-.523.898.591 1.2.924 2.55.924 3.977a8.958 8.958 0 0 1-1.302 4.666c-.245.403.028.959.5.959h1.053c.832 0 1.612-.453 1.918-1.227Z" />
            </svg>
            <span class="pt-2 font-bold">Dislike</span>
        </div>
        <div class="flex flex-col items-center" @click="handleLike">
            <svg style="width: 100px; height: 100px; background-color: oldlace; border-radius: 25%; border: solid 2px black;"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="green"
                class="w-6 h-6 mx-24 cursor-pointer transform active:shadow-sm active:translate-y-0.5 shadow-md hover:opacity-80">
                <path
                    d="m11.645 20.91-.007-.003-.022-.012a15.247 15.247 0 0 1-.383-.218 25.18 25.18 0 0 1-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0 1 12 5.052 5.5 5.5 0 0 1 16.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 0 1-4.244 3.17 15.247 15.247 0 0 1-.383.219l-.022.012-.007.004-.003.001a.752.752 0 0 1-.704 0l-.003-.001Z" />
            </svg>
            <span class="pt-2 font-bold">Like</span>
        </div>
        <div class="flex flex-col items-center" @click="handleRefresh">
            <svg style="width: 100px; height: 100px; background-color: oldlace; border-radius: 25%; border: solid 2px black;"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                class="w-6 h-6 cursor-pointer transform active:shadow-sm active:translate-y-0.5 shadow-md hover:opacity-80">
                <path fill-rule="evenodd"
                    d="M4.755 10.059a7.5 7.5 0 0 1 12.548-3.364l1.903 1.903h-3.183a.75.75 0 1 0 0 1.5h4.992a.75.75 0 0 0 .75-.75V4.356a.75.75 0 0 0-1.5 0v3.18l-1.9-1.9A9 9 0 0 0 3.306 9.67a.75.75 0 1 0 1.45.388Zm15.408 3.352a.75.75 0 0 0-.919.53 7.5 7.5 0 0 1-12.548 3.364l-1.902-1.903h3.183a.75.75 0 0 0 0-1.5H2.984a.75.75 0 0 0-.75.75v4.992a.75.75 0 0 0 1.5 0v-3.18l1.9 1.9a9 9 0 0 0 15.059-4.035.75.75 0 0 0-.53-.918Z"
                    clip-rule="evenodd" />
            </svg>
            <span class="pt-2 font-bold">Refresh</span>
        </div>
    </section>
</template>

<style scoped>
.parent-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 70dvh;
}

#swiper {
    height: 40lvh;
    aspect-ratio: 2 / 3;
    perspective: 1000px;
    perspective-origin: center 50%;
    transform-style: preserve-3d;
    position: relative;
}

.card {
    width: 100%;
    height: 100%;
    position: absolute;
    border-radius: 20px;
    overflow: hidden;
    transform: translateZ(calc(-30px * var(--i))) translateY(calc(-20px * var(--i))) rotate(calc(-4deg * var(--i)));
    filter: drop-shadow(2px 2px 20px rgba(0, 0, 0, 0.5));
    cursor: pointer;
    user-select: none;
    transition: transform 0.5s;
}

.card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: 50% 50%;
}

#like,
#dislike {
    font-size: 16vh;
    border-radius: 50%;
    padding: 20px;
    position: relative;
    z-index: 1;
    animation-name: animation1;
    animation-duration: 1s;
    animation-timing-function: ease-in-out;
    animation-fill-mode: both;
    /* don't run animation at the beginning */
    animation-play-state: paused;
}

#like.trigger,
#dislike.trigger {
    animation-name: animation2;
}

#like {
    color: red;
    background-color: rgba(255, 255, 255, 0.5);
}

#dislike {
    color: #ccc;
    background-color: rgba(0, 0, 0, 0.5);
}

@keyframes animation1 {

    0%,
    100% {
        opacity: 0.2;
    }

    50% {
        opacity: 1;
    }
}

@keyframes animation2 {

    0%,
    100% {
        opacity: 0.2;
    }

    50% {
        opacity: 1;
    }
}
</style>