/**
 * AlpineJs
 */
//require('alpinejs');

/**
 * VueJs
 */
// Declaration
//window.Vue = require('vue');
import Vue from 'vue';

// New component
Vue.component('face', require('./components/Face.vue').default);
Vue.component('navigation', require('./components/Nav.vue').default);

// Instantiation
window.onload = function(e) {
    const app = new Vue({
        el: 'div#app',
    });

    const app2 = new Vue({
        el: '#app2',
        template: "<h2>vue2</h2>",
    });

    const app3 = new Vue({
        el: '#app3',
        template: "<h2> {{ welcome }} {{ name }} </h2>",
        data:{
            welcome:"Hello",
            name:"Bob"
        }
    });
}