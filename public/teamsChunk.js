(window.webpackJsonp=window.webpackJsonp||[]).push([[23],{23:function(t,e,a){var i=a(74);"string"==typeof i&&(i=[[t.i,i,""]]);var s={hmr:!0,transform:void 0,insertInto:void 0};a(3)(i,s);i.locals&&(t.exports=i.locals)},257:function(t,e,a){"use strict";a.r(e);var i={data:function(){return{teams:[],saving:!1,loadingTable:!0,autoUpdate:!1,baseUrl:window.baseUrl,friends:[1],isUpdating:!1,name:"Midnight Crew",title:"Equipos de trabajo en ",sub:"creación.",btnTitle:"Guardar equipo ahora",btnIcon:"save",search:"",dialog:!1,contacts:[],workteam:{name:"",department:"",members:[]},headers:[{text:"Nombre de Equipo",align:"left",sortable:!1,value:"name"},{text:"Departamento",value:"department"},{text:"Miembros",value:"fat"},{text:"Acciones",value:"name",sortable:!1}],desserts:[],editedIndex:-1,editedItem:{name:"",calories:0,fat:0,carbs:0},defaultItem:{name:"",calories:0,fat:0,carbs:0},teamForm:new Form({id:"",name:"",department:"",members:[],updateForm:"object"}),deleteTeamF:new Form({id:""}),itemActual:{},teamTemporal:{},membersUpdater:!1}},computed:{formTitle:function(){return-1===this.editedIndex?"New Team":"Edit Team"},miembros:function(){return this.teamForm.members.filter(function(t){return t.email!=itemActual.email})}},watch:{dialog:function(t){t||this.close()},isUpdating:function(t){var e=this;t&&setTimeout(function(){return e.isUpdating=!1},3e3)}},created:function(){this.initialize()},methods:{deleteTeam:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't be able to revert this!",type:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes, delete the team."}).then(function(a){a.value&&(e.deleteTeamF.id=t,e.deleteTeamF.post("/deleteTeam").then(function(t){t.data;toastr.success("Done!","Team deleted!."),e.getTeams()}).catch(function(){toastr.error("Oops!","Something went wrong."),e.isUpdating=!1}))})},editTeam:function(t){$("#teamModal").modal("show"),this.sub="edición.",this.btnTitle="Actualizar equipo ahora",this.btnIcon="update",this.saving=!1,this.teamForm.id=t.id,this.teamForm.name=t.name,this.teamForm.department=t.department,this.teamForm.members=t.avatars.avatar,this.teamTemporal=t.avatars.avatar,this.membersUpdater=!1},checkTeamEmpty:function(){this.membersUpdater=!0,this.teamForm.updateForm="array"},remove:function(t){if(console.log(t),this.membersUpdater){var e=this.teamForm.members.indexOf(t.email);e>=0&&this.teamForm.members.splice(e,1)}else{var a=this.teamForm.members.map(function(t){return t.email}).indexOf(t.email);a>=0&&this.teamForm.members.splice(a,1)}},loadContacts:function(){var t=this;axios.get("/getContacts").then(function(e){t.contacts=e.data.contacts,t.loadingTable=!1}).catch(function(t){console.log(t),toastr.error("Oops!","Something goes wrong")})},getTeams:function(){var t=this;axios.get("/getTeams").then(function(e){t.teams=e.data.teams}).catch(function(t){console.log(t),toastr.error("Oops!","Something goes wrong")})},initialize:function(){},editItem:function(t){this.editedIndex=this.desserts.indexOf(t),this.editedItem=Object.assign({},t),this.dialog=!0},deleteItem:function(t){var e=this.desserts.indexOf(t);confirm("Are you sure you want to delete this item?")&&this.desserts.splice(e,1)},close:function(){this.dialog=!1,$("#teamModal").modal("hide")},save:function(){this.editedIndex>-1?Object.assign(this.desserts[this.editedIndex],this.editedItem):this.desserts.push(this.editedItem),this.close()},saveTeam:function(){var t=this;this.saving?this.teamForm.members.length>0?(this.isUpdating=!0,this.teamForm.post("/saveTeam").then(function(e){e.data;toastr.success("Done!","New team has appeared!."),t.getTeams(),t.isUpdating=!1,$("#teamModal").modal("hide")}).catch(function(){toastr.error("Oops!","Something went wrong."),t.isUpdating=!1})):Swal.fire("Oops?","Teams must have at least 1 member.","question"):this.teamForm.members.length>0?(this.isUpdating=!0,this.teamForm.post("/updateTeam").then(function(e){e.response;toastr.success("Done!","Equipo actualizado con éxito!."),t.getTeams(),t.isUpdating=!1,$("#teamModal").modal("hide")}).catch(function(e){var a=e.error;console.log(a),t.isUpdating=!1,$("#teamModal").modal("hide")})):Swal.fire("Oops?","Teams must have at least 1 member.","question")},updateTeam:function(){var t=this;this.teamForm.members.length>0?(this.isUpdating=!0,this.teamForm.post("/updateTeam").then(function(e){var a=e.response;toastr.success("Done!","Equipo actualizado con éxito!."),t.teams=a.data.teams,t.isUpdating=!1,$("#teamModal").modal("hide")}).catch(function(){toastr.error("Oops!","Algo anda mal."),t.isUpdating=!1})):Swal.fire("Oops?","Teams must have at least 1 member.","question")},newTeam:function(){$("#teamModal").modal("show"),this.sub="creation.",this.btnTitle="Guardar equipo ahora",this.btnIcon="save",this.saving=!0,this.teamForm.reset()}},mounted:function(){this.loadContacts(),this.getTeams()}},s=(a(73),a(1)),n=Object(s.a)(i,function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"hole",staticStyle:{"min-height":"80vh"}},[a("div",{staticClass:"modal fade",staticStyle:{display:"none"},attrs:{id:"teamModal",tabindex:"-1",role:"dialog","aria-labelledby":"exampleModalLabel","aria-hidden":"true"}},[a("div",{staticClass:"modal-dialog modal-lg",attrs:{role:"document"}},[a("div",{staticClass:"modal-content"},[a("div",{staticClass:"modal-body"},[a("v-card",{attrs:{color:"grey lighten-5",dark:""}},[a("v-img",{attrs:{height:"230",src:t.baseUrl+"images/team.png"}},[a("v-layout",{attrs:{wrap:""}},[a("v-flex",{attrs:{xs12:""}},[a("v-progress-linear",{staticClass:"ma-0",attrs:{active:t.isUpdating,color:"light-blue darken-1",height:"4",indeterminate:""}})],1),t._v(" "),a("v-flex",{attrs:{"text-xs-right":"",xs12:""}},[a("v-menu",{attrs:{bottom:"",left:"",transition:"slide-y-transition"},scopedSlots:t._u([{key:"activator",fn:function(e){var i=e.on;return[a("v-btn",t._g({staticClass:"blue",attrs:{icon:"","data-dismiss":"modal"}},i),[a("v-icon",[t._v("close")])],1)]}}])})],1),t._v(" "),a("v-layout",{attrs:{"align-start":"",column:"","justify-end":"","pa-3":""}},[a("h3",{staticClass:"headline grey--text"},[t._v("Teams ")]),t._v(" "),a("span",{staticClass:"grey--text text--lighten-1"},[t._v(t._s(t.title)+"\n                        "),a("br"),t._v("\n                        "+t._s(t.sub)+"\n\n\n                      ")])])],1)],1),t._v(" "),a("form",{attrs:{id:"formulario"},on:{submit:function(e){return e.preventDefault(),t.saveTeam(e)},keydown:function(e){return t.teamForm.onKeydown(e)}}},[a("v-container",[a("v-layout",{attrs:{wrap:""}},[a("v-flex",{attrs:{xs12:"",md6:""}},[a("v-text-field",{attrs:{disabled:t.isUpdating,box:"",color:"grey lighten-5",label:"Nombre del equipo",required:""},model:{value:t.teamForm.name,callback:function(e){t.$set(t.teamForm,"name",e)},expression:"teamForm.name"}})],1),t._v(" "),a("v-flex",{attrs:{xs12:"",md6:""}},[a("v-text-field",{attrs:{disabled:t.isUpdating,box:"",color:"grey lighten-5",label:"Departamento",required:""},model:{value:t.teamForm.department,callback:function(e){t.$set(t.teamForm,"department",e)},expression:"teamForm.department"}})],1),t._v(" "),a("v-flex",{attrs:{xs12:""}},[a("v-autocomplete",{attrs:{disabled:t.isUpdating,items:t.contacts,dense:"",outline:"",chips:"",color:"grey darken-3",label:"Usuarios de empresa","item-text":"email","item-value":"email",multiple:"","persistent-hint":""},on:{change:t.checkTeamEmpty},scopedSlots:t._u([{key:"selection",fn:function(e){return[a("v-chip",{staticClass:"chip--select-multi",staticStyle:{color:"#424242"},attrs:{selected:e.selected,close:"",color:"grey lighten-5"},on:{input:function(a){return t.remove(e.item)}}},[a("v-avatar",[a("img",{attrs:{src:e.item.avatar}})]),t._v("\n                              "+t._s(e.item.firstName+" "+e.item.lastName)+"\n                            ")],1)]}},{key:"item",fn:function(e){return["object"!=typeof e.item?[a("v-list-tile-content",{domProps:{textContent:t._s(e.item)}})]:[a("v-list-tile-avatar",[a("img",{attrs:{src:e.item.avatar}})]),t._v(" "),a("v-list-tile-content",[a("v-list-tile-title",{domProps:{innerHTML:t._s(e.item.firstName+" "+e.item.lastName)}}),t._v(" "),a("v-list-tile-sub-title",{domProps:{innerHTML:t._s(e.item.email)}})],1)]]}}]),model:{value:t.teamForm.members,callback:function(e){t.$set(t.teamForm,"members",e)},expression:"teamForm.members"}})],1)],1)],1),t._v(" "),a("v-card-actions",[a("v-btn",{staticClass:"ml-2 mb-2",staticStyle:{color:"#01579B !important"},attrs:{disabled:t.autoUpdate,loading:t.isUpdating,color:"grey lighten-5",round:"",type:"submit"}},[a("v-icon",{attrs:{left:""}},[t._v(t._s(t.btnIcon))]),t._v(" "),a("span",[t._v(t._s(t.btnTitle))])],1)],1)],1)],1)],1)])])]),t._v(" "),a("div",{staticClass:"container-fluid"},[a("v-toolbar",{attrs:{flat:"",color:"white"}},[a("v-toolbar-title",[a("v-btn",{attrs:{fab:"",small:"",color:"grey lighten-5"},on:{click:function(e){return t.$router.go(-1)}}},[a("v-icon",{attrs:{dark:""}},[t._v("arrow_back")])],1),t._v("\n        \n           Equipos de Trabajo    ")],1),t._v(" "),a("v-spacer"),t._v(" "),a("v-text-field",{attrs:{"append-icon":"search",label:"Buscar por nombre o departamento","single-line":"","hide-details":""},model:{value:t.search,callback:function(e){t.search=e},expression:"search"}}),t._v("\n             \n      "),a("v-dialog",{attrs:{"max-width":"500px"},scopedSlots:t._u([{key:"activator",fn:function(e){e.on;return[a("vs-button",{attrs:{color:"primary",type:"gradient",icon:"add"},on:{click:t.newTeam}},[t._v("Crear nuevo equipo")])]}}]),model:{value:t.dialog,callback:function(e){t.dialog=e},expression:"dialog"}})],1),t._v(" "),t.loadingTable?a("v-progress-linear",{attrs:{color:"#ccc",indeterminate:""},scopedSlots:t._u([{key:"progress",fn:function(){},proxy:!0}],null,!1,63074868)}):t._e(),t._v(" "),a("v-data-table",{staticClass:"elevation-1",attrs:{"disable-initial-sort":"",headers:t.headers,loading:t.loadingTable,items:t.teams,search:t.search},scopedSlots:t._u([{key:"items",fn:function(e){return[a("td",[t._v(t._s(e.item.name))]),t._v(" "),a("td",{staticClass:"text-xs-left"},[t._v(t._s(e.item.department))]),t._v(" "),a("td",t._l(e.item.avatars.avatar,function(t){return a("v-avatar",{key:t.id,attrs:{size:"40px"}},[a("img",{attrs:{src:t.avatar,alt:t.email,title:t.firstName+" "+t.lastName}})])}),1),t._v(" "),a("td",{staticClass:"justify-center layout px-0"},[a("v-icon",{staticClass:"mr-2",attrs:{small:""},on:{click:function(a){return t.editTeam(e.item)}}},[t._v("edit")]),t._v(" "),a("v-icon",{attrs:{small:""},on:{click:function(a){return t.deleteTeam(e.item.id)}}},[t._v("delete")])],1)]}},{key:"no-data",fn:function(){return[a("v-btn",{attrs:{color:"primary"},on:{click:t.initialize}},[t._v("Reset")])]},proxy:!0},{key:"no-results",fn:function(){return[a("v-alert",{staticStyle:{color:"red"},attrs:{value:!0,icon:"warning"}},[t._v('Tu busqueda por  "'+t._s(t.search)+'" no arrojó resultados.')])]},proxy:!0}])})],1)])},[],!1,null,null,null);e.default=n.exports},73:function(t,e,a){"use strict";var i=a(23);a.n(i).a},74:function(t,e,a){(t.exports=a(2)(!1)).push([t.i,"\n.adminFunction {\r\n  cursor: pointer;\n}\n.v-autocomplete__content {\r\n  margin-top:30px !important;\n}\nhtml,\r\nbody {\r\n  height: 100%;\r\n  width: 100%;\n}\n#formulario {\r\n  background-color:#424242;\n}\n.darkGrey {\r\n  color:#424242;\n}\r\n",""])}}]);