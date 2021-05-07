import { createApp } from 'vue'

import HelloWorld from './components/HelloWorld.vue';
import Navigation from './components/Navigation.vue';
import Booking from './components/Booking.vue';

const app = createApp({});
app.component('hello-world', HelloWorld)
    .mount('#app');

const app2 = createApp({});
app2.component('navigation', Navigation)
    .mount('#app2');

const app3 = createApp({});
app3.component('booking', Booking)
    .mount('#app3');
