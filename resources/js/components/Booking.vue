<template>
    <div class="relative">
        <h2>Conffirmez votre réservation ?</h2>
        <button type="button" @click="open_modal = !open_modal" class="text-gray-500 group bg-white rounded-md inline-flex items-center text-base font-medium hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500" aria-expanded="false">
        <span>Réserver</span>
        </button>
        <div v-if ="open_modal">Vos places sont réservées, vous recevrez un email contenant votre réservation !</div>
        </div>
</template>

<script>
    export default {
        data: () => ({
        open_modal: false,
        })
    }
</script>