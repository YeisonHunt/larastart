(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-ProjectComponent-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      editMode: false,
      ideas: {},
      baseUrl: window.baseUrl,
      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: ""
      })
    };
  },
  methods: {
    modalEditUser: function modalEditUser(idea) {
      this.form.ideatxt = idea.ideatxt;
      this.form.bugorfeaturetxt = idea.bugorfeaturetxt;
      this.form.id = idea.id;
      this.editMode = true;
      $("#modalTitle").text("Edit idea");
      $("#modalSubtitle").text("This VueJS component edits an awesome user idea a flash!");
      $("#modalBtn").text("Update idea");
      $("#iconBrand").attr("class", "flaticon-edit kt-font-brand");
      $("#userCreationModal").modal("show");
      $("#ideatxt").focus();
    },
    modalCreateUser: function modalCreateUser() {
      this.form.reset();
      this.editMode = false;
      $("#modalTitle").text("New idea");
      $("#modalSubtitle").text("This VueJS component creates an awesome user idea a flash!");
      $("#modalBtn").text("Save idea");
      $("#iconBrand").attr("class", "flaticon-add-circular-button kt-font-brand");
      $("#userCreationModal").modal("show");
      $("#ideatxt").focus();
    },
    editIdea: function editIdea() {
      var _this = this;

      console.log("ID" + this.form.id);
      this.$Progress.start(); // Submit the form via a POST request

      this.form.put("/editIdea/" + this.form.id).then(function (_ref) {
        var data = _ref.data;

        _this.loadUsers(); //form.ideatxt=''
        //form.bugorfeaturetxt=''


        toastr.success("Awesome!", "Idea has been evolved.");
        $("#closeBtnModal").click();
        $(".modal-backdrop").remove();
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");

        _this.$Progress.fail();
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish(); // Fire.$emit('AfterCreate');
    },
    deleteIdea: function deleteIdea(id) {
      var _this2 = this;

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
      }).then(function (result) {
        if (result.value) {
          //send the request
          _this2.form["delete"]("/deleteIdea/" + id).then(function (_ref2) {
            var data = _ref2.data;
            toastr.success("Done!", "The idea has been deleted.");

            _this2.loadUsers();
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
          });
        }
      });
    },
    createUser: function createUser() {
      var _this3 = this;

      this.$Progress.start(); // Submit the form via a POST request

      this.form.post("/saveIdea").then(function (_ref3) {
        var data = _ref3.data;

        _this3.loadUsers();

        $("#closeBtnModal").click();
        $(".modal-backdrop").remove();
        toastr.success("Awesome!", "New idea has appeared."); //form.ideatxt=''
        //form.bugorfeaturetxt=''
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
      Fire.$emit("AfterCreate");
    },
    testFunction: function testFunction() {
      alert("Emitiendo evento");
    },
    loadUsers: function loadUsers() {
      var _this4 = this;

      // podemos usar this.form.get but we are gonna use axios
      axios.get("/ideas").then(function (_ref4) {
        var data = _ref4.data;
        return _this4.ideas = data.data;
      });
      Fire.$on("AfterCreate", function () {});
    }
  },
  mounted: function mounted() {
    console.log("Users component mounted");
    this.loadUsers();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.toast-title {\r\n  color: #fff !important;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader??ref--6-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--6-2!../../../node_modules/vue-loader/lib??vue-loader-options!./ProjectComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f&":
/*!*******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f& ***!
  \*******************************************************************************************************************************************************************************************************************/
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
    _c("div", { staticClass: "row" }, [
      _c("h4", [_vm._v("Working on it...")]),
      _vm._v(" "),
      _c("img", {
        staticStyle: {
          width: "auto",
          height: "auto",
          "max-width": "100%",
          "max-height": "80vh"
        },
        attrs: { src: _vm.baseUrl + "img/empty.svg", alt: "" }
      })
    ]),
    _vm._v(" "),
     false
      ? undefined
      : _vm._e()
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "modal-header" }, [
      _c("h5", { staticClass: "modal-title", attrs: { id: "modalTitle" } }, [
        _vm._v("Creating new idea")
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
              staticClass: "flaticon-add-circular-button kt-font-brand",
              attrs: { id: "iconBrand" }
            })
          ]),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "alert-text", attrs: { id: "modalSubtitle" } },
            [
              _vm._v(
                "This VueJS component creates an awesome user idea a flash!"
              )
            ]
          )
        ]
      )
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", { staticClass: "thead-dark" }, [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("#")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Idea")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Bug or Fix")]),
        _vm._v(" "),
        _c(
          "th",
          { attrs: { colspan: "", rowspan: "", headers: "", scope: "col" } },
          [_vm._v("Registered at")]
        ),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Actions")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("i", { staticClass: "flaticon-settings-1 bigIcons" }, [
      _c("span")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("i", { staticClass: "flaticon-delete bigIcons" }, [_c("span")])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/ProjectComponent.vue":
/*!******************************************************!*\
  !*** ./resources/js/components/ProjectComponent.vue ***!
  \******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ProjectComponent.vue?vue&type=template&id=7b945e4f& */ "./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f&");
/* harmony import */ var _ProjectComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ProjectComponent.vue?vue&type=script&lang=js& */ "./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ProjectComponent.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ProjectComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__["render"],
  _ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/ProjectComponent.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js&":
/*!*******************************************************************************!*\
  !*** ./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./ProjectComponent.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css& ***!
  \***************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader??ref--6-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--6-2!../../../node_modules/vue-loader/lib??vue-loader-options!./ProjectComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f&":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f& ***!
  \*************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./ProjectComponent.vue?vue&type=template&id=7b945e4f& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/ProjectComponent.vue?vue&type=template&id=7b945e4f&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProjectComponent_vue_vue_type_template_id_7b945e4f___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);