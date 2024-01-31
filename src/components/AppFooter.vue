<script lang="ts">
</script>

<template>
    <div class="wrapper">
        <p class="footer">Footer</p>
    </div>
</template>


<style scoped>
.footer {
    background-color: grey;
    color: white;
    text-align: center;
    padding: 1rem 0;
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100vw;
}

.wrapper {
    position: fixed;
    min-height: calc(100vh - 150px);
}
</style>