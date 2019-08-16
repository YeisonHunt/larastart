(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-Business-retos-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/retos.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/retos.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      key: 'bar',
      value: [{
        name: 'Javascript',
        code: 'js'
      }],
      options: [{
        name: 'Vue.js',
        code: 'vu'
      }, {
        name: 'Javascript',
        code: 'js'
      }, {
        name: 'Open Source',
        code: 'os'
      }],
      asdasd: 'ESTA VISTA YA NO ESSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
    };
  },
  methods: {
    goBusiness: function goBusiness() {
      this.$router.push({
        name: 'business'
      });
    },
    addTag: function addTag(newTag) {
      var tag = {
        name: newTag,
        code: newTag.substring(0, 2) + Math.floor(Math.random() * 10000000)
      };
      this.options.push(tag);
      this.value.push(tag);
    }
  },
  // end methods
  mounted: function mounted() {
    this.getRetos();
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************/
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
  return _c("div", { staticClass: "container-fluid" }, [
    _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-12" }, [
        _c("div", { staticClass: "card" }, [
          _c("div", { staticClass: "card-header" }, [
            _c(
              "button",
              {
                staticClass: "btn btn-light",
                attrs: { type: "button" },
                on: { click: _vm.goBusiness }
              },
              [
                _c(
                  "svg",
                  {
                    staticClass: "kt-svg-icon",
                    staticStyle: { color: "#ccc" },
                    attrs: {
                      xmlns: "http://www.w3.org/2000/svg",
                      "xmlns:xlink": "http://www.w3.org/1999/xlink",
                      width: "24px",
                      height: "24px",
                      viewBox: "0 0 24 24",
                      version: "1.1"
                    }
                  },
                  [
                    _c(
                      "g",
                      {
                        attrs: {
                          stroke: "none",
                          "stroke-width": "1",
                          fill: "none",
                          "fill-rule": "evenodd"
                        }
                      },
                      [
                        _c("polygon", {
                          attrs: { id: "Shape", points: "0 0 24 0 24 24 0 24" }
                        }),
                        _vm._v(" "),
                        _c("path", {
                          attrs: {
                            d:
                              "M6.70710678,15.7071068 C6.31658249,16.0976311 5.68341751,16.0976311 5.29289322,15.7071068 C4.90236893,15.3165825 4.90236893,14.6834175 5.29289322,14.2928932 L11.2928932,8.29289322 C11.6714722,7.91431428 12.2810586,7.90106866 12.6757246,8.26284586 L18.6757246,13.7628459 C19.0828436,14.1360383 19.1103465,14.7686056 18.7371541,15.1757246 C18.3639617,15.5828436 17.7313944,15.6103465 17.3242754,15.2371541 L12.0300757,10.3841378 L6.70710678,15.7071068 Z",
                            id: "Path-94",
                            fill: "#000000",
                            "fill-rule": "nonzero",
                            transform:
                              "translate(12.000003, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-12.000003, -11.999999) "
                          }
                        })
                      ]
                    )
                  ]
                ),
                _vm._v(" Volver ")
              ]
            )
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "card-body" }, [
            _c("h4", [_vm._v("Bienvenido(a) a  creación de retos")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("p", [
              _vm._v(
                "A continuación podrá describir la necesidad o el por qué de este reto para encontrarle una solución \n                    entre los grupos que hayas creado o los miembros de Asakaa Innova.\n                  "
              )
            ]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("form", { attrs: { action: "" } }, [
              _vm._m(0),
              _vm._v(" "),
              _c("br"),
              _vm._v(" "),
              _vm._m(1),
              _vm._v(" "),
              _c("br"),
              _vm._v(" "),
              _c("div", { staticClass: "row" }, [
                _c(
                  "div",
                  { staticClass: "col-12" },
                  [
                    _c("label", { staticClass: "typo__label" }, [
                      _vm._v("Escoger equipos de trabajo")
                    ]),
                    _vm._v(" "),
                    _c("multiselect", {
                      attrs: {
                        "tag-placeholder": "Add this as new tag",
                        placeholder: "Search or add a tag",
                        label: "name",
                        "track-by": "code",
                        options: _vm.options,
                        multiple: true,
                        taggable: true,
                        openDirection: "bottom"
                      },
                      on: { tag: _vm.addTag },
                      model: {
                        value: _vm.value,
                        callback: function($$v) {
                          _vm.value = $$v
                        },
                        expression: "value"
                      }
                    })
                  ],
                  1
                )
              ]),
              _vm._v(" "),
              _c("br"),
              _vm._v(" "),
              _c("br"),
              _vm._v(" "),
              _c("br"),
              _vm._v(" "),
              _vm._m(2)
            ])
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "card-footer text-muted" }, [
            _vm._v(
              "\n                         Crea un reto para estimular la mente de nuestros usuarios.\n                        "
            )
          ])
        ])
      ])
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-lg-6 col-sm-12" }, [
        _c("div", { staticClass: "input-group mb-3" }, [
          _c("div", { staticClass: "input-group-prepend" }, [
            _c(
              "span",
              {
                staticClass: "input-group-text",
                attrs: { id: "basic-addon1" }
              },
              [_vm._v("Título ")]
            )
          ]),
          _vm._v(" "),
          _c("input", {
            staticClass: "form-control",
            attrs: {
              type: "text",
              id: "tituloReto",
              placeholder: "e.g., Mejorar las ventas en centroamérica",
              "aria-label": "Username",
              "aria-describedby": "basic-addon1"
            }
          })
        ])
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "col-lg-6 col-sm-12" }, [
        _c("div", { staticClass: "input-group mb-3" }, [
          _c("div", { staticClass: "input-group-prepend" }, [
            _c(
              "span",
              {
                staticClass: "input-group-text",
                attrs: { id: "basic-addon1" }
              },
              [_vm._v("Imágen alusiva")]
            )
          ]),
          _vm._v(" "),
          _c("input", {
            staticClass: "form-control",
            attrs: {
              type: "file",
              id: "",
              "aria-label": "Username",
              "aria-describedby": "basic-addon1"
            }
          })
        ])
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "col-lg-12 col-sm-12" }, [
        _c("label", { attrs: { for: "textArea" } }, [
          _vm._v("Descripción detallada")
        ]),
        _vm._v(" "),
        _c("textarea", {
          staticClass: "form-control",
          attrs: { name: "", id: "textArea", cols: "20", rows: "5" }
        })
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-12" }, [
        _c("div", { staticClass: "form-group" }, [
          _c("label", [_vm._v("Privacidad ")]),
          _vm._v(" "),
          _c("div", { staticClass: "kt-radio-inline" }, [
            _c("label", { staticClass: "kt-radio" }, [
              _c("input", {
                attrs: { type: "radio", name: "radio2", checked: "" }
              }),
              _vm._v(" Público\n                                    "),
              _c("span")
            ]),
            _vm._v(" "),
            _c("label", { staticClass: "kt-radio" }, [
              _c("input", { attrs: { type: "radio", name: "radio2" } }),
              _vm._v(" Privado\n                                    "),
              _c("span")
            ])
          ]),
          _vm._v(" "),
          _c("span", { staticClass: "form-text text-muted" }, [
            _vm._v(
              "En el modo público, se podrá dirijir a toda la comunidad de Asakaa Innova para buscar una solución.\n\n                                "
            ),
            _c("br"),
            _vm._v(
              "\n                                En el modo privado, podrá escoger los grupos a los cuales quiere dirijir el reto en específico.\n                            "
            )
          ])
        ])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-12" }, [
        _c("button", { staticClass: "btn btn-primary" }, [
          _vm._v("Guardar nuevo reto")
        ])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Business/retos.vue":
/*!****************************************************!*\
  !*** ./resources/js/components/Business/retos.vue ***!
  \****************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./retos.vue?vue&type=template&id=eba4913e&scoped=true& */ "./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true&");
/* harmony import */ var _retos_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./retos.vue?vue&type=script&lang=js& */ "./resources/js/components/Business/retos.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _retos_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "eba4913e",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Business/retos.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Business/retos.vue?vue&type=script&lang=js&":
/*!*****************************************************************************!*\
  !*** ./resources/js/components/Business/retos.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_retos_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./retos.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/retos.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_retos_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true&":
/*!***********************************************************************************************!*\
  !*** ./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true& ***!
  \***********************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./retos.vue?vue&type=template&id=eba4913e&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Business/retos.vue?vue&type=template&id=eba4913e&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_retos_vue_vue_type_template_id_eba4913e_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);