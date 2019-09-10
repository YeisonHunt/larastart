(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["categoriesChunk"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Categories.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Categories.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    var _editedItem, _defaultItem;

    return {
      form: new Form({
        name: '',
        id: ''
      }),
      modalTitle: 'Nueva categoría',
      btnTitle: 'Guardar',
      focus: true,
      dialog: false,
      headers: [{
        text: '#',
        align: 'left',
        sortable: true,
        value: 'id'
      }, {
        text: 'Nombre',
        value: 'name',
        sortable: true
      }, {
        text: 'Acciones',
        value: 'name',
        sortable: false
      }],
      desserts: [],
      categories: [],
      editedIndex: -1,
      editedItem: (_editedItem = {
        name: ''
      }, _defineProperty(_editedItem, "name", 0), _defineProperty(_editedItem, "fat", 0), _defineProperty(_editedItem, "carbs", 0), _defineProperty(_editedItem, "protein", 0), _editedItem),
      defaultItem: (_defaultItem = {
        name: ''
      }, _defineProperty(_defaultItem, "name", 0), _defineProperty(_defaultItem, "fat", 0), _defineProperty(_defaultItem, "carbs", 0), _defineProperty(_defaultItem, "protein", 0), _defaultItem)
    };
  },
  computed: {
    formTitle: function formTitle() {
      return this.editedIndex === -1 ? 'New Item' : 'Edit Item';
    }
  },
  methods: {
    showCategoryModal: function showCategoryModal() {
      $("#categoryModal").modal('show');
      this.btnTitle = 'Guardar';
      this.modalTitle = 'Nueva categoría'; //document.getElementById('categoryInput').dbclick();
    },
    initialize: function initialize() {},
    editItem: function editItem(item) {
      $('#categoryModal').modal('show');
      this.modalTitle = 'Editando categoría';
      this.btnTitle = 'Actualizar';
      this.form.name = item.name;
      this.form.id = item.id;
    },
    deleteItem: function deleteItem(item) {
      var _this = this;

      Swal.fire({
        title: "Estás seguro(a)?",
        text: "No se puede deshacer esta acción.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, borrar categoría."
      }).then(function (result) {
        if (result.value) {
          //send the request
          _this.form.id = item.id;

          _this.form.post("/deleteCategory/" + item.id).then(function (response) {
            toastr.success("Listo", "Categoría borrada.");
            _this.categories = response.data.categories;
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
          });
        }
      });
    },
    close: function close() {
      $('#categoryModal').modal('hide');
    },
    save: function save() {
      var _this2 = this;

      this.$Progress.start();
      this.form.name = this.form.name.charAt(0).toUpperCase() + this.form.name.slice(1);
      this.form.post("/saveCategory").then(function (response) {
        $("#closeBtnModal").click();
        $(".modal-backdrop").remove();
        toastr.success("Genial", "Nueva categoría creada.");
        _this2.categories = response.data.categories;
        _this2.form.name = '';
        $('#categoryModal').modal('hide');
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");
      });
      this.$Progress.finish();
    },
    loadCategories: function loadCategories() {
      var _this3 = this;

      this.$Progress.start();
      this.form.post("/getCategories").then(function (response) {
        _this3.categories = response.data.categories;
      })["catch"](function (error) {
        console.log(error);
      });
      this.$Progress.finish();
    }
  },
  mounted: function mounted() {
    this.loadCategories();
    console.log('asdasdadsdas');
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Categories.vue?vue&type=template&id=8ceef672&":
/*!*************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Categories.vue?vue&type=template&id=8ceef672& ***!
  \*************************************************************************************************************************************************************************************************************/
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
    { staticStyle: { "min-height": "80vh" } },
    [
      _c(
        "div",
        {
          staticClass: "modal fade",
          attrs: {
            id: "categoryModal",
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
                _c("div", { staticClass: "modal-header" }, [
                  _c(
                    "h5",
                    {
                      staticClass: "modal-title",
                      attrs: { id: "exampleModalLabel" }
                    },
                    [_vm._v(_vm._s(_vm.modalTitle))]
                  ),
                  _vm._v(" "),
                  _vm._m(0)
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "modal-body" }, [
                  _c("div", { staticClass: "container" }, [
                    _c("div", { staticClass: "row" }, [
                      _c(
                        "div",
                        { staticClass: "col-12" },
                        [
                          _c("v-card", [
                            _c(
                              "form",
                              {
                                on: {
                                  submit: function($event) {
                                    $event.preventDefault()
                                    return _vm.save($event)
                                  },
                                  keydown: function($event) {
                                    return _vm.form.onKeydown($event)
                                  }
                                }
                              },
                              [
                                _c(
                                  "v-card-text",
                                  [
                                    _c("v-text-field", {
                                      attrs: {
                                        counter: "",
                                        maxlength: "20",
                                        title: "4 carácteres mínimo",
                                        pattern: ".{4,}",
                                        id: "categoryInput",
                                        label: "Nombre de categoría",
                                        required: ""
                                      },
                                      model: {
                                        value: _vm.form.name,
                                        callback: function($$v) {
                                          _vm.$set(_vm.form, "name", $$v)
                                        },
                                        expression: "form.name"
                                      }
                                    })
                                  ],
                                  1
                                ),
                                _vm._v(" "),
                                _c(
                                  "v-card-actions",
                                  [
                                    _c("v-spacer"),
                                    _vm._v(" "),
                                    _c(
                                      "v-btn",
                                      {
                                        attrs: {
                                          color: "blue darken-1",
                                          flat: ""
                                        },
                                        on: { click: _vm.close }
                                      },
                                      [_vm._v("Cancelar")]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "v-btn",
                                      {
                                        attrs: {
                                          color: "blue darken-1",
                                          dark: "",
                                          type: "submit",
                                          disabled: _vm.form.busy
                                        }
                                      },
                                      [_vm._v(_vm._s(_vm.btnTitle))]
                                    )
                                  ],
                                  1
                                )
                              ],
                              1
                            )
                          ])
                        ],
                        1
                      )
                    ])
                  ])
                ])
              ])
            ]
          )
        ]
      ),
      _vm._v(" "),
      _c(
        "v-toolbar",
        { attrs: { flat: "", color: "white" } },
        [
          _c("v-toolbar-title", [_vm._v("Categorías Personalizadas")]),
          _vm._v(" "),
          _c("v-spacer"),
          _vm._v(" "),
          _c(
            "v-btn",
            {
              staticClass: "mb-2",
              attrs: { color: "orange darken-1", dark: "" },
              on: { click: _vm.showCategoryModal }
            },
            [_vm._v("Nueva categoría")]
          )
        ],
        1
      ),
      _vm._v(" "),
      _c("v-data-table", {
        staticClass: "elevation-1",
        attrs: { headers: _vm.headers, items: _vm.categories },
        scopedSlots: _vm._u([
          {
            key: "items",
            fn: function(props) {
              return [
                _c("td", [_vm._v(_vm._s(props.item.id))]),
                _vm._v(" "),
                _c("td", { staticClass: "text-xs-left" }, [
                  _vm._v(_vm._s(props.item.name))
                ]),
                _vm._v(" "),
                _c(
                  "td",
                  { staticClass: "text-xs-left" },
                  [
                    _c(
                      "v-icon",
                      {
                        staticClass: "mr-2",
                        attrs: { small: "" },
                        on: {
                          click: function($event) {
                            return _vm.editItem(props.item)
                          }
                        }
                      },
                      [_vm._v("\n        edit\n      ")]
                    ),
                    _vm._v(" "),
                    _c(
                      "v-icon",
                      {
                        attrs: { small: "" },
                        on: {
                          click: function($event) {
                            return _vm.deleteItem(props.item)
                          }
                        }
                      },
                      [_vm._v("\n        delete\n      ")]
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
          }
        ])
      })
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "button",
      {
        staticClass: "close",
        attrs: {
          type: "button",
          "data-dismiss": "modal",
          "aria-label": "Close"
        }
      },
      [_c("span", { attrs: { "aria-hidden": "true" } }, [_vm._v("×")])]
    )
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Categories.vue":
/*!************************************************!*\
  !*** ./resources/js/components/Categories.vue ***!
  \************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Categories.vue?vue&type=template&id=8ceef672& */ "./resources/js/components/Categories.vue?vue&type=template&id=8ceef672&");
/* harmony import */ var _Categories_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Categories.vue?vue&type=script&lang=js& */ "./resources/js/components/Categories.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _Categories_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Categories.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Categories.vue?vue&type=script&lang=js&":
/*!*************************************************************************!*\
  !*** ./resources/js/components/Categories.vue?vue&type=script&lang=js& ***!
  \*************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Categories_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./Categories.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Categories.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Categories_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Categories.vue?vue&type=template&id=8ceef672&":
/*!*******************************************************************************!*\
  !*** ./resources/js/components/Categories.vue?vue&type=template&id=8ceef672& ***!
  \*******************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./Categories.vue?vue&type=template&id=8ceef672& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Categories.vue?vue&type=template&id=8ceef672&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Categories_vue_vue_type_template_id_8ceef672___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);