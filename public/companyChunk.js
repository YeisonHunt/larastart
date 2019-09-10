(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["companyChunk"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      logoTemporal: window.baseUrl + "img/plus.svg",
      companyForm: new Form({
        logo: "",
        name: ""
      }),
      userType: ''
    };
  },
  methods: {
    onFilePicked: function onFilePicked(event) {
      var _this = this;

      var files = event.target.files;
      var filename = files[0].name;

      if (filename.lastIndexOf(".") <= 0) {
        return alert("Please add a valid file");
      }

      var fileReader = new FileReader();
      fileReader.addEventListener("load", function () {
        _this.logoTemporal = fileReader.result;
        _this.companyForm.logo = fileReader.result;
      });
      fileReader.readAsDataURL(files[0]);
      this.logoTemporal = files[0]; // file without any changes
      // esta ultima es la que se envia
    },
    updateCompanyInfo: function updateCompanyInfo() {
      var _this2 = this;

      this.$Progress.start();
      this.companyForm.post("/data/updateCompanyInfo").then(function (_ref) {
        var data = _ref.data;

        _this2.$router.push({
          name: "company"
        });

        toastr.success("Excelente!", "Información de empresa actualizada.");

        _this2.companyForm.reset();

        _this2.getCompanyInfo();

        window.location.reload(false);
      })["catch"](function (error) {
        toastr.error("Oops!", "Algo anda mal");
      });
      this.$Progress.finish();
    },
    //end updateCompany
    getCompanyInfo: function getCompanyInfo() {
      var _this3 = this;

      //request to adminController
      axios.get("/data/getCompanyInfo").then(function (response) {
        _this3.companyForm.name = response.data.name;
        _this3.companyForm.logo = response.data.logo;

        if (response.data.logo == undefined) {} else {
          _this3.logoTemporal = response.data.logo;
        }

        _this3.userType = response.data.userType;
        console.log(response.data.name);
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      });
    } // end bringCompanyInfo

  },
  //end methods
  mounted: function mounted() {
    this.getCompanyInfo();
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26&":
/*!*********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26& ***!
  \*********************************************************************************************************************************************************************************************************************/
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
    { staticStyle: { "min-height": "80vh" }, attrs: { id: "todo" } },
    [
      _c(
        "div",
        {
          staticClass: "container",
          staticStyle: { "background-color": "#fff" }
        },
        [
          _vm.userType == "admin"
            ? _c("div", { staticClass: "row" }, [
                _c("div", { staticClass: "col-12" }, [
                  _c(
                    "form",
                    {
                      staticClass: "kt-form",
                      on: {
                        submit: function($event) {
                          $event.preventDefault()
                          return _vm.updateCompanyInfo($event)
                        },
                        keydown: function($event) {
                          return _vm.companyForm.onKeydown($event)
                        }
                      }
                    },
                    [
                      _c("div", { staticClass: "kt-portlet__body" }, [
                        _vm._m(0),
                        _vm._v(" "),
                        _c("div", { staticClass: "row" }, [
                          _c("div", { staticClass: "col-8" }, [
                            _c("div", { staticClass: "form-group" }, [
                              _c("label", [_vm._v("Logo ")]),
                              _vm._v(" "),
                              _c("input", {
                                ref: "contactPhoto",
                                staticClass: "form-control",
                                attrs: {
                                  type: "file",
                                  id: "customFile",
                                  accept: "image/x-png, image/jpeg"
                                },
                                on: { change: _vm.onFilePicked }
                              }),
                              _vm._v(" "),
                              _c(
                                "span",
                                { staticClass: "form-text text-muted" },
                                [
                                  _vm._v(
                                    "El tamaño del logo debe ser menor a 700 Kb."
                                  )
                                ]
                              )
                            ])
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-4" }, [
                            _c(
                              "div",
                              { staticStyle: { "text-align": "center" } },
                              [
                                _c(
                                  "v-avatar",
                                  {
                                    attrs: {
                                      tile: false,
                                      size: 150,
                                      color: "grey lighten-5"
                                    }
                                  },
                                  [
                                    _c("img", {
                                      attrs: {
                                        src: _vm.logoTemporal,
                                        alt: "Company Logo"
                                      }
                                    })
                                  ]
                                )
                              ],
                              1
                            )
                          ])
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "row" }, [
                          _c("div", { staticClass: "col-12" }, [
                            _c("div", { staticClass: "form-group" }, [
                              _c("label", [_vm._v("Nombre de la empresa")]),
                              _vm._v(" "),
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.companyForm.name,
                                    expression: "companyForm.name"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  "aria-describedby": "emailHelp",
                                  placeholder: "e.g., Apple Inc"
                                },
                                domProps: { value: _vm.companyForm.name },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.companyForm,
                                      "name",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ])
                          ])
                        ])
                      ]),
                      _vm._v(" "),
                      _c(
                        "div",
                        {
                          staticClass: "kt-portlet__foot",
                          staticStyle: { "text-align": "center" }
                        },
                        [
                          _c(
                            "div",
                            { staticClass: "kt-form__actions" },
                            [
                              _c(
                                "button",
                                {
                                  staticClass: "btn btn-primary",
                                  attrs: { type: "submit" }
                                },
                                [_vm._v("Guardar")]
                              ),
                              _vm._v(" "),
                              _c(
                                "router-link",
                                {
                                  staticClass: "btn btn-secondary",
                                  attrs: { to: { name: "business" } }
                                },
                                [_vm._v("Ir atrás")]
                              )
                            ],
                            1
                          )
                        ]
                      )
                    ]
                  )
                ])
              ])
            : _c("div", { staticClass: "row" }, [
                _vm._m(1),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c("div", { staticClass: "col-12" }, [
                  _c("div", { staticStyle: { "text-align": "center" } }, [
                    _c("h3", [_vm._v(_vm._s(this.companyForm.name))])
                  ])
                ]),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c("div", { staticClass: "col-12" }, [
                  _c(
                    "div",
                    { staticStyle: { "text-align": "center" } },
                    [
                      _c(
                        "v-avatar",
                        {
                          attrs: {
                            tile: false,
                            size: 150,
                            color: "grey lighten-5"
                          }
                        },
                        [
                          _c("img", {
                            attrs: {
                              src: _vm.logoTemporal,
                              alt: "Company Logo"
                            }
                          })
                        ]
                      )
                    ],
                    1
                  )
                ]),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c("br"),
                _vm._v(" "),
                _c("div", { staticClass: "col-12" }, [
                  _c(
                    "div",
                    {
                      staticStyle: {
                        "text-align": "center",
                        "margin-top": "20px"
                      }
                    },
                    [
                      _c(
                        "router-link",
                        {
                          staticClass: "btn btn-secondary",
                          attrs: { to: { name: "business" } }
                        },
                        [_vm._v("Ir atrás")]
                      )
                    ],
                    1
                  )
                ])
              ])
        ]
      )
    ]
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group form-group-last" }, [
      _c("div", { staticStyle: { "text-align": "center" } }, [
        _c("h3", [_vm._v("Mi empresa")]),
        _vm._v(" "),
        _c("br")
      ]),
      _vm._v(" "),
      _c(
        "div",
        { staticClass: "alert alert-secondary", attrs: { role: "alert" } },
        [
          _c("div", { staticClass: "alert-icon" }, [
            _c("i", { staticClass: "flaticon-suitcase kt-font-brand" })
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "alert-text" }, [
            _vm._v(
              "La información colocada aquí como el logo se verá reflejada en las cuentas de usuarios. "
            ),
            _c("br"),
            _vm._v(" "),
            _c("br"),
            _vm._v(
              "\n                  Nota: sabemos que los logos están generalmente en formato png o svg, pero al mezclarse con el color de fondo muchas veces no se ven. Innova recomienda\n                  utilizar la siguiente herramienta para transformar el formato de su logo a JPG antes de subirlo.\n                  \n                  "
            ),
            _c("br"),
            _vm._v(" "),
            _c(
              "a",
              { attrs: { href: "https://png2jpg.com/", target: "_blank" } },
              [_vm._v("Click aqui :PNG to JPG")]
            )
          ])
        ]
      )
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-12" }, [
      _c("div", { staticStyle: { "text-align": "center" } }, [
        _c("p", [_vm._v("Eres parte de esta genial empresa:")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Business/mycompany.vue":
/*!********************************************************!*\
  !*** ./resources/js/components/Business/mycompany.vue ***!
  \********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./mycompany.vue?vue&type=template&id=827c7b26& */ "./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26&");
/* harmony import */ var _mycompany_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./mycompany.vue?vue&type=script&lang=js& */ "./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _mycompany_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__["render"],
  _mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Business/mycompany.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js&":
/*!*********************************************************************************!*\
  !*** ./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_mycompany_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./mycompany.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/mycompany.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_mycompany_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26& ***!
  \***************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./mycompany.vue?vue&type=template&id=827c7b26& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/mycompany.vue?vue&type=template&id=827c7b26&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_mycompany_vue_vue_type_template_id_827c7b26___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);