require('./bootstrap');

window.Vue = require('vue');
import Vuetify from 'vuetify'

Vue.use(Vuetify, {
    theme: {
        primary: '#1976D2',
        secondary: '#424242',
        accent: '#82B1FF',
        error: '#FF5252',
        info: '#2196F3',
        success: '#4CAF50',
        warning: '#FFC107'
    }
  })

import 'vuetify/dist/vuetify.min.css' 

import VueRouter from 'vue-router'



Vue.use(VueRouter)

let routes = [

	{ path: '/public-ideas/view/:id',name:'view-idea', component: require('./components/landing2/view.vue').default },
	{ path: '/public-ideas',name:'public-ideas', component: require('./components/landing2/index.vue').default },

	


]



const router = new VueRouter({
	mode: 'history',
	routes, // short for `routes: routes`

})



const app = new Vue({
    el: '#app'
});