
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import VueRouter from 'vue-router'
import { Form, HasError, AlertError } from 'vform'
import moment from 'moment'
import VueProgressBar from 'vue-progressbar'
import Swal from 'sweetalert2'

import VueStar from 'vue-star'
import vueRandomPic from 'vue-random-pic'
import VueMq from 'vue-mq'

//import SuiVue from 'semantic-ui-vue';
import '@mdi/font/css/materialdesignicons.css'
import Vuesax from 'vuesax'
import Vuetify from 'vuetify-v1'

// index.js or main.js



import 'vuesax/dist/vuesax.css' 
import 'vuetify-v1/dist/vuetify.min.css' // Ensure you are using css-loader



Vue.use(Vuesax, {
	theme:{
	  colors:{
		primary:'#5b3cc4',
		success:'rgb(23, 201, 100)',
		danger:'rgb(242, 19, 93)',
		warning:'rgb(255, 130, 0)',
		dark:'rgb(36, 33, 69)'
	  }
	}
  })
  Vue.use(Vuetify, {
	theme: {
	  primary: '#5b3cc4', // #E53935
	  primary2: '#5b3cc4', // #E53935
	  secondary: '#FFCFF2', // #FFCDD2
	  accent: '#3F51B5' // #3F51B5
	}
  })





Vue.use(vueRandomPic, 'https://unsplash.it');
Vue.use(VueMq, {
	breakpoints: {
	  sm: 450,
	  md: 1250,
	  lg: Infinity,
	}
  })






window.Form = Form; // Ahora en cualquier lugar de nuestra aplicacion tenemos acceso a esa variable
window.Swal= Swal;



Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
Vue.component('VueStar', VueStar)


Vue.use(VueRouter)


let routes = [
	{ path: '/dashboard', component: () => import(/* webpackChunkName: "dashboard" */ './components/DashboardComponent.vue')},
	
	//{ path: '/projects', component: require('./components/ProjectComponent.vue').default },
	{ path: '/innovations', name:'ideaList', component: () => import(/* webpackChunkName: "idea-index" */ './components/IdeaComponent.vue') },
	{ path: '/ideaCreation', name: 'innovations', component: () => import(/* webpackChunkName: "idea-creation" */ './components/IdeaCreationComponent.vue')},
	{ path: '/solucion-reto/:id', name: 'solucion-reto', component: () => import(/* webpackChunkName: "reto-solucion" */ './components/Retos/SolucionReto.vue') },
	{ path: '/innovations/:id', component: () => import(/* webpackChunkName: "normal-view" */ './components/IdeaViewComponent.vue')},
	{ path: '/innovations/public/:id', component: () => import(/* webpackChunkName: "public-view" */ './components/PublicIdeaViewComponent.vue') },
	{ path: '/innovationsEdit/:id', component: () => import(/* webpackChunkName: "edit-idea" */ './components/IdeaEditComponent.vue') },

	//{ path: '/projects', component: require('./components/ProjectComponent.vue').default },
	//{ path: '/timesheets', component: require('./components/TimesheetComponent.vue').default },
	//{ path: '/reports', component: require('./components/ReportComponent.vue').default },

	{ path: '/retos', name:'retos', component: () => import(/* webpackChunkName: "retos" */ './components/Retos/RetosIndex.vue')},
	{ path: '/retos/nuevo', name:'crear-reto',  component: () => import(/* webpackChunkName: "reto-nuevo" */ './components/Retos/RetosNuevo.vue')},
	{ path: '/retos/ver/:id', name:'ver-reto',  component: () => import(/* webpackChunkName: "show-reto" */ './components/Retos/showReto.vue') },
	{ path: '/retos/ver-public/:id', name:'ver-reto-publico',  component: () => import(/* webpackChunkName: "reto-publico" */ './components/Retos/showRetoPublico.vue') },

	{ path: '/business', name:'business',component: () => import(/* webpackChunkName: "business" */ './components/BusinessComponent.vue')},
	{ path: '/business/users',name:'contacts', component: () => import(/* webpackChunkName: "contacts" */ './components/Business/contacts.vue') },
	{ path: '/business/users/create-contact',name:'create-contact', component: () => import(/* webpackChunkName: "create-contact" */ './components/Business/create-contact.vue') },
	{ path: '/business/user-profile/:id',name:'contact', component: () => import(/* webpackChunkName: "create-profile" */ './components/Business/contact-profile.vue') },
	{ path: '/business/edit-user/:id',name:'edit-contact', component: () => import(/* webpackChunkName: "edit-contact" */ './components/Business/edit-contact.vue') },

	{ path: '/business/work-teams',name:'work-teams', component: () => import(/* webpackChunkName: "work-teams" */ './components/Business/work-teams-index.vue') },
	//{ path: '/business/retos',name:'retos', component:() => import(/* webpackChunkName: "create-contact" */ './components/Business/retos.vue').default },
    { path: '/business/company',name:'company', component:() => import(/* webpackChunkName: "company" */ './components/Business/mycompany.vue') },


	{ path: '/shareInnovation/:id', component: () => import(/* webpackChunkName: "share-innovation" */ './components/ShareInnovationComponent.vue') },



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

			let temp = moment(txtDate,'YYYY-MM-DD').locale('es').format('MMMM DD')
			
			return temp.charAt(0).toUpperCase() + temp.slice(1);
		
	
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

	'uppercaseFirst',
	function (text) {

		return text.charAt(0).toUpperCase() + text.slice(1);

	}

);


const options = {
	color: '#0080FF',
	failedColor: '#874b4b',
	thickness: '5px',
	transition: {
		speed: '1s',
		opacity: '0.5s',
		termination: 400
	},
	autoRevert: true,
	location: 'top',
	inverse: false
}

Vue.use(VueProgressBar, options)



window.Fire = new Vue(); // usado para emitir eventos


/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
	el: '#app',
	router,
	icons: {
		iconfont: 'mdi', // default - only for display purposes
	  },
});





