

require('./bootstrap');

window.Vue = require('vue');

import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
 // Import component

 
 



import VueRouter from 'vue-router'



Vue.use(VueRouter)



Vue.use(Vuetify)



let routes = [


	{ path: '/',name:'home', component: require('./components/landing3/home.vue').default},
	,
	{ path: '/global-ideas',name:'global-ideas', component: require('./components/landing3/global-ideas.vue').default},
	{ path: '/products',name:'products', component: require('./components/landing3/products.vue').default},
	{ path: '/pricing',name:'pricing', component: require('./components/landing3/pricing.vue').default},
	{ path: '/blog',name:'blog', component: require('./components/landing3/blog.vue').default},
	{ path: '/global-ideas/view/:id',name:'view-idea', component:require('./components/landing3/idea/view.vue').default },




]



const router = new VueRouter({
	mode: 'history',
	routes, // short for `routes: routes`

})








Vue.filter(

	'humanDate2',
	function (txtDate) {

		var date = moment(txtDate);
		var now = moment();

		if (now > date) {

			return date.fromNow();
		} else {
			return date.startOf('day').fromNow();
		}

	}

);

Vue.filter(

	'cumple',
	function (txtDate) {


			return moment(txtDate,'YYYY-MM-DD').format('MMMM DD');


	}

);

Vue.filter(

	'humanDate',
	function (txtDate) {

		return moment(txtDate).format('MMMM Do YYYY');
	}

);


Vue.filter(

	'dayDate',
	function (txtDate) {

		return moment(txtDate).day();
	}

);

Vue.filter(

	'monthDate',
	function (txtDate) {

		return moment(txtDate).format('MMM');
	}

);




Vue.filter(

	'shortText',
	function (text) {

		let t = text.toString();
		if (t.length > 30) {

			let t2 = t.slice(0, 27).concat('...');
			return t2;

		} else {
			return t;
		}

	}

);


Vue.filter(

	'toCategory',
	function (category) {

		let t = category.toString();
		if (t == 'improvethis') {

			let t2 = 'Mejorar Asakaa.com';
			return t2;

		} else if (t == 'sustainability') {
			return 'Sostenibilidad';
		} else if (t == 'lifeandhealth') {
			return 'Vida & Salud';
		} else if (t == 'artandculture') {
			return 'Arte & Cultura';
		} else if (t == 'beautyandfaashion') {
			return 'Belleza & Moda';
		} else if (t == 'homeandpets') {
			return 'Hogar & Mascotas';
		} else if (t == 'scienceandtechnology') {
			return 'Ciencia & Tecnología';
		}
		else if (t == 'tourismandtravel') {
			return 'Turismo & Viajes';
		} else if (t == 'transport') {
			return 'Transporte';
		} else if (t == 'food') {
			return 'Comida';
		} else if (t == 'politicsandsociety') {
			return 'Política & Sociedad';
		} else if (t == 'sportsandentertainment') {
			return 'Deporte & Entretenimiento';
		} else if (t == 'businessandconsumer') {
			return 'Negocios';
		}

		else {
			return 'General';
		}

	}

);




Vue.filter(

	'mediumText',
	function (text) {

		let t = text.toString();
		if (t.length > 35) {

			let t2 = t.slice(0, 35).concat('...');
			return t2;

		} else {
			return t;
		}

	}

);

Vue.filter(

	'largeText',
	function (text) {

		let t = text.toString();
		if (t.length > 95) {

			let t2 = t.slice(0, 95).concat('...');
			return t2;

		} else {

			let long= t.length;
			let dif = 90 - long;

			let t3 ='';

			for (var i = 0; i < dif; i++) {

				t3 = t3+ ' \xa0';
			}



			return t + t3;
		}

	}

);

Vue.filter(

	'uppercaseFirst',
	function (text) {

		return text.charAt(0).toUpperCase() + text.slice(1);

	}

);







const app = new Vue({
	el: '#innova-app',
	vuetify: new Vuetify({
		

		  theme: {
			themes: {
			  light: {
				primary: '#1976D2',
				secondary: '#424242',
				accent: '#82B1FF',
				error: '#FF5252',
				info: '#2196F3',
				success: '#4CAF50',
				warning: '#FFC107',
			  },
			},
		  },
	}),
	router

});
