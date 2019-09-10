(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[0],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Reportes.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Reportes.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      ideas: {},
      retos: {},
      retosSemana: {},
      usuariosSemana: {},
      comentariosSemana: {},
      votosSemana: {}
    };
  },
  created: function created() {
    var _this = this;

    axios.get('/getData').then(function (response) {
      _this.retosSemana = response.data.sumaSemanal;
      _this.ideas = response.data.ideas;
      _this.retos = response.data.retos;
      _this.usuariosSemana = response.data.usuariosSemana;
      _this.votosSemana = response.data.votosSemana;
      _this.comentariosSemana = response.data.comentariosSemana;
    })["catch"](function (error) {
      console.log(error);
    });
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d&":
/*!***********************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d& ***!
  \***********************************************************************************************************************************************************************************************************/
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
    _c("div", { staticClass: "container-fluid" }, [
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          { staticClass: "col-lg-6 col-sm-12" },
          [
            _c("h4", [_vm._v("Ideas")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("pie-chart", {
              attrs: {
                dataset: { borderWidth: 5 },
                data: _vm.ideas,
                download: true
              }
            })
          ],
          1
        ),
        _vm._v(" "),
        _c(
          "div",
          { staticClass: "col-lg-6 col-sm-12" },
          [
            _c("h4", [_vm._v("Retos")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("pie-chart", {
              attrs: {
                dataset: { borderWidth: 5 },
                data: _vm.retos,
                download: true
              }
            })
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          {
            staticClass: "col-lg-12",
            staticStyle: { "background-color": "white" }
          },
          [
            _c("h4", [_vm._v("Ideas por semana")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("area-chart", {
              attrs: {
                data: _vm.retosSemana,
                download: true,
                library: { backgroundColor: "#fff" }
              }
            })
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          {
            staticClass: "col-12",
            staticStyle: { "background-color": "white" }
          },
          [
            _c("h4", [_vm._v("Ingresos empleados por semana")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("area-chart", {
              attrs: { data: _vm.usuariosSemana, download: true }
            })
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          {
            staticClass: "col-12",
            staticStyle: { "background-color": "white" }
          },
          [
            _c("h4", [_vm._v("Votos por semana")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("area-chart", {
              attrs: { data: _vm.votosSemana, download: true }
            })
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          {
            staticClass: "col-12",
            staticStyle: { "background-color": "white" }
          },
          [
            _c("h4", [_vm._v("Comentarios por semana")]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("area-chart", {
              attrs: { data: _vm.comentariosSemana, download: true }
            })
          ],
          1
        )
      ])
    ])
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Reportes.vue":
/*!**********************************************!*\
  !*** ./resources/js/components/Reportes.vue ***!
  \**********************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Reportes.vue?vue&type=template&id=5cc1b94d& */ "./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d&");
/* harmony import */ var _Reportes_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Reportes.vue?vue&type=script&lang=js& */ "./resources/js/components/Reportes.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _Reportes_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Reportes.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Reportes.vue?vue&type=script&lang=js&":
/*!***********************************************************************!*\
  !*** ./resources/js/components/Reportes.vue?vue&type=script&lang=js& ***!
  \***********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Reportes_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./Reportes.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Reportes.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Reportes_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d&":
/*!*****************************************************************************!*\
  !*** ./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d& ***!
  \*****************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./Reportes.vue?vue&type=template&id=5cc1b94d& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Reportes.vue?vue&type=template&id=5cc1b94d&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Reportes_vue_vue_type_template_id_5cc1b94d___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);