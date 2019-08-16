(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-landing-viewIdeaPublic-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      idea: {},
      id: this.$route.params.id
    };
  },
  methods: {
    getPublicIdea: function getPublicIdea() {
      var _this = this;

      axios.get("/getPublicIdea/" + this.id).then(function (response) {
        _this.idea = response.data.idea;
      })["catch"](function (error) {
        console.log(error);
      });
    }
  },
  mounted: function mounted() {
    this.getPublicIdea();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\na.button,\r\na.tp-button,\r\nbutton,\r\ninput[type=\"submit\"],\r\ninput[type=\"reset\"],\r\ninput[type=\"button\"] {\r\n  padding: 5px !important;\r\n  padding-left: 10px !important;\r\n  padding-right: 10px !important;\r\n  padding-bottom: 10px !important;\n}\n.router-link-exact-active, .router-link-active {\r\n    text-decoration: none !important;\n}\n.theme--light.v-card {\r\n    background-color: #fff;\r\n    border-color: #fff;\r\n    color: rgba(0,0,0,0.87);\r\n    display: block !important;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./viewIdeaPublic.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70&":
/*!*************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70& ***!
  \*************************************************************************************************************************************************************************************************************************/
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
        "v-container",
        { attrs: { fluid: "" } },
        [
          _c(
            "v-layout",
            { attrs: { row: "" } },
            [
              _c(
                "v-flex",
                { attrs: { lg1: "", "pb-3": "" } },
                [
                  _c(
                    "v-btn",
                    {
                      attrs: { color: "blue", flat: "" },
                      on: {
                        click: function($event) {
                          return _vm.$router.go(-1)
                        }
                      }
                    },
                    [_c("v-icon", [_vm._v("arrow_back")]), _vm._v("Back")],
                    1
                  )
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "v-flex",
                { attrs: { lg7: "", "mt-2": "", "text-xs-center": "" } },
                [_c("h5", [_vm._v("Idea Actual")])]
              ),
              _vm._v(" "),
              _c(
                "v-flex",
                {
                  attrs: {
                    lg3: "",
                    "mt-2": "",
                    "text-xs-right": "",
                    "hide-sm-and-down": ""
                  }
                },
                [_c("h5", [_vm._v("Innovaciones populares")])]
              )
            ],
            1
          ),
          _vm._v(" "),
          _c(
            "v-layout",
            [
              _c(
                "v-flex",
                { attrs: { lg8: "", xs12: "" } },
                [
                  _c(
                    "v-card",
                    [
                      _c("v-img", {
                        attrs: { src: _vm.idea.img, height: "200px" }
                      }),
                      _vm._v(" "),
                      _c("v-card-title", { attrs: { "primary-title": "" } }, [
                        _c(
                          "div",
                          { staticStyle: { width: "100%" } },
                          [
                            _c(
                              "v-layout",
                              { attrs: { row: "" } },
                              [
                                _c("v-flex", { attrs: { "lg-7": "" } }, [
                                  _c(
                                    "div",
                                    { staticClass: "headline text-capitalize" },
                                    [_vm._v(_vm._s(_vm.idea.title))]
                                  )
                                ]),
                                _vm._v(" "),
                                _c(
                                  "v-flex",
                                  { attrs: { lg5: "", "text-xs-right": "" } },
                                  [
                                    _c(
                                      "v-btn",
                                      { attrs: { icon: "" } },
                                      [_c("v-icon", [_vm._v("favorite")])],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "v-btn",
                                      { attrs: { icon: "" } },
                                      [_c("v-icon", [_vm._v("bookmark")])],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "v-btn",
                                      { attrs: { icon: "" } },
                                      [_c("v-icon", [_vm._v("share")])],
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
                      ]),
                      _vm._v(" "),
                      _c(
                        "v-container",
                        { attrs: { fluid: "" } },
                        [
                          _c("br"),
                          _vm._v(" "),
                          _c("div", [
                            _c("h5", { staticStyle: { color: "#757575" } }, [
                              _vm._v(_vm._s(_vm.idea.description))
                            ])
                          ]),
                          _vm._v(" "),
                          _c("div", {
                            domProps: { innerHTML: _vm._s(_vm.idea.body) }
                          }),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("v-divider"),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "author" },
                            [
                              _c(
                                "v-layout",
                                [
                                  _c(
                                    "v-flex",
                                    [
                                      _c(
                                        "v-layout",
                                        { attrs: { column: "" } },
                                        [
                                          _c(
                                            "v-flex",
                                            [
                                              _c(
                                                "v-avatar",
                                                {
                                                  attrs: {
                                                    tile: false,
                                                    size: "52",
                                                    color: "grey lighten-4"
                                                  }
                                                },
                                                [
                                                  _c("img", {
                                                    attrs: {
                                                      src:
                                                        "https://vuetifyjs.com/apple-touch-icon-180x180.png",
                                                      alt: "avatar"
                                                    }
                                                  })
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
                                        "v-layout",
                                        { attrs: { column: "" } },
                                        [
                                          _c("v-flex", [
                                            _c(
                                              "div",
                                              {
                                                staticStyle: {
                                                  color: "#757575"
                                                }
                                              },
                                              [_vm._v("Yeison Caicedo")]
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("v-flex", [
                                            _c(
                                              "div",
                                              {
                                                staticStyle: {
                                                  color: "#757575"
                                                }
                                              },
                                              [_vm._v("yecaicedo@gmail.com")]
                                            )
                                          ])
                                        ],
                                        1
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c(
                                    "v-flex",
                                    { attrs: { "text-xs-right": "" } },
                                    [
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass: "text-capitalize",
                                          attrs: {
                                            color: "blue",
                                            outline: "",
                                            dark: ""
                                          }
                                        },
                                        [
                                          _vm._v(
                                            "\n                    Contact User\n                    "
                                          ),
                                          _c(
                                            "v-icon",
                                            { attrs: { right: "", dark: "" } },
                                            [_vm._v("mail")]
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
                          ),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("v-divider"),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "response" },
                            [
                              _c(
                                "h5",
                                { staticStyle: { "text-align": "center" } },
                                [_vm._v("Post your comment")]
                              ),
                              _vm._v(" "),
                              _c("br"),
                              _vm._v(" "),
                              _c(
                                "v-layout",
                                { attrs: { row: "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { lg1: "" } },
                                    [
                                      _c(
                                        "v-avatar",
                                        {
                                          staticStyle: { "margin-top": "10px" },
                                          attrs: {
                                            tile: false,
                                            size: "52",
                                            color: "grey lighten-4"
                                          }
                                        },
                                        [
                                          _c("img", {
                                            attrs: {
                                              src:
                                                "https://demos.creative-tim.com/vue-material-kit-pro/img/card-profile4-square.1a164917.jpg",
                                              alt: "avatar"
                                            }
                                          })
                                        ]
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c(
                                    "v-flex",
                                    { attrs: { "lg-11": "" } },
                                    [
                                      _c("v-textarea", {
                                        attrs: {
                                          name: "input-7-1",
                                          label: "New comment",
                                          value: "",
                                          height: "60px",
                                          color: "blue",
                                          hint:
                                            "Share feedback improves the idea quality."
                                        }
                                      })
                                    ],
                                    1
                                  )
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c(
                                "v-layout",
                                { attrs: { row: "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { "text-xs-center": "" } },
                                    [
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass:
                                            "text-capitalize text-lg-center text-sm-center",
                                          attrs: { color: "blue", dark: "" }
                                        },
                                        [_vm._v("Enviar comentario")]
                                      )
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
                          _c("br"),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "comentarios" },
                            [
                              _c(
                                "h5",
                                { staticStyle: { "text-align": "center" } },
                                [_vm._v("5 Comentarios")]
                              ),
                              _vm._v(" "),
                              _c(
                                "v-layout",
                                { attrs: { row: "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { lg1: "" } },
                                    [
                                      _c(
                                        "v-avatar",
                                        {
                                          staticStyle: { "margin-top": "10px" },
                                          attrs: {
                                            tile: false,
                                            size: "52",
                                            color: "grey lighten-4"
                                          }
                                        },
                                        [
                                          _c("img", {
                                            attrs: {
                                              src:
                                                "https://demos.creative-tim.com/vue-material-kit-pro/img/card-profile4-square.1a164917.jpg",
                                              alt: "avatar"
                                            }
                                          })
                                        ]
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c("v-flex", { attrs: { "lg-11": "" } }, [
                                    _c(
                                      "div",
                                      {
                                        staticStyle: { "margin-left": "10px" },
                                        attrs: { color: "grey lighten-4" }
                                      },
                                      [
                                        _c("b", [_vm._v("Lorena Bustamante")]),
                                        _vm._v(" "),
                                        _c("i", [_vm._v("Hace 7 minutos")]),
                                        _vm._v(" "),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c("p", [
                                          _vm._v(
                                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?"
                                          )
                                        ])
                                      ]
                                    )
                                  ])
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c(
                                "v-layout",
                                { attrs: { row: "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { "text-xs-right": "" } },
                                    [
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass: "white--text",
                                          attrs: { flat: "", color: "red" }
                                        },
                                        [
                                          _c(
                                            "v-icon",
                                            { attrs: { left: "", dark: "" } },
                                            [_vm._v("favorite")]
                                          ),
                                          _vm._v(
                                            "\n                      243\n                  "
                                          )
                                        ],
                                        1
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass: "white--text",
                                          attrs: {
                                            flat: "",
                                            color: "green darken-1"
                                          }
                                        },
                                        [
                                          _c(
                                            "v-icon",
                                            { attrs: { left: "", dark: "" } },
                                            [_vm._v("reply")]
                                          ),
                                          _vm._v(
                                            "\n                      REPLY\n                  "
                                          )
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
                                "v-layout",
                                { attrs: { row: "", "pl-5": "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { lg1: "" } },
                                    [
                                      _c(
                                        "v-avatar",
                                        {
                                          staticStyle: { "margin-top": "10px" },
                                          attrs: {
                                            tile: false,
                                            size: "52",
                                            color: "grey lighten-4"
                                          }
                                        },
                                        [
                                          _c("img", {
                                            attrs: {
                                              src:
                                                "https://demos.creative-tim.com/vue-material-kit-pro/img/card-profile4-square.1a164917.jpg",
                                              alt: "avatar"
                                            }
                                          })
                                        ]
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c("v-flex", { attrs: { "lg-9": "" } }, [
                                    _c(
                                      "div",
                                      {
                                        staticStyle: { "margin-left": "10px" },
                                        attrs: { color: "grey lighten-4" }
                                      },
                                      [
                                        _c("b", [_vm._v("Lorena Bustamante")]),
                                        _vm._v(" "),
                                        _c("i", [_vm._v("Hace 7 minutos")]),
                                        _vm._v(" "),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c("p", [
                                          _vm._v(
                                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?"
                                          )
                                        ])
                                      ]
                                    )
                                  ])
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c(
                                "v-layout",
                                { attrs: { row: "", "pl-5": "" } },
                                [
                                  _c(
                                    "v-flex",
                                    { attrs: { "text-xs-right": "" } },
                                    [
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass: "white--text",
                                          attrs: {
                                            flat: "",
                                            color: "grey darken-1"
                                          }
                                        },
                                        [
                                          _c(
                                            "v-icon",
                                            { attrs: { left: "", dark: "" } },
                                            [_vm._v("favorite")]
                                          ),
                                          _vm._v(
                                            "\n                      243\n                  "
                                          )
                                        ],
                                        1
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "v-btn",
                                        {
                                          staticClass: "white--text",
                                          attrs: {
                                            flat: "",
                                            color: "green darken-1"
                                          }
                                        },
                                        [
                                          _c(
                                            "v-icon",
                                            { attrs: { left: "", dark: "" } },
                                            [_vm._v("reply")]
                                          ),
                                          _vm._v(
                                            "\n                          REPLY\n                  "
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
              ),
              _vm._v(" "),
              _c(
                "v-flex",
                { attrs: { lg4: "", "hidden-sm-and-down": "", "pt-2": "" } },
                [
                  _c(
                    "v-container",
                    { attrs: { fluid: "", "grid-list-lg": "" } },
                    [
                      _c(
                        "v-layout",
                        { attrs: { row: "", wrap: "" } },
                        [
                          _c(
                            "v-flex",
                            { attrs: { xs12: "" } },
                            [
                              _c(
                                "router-link",
                                {
                                  attrs: {
                                    to: { name: "view-idea", params: { id: 2 } }
                                  }
                                },
                                [
                                  _c(
                                    "v-card",
                                    {
                                      staticClass: "white--text",
                                      attrs: { ripple: "", color: "purple" }
                                    },
                                    [
                                      _c(
                                        "v-layout",
                                        { attrs: { row: "" } },
                                        [
                                          _c(
                                            "v-flex",
                                            { attrs: { xs7: "" } },
                                            [
                                              _c(
                                                "v-card-title",
                                                {
                                                  attrs: { "primary-title": "" }
                                                },
                                                [
                                                  _c("div", [
                                                    _c(
                                                      "div",
                                                      {
                                                        staticClass: "headline"
                                                      },
                                                      [
                                                        _vm._v(
                                                          "Mejorar el sistema de ... "
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c("div", [
                                                      _vm._v("Ellie Goulding")
                                                    ]),
                                                    _vm._v(" "),
                                                    _c("div", [
                                                      _vm._v("(2019)")
                                                    ])
                                                  ])
                                                ]
                                              )
                                            ],
                                            1
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-flex",
                                            { attrs: { xs5: "" } },
                                            [
                                              _c("v-img", {
                                                staticStyle: {
                                                  "margin-right": "10px"
                                                },
                                                attrs: {
                                                  src:
                                                    "http://andresraya.com/wp-content/uploads/2015/11/feedback-andresraya.png",
                                                  height: "125px"
                                                }
                                              })
                                            ],
                                            1
                                          )
                                        ],
                                        1
                                      ),
                                      _vm._v(" "),
                                      _c("v-divider", { attrs: { light: "" } }),
                                      _vm._v(" "),
                                      _c(
                                        "v-card-actions",
                                        { staticClass: "pa-3" },
                                        [
                                          _vm._v(
                                            "\n                          Idea Rating\n                          "
                                          ),
                                          _c("v-spacer"),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c("v-icon", [_vm._v("star_border")])
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
                          ),
                          _vm._v(" "),
                          _c(
                            "v-flex",
                            { attrs: { xs12: "" } },
                            [
                              _c(
                                "router-link",
                                {
                                  attrs: {
                                    to: { name: "view-idea", params: { id: 2 } }
                                  }
                                },
                                [
                                  _c(
                                    "v-card",
                                    {
                                      staticClass: "white--text",
                                      attrs: {
                                        ripple: "",
                                        color: "cyan darken-2"
                                      }
                                    },
                                    [
                                      _c(
                                        "v-layout",
                                        [
                                          _c(
                                            "v-flex",
                                            { attrs: { xs5: "" } },
                                            [
                                              _c("v-img", {
                                                staticStyle: {
                                                  "margin-left": "10px"
                                                },
                                                attrs: {
                                                  src:
                                                    "https://is5-ssl.mzstatic.com/image/thumb/Purple123/v4/60/95/57/60955777-ace6-b2aa-b276-af098d92e695/AppIcon-0-1x_U007emarketing-0-0-85-220-0-7.png/246x0w.jpg",
                                                  height: "125px",
                                                  contain: ""
                                                }
                                              })
                                            ],
                                            1
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-flex",
                                            { attrs: { xs7: "" } },
                                            [
                                              _c(
                                                "v-card-title",
                                                {
                                                  attrs: { "primary-title": "" }
                                                },
                                                [
                                                  _c("div", [
                                                    _c(
                                                      "div",
                                                      {
                                                        staticClass: "headline"
                                                      },
                                                      [
                                                        _vm._v(
                                                          "App para gestión de redes"
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c("div", [_vm._v("EPM")]),
                                                    _vm._v(" "),
                                                    _c("div", [
                                                      _vm._v("(2019)")
                                                    ])
                                                  ])
                                                ]
                                              )
                                            ],
                                            1
                                          )
                                        ],
                                        1
                                      ),
                                      _vm._v(" "),
                                      _c("v-divider", { attrs: { light: "" } }),
                                      _vm._v(" "),
                                      _c(
                                        "v-card-actions",
                                        { staticClass: "pa-3" },
                                        [
                                          _vm._v(
                                            "\n                          Idea Rating\n                           "
                                          ),
                                          _c("v-spacer"),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c("v-icon", [_vm._v("star_border")])
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
                          ),
                          _vm._v(" "),
                          _c(
                            "v-flex",
                            { attrs: { xs12: "" } },
                            [
                              _c(
                                "router-link",
                                {
                                  attrs: {
                                    to: {
                                      name: "view-idea",
                                      params: { id: _vm.idea.id }
                                    }
                                  }
                                },
                                [
                                  _c(
                                    "v-card",
                                    {
                                      staticClass: "white--text",
                                      attrs: { color: "blue", ripple: "" }
                                    },
                                    [
                                      _c(
                                        "v-layout",
                                        { attrs: { row: "" } },
                                        [
                                          _c(
                                            "v-flex",
                                            { attrs: { xs7: "" } },
                                            [
                                              _c(
                                                "v-card-title",
                                                {
                                                  attrs: { "primary-title": "" }
                                                },
                                                [
                                                  _c("div", [
                                                    _c(
                                                      "div",
                                                      {
                                                        staticClass: "headline"
                                                      },
                                                      [
                                                        _vm._v(
                                                          "Articulos generador por IA"
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c("div", [
                                                      _vm._v("Asakaa Inc")
                                                    ]),
                                                    _vm._v(" "),
                                                    _c("div", [
                                                      _vm._v("(2019)")
                                                    ])
                                                  ])
                                                ]
                                              )
                                            ],
                                            1
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-flex",
                                            { attrs: { xs5: "" } },
                                            [
                                              _c("v-img", {
                                                staticStyle: {
                                                  "margin-right": "10px"
                                                },
                                                attrs: {
                                                  src:
                                                    "https://estaticos.muyinteresante.es/uploads/images/article/566560d25bafe8a163dc683a/ia.jpg",
                                                  height: "125px",
                                                  contain: ""
                                                }
                                              })
                                            ],
                                            1
                                          )
                                        ],
                                        1
                                      ),
                                      _vm._v(" "),
                                      _c("v-divider", { attrs: { light: "" } }),
                                      _vm._v(" "),
                                      _c(
                                        "v-card-actions",
                                        { staticClass: "pa-3" },
                                        [
                                          _vm._v(
                                            "\n                         Idea Rating\n                          "
                                          ),
                                          _c("v-spacer"),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "v-icon",
                                            { attrs: { color: "yellow" } },
                                            [_vm._v("star")]
                                          ),
                                          _vm._v(" "),
                                          _c("v-icon", [_vm._v("star_border")])
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

/***/ "./resources/js/components/landing/viewIdeaPublic.vue":
/*!************************************************************!*\
  !*** ./resources/js/components/landing/viewIdeaPublic.vue ***!
  \************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./viewIdeaPublic.vue?vue&type=template&id=f6569d70& */ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70&");
/* harmony import */ var _viewIdeaPublic_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./viewIdeaPublic.vue?vue&type=script&lang=js& */ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./viewIdeaPublic.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _viewIdeaPublic_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__["render"],
  _viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/landing/viewIdeaPublic.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js&":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./viewIdeaPublic.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&":
/*!*********************************************************************************************!*\
  !*** ./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css& ***!
  \*********************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./viewIdeaPublic.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70&":
/*!*******************************************************************************************!*\
  !*** ./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70& ***!
  \*******************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./viewIdeaPublic.vue?vue&type=template&id=f6569d70& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/viewIdeaPublic.vue?vue&type=template&id=f6569d70&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_viewIdeaPublic_vue_vue_type_template_id_f6569d70___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);