
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
import Permissions from './mixins/Permissions'
import VueStar from 'vue-star'
import vueRandomPic from 'vue-random-pic'
import VueMq from 'vue-mq'
import '@mdi/font/css/materialdesignicons.css' 
//import SuiVue from 'semantic-ui-vue';

import Vuesax from 'vuesax'
import Vuetify from 'vuetify-v1'
import Multiselect from 'vue-multiselect'
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

Vue.mixin(Permissions);





window.Form = Form; // Ahora en cualquier lugar de nuestra aplicacion tenemos acceso a esa variable
window.Swal= Swal;



Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
Vue.component('VueStar', VueStar)
Vue.component('multiselect', Multiselect)

Vue.use(VueRouter)
//Vue.use(SuiVue);  // ya no se utilizara debido a incompatibilidad con el dropdown

let routes = [
	{ path: '/dashboard', component: require('./components/DashboardComponent.vue').default },
	{ path: '/projects', component: require('./components/ProjectComponent.vue').default },
	{ path: '/innovations', name:'ideaList', component: require('./components/IdeaComponent.vue').default },
	{ path: '/ideaCreation', name: 'innovations', component: require('./components/IdeaCreationComponent.vue').default },
	{ path: '/innovations/:id', component: require('./components/IdeaViewComponent.vue').default },
	{ path: '/innovations/public/:id', component: require('./components/PublicIdeaViewComponent.vue').default },
	{ path: '/innovationsEdit/:id', component: require('./components/IdeaEditComponent.vue').default },

	{ path: '/projects', component: require('./components/ProjectComponent.vue').default },
	{ path: '/timesheets', component: require('./components/TimesheetComponent.vue').default },
	{ path: '/reports', component: require('./components/ReportComponent.vue').default },
	{ path: '/goals', component: require('./components/GoalComponent.vue').default },


	{ path: '/business', name:'business',component: require('./components/BusinessComponent.vue').default },
	{ path: '/business/users',name:'contacts', component: require('./components/Business/contacts.vue').default },
	{ path: '/business/users/create-contact',name:'create-contact', component: require('./components/Business/create-contact.vue').default },
	{ path: '/business/user-profile/:id',name:'contact', component: require('./components/Business/contact-profile.vue').default },
	{ path: '/business/edit-user/:id',name:'edit-contact', component: require('./components/Business/edit-contact.vue').default },

	{ path: '/business/work-teams',name:'work-teams', component: require('./components/Business/work-teams-index.vue').default },
	{ path: '/business/retos',name:'retos', component: require('./components/Business/retos.vue').default },



	{ path: '/shareInnovation/:id', component: require('./components/ShareInnovationComponent.vue').default },



]

const router = new VueRouter({
	mode: 'history',
	routes, // short for `routes: routes`

})

Vue.directive('focus', {
	// When the bound element is inserted into the DOM...
	componentUpdated: function (el) {
	  // Focus the element
	  el.focus()
	}
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





