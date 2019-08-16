(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-Business-work-teams-index-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    var srcs = {
      1: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
      2: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
      3: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
      4: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
      5: 'https://cdn.vuetifyjs.com/images/lists/5.jpg'
    };
    return {
      teams: [],
      saving: false,
      loadingTable: true,
      autoUpdate: false,
      baseUrl: window.baseUrl,
      friends: [1],
      isUpdating: false,
      name: 'Midnight Crew',
      title: "Equipos de trabajo en ",
      sub: 'creación.',
      btnTitle: 'Guardar equipo ahora',
      btnIcon: 'save',
      search: "",
      dialog: false,
      contacts: [],
      workteam: {
        name: "",
        department: "",
        members: []
      },
      headers: [{
        text: "Nombre de Equipo",
        align: "left",
        sortable: false,
        value: "name"
      }, {
        text: "Departamento",
        value: "department"
      }, {
        text: "Miembros",
        value: "fat"
      }, {
        text: "Acciones",
        value: "name",
        sortable: false
      }],
      desserts: [],
      editedIndex: -1,
      editedItem: {
        name: "",
        calories: 0,
        fat: 0,
        carbs: 0
      },
      defaultItem: {
        name: "",
        calories: 0,
        fat: 0,
        carbs: 0
      },
      teamForm: new Form({
        id: '',
        name: "",
        department: '',
        members: [],
        updateForm: 'object'
      }),
      deleteTeamF: new Form({
        id: ''
      }),
      itemActual: {},
      teamTemporal: {},
      membersUpdater: false
    };
  },
  computed: {
    formTitle: function formTitle() {
      return this.editedIndex === -1 ? "New Team" : "Edit Team";
    },
    miembros: function miembros() {
      return this.teamForm.members.filter(function (contact) {
        if (contact.email != itemActual.email) {
          return true;
        } else {
          return false;
        }
      });
    }
  },
  watch: {
    dialog: function dialog(val) {
      val || this.close();
    },
    isUpdating: function isUpdating(val) {
      var _this = this;

      if (val) {
        setTimeout(function () {
          return _this.isUpdating = false;
        }, 3000);
      }
    }
  },
  created: function created() {
    this.initialize();
  },
  methods: {
    deleteTeam: function deleteTeam(idTeam) {
      var _this2 = this;

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete the team."
      }).then(function (result) {
        if (result.value) {
          _this2.deleteTeamF.id = idTeam;

          _this2.deleteTeamF.post("/deleteTeam").then(function (_ref) {
            var data = _ref.data;
            toastr.success("Done!", "Team deleted!.");

            _this2.getTeams();
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
            _this2.isUpdating = false;
          });
        }
      });
    },
    editTeam: function editTeam(team) {
      $("#teamModal").modal("show");
      this.sub = 'edición.';
      this.btnTitle = 'Actualizar equipo ahora';
      this.btnIcon = 'update';
      this.saving = false;
      this.teamForm.id = team.id;
      this.teamForm.name = team.name;
      this.teamForm.department = team.department;
      this.teamForm.members = team.avatars.avatar;
      this.teamTemporal = team.avatars.avatar;
      this.membersUpdater = false;
    },
    checkTeamEmpty: function checkTeamEmpty() {
      this.membersUpdater = true;
      this.teamForm.updateForm = 'array';
      /*if(this.teamForm.members.length >0){
         //this.teamForm.members = this.teamForm.members
       console.log('condicion tiene otros')
      }else {
       this.teamForm.members = {} ;
       console.log('condicion vacia')
      } */
    },
    remove: function remove(item) {
      console.log(item);
      /*let nuevoObjeto;
        nuevoObjeto =  this.teamForm.members.filter(contact => {
        return String(contact.email) != String(item.email)
        
      }); */

      if (this.membersUpdater) {
        //Buscar email sencillo
        var ind = this.teamForm.members.indexOf(item.email);
        if (ind >= 0) this.teamForm.members.splice(ind, 1);
      } else {
        //buscar por objeto
        var index = this.teamForm.members.map(function (e) {
          return e.email;
        }).indexOf(item.email);
        if (index >= 0) this.teamForm.members.splice(index, 1);
      }
    },
    loadContacts: function loadContacts() {
      var _this3 = this;

      axios.get("/getContacts").then(function (response) {
        _this3.contacts = response.data.contacts;
        _this3.loadingTable = false;
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      });
    },
    getTeams: function getTeams() {
      var _this4 = this;

      axios.get("/getTeams").then(function (response) {
        _this4.teams = response.data.teams;
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      });
    },
    initialize: function initialize() {},
    editItem: function editItem(item) {
      this.editedIndex = this.desserts.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    },
    deleteItem: function deleteItem(item) {
      var index = this.desserts.indexOf(item);
      confirm("Are you sure you want to delete this item?") && this.desserts.splice(index, 1);
    },
    close: function close() {
      this.dialog = false;
      $("#teamModal").modal("hide");
    },
    save: function save() {
      if (this.editedIndex > -1) {
        Object.assign(this.desserts[this.editedIndex], this.editedItem);
      } else {
        this.desserts.push(this.editedItem);
      }

      this.close();
    },
    saveTeam: function saveTeam() {
      var _this5 = this;

      if (this.saving) {
        if (this.teamForm.members.length > 0) {
          this.isUpdating = true;
          this.teamForm.post("/saveTeam").then(function (_ref2) {
            var data = _ref2.data;
            toastr.success("Done!", "New team has appeared!.");

            _this5.getTeams();

            _this5.isUpdating = false;
            $("#teamModal").modal("hide");
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
            _this5.isUpdating = false;
          });
        } else {
          Swal.fire('Oops?', 'Teams must have at least 1 member.', 'question');
        }
      } else {
        if (this.teamForm.members.length > 0) {
          this.isUpdating = true;
          this.teamForm.post("/updateTeam").then(function (_ref3) {
            var response = _ref3.response;
            toastr.success("Done!", "Equipo actualizado con éxito!.");

            _this5.getTeams(); //this.teams = response.data.teams;


            _this5.isUpdating = false;
            $("#teamModal").modal("hide");
          })["catch"](function (_ref4) {
            var error = _ref4.error;
            //toastr.error("Oops!", "Algo anda mal.");
            console.log(error);
            _this5.isUpdating = false;
            $("#teamModal").modal("hide");
          });
        } else {
          Swal.fire('Oops?', 'Teams must have at least 1 member.', 'question');
        }
      } //end else update team

    },
    updateTeam: function updateTeam() {
      var _this6 = this;

      if (this.teamForm.members.length > 0) {
        this.isUpdating = true;
        this.teamForm.post("/updateTeam").then(function (_ref5) {
          var response = _ref5.response;
          toastr.success("Done!", "Equipo actualizado con éxito!."); //this.getTeams()

          _this6.teams = response.data.teams;
          _this6.isUpdating = false;
          $("#teamModal").modal("hide");
        })["catch"](function () {
          toastr.error("Oops!", "Algo anda mal.");
          _this6.isUpdating = false;
        });
      } else {
        Swal.fire('Oops?', 'Teams must have at least 1 member.', 'question');
      }
    },
    newTeam: function newTeam() {
      $("#teamModal").modal("show");
      this.sub = 'creation.';
      this.btnTitle = 'Guardar equipo ahora';
      this.btnIcon = 'save';
      this.saving = true;
      this.teamForm.reset();
    }
  },
  // end methods
  mounted: function mounted() {
    this.loadContacts();
    this.getTeams();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.adminFunction {\r\n  cursor: pointer;\n}\n.v-autocomplete__content {\r\n  margin-top:30px !important;\n}\nhtml,\r\nbody {\r\n  height: 100%;\r\n  width: 100%;\n}\n#formulario {\r\n  background-color:#424242;\n}\n.darkGrey {\r\n  color:#424242;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./work-teams-index.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3&":
/*!****************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3& ***!
  \****************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "hole", staticStyle: { "min-height": "80vh" } },
    [
      _c(
        "div",
        {
          staticClass: "modal fade",
          staticStyle: { display: "none" },
          attrs: {
            id: "teamModal",
            tabindex: "-1",
            role: "dialog",
            "aria-labelledby": "exampleModalLabel",
            "aria-hidden": "true"
          }
        },
        [
          _c(
            "div",
            {
              staticClass: "modal-dialog modal-lg",
              attrs: { role: "document" }
            },
            [
              _c("div", { staticClass: "modal-content" }, [
                _c(
                  "div",
                  { staticClass: "modal-body" },
                  [
                    _c(
                      "v-card",
                      { attrs: { color: "grey lighten-5", dark: "" } },
                      [
                        _c(
                          "v-img",
                          {
                            attrs: {
                              height: "230",
                              src: _vm.baseUrl + "images/team.png"
                            }
                          },
                          [
                            _c(
                              "v-layout",
                              { attrs: { wrap: "" } },
                              [
                                _c(
                                  "v-flex",
                                  { attrs: { xs12: "" } },
                                  [
                                    _c("v-progress-linear", {
                                      staticClass: "ma-0",
                                      attrs: {
                                        active: _vm.isUpdating,
                                        color: "light-blue darken-1",
                                        height: "4",
                                        indeterminate: ""
                                      }
                                    })
                                  ],
                                  1
                                ),
                                _vm._v(" "),
                                _c(
                                  "v-flex",
                                  { attrs: { "text-xs-right": "", xs12: "" } },
                                  [
                                    _c("v-menu", {
                                      attrs: {
                                        bottom: "",
                                        left: "",
                                        transition: "slide-y-transition"
                                      },
                                      scopedSlots: _vm._u([
                                        {
                                          key: "activator",
                                          fn: function(ref) {
                                            var on = ref.on
                                            return [
                                              _c(
                                                "v-btn",
                                                _vm._g(
                                                  {
                                                    staticClass: "blue",
                                                    attrs: {
                                                      icon: "",
                                                      "data-dismiss": "modal"
                                                    }
                                                  },
                                                  on
                                                ),
                                                [
                                                  _c("v-icon", [
                                                    _vm._v("close")
                                                  ])
                                                ],
                                                1
                                              )
                                            ]
                                          }
                                        }
                                      ])
                                    })
                                  ],
                                  1
                                ),
                                _vm._v(" "),
                                _c(
                                  "v-layout",
                                  {
                                    attrs: {
                                      "align-start": "",
                                      column: "",
                                      "justify-end": "",
                                      "pa-3": ""
                                    }
                                  },
                                  [
                                    _c(
                                      "h3",
                                      { staticClass: "headline grey--text" },
                                      [_vm._v("Teams ")]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "span",
                                      {
                                        staticClass:
                                          "grey--text text--lighten-1"
                                      },
                                      [
                                        _vm._v(
                                          _vm._s(_vm.title) +
                                            "\n                        "
                                        ),
                                        _c("br"),
                                        _vm._v(
                                          "\n                        " +
                                            _vm._s(_vm.sub) +
                                            "\n\n\n                      "
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ],
                              1
                            )
                          ],
                          1
                        ),
                        _vm._v(" "),
                        _c(
                          "form",
                          {
                            attrs: { id: "formulario" },
                            on: {
                              submit: function($event) {
                                $event.preventDefault()
                                return _vm.saveTeam($event)
                              },
                              keydown: function($event) {
                                return _vm.teamForm.onKeydown($event)
                              }
                            }
                          },
                          [
                            _c(
                              "v-container",
                              [
                                _c(
                                  "v-layout",
                                  { attrs: { wrap: "" } },
                                  [
                                    _c(
                                      "v-flex",
                                      { attrs: { xs12: "", md6: "" } },
                                      [
                                        _c("v-text-field", {
                                          attrs: {
                                            disabled: _vm.isUpdating,
                                            box: "",
                                            color: "grey lighten-5",
                                            label: "Nombre del equipo",
                                            required: ""
                                          },
                                          model: {
                                            value: _vm.teamForm.name,
                                            callback: function($$v) {
                                              _vm.$set(
                                                _vm.teamForm,
                                                "name",
                                                $$v
                                              )
                                            },
                                            expression: "teamForm.name"
                                          }
                                        })
                                      ],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "v-flex",
                                      { attrs: { xs12: "", md6: "" } },
                                      [
                                        _c("v-text-field", {
                                          attrs: {
                                            disabled: _vm.isUpdating,
                                            box: "",
                                            color: "grey lighten-5",
                                            label: "Departamento",
                                            required: ""
                                          },
                                          model: {
                                            value: _vm.teamForm.department,
                                            callback: function($$v) {
                                              _vm.$set(
                                                _vm.teamForm,
                                                "department",
                                                $$v
                                              )
                                            },
                                            expression: "teamForm.department"
                                          }
                                        })
                                      ],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "v-flex",
                                      { attrs: { xs12: "" } },
                                      [
                                        _c("v-autocomplete", {
                                          attrs: {
                                            disabled: _vm.isUpdating,
                                            items: _vm.contacts,
                                            dense: "",
                                            outline: "",
                                            chips: "",
                                            color: "grey darken-3",
                                            label: "Usuarios de empresa",
                                            "item-text": "email",
                                            "item-value": "email",
                                            multiple: "",
                                            "persistent-hint": ""
                                          },
                                          on: { change: _vm.checkTeamEmpty },
                                          scopedSlots: _vm._u([
                                            {
                                              key: "selection",
                                              fn: function(data) {
                                                return [
                                                  _c(
                                                    "v-chip",
                                                    {
                                                      staticClass:
                                                        "chip--select-multi",
                                                      staticStyle: {
                                                        color: "#424242"
                                                      },
                                                      attrs: {
                                                        selected: data.selected,
                                                        close: "",
                                                        color: "grey lighten-5"
                                                      },
                                                      on: {
                                                        input: function(
                                                          $event
                                                        ) {
                                                          return _vm.remove(
                                                            data.item
                                                          )
                                                        }
                                                      }
                                                    },
                                                    [
                                                      _c("v-avatar", [
                                                        _c("img", {
                                                          attrs: {
                                                            src:
                                                              data.item.avatar
                                                          }
                                                        })
                                                      ]),
                                                      _vm._v(
                                                        "\n                              " +
                                                          _vm._s(
                                                            data.item
                                                              .firstName +
                                                              " " +
                                                              data.item.lastName
                                                          ) +
                                                          "\n                            "
                                                      )
                                                    ],
                                                    1
                                                  )
                                                ]
                                              }
                                            },
                                            {
                                              key: "item",
                                              fn: function(data) {
                                                return [
                                                  typeof data.item !== "object"
                                                    ? [
                                                        _c(
                                                          "v-list-tile-content",
                                                          {
                                                            domProps: {
                                                              textContent: _vm._s(
                                                                data.item
                                                              )
                                                            }
                                                          }
                                                        )
                                                      ]
                                                    : [
                                                        _c(
                                                          "v-list-tile-avatar",
                                                          [
                                                            _c("img", {
                                                              attrs: {
                                                                src:
                                                                  data.item
                                                                    .avatar
                                                              }
                                                            })
                                                          ]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "v-list-tile-content",
                                                          [
                                                            _c(
                                                              "v-list-tile-title",
                                                              {
                                                                domProps: {
                                                                  innerHTML: _vm._s(
                                                                    data.item
                                                                      .firstName +
                                                                      " " +
                                                                      data.item
                                                                        .lastName
                                                                  )
                                                                }
                                                              }
                                                            ),
                                                            _vm._v(" "),
                                                            _c(
                                                              "v-list-tile-sub-title",
                                                              {
                                                                domProps: {
                                                                  innerHTML: _vm._s(
                                                                    data.item
                                                                      .email
                                                                  )
                                                                }
                                                              }
                                                            )
                                                          ],
                                                          1
                                                        )
                                                      ]
                                                ]
                                              }
                                            }
                                          ]),
                                          model: {
                                            value: _vm.teamForm.members,
                                            callback: function($$v) {
                                              _vm.$set(
                                                _vm.teamForm,
                                                "members",
                                                $$v
                                              )
                                            },
                                            expression: "teamForm.members"
                                          }
                                        })
                                      ],
                                      1
                                    )
                                  ],
                                  1
                                )
                              ],
                              1
                            ),
                            _vm._v(" "),
                            _c(
                              "v-card-actions",
                              [
                                _c(
                                  "v-btn",
                                  {
                                    staticClass: "ml-2 mb-2",
                                    staticStyle: {
                                      color: "#01579B !important"
                                    },
                                    attrs: {
                                      disabled: _vm.autoUpdate,
                                      loading: _vm.isUpdating,
                                      color: "grey lighten-5",
                                      round: "",
                                      type: "submit"
                                    }
                                  },
                                  [
                                    _c("v-icon", { attrs: { left: "" } }, [
                                      _vm._v(_vm._s(_vm.btnIcon))
                                    ]),
                                    _vm._v(" "),
                                    _c("span", [_vm._v(_vm._s(_vm.btnTitle))])
                                  ],
                                  1
                                )
                              ],
                              1
                            )
                          ],
                          1
                        )
                      ],
                      1
                    )
                  ],
                  1
                )
              ])
            ]
          )
        ]
      ),
      _vm._v(" "),
      _c(
        "div",
        { staticClass: "container-fluid" },
        [
          _c(
            "v-toolbar",
            { attrs: { flat: "", color: "white" } },
            [
              _c(
                "v-toolbar-title",
                [
                  _c(
                    "v-btn",
                    {
                      attrs: { fab: "", small: "", color: "grey lighten-5" },
                      on: {
                        click: function($event) {
                          return _vm.$router.go(-1)
                        }
                      }
                    },
                    [
                      _c("v-icon", { attrs: { dark: "" } }, [
                        _vm._v("arrow_back")
                      ])
                    ],
                    1
                  ),
                  _vm._v("\n        \n           Equipos de Trabajo    ")
                ],
                1
              ),
              _vm._v(" "),
              _c("v-spacer"),
              _vm._v(" "),
              _c("v-text-field", {
                attrs: {
                  "append-icon": "search",
                  label: "Buscar por nombre o departamento",
                  "single-line": "",
                  "hide-details": ""
                },
                model: {
                  value: _vm.search,
                  callback: function($$v) {
                    _vm.search = $$v
                  },
                  expression: "search"
                }
              }),
              _vm._v("\n             \n      "),
              _c("v-dialog", {
                attrs: { "max-width": "500px" },
                scopedSlots: _vm._u([
                  {
                    key: "activator",
                    fn: function(ref) {
                      var on = ref.on
                      return [
                        _c(
                          "vs-button",
                          {
                            attrs: {
                              color: "primary",
                              type: "gradient",
                              icon: "add"
                            },
                            on: { click: _vm.newTeam }
                          },
                          [_vm._v("Crear nuevo equipo")]
                        )
                      ]
                    }
                  }
                ]),
                model: {
                  value: _vm.dialog,
                  callback: function($$v) {
                    _vm.dialog = $$v
                  },
                  expression: "dialog"
                }
              })
            ],
            1
          ),
          _vm._v(" "),
          _vm.loadingTable
            ? _c("v-progress-linear", {
                attrs: { color: "#ccc", indeterminate: "" },
                scopedSlots: _vm._u(
                  [
                    {
                      key: "progress",
                      fn: function() {
                        return undefined
                      },
                      proxy: true
                    }
                  ],
                  null,
                  false,
                  63074868
                )
              })
            : _vm._e(),
          _vm._v(" "),
          _c("v-data-table", {
            staticClass: "elevation-1",
            attrs: {
              "disable-initial-sort": "",
              headers: _vm.headers,
              loading: _vm.loadingTable,
              items: _vm.teams,
              search: _vm.search
            },
            scopedSlots: _vm._u([
              {
                key: "items",
                fn: function(props) {
                  return [
                    _c("td", [_vm._v(_vm._s(props.item.name))]),
                    _vm._v(" "),
                    _c("td", { staticClass: "text-xs-left" }, [
                      _vm._v(_vm._s(props.item.department))
                    ]),
                    _vm._v(" "),
                    _c(
                      "td",
                      _vm._l(props.item.avatars.avatar, function(dude) {
                        return _c(
                          "v-avatar",
                          { key: dude.id, attrs: { size: "40px" } },
                          [
                            _c("img", {
                              attrs: {
                                src: dude.avatar,
                                alt: dude.email,
                                title: dude.firstName + " " + dude.lastName
                              }
                            })
                          ]
                        )
                      }),
                      1
                    ),
                    _vm._v(" "),
                    _c(
                      "td",
                      { staticClass: "justify-center layout px-0" },
                      [
                        _c(
                          "v-icon",
                          {
                            staticClass: "mr-2",
                            attrs: { small: "" },
                            on: {
                              click: function($event) {
                                return _vm.editTeam(props.item)
                              }
                            }
                          },
                          [_vm._v("edit")]
                        ),
                        _vm._v(" "),
                        _c(
                          "v-icon",
                          {
                            attrs: { small: "" },
                            on: {
                              click: function($event) {
                                return _vm.deleteTeam(props.item.id)
                              }
                            }
                          },
                          [_vm._v("delete")]
                        )
                      ],
                      1
                    )
                  ]
                }
              },
              {
                key: "no-data",
                fn: function() {
                  return [
                    _c(
                      "v-btn",
                      {
                        attrs: { color: "primary" },
                        on: { click: _vm.initialize }
                      },
                      [_vm._v("Reset")]
                    )
                  ]
                },
                proxy: true
              },
              {
                key: "no-results",
                fn: function() {
                  return [
                    _c(
                      "v-alert",
                      {
                        staticStyle: { color: "red" },
                        attrs: { value: true, icon: "warning" }
                      },
                      [
                        _vm._v(
                          'Tu busqueda por  "' +
                            _vm._s(_vm.search) +
                            '" no arrojó resultados.'
                        )
                      ]
                    )
                  ]
                },
                proxy: true
              }
            ])
          })
        ],
        1
      )
    ]
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Business/work-teams-index.vue":
/*!***************************************************************!*\
  !*** ./resources/js/components/Business/work-teams-index.vue ***!
  \***************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./work-teams-index.vue?vue&type=template&id=156450d3& */ "./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3&");
/* harmony import */ var _work_teams_index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./work-teams-index.vue?vue&type=script&lang=js& */ "./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./work-teams-index.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _work_teams_index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__["render"],
  _work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Business/work-teams-index.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js&":
/*!****************************************************************************************!*\
  !*** ./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./work-teams-index.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&":
/*!************************************************************************************************!*\
  !*** ./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css& ***!
  \************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./work-teams-index.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3&":
/*!**********************************************************************************************!*\
  !*** ./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3& ***!
  \**********************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./work-teams-index.vue?vue&type=template&id=156450d3& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/work-teams-index.vue?vue&type=template&id=156450d3&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_work_teams_index_vue_vue_type_template_id_156450d3___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);