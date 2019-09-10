(window.webpackJsonp=window.webpackJsonp||[]).push([[18],{15:function(t,s,i){var e=i(58);"string"==typeof e&&(e=[[t.i,e,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};i(3)(e,a);e.locals&&(t.exports=e.locals)},261:function(t,s,i){"use strict";i.r(s);var e={data:function(){return{editMode:!1,ideas:{},baseUrl:window.baseUrl,colorx:"#151B26",colorx2:"#30456b",select1:"all",form:new Form({id:"",ideatxt:"",bugorfeaturetxt:""}),privateRetos:{},companyRetos:{},publicRetos:{},user:{},cats:{},showPublicRetos:!1}},computed:{filteredPersonal:function(){var t=this;return"all"==this.select1?this.privateRetos:this.privateRetos.filter(function(s){return s.category==t.select1})},filteredPublic:function(){var t=this;return"all"==this.select1?this.publicRetos:this.publicRetos.filter(function(s){return s.category==t.select1})},filteredEmpresarial:function(){var t=this;return"all"==this.select1?this.companyRetos:this.companyRetos.filter(function(s){return s.category==t.select1})}},methods:{getRetos:function(){var t=this;this.$Progress.start(),axios.get("/getRetos").then(function(s){"loginRequired"==s.data.msg?window.location.href=baseUrl+"login":(t.privateRetos=s.data.privateRetos,t.companyRetos=s.data.companyRetos,t.publicRetos=s.data.publicRetos,t.user=s.data.user,t.cats=s.data.categories,t.$Progress.finish())}).catch(function(s){console.log(s),t.$Progress.finish(),toastr.error("Oops!","Something goes wrong")})}},mounted:function(){$("#admin").removeClass("menuActivo"),$("#dashboard").removeClass("menuActivo"),$("#innovations").removeClass("menuActivo"),$("#retos").addClass("menuActivo"),$(document).attr("title","Innova | Retos")},created:function(){this.getRetos()}},a=(i(57),i(1)),r=Object(a.a)(e,function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{staticStyle:{"min-height":"80vh"}},[i("div",{staticClass:"container-fluid"},[i("div",{staticClass:"row"},[t._m(0),t._v(" "),i("div",{staticClass:"col-lg-2 col-sm-2 col-md-5"},[i("div",{staticStyle:{"margin-top":"1px"}},[i("label",{attrs:{for:"picka"}},[t._v("Categorías")]),t._v(" "),i("div",{staticClass:"input-group"},[i("select",{directives:[{name:"model",rawName:"v-model",value:t.select1,expression:"select1"}],staticClass:"kt-selectpicker form-control",class:{"is-invalid":t.form.errors.has("category")},attrs:{"data-container":"body",name:"category",id:"picka",required:""},on:{change:function(s){var i=Array.prototype.filter.call(s.target.options,function(t){return t.selected}).map(function(t){return"_value"in t?t._value:t.value});t.select1=s.target.multiple?i:i[0]}}},[i("option",{attrs:{value:"all"}},[t._v("Todas")]),t._v(" "),t._l(t.cats,function(s){return i("optgroup",{key:s.id,attrs:{label:s.label}},t._l(s.options,function(s){return i("option",{key:s.id,domProps:{value:s.id+s.name}},[t._v(t._s(t._f("toCategory")(s.name)))])}),0)})],2)])])]),t._v(" "),i("div",{staticClass:"col-lg-2 col-md-3 col-sm-6",staticStyle:{"margin-top":"24px"}},[i("div",{},[i("v-btn",{attrs:{color:"#673AB7",dark:""},on:{click:function(s){return t.$router.push({name:"crear-reto"})}}},[i("v-icon",{attrs:{left:""}},[t._v("add")]),t._v("\n         Nuevo reto")],1)],1)])]),t._v(" "),i("div",{staticClass:"row"},[i("div",{staticClass:"col-12"},[i("v-tabs",{attrs:{"fixed-tabs":"","icons-and-text":""}},[i("v-tabs-slider",{attrs:{color:"purple darken-4"}}),t._v(" "),i("v-tab",{attrs:{href:"#empresariales"}},[t._v("\n              "+t._s(t.filteredEmpresarial.length)+" Empresariales \n                "),i("v-icon",[t._v("business")])],1),t._v(" "),i("v-tab",{attrs:{href:"#publicos"}},[t._v("\n                "+t._s(t.filteredPublic.length)+" Públicos \n                "),i("v-icon",[t._v("public")])],1),t._v(" "),i("v-tab",{attrs:{href:"#personales"}},[t._v("\n              "+t._s(t.filteredPersonal.length)+" Retos en borrador \n                "),i("v-icon",[t._v("person_pin")])],1),t._v(" "),i("v-tab-item",{attrs:{value:"empresariales"}},[i("v-card",[i("br"),t._v(" "),i("div",{staticClass:"container-fluid"},[i("div",{staticClass:"row"},t._l(t.filteredEmpresarial,function(s){return i("div",{key:s.id,staticClass:"col-xl-3 col-lg-4 col-md-6 col-sm-12"},[i("div",{staticClass:"kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"},[i("div",{staticClass:"kt-portlet__body kt-portlet__body--fit"},[i("div",{staticClass:"kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard  ",style:{backgroundImage:"url("+s.img+")"}},[i("h3",{staticClass:"kt-widget19__title kt-font-light"},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t"+t._s(t._f("shortText")(s.title))+"\n\t\t\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"kt-widget19__shadow"}),t._v(" "),i("div",{staticClass:"kt-widget19__labels"},[i("a",{staticClass:"btn btn-light  btn-pill  btn-sm custom-btn "},[t._v("Empresarial")])])])]),t._v(" "),i("div",{staticClass:"kt-portlet__body"},[i("div",{staticClass:"kt-widget19__wrapper"},[i("div",{staticClass:"kt-widget19__content"},[i("div",{staticClass:"kt-widget19__userpic"},[i("img",{attrs:{src:s.img,height:"50",width:"50"}})]),t._v(" "),i("div",{staticClass:"kt-widget19__info"},[(s.author="showme")?i("a",{staticClass:"kt-widget19__username",attrs:{href:"#"}},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "),i("br"),t._v(t._s(t._f("uppercaseFirst")(s.escrita))+"\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t")]):i("a",{staticClass:"kt-widget19__username",attrs:{href:"#"}},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "),i("br"),t._v("\t Anónimo(a)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__stats"},[i("span",{staticClass:"kt-widget19__number kt-font-brand"},[i("router-link",{attrs:{to:"/retos/ver/"+s.id}},[t._v(t._s(s.solutions.length))])],1),t._v(" "),i("router-link",{staticClass:"kt-widget19__comment",attrs:{to:"/retos/ver/"+s.id}},[t._v("Soluciones")])],1)]),t._v(" "),i("div",{staticClass:"kt-widget19__text"},[i("b",[t._v("Categoría: ")]),t._v(" "+t._s(t._f("uppercaseFirst")(t._f("mediumText")(t._f("toCategory")(s.category))))+" "),i("br"),t._v(" "),i("b",[t._v("Fecha límite: ")]),t._v(t._s(t._f("limite")(s.fecha))+"  "),i("br"),t._v("\n                          "+t._s(t._f("mediumText")(s.description))+"\n\n\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__action"},[i("router-link",{staticClass:"btn btn-sm btn-label-brand btn-bold ",attrs:{to:"/retos/ver/"+s.id}},[t._v("Aportar solución...")])],1)])])])}),0)])])],1),t._v(" "),i("v-tab-item",{attrs:{value:"publicos"}},[i("v-card",[i("br"),t._v(" "),i("div",{staticClass:"container-fluid"},[i("div",{staticClass:"row"},t._l(t.filteredPublic,function(s){return i("div",{key:t.ideas.id,staticClass:"col-xl-3 col-lg-4 col-md-6 col-sm-12"},[i("div",{staticClass:"kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"},[i("div",{staticClass:"kt-portlet__body kt-portlet__body--fit"},[i("div",{staticClass:"kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard ",style:{backgroundImage:"url("+s.img+")"}},[i("h3",{staticClass:"kt-widget19__title kt-font-light"},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t"+t._s(t._f("uppercaseFirst")(t._f("shortText")(s.title)))+"\n\t\t\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"kt-widget19__shadow"}),t._v(" "),i("div",{staticClass:"kt-widget19__labels"},[i("a",{staticClass:"btn btn-light  btn-pill  btn-sm "},[t._v("Públicos")])])])]),t._v(" "),i("div",{staticClass:"kt-portlet__body"},[i("div",{staticClass:"kt-widget19__wrapper"},[i("div",{staticClass:"kt-widget19__content"},[i("div",{staticClass:"kt-widget19__userpic"},[i("img",{attrs:{src:s.img,height:"50",width:"50"}})]),t._v(" "),i("div",{staticClass:"kt-widget19__info"},[(s.author="showme")?i("a",{staticClass:"kt-widget19__username",attrs:{href:"#"}},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "),i("br"),t._v(" "+t._s(t._f("uppercaseFirst")(s.escrita))+"\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t")]):i("a",{staticClass:"kt-widget19__username",attrs:{href:"#"}},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "),i("br"),t._v("\t Anónimo(a)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__stats"},[i("span",{staticClass:"kt-widget19__number kt-font-brand"},[i("router-link",{attrs:{to:"/retos/ver/"+s.id}},[t._v(t._s(s.solutions.length))])],1),t._v(" "),i("router-link",{staticClass:"kt-widget19__comment",attrs:{to:"/retos/ver/"+s.id}},[t._v("Soluciones")])],1)]),t._v(" "),i("div",{staticClass:"kt-widget19__text"},[i("b",[t._v("Categoría: ")]),t._v(" "+t._s(t._f("uppercaseFirst")(t._f("mediumText")(t._f("toCategory")(s.category))))+" "),i("br"),t._v(" "),i("b",[t._v("Fecha límite: ")]),t._v(t._s(t._f("limite")(s.fecha))+" "),i("br"),t._v("\n                          "+t._s(t._f("mediumText")(s.description))+"\n\n\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__action"},[i("router-link",{staticClass:"btn btn-sm btn-label-brand btn-bold ",attrs:{to:"/retos/ver/"+s.id}},[t._v("Aportar solución...")])],1)])])])}),0)])])],1),t._v(" "),i("v-tab-item",{attrs:{value:"personales"}},[i("v-card",[i("br"),t._v(" "),i("div",{staticClass:"container-fluid"},[i("div",{staticClass:"row"},t._l(t.filteredPersonal,function(s){return i("div",{key:s.id,staticClass:"col-xl-3 col-lg-4 col-md-6 col-sm-12"},[i("div",{staticClass:"kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"},[i("div",{staticClass:"kt-portlet__body kt-portlet__body--fit"},[i("div",{staticClass:"kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard ",style:{backgroundImage:"url("+s.img+")"}},[i("h3",{staticClass:"kt-widget19__title kt-font-light"},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t"+t._s(t._f("uppercaseFirst")(t._f("shortText")(s.title)))+"\n\t\t\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"kt-widget19__shadow"}),t._v(" "),i("div",{staticClass:"kt-widget19__labels",staticStyle:{"background-color":"white","border-radius":"5px"}},[i("a",{staticClass:"btn btn-label-light-o2 btn-bold btn-sm ",staticStyle:{color:"#7a7f87"},attrs:{href:"#"}},[t._v("Borrador ")])])])]),t._v(" "),i("div",{staticClass:"kt-portlet__body"},[i("div",{staticClass:"kt-widget19__wrapper"},[i("div",{staticClass:"kt-widget19__content"},[i("div",{staticClass:"kt-widget19__userpic"},[i("img",{attrs:{src:s.img,height:"50",width:"50"}})]),t._v(" "),i("div",{staticClass:"kt-widget19__info"},[i("a",{staticClass:"kt-widget19__username",attrs:{href:"#"}},[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tEscrito por mi \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__stats"},[i("span",{staticClass:"kt-widget19__number kt-font-brand"},[i("router-link",{attrs:{to:"/retos/ver/"+s.id}},[t._v(t._s(s.solutions.length))])],1),t._v(" "),i("router-link",{staticClass:"kt-widget19__comment",attrs:{to:"/retos/ver/"+s.id}},[t._v("Soluciones")])],1)]),t._v(" "),i("div",{staticClass:"kt-widget19__text"},[i("b",[t._v("Categoría: ")]),t._v(" "+t._s(t._f("uppercaseFirst")(t._f("mediumText")(t._f("toCategory")(s.category))))+" "),i("br"),t._v(" "),i("b",[t._v("Fecha límite: ")]),t._v(t._s(t._f("limite")(s.fecha))+" \n                           \n                           "),i("br"),t._v("\n\n\n                          "+t._s(t._f("mediumText")(s.description))+"\n\n\t\t\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),i("div",{staticClass:"kt-widget19__action"},[i("router-link",{staticClass:"btn btn-sm btn-label-brand btn-bold ",attrs:{to:"/retos/ver/"+s.id}},[t._v("Aportar solución...")])],1)])])])}),0)])])],1)],1)],1)])])])},[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"col-lg-7 col-md-7 col-sm-12"},[s("div",{staticClass:"form-group"},[s("label",[this._v("Busca algún reto en específico")]),this._v(" "),s("div",{staticClass:"kt-input-icon kt-input-icon--left"},[s("input",{staticClass:"form-control",attrs:{type:"text",placeholder:"Search...",id:"generalSearch"}}),this._v(" "),s("span",{staticClass:"kt-input-icon__icon kt-input-icon__icon--left"},[s("span",[s("i",{staticClass:"la la-search"})])])])])])}],!1,null,null,null);s.default=r.exports},57:function(t,s,i){"use strict";var e=i(15);i.n(e).a},58:function(t,s,i){(t.exports=i(2)(!1)).push([t.i,"\n.custom-btn {\n  background: linear-gradient(105deg, #151B26, #1f2c45, #253d6b, #264582, #214791, #204ea8, #1a54c7, #1153d6, #2c57ad, #264174, #253d6b, #253d6b);\n  background-size: 400% 400%;\n  -webkit-animation: rainbow 5s ease infinite;\n  -z-animation: rainbow 5s ease infinite;\n  animation: rainbow 5s ease infinite alternate;\n  border: 0;\n\n  color: #fff !important;\n}\n@-webkit-keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n@keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n.imageCard {\n  min-height: 300px;\n}\n",""])}}]);