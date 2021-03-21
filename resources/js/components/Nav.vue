<template>
  <div class="relative ...">
    <button type="button" @click="isOpen = !isOpen" class="...">
      Open sidebar
    </button>

    <!--
      This is the common parent, so we've wrapped it in a <transition> and given it
      an explicit duration that matches the child transitions.
    -->
    <transition :duration="300">
      <!-- Off-canvas menu for mobile, show/hide based on off-canvas menu state. -->
      <div v-show="isOpen">
        <div class="fixed inset-0 flex z-40">

          <!-- Vue 3 -->
          <transition
            enter-active-class="transition-opacity duration-300 ease-linear"
            enter-from-class="opacity-0"
            enter-to-class="opacity-100"
            leave-active-class="transition-opacity duration-300 ease-linear"
            leave-from-class="opacity-100"
            leave-to-class="opacity-0"
          >
            <div
              v-show="isOpen"
              class="fixed inset-0"
              aria-hidden="true"
            >
              <div class="absolute inset-0 bg-gray-600 opacity-75"></div>
            </div>
          </transition>

          <!-- Vue 3 -->
          <transition
            enter-active-class="transition duration-300 ease-in-out transform"
            enter-from-class="-translate-x-full"
            enter-to-class="translate-x-0"
            leave-active-class="transition duration-300 ease-in-out transform"
            leave-from-class="translate-x-0"
            leave-to-class="-translate-x-full"
          >
            <div
              v-show="isOpen"
              class="relative flex-1 flex flex-col max-w-xs w-full pt-5 pb-4 bg-indigo-700"
            >
              <!-- Snipped -->
            </div>
          </transition>
        </div>
      </div>
    </transition>
  </div>
</template>

<script>
  export default {
    data: () => ({
      isOpen: false,
    })
  }
</script>