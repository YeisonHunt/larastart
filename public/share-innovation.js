(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["share-innovation"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js&":
/*!***********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    return {
      selected: "first",
      options: [{
        text: "Watch",
        value: "first"
      }, {
        text: "Watch & Edit",
        value: "second"
      }],
      id: this.$route.params.id,
      permissions: {},
      idea: {},
      user: window.user,
      othersPermissions: {},
      listPermissions: {
        pers: []
      },
      baseUrl: window.baseUrl,
      newPer: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        email: "",
        permissions: "watch"
      }),
      ideaForm: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        privacy: ""
      }),
      deletePermision: new Form({
        id_user: "",
        id_idea: this.$route.params.id
      }),
      updatePermision: new Form({
        id_user: "",
        id_idea: this.$route.params.id
      }),
      up: new Form({
        id: "",
        valor: "",
        email: ""
      })
    };
  },
  computed: {
    listaPermisos: function listaPermisos() {
      var _this = this;

      return this.othersPermissions.filter(function (per) {
        if (per.email == _this.user.email) {
          return false;
        } else {
          return true;
        }
      });
    },
    puedoCompartir: function puedoCompartir() {
      if (this.idea.created_by == this.user.id) {
        return true;
      } else {
        return false;
      }
    },
    mobile: function mobile() {
      if (this.$mq == "sm") {
        return true;
      } else {
        return false;
      }
    },
    large: function large() {
      if (this.$mq == "md" || this.$mq == "lg") {
        return true;
      } else {
        return false;
      }
    }
  },
  methods: {
    openModal: function openModal(per) {
      this.up.id = per.permissionId;
      this.up.valor = per.permission_type;
      this.up.email = per.email;
      $("#userCreationModal").modal("show");
    },
    updatePermissionPerId: function updatePermissionPerId() {
      var _this2 = this;

      //this.up.id = permiso.permissionId;
      //this.up.valor= permiso.permission_type;
      this.$Progress.start();
      this.up.post("/updatePermissionPerId").then(function (response) {
        if (response.data.msg == "User not registered on Asakaa.") {
          toastr.error("Oops!", "User not registered on Asakaa yet.");
        } else {
          toastr.success("Keep sharing", "Permission updated successfully!.");
          _this2.up.id = "";
          _this2.up.valor = "";
          $("#userCreationModal").modal("hide");

          _this2.loadIdeaAndPermissions();
        }
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    changePrivacyUser: function changePrivacyUser(idPermiso, idUsuario, pType) {
      //alert(idPermiso);
      if (pType == "view") {
        if ($("#" + idUsuario + "view1").is(":checked")) {
          console.log("Puede ver" + idPermiso);
          this.updatePermissionPerId(idPermiso, "can view");
        } else if ($("#" + idUsuario + "viewedit1").is(":checked")) {
          console.log("puede editar" + idPermiso);
          this.updatePermissionPerId(idPermiso, "can view-edit");
        } else {}
      } else {
        if ($("#" + idUsuario + "view2").is(":checked")) {
          console.log("Puede ver2" + idPermiso);
          this.updatePermissionPerId(idPermiso, "can view");
        } else if ($("#" + idUsuario + "viewedit2").is(":checked")) {
          console.log("puede editar2" + idPermiso);
          this.updatePermissionPerId(idPermiso, "can view-edit");
        } else {}
      }
    },
    addUserPermission: function addUserPermission() {
      var _this3 = this;

      this.$Progress.start();
      this.newPer.post("/addUserPermission").then(function (response) {
        if (response.data.msg == "User not registered on Asakaa.") {
          toastr.error("Oops!", "User not registered on Asakaa yet.");
        } else {
          toastr.success("Keep sharing", "Permission added successfully!.");

          _this3.loadIdeaAndPermissions();
        }
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    updateUserPermission: function updateUserPermission() {
      this.$Progress.start();
      this.newPer.post("/updateUserPermission").then(function (response) {
        toastr.success("Keep sharing", "Permission updated successfully!.");
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    loadIdeaAndPermissions: function loadIdeaAndPermissions() {
      var _this4 = this;

      axios.get("/getInnovation/" + this.id).then(function (response) {
        _this4.idea = response.data.idea;
        _this4.permissions = response.data.permissions;
        _this4.ideaForm.privacy = response.data.idea.privacy;
        _this4.othersPermissions = response.data.othersPermissions; //console.log(response);
      })["catch"](function (error) {
        console.log(error);
      });
    },
    changePrivacy: function changePrivacy() {
      var _this5 = this;

      if (this.idea.privacy == "public") {
        Swal.fire({
          title: "Are you sure?",
          text: "The idea will remain public forever.",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#3085d6",
          cancelButtonColor: "#d33",
          confirmButtonText: "Yes, I wanna share it with the world!"
        }).then(function (result) {
          if (result.value) {
            //send the request
            _this5.ideaForm.privacy = _this5.idea.privacy;

            _this5.ideaForm.post("/updateIdeaPrivacy").then(function (_ref) {
              var data = _ref.data;
              toastr.success("Done!", "The idea has been shared with humanity.");

              _this5.loadIdeaAndPermissions();
            })["catch"](function () {
              toastr.error("Oops!", "Something went wrong.");
            });
          } else {
            _this5.idea.privacy = "me";
          }
        }); //end swal
      } else {}
    },
    deletePermissionsUser: function deletePermissionsUser(idUser) {
      var _this6 = this;

      Swal.fire({
        title: "Are you sure?",
        text: "The ipermissions will be gone.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, Delete permissions."
      }).then(function (result) {
        if (result.value) {
          _this6.deletePermision.id_user = idUser;

          _this6.deletePermision.post("/deletePermissionsUser").then(function (_ref2) {
            var data = _ref2.data;
            toastr.success("Done!", "Permissions deleted.");
            _this6.deletePermision.user_id = "";

            _this6.loadIdeaAndPermissions();
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
          });
        } else {
          _this6.idea.privacy = "me";
        }
      }); //end swal
    }
  },
  // end methods
  mounted: function mounted() {
    this.loadIdeaAndPermissions();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.whiteHover:hover {\r\n  color: white;\r\n  box-shadow: 15px 15px 15px 15px #fff;\r\n  border: 1px solid white !important;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4&":
/*!***************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4& ***!
  \***************************************************************************************************************************************************************************************************************************/
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
  return _c("div", { staticStyle: { "min-height": "80vh" } }, [
    _vm.puedoCompartir
      ? _c(
          "div",
          { class: { "container-fluid": _vm.mobile, container: _vm.large } },
          [
            _c(
              "div",
              {
                staticClass: "modal fade",
                attrs: {
                  id: "userCreationModal",
                  tabindex: "-1",
                  role: "dialog",
                  "aria-labelledby": "exampleModalLabel",
                  "aria-hidden": "true"
                }
              },
              [
                _c(
                  "div",
                  { staticClass: "modal-dialog", attrs: { role: "document" } },
                  [
                    _c("div", { staticClass: "modal-content" }, [
                      _vm._m(0),
                      _vm._v(" "),
                      _c("div", { staticClass: "modal-body" }, [
                        _c(
                          "form",
                          {
                            staticClass: "kt-form",
                            on: {
                              submit: function($event) {
                                $event.preventDefault()
                                return _vm.updatePermissionPerId($event)
                              },
                              keydown: function($event) {
                                return _vm.up.onKeydown($event)
                              }
                            }
                          },
                          [
                            _c("div", { staticClass: "kt-portlet__body" }, [
                              _vm._m(1),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", [_vm._v("Email")]),
                                  _vm._v(" "),
                                  _c("input", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.up.email,
                                        expression: "up.email"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    class: {
                                      "is-invalid": _vm.up.errors.has("email")
                                    },
                                    attrs: {
                                      id: "priva",
                                      type: "text",
                                      name: "priva",
                                      "aria-describedby": "email",
                                      disabled: ""
                                    },
                                    domProps: { value: _vm.up.email },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.up,
                                          "email",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: { form: _vm.up, field: "email" }
                                  })
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _c("div", { staticClass: "kt-radio-inline" }, [
                                  _c("label", { staticClass: "kt-radio" }, [
                                    _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.up.valor,
                                          expression: "up.valor"
                                        }
                                      ],
                                      attrs: {
                                        type: "radio",
                                        value: "can view",
                                        name: "privacy"
                                      },
                                      domProps: {
                                        checked: _vm.up.valor == "can view",
                                        checked: _vm._q(
                                          _vm.up.valor,
                                          "can view"
                                        )
                                      },
                                      on: {
                                        change: [
                                          function($event) {
                                            return _vm.$set(
                                              _vm.up,
                                              "valor",
                                              "can view"
                                            )
                                          },
                                          _vm.changePrivacy
                                        ]
                                      }
                                    }),
                                    _vm._v(" Watch\n                      "),
                                    _c("span")
                                  ]),
                                  _vm._v(" "),
                                  _c("label", { staticClass: "kt-radio" }, [
                                    _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.up.valor,
                                          expression: "up.valor"
                                        }
                                      ],
                                      attrs: {
                                        type: "radio",
                                        value: "can view-edit",
                                        name: "privacy"
                                      },
                                      domProps: {
                                        checked: _vm.up.valor == "can view",
                                        checked: _vm._q(
                                          _vm.up.valor,
                                          "can view-edit"
                                        )
                                      },
                                      on: {
                                        change: [
                                          function($event) {
                                            return _vm.$set(
                                              _vm.up,
                                              "valor",
                                              "can view-edit"
                                            )
                                          },
                                          _vm.changePrivacy
                                        ]
                                      }
                                    }),
                                    _vm._v(
                                      " Watch & Edit\n                      "
                                    ),
                                    _c("span")
                                  ])
                                ])
                              ])
                            ]),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "kt-portlet__foot float-right" },
                              [
                                _c("div", { staticClass: "kt-form__actions" }, [
                                  _c(
                                    "button",
                                    {
                                      staticClass: "btn btn-primary",
                                      attrs: {
                                        type: "submit",
                                        disabled: _vm.up.busy,
                                        id: "modalBtn"
                                      }
                                    },
                                    [_vm._v("Update Permissions")]
                                  ),
                                  _vm._v(" "),
                                  _c(
                                    "button",
                                    {
                                      staticClass: "btn btn-secondary",
                                      attrs: {
                                        type: "reset",
                                        "data-dismiss": "modal"
                                      }
                                    },
                                    [_vm._v("Cancel")]
                                  )
                                ])
                              ]
                            )
                          ]
                        )
                      ])
                    ])
                  ]
                )
              ]
            ),
            _vm._v(" "),
            _c("div", { staticClass: "row" }, [
              _c("div", { staticClass: "col-lg-12 col-md-12 col-sm-12" }, [
                _c("div", { staticClass: "kt-portlet" }, [
                  _c("div", { staticClass: "kt-portlet__head" }, [
                    _c("div", { staticClass: "kt-portlet__head-label" }, [
                      _c(
                        "button",
                        {
                          staticClass:
                            "btn btn-light btn-elevate-hover btn-pill",
                          on: {
                            click: function($event) {
                              return _vm.$router.go(-1)
                            }
                          }
                        },
                        [
                          _c("i", { staticClass: "fa fa-arrow-left" }),
                          _vm._v(" Go back\n              ")
                        ]
                      ),
                      _vm._v("    \n              "),
                      _vm._m(2)
                    ])
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "kt-portlet__body" }, [
                    _c("form", { staticClass: "kt-form" }, [
                      _c("div", { staticClass: "form-group" }, [
                        _c("label", [
                          _vm._v(
                            "\n                  Idea title:\n                  "
                          ),
                          _c("b", [_vm._v(_vm._s(_vm.idea.title))])
                        ]),
                        _vm._v(" "),
                        _c("br"),
                        _vm._v("Current privacy\n                "),
                        _c("hr"),
                        _vm._v(" "),
                        _c("div", { staticClass: "kt-radio-inline" }, [
                          _c(
                            "label",
                            {
                              staticClass: "kt-radio",
                              class: {
                                "kt-radio--disabled":
                                  _vm.idea.privacy == "public"
                              }
                            },
                            [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.idea.privacy,
                                    expression: "idea.privacy"
                                  }
                                ],
                                attrs: {
                                  type: "radio",
                                  value: "me",
                                  name: "privacy",
                                  disabled: _vm.idea.privacy == "public"
                                },
                                domProps: {
                                  checked: _vm._q(_vm.idea.privacy, "me")
                                },
                                on: {
                                  change: [
                                    function($event) {
                                      return _vm.$set(_vm.idea, "privacy", "me")
                                    },
                                    _vm.changePrivacy
                                  ]
                                }
                              }),
                              _vm._v(" Just for me\n                    "),
                              _c("span")
                            ]
                          ),
                          _vm._v(" "),
                          _c(
                            "label",
                            {
                              staticClass:
                                "kt-radio kt-radio--bold kt-radio--brand"
                            },
                            [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.idea.privacy,
                                    expression: "idea.privacy"
                                  }
                                ],
                                attrs: {
                                  type: "radio",
                                  value: "public",
                                  name: "privacy"
                                },
                                domProps: {
                                  checked: _vm._q(_vm.idea.privacy, "public")
                                },
                                on: {
                                  change: [
                                    function($event) {
                                      return _vm.$set(
                                        _vm.idea,
                                        "privacy",
                                        "public"
                                      )
                                    },
                                    _vm.changePrivacy
                                  ]
                                }
                              }),
                              _vm._v(" Public\n                    "),
                              _c("span")
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _vm._m(3)
                      ])
                    ]),
                    _vm._v(" "),
                    _c(
                      "form",
                      {
                        staticClass: "kt-form",
                        on: {
                          submit: function($event) {
                            $event.preventDefault()
                            return _vm.addUserPermission()
                          },
                          keydown: function($event) {
                            return _vm.newPer.onKeydown($event)
                          }
                        }
                      },
                      [
                        _vm._m(4),
                        _vm._v(" "),
                        _c("div", { staticClass: "row" }, [
                          _c(
                            "div",
                            { staticClass: "col-lg-5 col-md-5 col-sm-12" },
                            [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("e-mail")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.newPer.email,
                                      expression: "newPer.email"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "email",
                                    "aria-describedby": "emailHelp",
                                    placeholder: "collaborator@mail.com",
                                    required: ""
                                  },
                                  domProps: { value: _vm.newPer.email },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.newPer,
                                        "email",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ])
                            ]
                          ),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "col-lg-5 col-md-5 col-sm-12" },
                            [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Permissions")]),
                                _vm._v(" "),
                                _c(
                                  "div",
                                  { staticClass: "kt-radio-inline mt-2" },
                                  [
                                    _c("label", { staticClass: "kt-radio" }, [
                                      _c("input", {
                                        directives: [
                                          {
                                            name: "model",
                                            rawName: "v-model",
                                            value: _vm.newPer.permissions,
                                            expression: "newPer.permissions"
                                          }
                                        ],
                                        attrs: {
                                          type: "radio",
                                          name: "privacy",
                                          value: "watch"
                                        },
                                        domProps: {
                                          checked: _vm._q(
                                            _vm.newPer.permissions,
                                            "watch"
                                          )
                                        },
                                        on: {
                                          change: function($event) {
                                            return _vm.$set(
                                              _vm.newPer,
                                              "permissions",
                                              "watch"
                                            )
                                          }
                                        }
                                      }),
                                      _vm._v(
                                        " Watch\n                        "
                                      ),
                                      _c("span")
                                    ]),
                                    _vm._v(" "),
                                    _c("label", { staticClass: "kt-radio" }, [
                                      _c("input", {
                                        directives: [
                                          {
                                            name: "model",
                                            rawName: "v-model",
                                            value: _vm.newPer.permissions,
                                            expression: "newPer.permissions"
                                          }
                                        ],
                                        attrs: {
                                          type: "radio",
                                          name: "privacy",
                                          value: "watch-edit"
                                        },
                                        domProps: {
                                          checked: _vm._q(
                                            _vm.newPer.permissions,
                                            "watch-edit"
                                          )
                                        },
                                        on: {
                                          change: function($event) {
                                            return _vm.$set(
                                              _vm.newPer,
                                              "permissions",
                                              "watch-edit"
                                            )
                                          }
                                        }
                                      }),
                                      _vm._v(
                                        " Watch & Edit\n                        "
                                      ),
                                      _c("span")
                                    ])
                                  ]
                                )
                              ])
                            ]
                          ),
                          _vm._v(" "),
                          _vm._m(5)
                        ])
                      ]
                    ),
                    _vm._v(" "),
                    _c("hr"),
                    _vm._v(" "),
                    _vm.othersPermissions.length > 0
                      ? _c(
                          "table",
                          {
                            staticClass: "table table-hover table-dark",
                            staticStyle: { "table-layout": "fixed" }
                          },
                          [
                            _vm._m(6),
                            _vm._v(" "),
                            _c(
                              "tbody",
                              _vm._l(_vm.listaPermisos, function(per, key) {
                                return _c(
                                  "tr",
                                  { key: _vm.othersPermissions.id },
                                  [
                                    _c("td", [_vm._v(_vm._s(per.email))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      per.permission_type == "can view"
                                        ? _c(
                                            "div",
                                            {
                                              staticClass:
                                                "kt-radio-inline mt-2"
                                            },
                                            [
                                              _vm._m(7, true),
                                              _vm._v(" "),
                                              _vm._m(8, true)
                                            ]
                                          )
                                        : _c(
                                            "div",
                                            {
                                              staticClass:
                                                "kt-radio-inline mt-2"
                                            },
                                            [
                                              _c(
                                                "label",
                                                {
                                                  staticClass:
                                                    "kt-radio kt-radio--disabled"
                                                },
                                                [
                                                  _c("input", {
                                                    attrs: {
                                                      type: "radio",
                                                      disabled: "",
                                                      name: "privi" + per.id
                                                    }
                                                  }),
                                                  _vm._v(
                                                    " Watch\n                        "
                                                  ),
                                                  _c("span")
                                                ]
                                              ),
                                              _vm._v(" "),
                                              _c(
                                                "label",
                                                {
                                                  staticClass:
                                                    "kt-radio kt-radio--disabled"
                                                },
                                                [
                                                  _c("input", {
                                                    attrs: {
                                                      type: "radio",
                                                      checked: "",
                                                      disabled: "",
                                                      name: "privi" + per.id
                                                    }
                                                  }),
                                                  _vm._v(
                                                    " Watch & Edit\n                        "
                                                  ),
                                                  _c("span")
                                                ]
                                              )
                                            ]
                                          )
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _c(
                                        "a",
                                        {
                                          attrs: {
                                            href: "javascript:void(0);"
                                          },
                                          on: {
                                            click: function($event) {
                                              return _vm.openModal(per)
                                            }
                                          }
                                        },
                                        [_vm._m(9, true)]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "a",
                                        {
                                          attrs: {
                                            href: "javascript:void(0);"
                                          },
                                          on: {
                                            click: function($event) {
                                              return _vm.deletePermissionsUser(
                                                per.id
                                              )
                                            }
                                          }
                                        },
                                        [_vm._m(10, true)]
                                      )
                                    ])
                                  ]
                                )
                              }),
                              0
                            )
                          ]
                        )
                      : _vm._e()
                  ])
                ])
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "col-lg-6 col-md-6 col-sm-12" })
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "row" })
          ]
        )
      : _c("div", { staticClass: "row" }, [
          _c("div", { staticClass: "col-4" }),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "col-4" },
            [
              _c(
                "router-link",
                {
                  staticClass: "btn btn-primary",
                  attrs: { to: "/innovations" }
                },
                [_vm._v("Go back to innovations")]
              )
            ],
            1
          ),
          _vm._v(" "),
          _c("div", { staticClass: "col-4" }),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "col-12 mt-5" },
            [
              _c("center", [
                _c(
                  "h4",
                  {
                    staticStyle: {
                      "margin-left": "auto",
                      "margin-right": "auto",
                      display: "block",
                      color: "white"
                    }
                  },
                  [
                    _vm._v(
                      "Sorry, it seems you don't have permission to edit this idea."
                    )
                  ]
                )
              ]),
              _vm._v(" "),
              _c("img", {
                staticClass: "mt-5 fadeImg",
                staticStyle: { "text-align": "center", "margin-left": "10%" },
                attrs: {
                  height: "80%",
                  width: "80%",
                  src: _vm.baseUrl + "img/forbidden.svg",
                  alt: ""
                }
              })
            ],
            1
          )
        ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "modal-header" }, [
      _c("h5", { staticClass: "modal-title", attrs: { id: "modalTitle" } }, [
        _vm._v("Editing user permissions!")
      ]),
      _vm._v(" "),
      _c("button", {
        staticClass: "close",
        attrs: {
          type: "button",
          id: "closeBtnModal",
          "data-dismiss": "modal",
          "aria-label": "Close"
        }
      })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group form-group-last" }, [
      _c(
        "div",
        { staticClass: "alert alert-secondary", attrs: { role: "alert" } },
        [
          _c("div", { staticClass: "alert-icon" }, [
            _c("i", {
              staticClass: "flaticon-share kt-font-brand",
              attrs: { id: "iconBrand" }
            })
          ]),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "alert-text", attrs: { id: "modalSubtitle" } },
            [_vm._v("Share an idea could help her becomes a reality.")]
          )
        ]
      )
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("h3", { staticClass: "kt-portlet__head-title" }, [
      _vm._v("\n                Innovation Privacy\n                "),
      _c("br")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("span", { staticClass: "form-text text-muted" }, [
      _vm._v(
        "\n                  Sharing is the first step in making an idea come true.\n                  "
      ),
      _c("br"),
      _vm._v("Note: Make an idea public isn't reversible.\n                ")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group" }, [
      _c("label", [_vm._v("Collaborators")]),
      _vm._v(" "),
      _c("span", { staticClass: "form-text text-muted" }, [
        _vm._v("Adding people helps to validate your idea.")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-lg-2 col-md-2 col-sm-12" }, [
      _c(
        "button",
        {
          staticClass:
            "mdl-button mdl-js-button mdl-button--fab mt-3 mdl-js-ripple-effect",
          staticStyle: { "padding-top": "20px" },
          attrs: { type: "submit" }
        },
        [_c("i", { staticClass: "material-icons" }, [_vm._v("add")])]
      )
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("E-mail")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Permissions")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Actions")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("label", { staticClass: "kt-radio kt-radio--disabled" }, [
      _c("input", {
        attrs: { type: "radio", checked: "", disabled: "", name: "privi" }
      }),
      _vm._v(" Watch\n                        "),
      _c("span")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("label", { staticClass: "kt-radio kt-radio--disabled" }, [
      _c("input", { attrs: { type: "radio", disabled: "", name: "privi" } }),
      _vm._v(" Watch & Edit\n                        "),
      _c("span")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("i", { staticClass: "flaticon2-settings bigIcons hoverWhite" }, [
      _c("span")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("i", { staticClass: "flaticon-delete bigIcons hoverWhite" }, [
      _c("span")
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/ShareInnovationComponent.vue":
/*!**************************************************************!*\
  !*** ./resources/js/components/ShareInnovationComponent.vue ***!
  \**************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ShareInnovationComponent.vue?vue&type=template&id=525c39a4& */ "./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4&");
/* harmony import */ var _ShareInnovationComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ShareInnovationComponent.vue?vue&type=script&lang=js& */ "./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ShareInnovationComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__["render"],
  _ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/ShareInnovationComponent.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./ShareInnovationComponent.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&":
/*!***********************************************************************************************!*\
  !*** ./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& ***!
  \***********************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./ShareInnovationComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4&":
/*!*********************************************************************************************!*\
  !*** ./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4& ***!
  \*********************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./ShareInnovationComponent.vue?vue&type=template&id=525c39a4& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ShareInnovationComponent.vue?vue&type=template&id=525c39a4&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ShareInnovationComponent_vue_vue_type_template_id_525c39a4___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);