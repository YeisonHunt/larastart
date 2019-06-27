
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');


import VueProgressBar from 'vue-progressbar'
import Swal from 'sweetalert2'



window.Swal= Swal;



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

			let t2 = 'Improve Asakaa.com';
			return t2;

		} else if (t == 'sustainability') {
			return 'Sustainability';
		} else if (t == 'lifeandhealth') {
			return 'Life & Health';
		} else if (t == 'artandculture') {
			return 'Art & Culture';
		} else if (t == 'beautyandfaashion') {
			return 'Beauty & Fashion';
		} else if (t == 'homeandpets') {
			return 'Home & Pets';
		} else if (t == 'scienceandtechnology') {
			return 'Science & Technology';
		}
		else if (t == 'tourismandtravel') {
			return 'Tourism & Travel';
		} else if (t == 'transport') {
			return 'Transport';
		} else if (t == 'food') {
			return 'Food';
		} else if (t == 'politicsandsociety') {
			return 'Politics & Society';
		} else if (t == 'sportsandentertainment') {
			return 'Sports & Entertainment';
		} else if (t == 'businessandconsumer') {
			return 'Business & Consumer';
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





const app = new Vue({
	el: '#Container',
	router
});





