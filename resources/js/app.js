import { createApp } from 'vue'

import HelloWorld from './components/HelloWorld.vue';
import Navigation from './components/Navigation.vue';
import Booking from './components/Booking.vue';
import Mobile from './components/Mobile.vue';
import Mobilebutton from './components/Mobilebutton.vue';

const app = createApp({});
app.component('hello-world', HelloWorld)
    .mount('#app');

const app2 = createApp({});
app2.component('navigation', Navigation)
    .mount('#app2');

const app3 = createApp({});
app3.component('booking', Booking)
    .mount('#app3');

const app4 = createApp({});
app4.component('mobile', Mobile)
    .mount('#app4');

const app5 = createApp({});
app5.component('mobilebutton', Mobilebutton)
    .mount('#app5');
