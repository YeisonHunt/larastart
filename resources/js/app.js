
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
require ('moment/locale/es.js')
import VueProgressBar from 'vue-progressbar'
import Swal from 'sweetalert2'
import Permissions from './mixins/Permissions'
import VueStar from 'vue-star'
import vueRandomPic from 'vue-random-pic'
import VueMq from 'vue-mq'


// don't forget to import styles


import 'tiptap-vuetify/dist/main.css'


import 'material-design-icons-iconfont/dist/material-design-icons.css'
//import SuiVue from 'semantic-ui-vue';

import es from 'vuetify-v1/es5/locale/es.js';

import Vuetify from 'vuetify-v1'

import Chartkick from 'vue-chartkick'
import Chart from 'chart.js'

Vue.use(Chartkick.use(Chart))

// index.js or main.js

import datePicker from 'vue-bootstrap-datetimepicker';
import Viewer from 'v-viewer'
import 'viewerjs/dist/viewer.css'



import 'vuetify-v1/dist/vuetify.min.css' // Ensure you are using css-loader


Vue.use(datePicker);
Vue.use(Viewer);
  Vue.use(Vuetify, {
	theme: {
	  primary: '#5b3cc4', // #E53935
	  primary2: '#5b3cc4', // #E53935
	  secondary: '#FFCFF2', // #FFCDD2
	  accent: '#3F51B5' // #3F51B5
	},
	lang: {
		locales: {
			es,

		},
		current: 'es'
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
//Vue.use(SuiVue);  // ya no se utilizara debido a incompatibilidad con el dropdown



let routes = [


	// { path: '/profile',name:'profile', component: () => import(/* webpackChunkName: "profileChunk" */ './components/profile.vue')},
	// { path: '/dashboard', component: () => import(/* webpackChunkName: "dashboardChunk" */ './components/DashboardComponent.vue')},
	// { path: '/innovations', name:'ideaList', component: () => import(/* webpackChunkName: "ideaComponentChunk" */ './components/IdeaComponent.vue') },
	// { path: '/ideaCreation', name: 'innovations', component: () => import(/* webpackChunkName: "ideaCreationChunk" */ './components/IdeaCreationComponent.vue')},
	// { path: '/solucion-reto/:id', name: 'solucion-reto', component: () => import(/* webpackChunkName: "solucionChunk" */ './components/Retos/SolucionReto.vue') },
	// { path: '/innovations/:id',  name:'ver-idea',  component: () => import(/* webpackChunkName: "IdeaViewChunk" */ './components/IdeaViewComponent.vue')},
	// { path: '/innovations/public/:id', component: () => import(/* webpackChunkName: "publicIdeaChunk" */ './components/PublicIdeaViewComponent.vue') },
	// { path: '/innovationsEdit/:id', component: () => import(/* webpackChunkName: "ideaEditChunk" */ './components/IdeaEditComponent.vue') },
	// { path: '/retos', name:'retos', component: () => import(/* webpackChunkName: "retosChunk" */ './components/Retos/RetosIndex.vue')},
	// { path: '/retos/nuevo', name:'crear-reto',  component: () => import(/* webpackChunkName: "RetosChunk" */ './components/Retos/RetosNuevo.vue')},
	// { path: '/retos/ver/:id', name:'ver-reto',  component: () => import(/* webpackChunkName: "showRetoChunk" */ './components/Retos/showReto.vue') },
	// { path: '/retos/ver-public/:id', name:'ver-reto-publico',  component: () => import(/* webpackChunkName: "showRetoPublicoChunk" */ './components/Retos/showRetoPublico.vue') },
	// { path: '/business', name:'business',component: () => import(/* webpackChunkName: "businessChunk" */ './components/BusinessComponent.vue')},
	// { path: '/business/users',name:'contacts', component: () => import(/* webpackChunkName: "contactsChunk" */ './components/Business/contacts.vue') },
	// { path: '/business/users/create-contact',name:'create-contact', component: () => import(/* webpackChunkName: "createContactChunk" */ './components/Business/create-contact.vue') },
	// { path: '/business/user-profile/:id',name:'contact', component: () => import(/* webpackChunkName: "contactProfileChunk" */ './components/Business/contact-profile.vue') },
	// { path: '/business/edit-user/:id',name:'edit-contact', component: () => import(/* webpackChunkName: "editContactChunk" */ './components/Business/edit-contact.vue') },
	// { path: '/business/work-teams',name:'work-teams', component: () => import(/* webpackChunkName: "teamsChunk" */ './components/Business/work-teams-index.vue') },
    // { path: '/business/company',name:'company', component:() => import(/* webpackChunkName: "companyChunk" */ './components/Business/mycompany.vue') },
	// { path: '/shareInnovation/:id', component: () => import(/* webpackChunkName: "shareChunk" */ './components/ShareInnovationComponent.vue') },
	// { path: '/categories', name:'categories', component: () => import(/* webpackChunkName: "categoriesChunk" */ './components/Categories.vue') },
	// { path: '/reportes', name:'reportes', component: () => import(/* webpackChunkName: "reportesChunk" */ './components/Reportes.vue') },



	/* Componentes sin carga dinamica */

	{ path: '/profile',name:'profile', component: require('./components/profile.vue').default},
	{ path: '/dashboard', component: require('./components/DashboardComponent.vue').default},
	{ path: '/innovations', name:'ideaList', component: require('./components/IdeaComponent.vue').default },
	{ path: '/ideaCreation', name: 'innovations', component: require('./components/IdeaCreationComponent.vue').default},
	{ path: '/solucion-reto/:id', name: 'solucion-reto', component: require('./components/Retos/SolucionReto.vue').default },
	{ path: '/innovations/:id',  name:'ver-idea',  component: require('./components/IdeaViewComponent.vue').default},
	{ path: '/innovations/public/:id', component: require('./components/PublicIdeaViewComponent.vue').default },
	{ path: '/innovationsEdit/:id', component: require('./components/IdeaEditComponent.vue').default },
	{ path: '/retos', name:'retos', component: require('./components/Retos/RetosIndex.vue').default},
	{ path: '/retos/nuevo', name:'crear-reto',  component: require('./components/Retos/RetosNuevo.vue').default},
	{ path: '/retos/ver/:id', name:'ver-reto',  component: require('./components/Retos/showReto.vue').default },
	{ path: '/retos/ver-public/:id', name:'ver-reto-publico',  component: require('./components/Retos/showRetoPublico.vue').default },
	{ path: '/business', name:'business',component: require('./components/BusinessComponent.vue').default},
	{ path: '/business/users',name:'contacts', component: require('./components/Business/contacts.vue').default },
	{ path: '/business/users/create-contact',name:'create-contact', component: require('./components/Business/create-contact.vue').default },
	{ path: '/business/user-profile/:id',name:'contact', component: require('./components/Business/contact-profile.vue').default },
	{ path: '/business/edit-user/:id',name:'edit-contact', component: require('./components/Business/edit-contact.vue').default },
	{ path: '/business/work-teams',name:'work-teams', component: require('./components/Business/work-teams-index.vue').default },
    { path: '/business/company',name:'company', component:require( './components/Business/mycompany.vue').default },
	{ path: '/shareInnovation/:id', component: require('./components/ShareInnovationComponent.vue').default },
	{ path: '/categories', name:'categories', component: require('./components/Categories.vue').default },
	{ path: '/reportes', name:'reportes', component: require('./components/Reportes.vue').default },

	{ path: '/blog-interno', name:'blog', component: require('./components/Blog/blog-index.vue').default },
	{ path: '/blog-interno/create', name:'blog-create', component: require('./components/Blog/blog-create.vue').default },
	{ path: '/blog-interno/edit/:id', name:'blog-interno-edit', props:true, component: require('./components/Blog/blog-edit.vue').default },
	{ path: '/blog-interno/show/:id', name:'blog-interno-show', props:true, component: require('./components/Blog/blog-show.vue').default },






]

const router = new VueRouter({
	mode: 'history',
	routes, // short for `routes: routes`

})

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

	'limite',
	function (txtDate) {

		if(txtDate=='sinlimite'){
			return 'Sin límite';
		}else {

			var date = moment(txtDate,"DD/MM/YYYY");
			var now = moment();

			var restantes =  date.diff(now, 'days');


			return restantes + ' días restantes.'

		}


	}

);


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

	'compartida',
	function (privacidad) {


		if(privacidad=='personal'){

			return 'Solo personal.'
		}else if (privacidad=='empresarial'){
			return 'Usuarios de mi empresa'
		}else {
			return 'Todos los usuarios.'
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

		return moment(txtDate).locale('es').format('MMMM Do YYYY');
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

	'blogTitle',
	function (text) {

		let t = text.toString();
		if (t.length > 50) {

			let t2 = t.slice(0, 49).concat('...');
			return t2;

		} else {
			return t;
		}

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


		if(/\d/.test(t)){
			//Has number



			if (t == 'improvethis') {

				let t2 = 'Mejorar Asakaa.com';
				return t2;

			} else if (t == 'sustainability') {
				return 'Sostenibilidad';
			} else if (t == 'lifeandhealth') {
				return 'Vida & Salud';
			} else if (t == 'artandculture') {
				return 'Arte & Cultura';
			} else if (t == 'beautyandfashion') {
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
				return t;
			}

		}else {
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
				return t;
			}
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

	'titleEmpty',
	function (title) {

		if(title===''){
			return 'Título de blog irá aquí'
		}else {
			return title
		}

	}

);

Vue.filter(

	'fechaAqui',
	function (fecha) {

		if(fecha===''){
			moment.locale('es')
			return moment().format('LL')
		}else {
			return fecha
		}

	}

);

Vue.filter(

	'formatDate',
	function (fecha) {

			moment(fecha).locale('es')
			return moment().format('LL')



	}

);

Vue.filter(

	'contenidoAqui',
	function (fecha) {

		if(fecha===''){

			return `<br>
			<br>
			<p> *Este texto de prueba se borra apenas comiences a escribir* </p>
			<h1>Bienvenido al editor de texto Summernote!</h1>
			<br>
			  <p>Este es un pequeño texto de demostración donde puedes ver las posibilidades que tienes para escribir y darle estilo a tu blog.</p>
			  <p>Puedes escribir todo tipo de texto aquí, desde títulos, subtítulos, párrafos, listas, tablas, imágenes, videos y todo lo que quieras para poder expresarte con palabras de la manera idónea..</p>

			  <p><strong>Para aprender más, puedes experimentar con las funciones en la  </strong><a href="#" title="documentation"><strong>barra de tareas</strong></a><strong></strong>.</p>

			  <blockquote>
				  <p>Es extremadamente fácil y rápido construir un blog que se visualize correctamente y que normalmente tardaría muchas horas en construirse a base de código.</p>
			  </blockquote>

			  <p style="text-align: right; margin-right:20px;"><a href="#" title="Equipo de Asakaa Innova"><strong>- Equipo de Asakaa Innova</strong></a></p>`
		}else {
			return fecha
		}

	}

);

Vue.filter(

	'autoresAqui',
	function (autor) {

		if(autor===''){
			return 'J.K Rowling, Ernest Hemingway, Edgar Allan Poe'
		}else {
			return autor
		}

	}

);

Vue.filter(

	'tagsAqui',
	function (tags) {

		if(tags===''){
			return 'Innovación, Emprendimiento, Negocios, Cultura, Energía Renovable'
		}else {
			return tags
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
	color: '#FAB200',
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




Vue.component('example-component', require('./components/ExampleComponent.vue').default);



const app = new Vue({
	el: '#app',
	router,
	icons: {
		iconfont: 'mdi', // default - only for display purposes
	  },

});
