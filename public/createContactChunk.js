(window.webpackJsonp=window.webpackJsonp||[]).push([[9],{21:function(a,t,e){var n=e(70);"string"==typeof n&&(n=[[a.i,n,""]]);var o={hmr:!0,transform:void 0,insertInto:void 0};e(3)(n,o);n.locals&&(a.exports=n.locals)},254:function(a,t,e){"use strict";e.r(t);var n={data:function(){return{typeSelected:"Colleagues",typeOptions:[{text:"Colleagues",value:"Colleagues"},{text:"Friends",value:"Friends"},{text:"Partners",value:"Partners"},{text:"Employee",value:"Employee"},{text:"Other",value:"Other"}],date:(new Date).toISOString().substr(0,10),baseUrl:window.baseUrl,modal:!1,menu:!1,items:["Colleagues","Friends","Partners","Other"],contactPhoto:window.baseUrl+"images/empty_user.svg",contactPhotoImg:null,contactForm:new Form({firstName:"",lastName:"",email:"",type:"Colleagues",avatar:"https://i0.pngocean.com/files/2/604/62/computer-icons-silhouette-user-profile-silhouette.jpg",company:"",birthdate:(new Date).toISOString().substr(0,10),friend_id:window.user.id,phone:"",city:"",country:"Colombia"}),states:["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","United States Minor Outlying Islands","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"]}},methods:{onPickFile:function(){this.$refs.contactPhoto.click()},onFilePicked:function(a){var t=this,e=a.target.files;if(e[0].name.lastIndexOf(".")<=0)return alert("Please add a valid file");var n=new FileReader;n.addEventListener("load",function(){t.contactPhoto=n.result,t.contactForm.avatar=n.result}),n.readAsDataURL(e[0]),this.contactPhotoImg=e[0]},readMore:function(){window.open("https://www.lifeder.com/frases-de-trabajo-en-equipo/","_blank").focus()},createContact:function(){var a=this;this.$Progress.start(),this.contactForm.post("/saveContact").then(function(t){var e=t.data;a.$router.push({name:"contacts"}),toastr.success("Awesome!","New contact has been added."),a.contactForm.reset(),console.log(e.msg),a.$Progress.finish()}).catch(function(t){toastr.error("Oops!","Something goes wrong"),console.log(t),a.$Progress.finish()})}}},o=(e(69),e(1)),i=Object(o.a)(n,function(){var a=this,t=a.$createElement,e=a._self._c||t;return e("div",{staticClass:"container-fluid",staticStyle:{"min-height":"90vh"}},[e("div",{staticClass:"hole"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-12 col-sm-12"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12"},[e("v-card",[e("v-card-title",{attrs:{"primary-title":""}},[e("div",[e("h3",{staticClass:"headline mb-0",staticStyle:{color:"#1867C0"}},[a._v(" Añadir un nuevo usuario a la compañía")]),a._v(" "),e("div",{staticStyle:{color:"#9b9b9b"}},[e("b",[a._v("Las credenciales")]),a._v("   para iniciar sesión en Innova serán enviadas al correo que proporcione aquí.")])]),a._v(" "),e("form",{on:{submit:function(t){return t.preventDefault(),a.createContact(t)},keydown:function(t){return a.contactForm.onKeydown(t)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-8"},[e("div",{staticClass:"mt-4"},[e("div",{staticClass:"form-group"},[e("label",{staticStyle:{"margin-left":"4px"}},[a._v("Foto de perfil")]),a._v(" "),e("div"),a._v(" "),e("div",{staticClass:"custom-file"},[e("input",{ref:"contactPhoto",staticClass:"custom-file-input",attrs:{type:"file",id:"customFile",accept:"image/x-png, image/jpeg"},on:{change:a.onFilePicked}}),a._v(" "),e("label",{staticClass:"custom-file-label",attrs:{for:"customFile"}},[a._v("Escoger imágen en pc...")])])])])]),a._v(" "),e("div",{staticClass:"col-lg-4"},[e("div",{staticClass:"mt-4"},[e("v-avatar",{attrs:{tile:!1,size:100,color:"grey lighten-4"}},[e("img",{attrs:{src:a.contactPhoto,alt:"avatar"}})])],1)]),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("v-text-field",{staticClass:"purple-input",attrs:{label:"Nombres",hint:"i.e., Johann Carl","prepend-icon":"person",required:"",autofocus:!0},model:{value:a.contactForm.firstName,callback:function(t){a.$set(a.contactForm,"firstName",t)},expression:"contactForm.firstName"}})],1),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("v-text-field",{staticClass:"purple-input",attrs:{label:"Apellidos",hint:"i.e., Friedrich Gauss","prepend-icon":"person_outline",required:""},model:{value:a.contactForm.lastName,callback:function(t){a.$set(a.contactForm,"lastName",t)},expression:"contactForm.lastName"}})],1),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("v-text-field",{staticClass:"purple-input",attrs:{label:"E-mail",hint:"i.e., gauss@asakaa.com","prepend-icon":"email",required:"",type:"email"},model:{value:a.contactForm.email,callback:function(t){a.$set(a.contactForm,"email",t)},expression:"contactForm.email"}})],1),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("div",{staticClass:"mt-2"},[e("v-select",{staticStyle:{"margin-top":"12px"},attrs:{items:a.items,label:"Grupo ","prepend-icon":"group",required:""},model:{value:a.contactForm.type,callback:function(t){a.$set(a.contactForm,"type",t)},expression:"contactForm.type"}})],1)]),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("div",{staticClass:"pt-2"},[e("v-dialog",{ref:"dialog",attrs:{"return-value":a.contactForm.birthdate,lazy:"","full-width":"",width:"290px"},on:{"update:returnValue":function(t){return a.$set(a.contactForm,"birthdate",t)},"update:return-value":function(t){return a.$set(a.contactForm,"birthdate",t)}},scopedSlots:a._u([{key:"activator",fn:function(t){var n=t.on;return[e("v-text-field",a._g({attrs:{label:"Fecha de nacimiento","prepend-icon":"event",readonly:"",required:""},model:{value:a.contactForm.birthdate,callback:function(t){a.$set(a.contactForm,"birthdate",t)},expression:"contactForm.birthdate"}},n))]}}]),model:{value:a.modal,callback:function(t){a.modal=t},expression:"modal"}},[a._v(" "),e("v-date-picker",{attrs:{scrollable:""},model:{value:a.date,callback:function(t){a.date=t},expression:"date"}},[e("v-spacer"),a._v(" "),e("v-btn",{attrs:{flat:"",color:""},on:{click:function(t){a.modal=!1}}},[a._v("Cancel")]),a._v(" "),e("v-btn",{attrs:{flat:"",color:"blue"},on:{click:function(t){return a.$refs.dialog.save(a.date)}}},[a._v("OK")])],1)],1)],1)]),a._v(" "),e("v-spacer"),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("div",{staticClass:"mt-2"},[e("v-autocomplete",{attrs:{items:a.states,label:"País","persistent-hint":"","prepend-icon":"flag"},model:{value:a.contactForm.country,callback:function(t){a.$set(a.contactForm,"country",t)},expression:"contactForm.country"}})],1)]),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("div",{staticClass:"mt-2"},[e("v-text-field",{staticClass:"purple-input",attrs:{label:"Ciudad",hint:"Campo opcional","prepend-icon":"location_city",type:"text"},model:{value:a.contactForm.city,callback:function(t){a.$set(a.contactForm,"city",t)},expression:"contactForm.city"}})],1)]),a._v(" "),e("div",{staticClass:"col-lg-4 col-sm-6"},[e("div",{staticClass:"mt-2"},[e("v-text-field",{staticClass:"purple-input",attrs:{label:"Celular","prepend-icon":"phone",type:"text",hint:"Campo opcional"},model:{value:a.contactForm.phone,callback:function(t){a.$set(a.contactForm,"phone",t)},expression:"contactForm.phone"}})],1)]),a._v(" "),e("div",{staticClass:"col-lg-9"},[e("div",{staticClass:"mt-4"},[e("router-link",{staticClass:"btn btn-elevate btn-pill",attrs:{to:{name:"contacts"}}},[e("i",{staticClass:"fa fa-arrow-left mb-2"}),a._v("\n                        Ir atrás\n                      ")])],1)]),a._v(" "),e("div",{staticClass:"col-lg-3 col-sm-12"},[e("div",{staticClass:"mt-4"},[e("v-btn",{staticStyle:{color:"white"},attrs:{color:"blue",type:"submit",loading:a.contactForm.busy,disabled:a.contactForm.busy}},[a._v("Crear nuevo usuario de compañía")])],1)])],1)])])],1)],1)])])])])])},[],!1,null,null,null);t.default=i.exports},69:function(a,t,e){"use strict";var n=e(21);e.n(n).a},70:function(a,t,e){(a.exports=e(2)(!1)).push([a.i,"\n.custom-loader {\n    -webkit-animation: loader 1s infinite;\n            animation: loader 1s infinite;\n    display: flex;\n}\n@-webkit-keyframes loader {\nfrom {\n      -webkit-transform: rotate(0);\n              transform: rotate(0);\n}\nto {\n      -webkit-transform: rotate(360deg);\n              transform: rotate(360deg);\n}\n}\n@keyframes loader {\nfrom {\n      -webkit-transform: rotate(0);\n              transform: rotate(0);\n}\nto {\n      -webkit-transform: rotate(360deg);\n              transform: rotate(360deg);\n}\n}\n.theme--light.v-card {\n  background-color: #fff;\n  border-color: #fff;\n  color: rgba(0, 0, 0, 0.87);\n}\n.v-card {\n  box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2),\n    0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);\n  text-decoration: none;\n}\n.v-menu__content {\n  position: absolute;\n  display: inline-block;\n  border-radius: 2px;\n  max-width: 80%;\n  overflow-y: auto;\n  overflow-x: hidden;\n  contain: content;\n  will-change: transform;\n  box-shadow: 0px 5px 5px -3px rgba(0, 0, 0, 0.2),\n    0px 8px 10px 1px rgba(0, 0, 0, 0.14), 0px 3px 14px 2px rgba(0, 0, 0, 0.12);\n}\n.menuable__content__active {\n  top: 45px !important;\n  left: 5px !important;\n}\n",""])}}]);