/**
 * VueJs
 */

// Declaration
//window.Vue = require('vue');
import Vue from 'vue';

// New component
Vue.component('navigation', require('./components/Navigation.vue').default);
Vue.component('booking', require('./components/Booking.vue').default);

// Instantiation
window.onload = function(e) {

    const app3 = new Vue({
        el: '#app3',
        template: "<h2 class='text-center text-white text-5xl'> {{ welcome }} <strong>{{ name }}</strong> , welcome to the Theater</h2>",
        data:{
            welcome:"Hello",
            name:"Bob",
        }
    });

    //button to drop the show's booking modal -> Booking.vue
    const app4 = new Vue({
        el: 'div#app4',
    });
    
    //Nav button to drop the menu on large screen -> Navigation.vue
    const app5 = new Vue({
        el: 'div#app5',
    });
}