(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-landing3-products-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/products.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/products.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  methods: {
    reserve: function reserve() {
      window.location.href = "https://asakaa.com";
    }
  },
  mounted: function mounted() {
    document.getElementById('home').style.display = "none";
    document.getElementById("inicioLink").classList.remove("active");
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248&":
/*!********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248& ***!
  \********************************************************************************************************************************************************************************************************************/
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
    { staticClass: "hole" },
    [
      _c(
        "v-app",
        [
          _c(
            "v-container",
            { attrs: { fluid: "" } },
            [
              _c(
                "v-layout",
                { attrs: { row: "" } },
                [
                  _c(
                    "v-flex",
                    { attrs: { lg4: "", sm12: "" } },
                    [
                      _c(
                        "v-card",
                        {
                          staticClass: "mx-auto my-12",
                          attrs: {
                            hover: "",
                            ripple: "",
                            loading: _vm.loading,
                            "max-width": "374"
                          }
                        },
                        [
                          _c("v-img", {
                            attrs: {
                              height: "250",
                              src:
                                "https://asakaa.com/newDesignFour/landing/ill.svg"
                            }
                          }),
                          _vm._v(" "),
                          _c("v-card-title", [_vm._v("Asakaa.com")]),
                          _vm._v(" "),
                          _c(
                            "v-card-text",
                            [
                              _c(
                                "v-layout",
                                { attrs: { "align-center": "" } },
                                [
                                  _c("v-rating", {
                                    attrs: {
                                      value: 4.5,
                                      color: "amber",
                                      "half-increments": "",
                                      dense: "",
                                      size: "14",
                                      readonly: ""
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c(
                                    "div",
                                    { staticClass: "grey--text ml-4" },
                                    [_vm._v("4.5 (413)")]
                                  )
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "my-4 subtitle-1 black--text" },
                                [
                                  _vm._v(
                                    "\n                                $ • Gratis \n                            "
                                  )
                                ]
                              ),
                              _vm._v(" "),
                              _c("div", [
                                _vm._v(
                                  "Plataforma para gestión de proyectos  especializada en productividad y organización de tareas."
                                )
                              ])
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c("v-divider", { staticClass: "mx-4" }),
                          _vm._v(" "),
                          _c(
                            "v-card-text",
                            [
                              _c(
                                "div",
                                { staticClass: "title text--primary" },
                                [_vm._v("Funcionalidades")]
                              ),
                              _vm._v(" "),
                              _c(
                                "v-chip-group",
                                {
                                  attrs: {
                                    "active-class":
                                      "deep-purple accent-4 white--text",
                                    column: ""
                                  },
                                  model: {
                                    value: _vm.selection,
                                    callback: function($$v) {
                                      _vm.selection = $$v
                                    },
                                    expression: "selection"
                                  }
                                },
                                [
                                  _c("v-chip", [_vm._v("Gantt")]),
                                  _vm._v(" "),
                                  _c("v-chip", [_vm._v("Kanban")]),
                                  _vm._v(" "),
                                  _c("v-chip", [_vm._v("Gestión de recursos")]),
                                  _vm._v(" "),
                                  _c("v-chip", [
                                    _vm._v("Informes de productividad")
                                  ])
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
                                  attrs: {
                                    color: "deep-purple accent-4",
                                    text: ""
                                  },
                                  on: { click: _vm.reserve }
                                },
                                [
                                  _vm._v(
                                    "\n                                Visitar \n                            "
                                  )
                                ]
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
            ],
            1
          )
        ],
        1
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/landing3/products.vue":
/*!*******************************************************!*\
  !*** ./resources/js/components/landing3/products.vue ***!
  \*******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./products.vue?vue&type=template&id=37dac248& */ "./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248&");
/* harmony import */ var _products_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./products.vue?vue&type=script&lang=js& */ "./resources/js/components/landing3/products.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _products_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__["render"],
  _products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/landing3/products.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/landing3/products.vue?vue&type=script&lang=js&":
/*!********************************************************************************!*\
  !*** ./resources/js/components/landing3/products.vue?vue&type=script&lang=js& ***!
  \********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_products_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./products.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/products.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_products_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248&":
/*!**************************************************************************************!*\
  !*** ./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248& ***!
  \**************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./products.vue?vue&type=template&id=37dac248& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/products.vue?vue&type=template&id=37dac248&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_products_vue_vue_type_template_id_37dac248___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);