/**
 * VueJs
 */

// Declaration
//window.Vue = require('vue');
import Vue from 'vue';

// New component
Vue.component('navigation', require('./components/Navigation.vue').default);

// Instantiation
window.onload = function(e) {

    const app3 = new Vue({
        el: '#app3',
        template: "<h2> {{ welcome }} <strong>{{ name }}</strong> , welcome to the Theater</h2>",
        data:{
            welcome:"Hello",
            name:"Bob",
        }
    });

    //Nav button to drop the menu on large screen -> Navigation.vue
    const app5 = new Vue({
        el: 'div#app5',
    });

}