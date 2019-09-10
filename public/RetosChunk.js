(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["retosChunk"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js& ***!
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
      colorx: "#151B26",
      colorx2: "#30456b",
      select1: 'all',
      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: ""
      }),
      privateRetos: {},
      companyRetos: {},
      publicRetos: {},
      user: {},
      cats: {},
      showPublicRetos: false
    };
  },
  computed: {
    filteredPersonal: function filteredPersonal() {
      var _this = this;

      if (this.select1 == 'all') {
        return this.privateRetos;
      } else {
        return this.privateRetos.filter(function (idea) {
          if (idea.category == _this.select1) {
            return true;
          } else {
            return false;
          }
        });
      }
    },
    filteredPublic: function filteredPublic() {
      var _this2 = this;

      if (this.select1 == 'all') {
        return this.publicRetos;
      } else {
        return this.publicRetos.filter(function (idea) {
          if (idea.category == _this2.select1) {
            return true;
          } else {
            return false;
          }
        });
      }
    },
    filteredEmpresarial: function filteredEmpresarial() {
      var _this3 = this;

      if (this.select1 == 'all') {
        return this.companyRetos;
      } else {
        return this.companyRetos.filter(function (idea) {
          if (idea.category == _this3.select1) {
            return true;
          } else {
            return false;
          }
        });
      }
    }
  },
  methods: {
    getRetos: function getRetos() {
      var _this4 = this;

      this.$Progress.start();
      axios.get("/getRetos").then(function (response) {
        if (response.data.msg == 'loginRequired') {
          window.location.href = baseUrl + 'login';
        } else {
          _this4.privateRetos = response.data.privateRetos;
          _this4.companyRetos = response.data.companyRetos;
          _this4.publicRetos = response.data.publicRetos;
          _this4.user = response.data.user;
          _this4.cats = response.data.categories;

          _this4.$Progress.finish(); //console.log(response.data.privateRetos)

        }
      })["catch"](function (error) {
        console.log(error);

        _this4.$Progress.finish();

        toastr.error("Oops!", "Something goes wrong");
      });
    }
  },
  mounted: function mounted() {
    $("#admin").removeClass("menuActivo");
    $("#dashboard").removeClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").addClass("menuActivo");
    $(document).attr("title", "Innova | Retos");
  },
  created: function created() {
    this.getRetos();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.custom-btn {\n  background: linear-gradient(105deg, #151B26, #1f2c45, #253d6b, #264582, #214791, #204ea8, #1a54c7, #1153d6, #2c57ad, #264174, #253d6b, #253d6b);\n  background-size: 400% 400%;\n  -webkit-animation: rainbow 5s ease infinite;\n  -z-animation: rainbow 5s ease infinite;\n  animation: rainbow 5s ease infinite alternate;\n  border: 0;\n\n  color: #fff !important;\n}\n@-webkit-keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n@keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n.imageCard {\n  min-height: 300px;\n}\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--7-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--7-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./RetosIndex.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc&":
/*!*******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc& ***!
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
    _c("div", { staticClass: "container-fluid" }, [
      _c("div", { staticClass: "row" }, [
        _vm._m(0),
        _vm._v(" "),
        _c("div", { staticClass: "col-lg-2 col-sm-2 col-md-5" }, [
          _c("div", { staticStyle: { "margin-top": "1px" } }, [
            _c("label", { attrs: { for: "picka" } }, [_vm._v("Categorías")]),
            _vm._v(" "),
            _c("div", { staticClass: "input-group" }, [
              _c(
                "select",
                {
                  directives: [
                    {
                      name: "model",
                      rawName: "v-model",
                      value: _vm.select1,
                      expression: "select1"
                    }
                  ],
                  staticClass: "kt-selectpicker form-control",
                  class: { "is-invalid": _vm.form.errors.has("category") },
                  attrs: {
                    "data-container": "body",
                    name: "category",
                    id: "picka",
                    required: ""
                  },
                  on: {
                    change: function($event) {
                      var $$selectedVal = Array.prototype.filter
                        .call($event.target.options, function(o) {
                          return o.selected
                        })
                        .map(function(o) {
                          var val = "_value" in o ? o._value : o.value
                          return val
                        })
                      _vm.select1 = $event.target.multiple
                        ? $$selectedVal
                        : $$selectedVal[0]
                    }
                  }
                },
                [
                  _c("option", { attrs: { value: "all" } }, [_vm._v("Todas")]),
                  _vm._v(" "),
                  _vm._l(_vm.cats, function(cat) {
                    return _c(
                      "optgroup",
                      { key: cat.id, attrs: { label: cat.label } },
                      _vm._l(cat.options, function(c) {
                        return _c(
                          "option",
                          { key: c.id, domProps: { value: c.id + c.name } },
                          [_vm._v(_vm._s(_vm._f("toCategory")(c.name)))]
                        )
                      }),
                      0
                    )
                  })
                ],
                2
              )
            ])
          ])
        ]),
        _vm._v(" "),
        _c(
          "div",
          {
            staticClass: "col-lg-2 col-md-3 col-sm-6",
            staticStyle: { "margin-top": "24px" }
          },
          [
            _c(
              "div",
              {},
              [
                _c(
                  "v-btn",
                  {
                    attrs: { color: "#673AB7", dark: "" },
                    on: {
                      click: function($event) {
                        return _vm.$router.push({ name: "crear-reto" })
                      }
                    }
                  },
                  [
                    _c("v-icon", { attrs: { left: "" } }, [_vm._v("add")]),
                    _vm._v("\n         Nuevo reto")
                  ],
                  1
                )
              ],
              1
            )
          ]
        )
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c(
          "div",
          { staticClass: "col-12" },
          [
            _c(
              "v-tabs",
              { attrs: { "fixed-tabs": "", "icons-and-text": "" } },
              [
                _c("v-tabs-slider", { attrs: { color: "purple darken-4" } }),
                _vm._v(" "),
                _c(
                  "v-tab",
                  { attrs: { href: "#empresariales" } },
                  [
                    _vm._v(
                      "\n              " +
                        _vm._s(_vm.filteredEmpresarial.length) +
                        " Empresariales \n                "
                    ),
                    _c("v-icon", [_vm._v("business")])
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "v-tab",
                  { attrs: { href: "#publicos" } },
                  [
                    _vm._v(
                      "\n                " +
                        _vm._s(_vm.filteredPublic.length) +
                        " Públicos \n                "
                    ),
                    _c("v-icon", [_vm._v("public")])
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "v-tab",
                  { attrs: { href: "#personales" } },
                  [
                    _vm._v(
                      "\n              " +
                        _vm._s(_vm.filteredPersonal.length) +
                        " Retos en borrador \n                "
                    ),
                    _c("v-icon", [_vm._v("person_pin")])
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "v-tab-item",
                  { attrs: { value: "empresariales" } },
                  [
                    _c("v-card", [
                      _c("br"),
                      _vm._v(" "),
                      _c("div", { staticClass: "container-fluid" }, [
                        _c(
                          "div",
                          { staticClass: "row" },
                          _vm._l(_vm.filteredEmpresarial, function(idea) {
                            return _c(
                              "div",
                              {
                                key: idea.id,
                                staticClass:
                                  "col-xl-3 col-lg-4 col-md-6 col-sm-12"
                              },
                              [
                                _c(
                                  "div",
                                  {
                                    staticClass:
                                      "kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"
                                  },
                                  [
                                    _c(
                                      "div",
                                      {
                                        staticClass:
                                          "kt-portlet__body kt-portlet__body--fit"
                                      },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass:
                                              "kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard  ",
                                            style: {
                                              backgroundImage:
                                                "url(" + idea.img + ")"
                                            }
                                          },
                                          [
                                            _c(
                                              "h3",
                                              {
                                                staticClass:
                                                  "kt-widget19__title kt-font-light"
                                              },
                                              [
                                                _vm._v(
                                                  "\n\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                                                    _vm._s(
                                                      _vm._f("shortText")(
                                                        idea.title
                                                      )
                                                    ) +
                                                    "\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c("div", {
                                              staticClass: "kt-widget19__shadow"
                                            }),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__labels"
                                              },
                                              [
                                                _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-light  btn-pill  btn-sm custom-btn "
                                                  },
                                                  [_vm._v("Empresarial")]
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "div",
                                      { staticClass: "kt-portlet__body" },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__wrapper"
                                          },
                                          [
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__content"
                                              },
                                              [
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__userpic"
                                                  },
                                                  [
                                                    _c("img", {
                                                      attrs: {
                                                        src: idea.img,
                                                        height: "50",
                                                        width: "50"
                                                      }
                                                    })
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__info"
                                                  },
                                                  [
                                                    (idea.author = "showme")
                                                      ? _c(
                                                          "a",
                                                          {
                                                            staticClass:
                                                              "kt-widget19__username",
                                                            attrs: { href: "#" }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                            ),
                                                            _c("br"),
                                                            _vm._v(
                                                              _vm._s(
                                                                _vm._f(
                                                                  "uppercaseFirst"
                                                                )(idea.escrita)
                                                              ) +
                                                                "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                                            )
                                                          ]
                                                        )
                                                      : _c(
                                                          "a",
                                                          {
                                                            staticClass:
                                                              "kt-widget19__username",
                                                            attrs: { href: "#" }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                            ),
                                                            _c("br"),
                                                            _vm._v(
                                                              "\t Anónimo(a)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                                            )
                                                          ]
                                                        )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__stats"
                                                  },
                                                  [
                                                    _c(
                                                      "span",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__number kt-font-brand"
                                                      },
                                                      [
                                                        _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to:
                                                                "/retos/ver/" +
                                                                idea.id
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              _vm._s(
                                                                idea.solutions
                                                                  .length
                                                              )
                                                            )
                                                          ]
                                                        )
                                                      ],
                                                      1
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "router-link",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__comment",
                                                        attrs: {
                                                          to:
                                                            "/retos/ver/" +
                                                            idea.id
                                                        }
                                                      },
                                                      [_vm._v("Soluciones")]
                                                    )
                                                  ],
                                                  1
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass: "kt-widget19__text"
                                              },
                                              [
                                                _c("b", [
                                                  _vm._v("Categoría: ")
                                                ]),
                                                _vm._v(
                                                  " " +
                                                    _vm._s(
                                                      _vm._f("uppercaseFirst")(
                                                        _vm._f("mediumText")(
                                                          _vm._f("toCategory")(
                                                            idea.category
                                                          )
                                                        )
                                                      )
                                                    ) +
                                                    " "
                                                ),
                                                _c("br"),
                                                _vm._v(" "),
                                                _c("b", [
                                                  _vm._v("Fecha límite: ")
                                                ]),
                                                _vm._v(
                                                  _vm._s(
                                                    _vm._f("limite")(idea.fecha)
                                                  ) + "  "
                                                ),
                                                _c("br"),
                                                _vm._v(
                                                  "\n                          " +
                                                    _vm._s(
                                                      _vm._f("mediumText")(
                                                        idea.description
                                                      )
                                                    ) +
                                                    "\n\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            )
                                          ]
                                        ),
                                        _vm._v(" "),
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__action"
                                          },
                                          [
                                            _c(
                                              "router-link",
                                              {
                                                staticClass:
                                                  "btn btn-sm btn-label-brand btn-bold ",
                                                attrs: {
                                                  to: "/retos/ver/" + idea.id
                                                }
                                              },
                                              [_vm._v("Aportar solución...")]
                                            )
                                          ],
                                          1
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ]
                            )
                          }),
                          0
                        )
                      ])
                    ])
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "v-tab-item",
                  { attrs: { value: "publicos" } },
                  [
                    _c("v-card", [
                      _c("br"),
                      _vm._v(" "),
                      _c("div", { staticClass: "container-fluid" }, [
                        _c(
                          "div",
                          { staticClass: "row" },
                          _vm._l(_vm.filteredPublic, function(idea) {
                            return _c(
                              "div",
                              {
                                key: _vm.ideas.id,
                                staticClass:
                                  "col-xl-3 col-lg-4 col-md-6 col-sm-12"
                              },
                              [
                                _c(
                                  "div",
                                  {
                                    staticClass:
                                      "kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"
                                  },
                                  [
                                    _c(
                                      "div",
                                      {
                                        staticClass:
                                          "kt-portlet__body kt-portlet__body--fit"
                                      },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass:
                                              "kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard ",
                                            style: {
                                              backgroundImage:
                                                "url(" + idea.img + ")"
                                            }
                                          },
                                          [
                                            _c(
                                              "h3",
                                              {
                                                staticClass:
                                                  "kt-widget19__title kt-font-light"
                                              },
                                              [
                                                _vm._v(
                                                  "\n\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                                                    _vm._s(
                                                      _vm._f("uppercaseFirst")(
                                                        _vm._f("shortText")(
                                                          idea.title
                                                        )
                                                      )
                                                    ) +
                                                    "\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c("div", {
                                              staticClass: "kt-widget19__shadow"
                                            }),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__labels"
                                              },
                                              [
                                                _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-light  btn-pill  btn-sm "
                                                  },
                                                  [_vm._v("Públicos")]
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "div",
                                      { staticClass: "kt-portlet__body" },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__wrapper"
                                          },
                                          [
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__content"
                                              },
                                              [
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__userpic"
                                                  },
                                                  [
                                                    _c("img", {
                                                      attrs: {
                                                        src: idea.img,
                                                        height: "50",
                                                        width: "50"
                                                      }
                                                    })
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__info"
                                                  },
                                                  [
                                                    (idea.author = "showme")
                                                      ? _c(
                                                          "a",
                                                          {
                                                            staticClass:
                                                              "kt-widget19__username",
                                                            attrs: { href: "#" }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                            ),
                                                            _c("br"),
                                                            _vm._v(
                                                              " " +
                                                                _vm._s(
                                                                  _vm._f(
                                                                    "uppercaseFirst"
                                                                  )(
                                                                    idea.escrita
                                                                  )
                                                                ) +
                                                                "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                                            )
                                                          ]
                                                        )
                                                      : _c(
                                                          "a",
                                                          {
                                                            staticClass:
                                                              "kt-widget19__username",
                                                            attrs: { href: "#" }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                            ),
                                                            _c("br"),
                                                            _vm._v(
                                                              "\t Anónimo(a)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                                            )
                                                          ]
                                                        )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__stats"
                                                  },
                                                  [
                                                    _c(
                                                      "span",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__number kt-font-brand"
                                                      },
                                                      [
                                                        _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to:
                                                                "/retos/ver/" +
                                                                idea.id
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              _vm._s(
                                                                idea.solutions
                                                                  .length
                                                              )
                                                            )
                                                          ]
                                                        )
                                                      ],
                                                      1
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "router-link",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__comment",
                                                        attrs: {
                                                          to:
                                                            "/retos/ver/" +
                                                            idea.id
                                                        }
                                                      },
                                                      [_vm._v("Soluciones")]
                                                    )
                                                  ],
                                                  1
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass: "kt-widget19__text"
                                              },
                                              [
                                                _c("b", [
                                                  _vm._v("Categoría: ")
                                                ]),
                                                _vm._v(
                                                  " " +
                                                    _vm._s(
                                                      _vm._f("uppercaseFirst")(
                                                        _vm._f("mediumText")(
                                                          _vm._f("toCategory")(
                                                            idea.category
                                                          )
                                                        )
                                                      )
                                                    ) +
                                                    " "
                                                ),
                                                _c("br"),
                                                _vm._v(" "),
                                                _c("b", [
                                                  _vm._v("Fecha límite: ")
                                                ]),
                                                _vm._v(
                                                  _vm._s(
                                                    _vm._f("limite")(idea.fecha)
                                                  ) + " "
                                                ),
                                                _c("br"),
                                                _vm._v(
                                                  "\n                          " +
                                                    _vm._s(
                                                      _vm._f("mediumText")(
                                                        idea.description
                                                      )
                                                    ) +
                                                    "\n\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            )
                                          ]
                                        ),
                                        _vm._v(" "),
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__action"
                                          },
                                          [
                                            _c(
                                              "router-link",
                                              {
                                                staticClass:
                                                  "btn btn-sm btn-label-brand btn-bold ",
                                                attrs: {
                                                  to: "/retos/ver/" + idea.id
                                                }
                                              },
                                              [_vm._v("Aportar solución...")]
                                            )
                                          ],
                                          1
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ]
                            )
                          }),
                          0
                        )
                      ])
                    ])
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "v-tab-item",
                  { attrs: { value: "personales" } },
                  [
                    _c("v-card", [
                      _c("br"),
                      _vm._v(" "),
                      _c("div", { staticClass: "container-fluid" }, [
                        _c(
                          "div",
                          { staticClass: "row" },
                          _vm._l(_vm.filteredPersonal, function(idea) {
                            return _c(
                              "div",
                              {
                                key: idea.id,
                                staticClass:
                                  "col-xl-3 col-lg-4 col-md-6 col-sm-12"
                              },
                              [
                                _c(
                                  "div",
                                  {
                                    staticClass:
                                      "kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center"
                                  },
                                  [
                                    _c(
                                      "div",
                                      {
                                        staticClass:
                                          "kt-portlet__body kt-portlet__body--fit"
                                      },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass:
                                              "kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard ",
                                            style: {
                                              backgroundImage:
                                                "url(" + idea.img + ")"
                                            }
                                          },
                                          [
                                            _c(
                                              "h3",
                                              {
                                                staticClass:
                                                  "kt-widget19__title kt-font-light"
                                              },
                                              [
                                                _vm._v(
                                                  "\n\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                                                    _vm._s(
                                                      _vm._f("uppercaseFirst")(
                                                        _vm._f("shortText")(
                                                          idea.title
                                                        )
                                                      )
                                                    ) +
                                                    "\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c("div", {
                                              staticClass: "kt-widget19__shadow"
                                            }),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__labels",
                                                staticStyle: {
                                                  "background-color": "white",
                                                  "border-radius": "5px"
                                                }
                                              },
                                              [
                                                _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-label-light-o2 btn-bold btn-sm ",
                                                    staticStyle: {
                                                      color: "#7a7f87"
                                                    },
                                                    attrs: { href: "#" }
                                                  },
                                                  [_vm._v("Borrador ")]
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "div",
                                      { staticClass: "kt-portlet__body" },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__wrapper"
                                          },
                                          [
                                            _c(
                                              "div",
                                              {
                                                staticClass:
                                                  "kt-widget19__content"
                                              },
                                              [
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__userpic"
                                                  },
                                                  [
                                                    _c("img", {
                                                      attrs: {
                                                        src: idea.img,
                                                        height: "50",
                                                        width: "50"
                                                      }
                                                    })
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__info"
                                                  },
                                                  [
                                                    _c(
                                                      "a",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__username",
                                                        attrs: { href: "#" }
                                                      },
                                                      [
                                                        _vm._v(
                                                          "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tEscrito por mi \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                                        )
                                                      ]
                                                    )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget19__stats"
                                                  },
                                                  [
                                                    _c(
                                                      "span",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__number kt-font-brand"
                                                      },
                                                      [
                                                        _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to:
                                                                "/retos/ver/" +
                                                                idea.id
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              _vm._s(
                                                                idea.solutions
                                                                  .length
                                                              )
                                                            )
                                                          ]
                                                        )
                                                      ],
                                                      1
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "router-link",
                                                      {
                                                        staticClass:
                                                          "kt-widget19__comment",
                                                        attrs: {
                                                          to:
                                                            "/retos/ver/" +
                                                            idea.id
                                                        }
                                                      },
                                                      [_vm._v("Soluciones")]
                                                    )
                                                  ],
                                                  1
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            _c(
                                              "div",
                                              {
                                                staticClass: "kt-widget19__text"
                                              },
                                              [
                                                _c("b", [
                                                  _vm._v("Categoría: ")
                                                ]),
                                                _vm._v(
                                                  " " +
                                                    _vm._s(
                                                      _vm._f("uppercaseFirst")(
                                                        _vm._f("mediumText")(
                                                          _vm._f("toCategory")(
                                                            idea.category
                                                          )
                                                        )
                                                      )
                                                    ) +
                                                    " "
                                                ),
                                                _c("br"),
                                                _vm._v(" "),
                                                _c("b", [
                                                  _vm._v("Fecha límite: ")
                                                ]),
                                                _vm._v(
                                                  _vm._s(
                                                    _vm._f("limite")(idea.fecha)
                                                  ) +
                                                    " \n                           \n                           "
                                                ),
                                                _c("br"),
                                                _vm._v(
                                                  "\n\n\n                          " +
                                                    _vm._s(
                                                      _vm._f("mediumText")(
                                                        idea.description
                                                      )
                                                    ) +
                                                    "\n\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                                )
                                              ]
                                            )
                                          ]
                                        ),
                                        _vm._v(" "),
                                        _c(
                                          "div",
                                          {
                                            staticClass: "kt-widget19__action"
                                          },
                                          [
                                            _c(
                                              "router-link",
                                              {
                                                staticClass:
                                                  "btn btn-sm btn-label-brand btn-bold ",
                                                attrs: {
                                                  to: "/retos/ver/" + idea.id
                                                }
                                              },
                                              [_vm._v("Aportar solución...")]
                                            )
                                          ],
                                          1
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ]
                            )
                          }),
                          0
                        )
                      ])
                    ])
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
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-lg-7 col-md-7 col-sm-12" }, [
      _c("div", { staticClass: "form-group" }, [
        _c("label", [_vm._v("Busca algún reto en específico")]),
        _vm._v(" "),
        _c("div", { staticClass: "kt-input-icon kt-input-icon--left" }, [
          _c("input", {
            staticClass: "form-control",
            attrs: {
              type: "text",
              placeholder: "Search...",
              id: "generalSearch"
            }
          }),
          _vm._v(" "),
          _c(
            "span",
            { staticClass: "kt-input-icon__icon kt-input-icon__icon--left" },
            [_c("span", [_c("i", { staticClass: "la la-search" })])]
          )
        ])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Retos/RetosIndex.vue":
/*!******************************************************!*\
  !*** ./resources/js/components/Retos/RetosIndex.vue ***!
  \******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./RetosIndex.vue?vue&type=template&id=24bb12bc& */ "./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc&");
/* harmony import */ var _RetosIndex_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./RetosIndex.vue?vue&type=script&lang=js& */ "./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./RetosIndex.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _RetosIndex_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__["render"],
  _RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Retos/RetosIndex.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js&":
/*!*******************************************************************************!*\
  !*** ./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./RetosIndex.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css& ***!
  \***************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--7-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--7-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./RetosIndex.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc&":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc& ***!
  \*************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./RetosIndex.vue?vue&type=template&id=24bb12bc& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/RetosIndex.vue?vue&type=template&id=24bb12bc&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RetosIndex_vue_vue_type_template_id_24bb12bc___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);