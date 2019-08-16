(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["idea-view"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
  props: {
    source: String
  },
  data: function data() {
    var _ref;

    return _ref = {
      category: "business",
      select: "all",
      items2: [{
        category: "Todas",
        val: "all"
      }, {
        category: "Oportunidades de negocio",
        val: "businessandconsumer"
      }, {
        category: "Sostenibilidad",
        val: "sustainability"
      }, {
        category: "Vida y Salud",
        val: "lifeandhealth"
      }, {
        category: "Arte y Cultura",
        val: "artandculture"
      }, {
        category: "Hogar y Mascotas",
        val: "homeandpets"
      }, {
        category: "Tecnología",
        val: "scienceandtechnology"
      }, {
        category: "Turismo y Viajes",
        val: "tourismandtravel"
      }, {
        category: "Transporte",
        val: "transport"
      }, {
        category: "Comida",
        val: "food"
      }, {
        category: "Deportes",
        val: "sportsandentertainment"
      }, {
        category: "Política",
        val: "politicsandsociety"
      }],
      value: ["business", "bar", "fizz", "buzz"],
      snackbar: false,
      y: "top",
      x: null,
      mode: "",
      timeout: 5000,
      text: "Link copiado al portapapeles",
      dialog: false,
      linkToIdea: "",
      baseUrl: window.baseUrl,
      currentPage: 1
    }, _defineProperty(_ref, "dialog", false), _defineProperty(_ref, "drawer", null), _defineProperty(_ref, "ideaImg", " "), _defineProperty(_ref, "show", true), _defineProperty(_ref, "items", [{
      icon: "add",
      text: "Crear nueva idea"
    }, {
      icon: "contacts",
      text: "Todas las ideas"
    }, {
      icon: "home",
      text: "Inicio"
    }, {
      icon: "link",
      text: "Asakaa Project"
    }, {
      icon: "monetization_on",
      text: "Precios"
    }, {
      icon: "arrow_forward",
      text: "Iniciar sesión"
    }, {
      icon: "person_add",
      text: "Registrarme"
    }]), _defineProperty(_ref, "publicIdeas", []), _defineProperty(_ref, "publicIdeasNoFiltered", []), _defineProperty(_ref, "featured", []), _defineProperty(_ref, "idea", []), _defineProperty(_ref, "searchQuery", ""), _defineProperty(_ref, "pageSize", 8), _defineProperty(_ref, "id", ""), _defineProperty(_ref, "likes", 0), _ref;
  },
  created: function created() {
    this.id = this.$route.params.id;
  },
  computed: {
    bannerImg: function bannerImg() {
      if (this.select == "all") {
        return "https://cdn.pixabay.com/photo/2016/03/09/16/47/woman-1246844_960_720.jpg";
      } else if (this.select == "sustainability") {
        return "https://cdn.pixabay.com/photo/2016/04/26/15/01/holiday-1354563_960_720.jpg";
      } else if (this.select == "businessandconsumer") {
        return "https://cdn.pixabay.com/photo/2015/03/26/09/40/business-suit-690048_960_720.jpg";
      } else if (this.select == "lifeandhealth") {
        return "https://cdn.pixabay.com/photo/2018/02/06/14/07/dance-3134828_960_720.jpg";
      } else if (this.select == "artandculture") {
        return "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg";
      } else if (this.select == "homeandpets") {
        return "https://cdn.pixabay.com/photo/2016/11/22/19/41/adorable-1850276_960_720.jpg";
      } else if (this.select == "scienceandtechnology") {
        return "https://cdn.pixabay.com/photo/2017/12/10/17/00/robot-3010309_960_720.jpg";
      } else if (this.select == "tourismandtravel") {
        return "https://cdn.pixabay.com/photo/2015/07/11/23/02/plane-841441_960_720.jpg";
      } else if (this.select == "transport") {
        return "https://cdn.pixabay.com/photo/2017/10/27/10/27/subway-2893851_960_720.jpg";
      } else if (this.select == "food") {
        return "https://cdn.pixabay.com/photo/2017/06/29/20/09/mexican-2456038_960_720.jpg";
      } else if (this.select == "sportsandentertainment") {
        return "https://cdn.pixabay.com/photo/2014/07/04/19/15/biker-384178_960_720.jpg";
      } else if (this.select == "politicsandsociety") {
        return "https://cdn-images-1.medium.com/max/1502/1*mBDvKqK7CbHPGVQw4L3IAw.png";
      } else {
        return "https://cdn.pixabay.com/photo/2019/06/25/04/40/light-4297386_960_720.jpg";
      }
    }
  },
  methods: {
    goIdea: function goIdea(idIdea) {
      // let host = window.baseUrl;
      // window.location = host + "innovations/"+idIdea;
      this.$router.push({
        path: 'view-idea',
        params: {
          id: idIdea
        }
      });
    },
    copyPorta: function copyPorta(link) {
      this.dialog = false;
      var input = document.createElement("input");
      document.body.appendChild(input);
      input.value = this.linkToIdea; // 2) Select the text

      input.focus();
      input.select(); // 3) Copy text to clipboard

      var isSuccessful = document.execCommand("copy");
      this.snackbar = true;
    },
    vote: function vote(idea) {
      this.dialog = true;
      this.linkToIdea = this.baseUrl + "public-ideas/view/" + idea.id;
      this.ideaImg = idea.img;
    },
    goAdmin: function goAdmin() {
      var host = window.baseUrl;
      window.location = host + "admin";
    },
    checkAction: function checkAction(icon) {
      var host = window.baseUrl;

      switch (icon) {
        case "add":
          window.location = host + "ideaCreation";
          break;

        case "home":
          window.location = host;
          break;

        case "link":
          window.location = "https://asakaa.com";
          break;

        case "monetization_on":
          window.location = host + "pricing";
          break;

        case "arrow_forward":
          window.location = host + "login";
          break;

        case "person_add":
          window.location = host + "register";
          break;

        case "contacts":
          window.location = host + "public-ideas";
          break;

        default:
          break;
      }
    },
    getPublicIdea: function getPublicIdea() {
      var _this = this;

      axios.get("/getPublicIdea/" + this.id).then(function (response) {
        _this.idea = response.data.idea;
        _this.featured = response.data.featured;
        _this.likes = response.data.desired;
      })["catch"](function (error) {
        console.log(error);
      });
    }
  },
  mounted: function mounted() {
    this.getPublicIdea();
    document.getElementById('home').style.display = "none";
  } //end mounted

});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16&":
/*!*********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16& ***!
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
    { staticClass: "hole" },
    [
      _c(
        "v-app",
        { attrs: { id: "inspire" } },
        [
          _c(
            "v-content",
            [
              _c(
                "v-container",
                { attrs: { fluid: "" } },
                [
                  _c(
                    "v-snackbar",
                    {
                      attrs: {
                        bottom: _vm.y === "bottom",
                        left: _vm.x === "left",
                        "multi-line": _vm.mode === "multi-line",
                        right: _vm.x === "right",
                        timeout: _vm.timeout,
                        top: _vm.y === "top",
                        vertical: _vm.mode === "vertical"
                      },
                      model: {
                        value: _vm.snackbar,
                        callback: function($$v) {
                          _vm.snackbar = $$v
                        },
                        expression: "snackbar"
                      }
                    },
                    [
                      _vm._v(
                        "\r\n        " + _vm._s(_vm.text) + "\r\n        "
                      ),
                      _c(
                        "v-btn",
                        {
                          attrs: { color: "blue" },
                          on: {
                            click: function($event) {
                              _vm.snackbar = false
                            }
                          }
                        },
                        [_vm._v("Cerrar")]
                      )
                    ],
                    1
                  ),
                  _vm._v(" "),
                  _c(
                    "v-layout",
                    { attrs: { "justify-center": "" } },
                    [
                      _c(
                        "v-dialog",
                        {
                          attrs: { "max-width": "400" },
                          model: {
                            value: _vm.dialog,
                            callback: function($$v) {
                              _vm.dialog = $$v
                            },
                            expression: "dialog"
                          }
                        },
                        [
                          _c(
                            "v-card",
                            { attrs: { hover: true, elevation: 10 } },
                            [
                              _c("v-img", {
                                attrs: {
                                  src: _vm.ideaImg,
                                  "aspect-ratio": "2.75"
                                }
                              }),
                              _vm._v(" "),
                              _c("v-card-title", { staticClass: "headline" }, [
                                _vm._v(
                                  "Aquí tienes un link para compartir esta genial idea."
                                )
                              ]),
                              _vm._v(" "),
                              _c("v-card-text", [
                                _c("input", {
                                  attrs: { type: "hidden", id: "linkToA" },
                                  domProps: { value: _vm.linkToIdea }
                                }),
                                _vm._v(" "),
                                _c(
                                  "a",
                                  {
                                    staticStyle: { "text-decoration": "none" },
                                    attrs: { href: _vm.linkToIdea }
                                  },
                                  [_vm._v(_vm._s(_vm.linkToIdea))]
                                )
                              ]),
                              _vm._v(" "),
                              _c(
                                "v-card-actions",
                                [
                                  _c("v-spacer"),
                                  _vm._v(" "),
                                  _c(
                                    "v-btn",
                                    {
                                      attrs: { text: "", small: "" },
                                      on: {
                                        click: function($event) {
                                          _vm.dialog = false
                                        }
                                      }
                                    },
                                    [_vm._v("Cancelar")]
                                  ),
                                  _vm._v(" "),
                                  _c("v-spacer"),
                                  _vm._v(" "),
                                  _c(
                                    "v-btn",
                                    {
                                      attrs: {
                                        color: "blue darken-1",
                                        dark: ""
                                      },
                                      on: {
                                        click: function($event) {
                                          return _vm.copyPorta(_vm.linkToIdea)
                                        }
                                      }
                                    },
                                    [_vm._v("Copiar al portapapeles")]
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
                  !_vm.idea
                    ? _c(
                        "v-layout",
                        [
                          _c(
                            "v-flex",
                            [
                              _c("v-img", {
                                attrs: {
                                  src: _vm.baseUrl + "images/empty.svg",
                                  height: "400",
                                  contain: ""
                                }
                              }),
                              _vm._v(" "),
                              _c("br"),
                              _vm._v(" "),
                              _c("br"),
                              _vm._v(" "),
                              _c(
                                "v-banner",
                                {
                                  attrs: { "two-line": "" },
                                  scopedSlots: _vm._u(
                                    [
                                      {
                                        key: "actions",
                                        fn: function() {
                                          return [
                                            _c(
                                              "v-btn",
                                              {
                                                attrs: {
                                                  text: "",
                                                  color: "deep-purple accent-4"
                                                }
                                              },
                                              [_vm._v("Crear innovación ahora")]
                                            )
                                          ]
                                        },
                                        proxy: true
                                      }
                                    ],
                                    null,
                                    false,
                                    3162367482
                                  )
                                },
                                [
                                  _c(
                                    "v-avatar",
                                    {
                                      attrs: {
                                        slot: "icon",
                                        color: "deep-purple accent-4",
                                        size: "40"
                                      },
                                      slot: "icon"
                                    },
                                    [
                                      _c(
                                        "v-icon",
                                        {
                                          attrs: {
                                            icon: "mdi-lock",
                                            color: "white"
                                          }
                                        },
                                        [_vm._v("search")]
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(
                                    "Lo sentimos, al parecer la idea presente aún no es creada.\r\n                "
                                  ),
                                  _c("b", [_vm._v(_vm._s(_vm.searchQuery))]),
                                  _vm._v(
                                    "\r\n                . Aunque podrías ser el primero en hacerlo. Qué dices?\r\n                "
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
                    : _c(
                        "v-layout",
                        { attrs: { row: "" } },
                        [
                          _c(
                            "v-flex",
                            {
                              staticStyle: { "margin-top": "5px" },
                              attrs: {
                                lg1: "",
                                "pb-3": "",
                                "ml-3": "",
                                "pt-3": ""
                              }
                            },
                            [
                              _c(
                                "v-btn",
                                {
                                  staticClass: "mx-2",
                                  attrs: {
                                    fab: "",
                                    dark: "",
                                    small: "",
                                    color: "#576CFF",
                                    to: { name: "global-ideas" }
                                  }
                                },
                                [_c("v-icon", [_vm._v("arrow_back")])],
                                1
                              )
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c(
                            "v-flex",
                            {
                              staticStyle: { "margin-bottom": "10px" },
                              attrs: {
                                lg8: "",
                                "mb-3": "",
                                "text-xs-center": ""
                              }
                            },
                            [_c("h2", [_vm._v("Idea actual")])]
                          ),
                          _vm._v(" "),
                          _c(
                            "v-flex",
                            {
                              attrs: {
                                lg2: "",
                                "mt-2": "",
                                "text-xs-right": "",
                                "hide-sm-and-down": ""
                              }
                            },
                            [_c("h2", [_vm._v("Tendencias")])]
                          )
                        ],
                        1
                      ),
                  _vm._v(" "),
                  _c(
                    "v-layout",
                    { attrs: { row: "", wrap: "" } },
                    [
                      _c(
                        "v-flex",
                        {
                          staticStyle: { "margin-top": "20px" },
                          attrs: {
                            xs12: "",
                            sm12: "",
                            "pa-2": "",
                            md8: "",
                            lg8: "",
                            xl8: ""
                          }
                        },
                        [
                          _c(
                            "v-card",
                            { staticClass: "mx-auto", attrs: { hover: "" } },
                            [
                              _c(
                                "v-list-item",
                                [
                                  _c(
                                    "v-avatar",
                                    { attrs: { size: "32px", item: "" } },
                                    [
                                      _c("v-img", {
                                        attrs: {
                                          src: _vm.idea.img,
                                          alt: "Asakaa Innova"
                                        }
                                      })
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c(
                                    "v-list-item-content",
                                    { staticStyle: { "margin-left": "15px" } },
                                    [
                                      _c(
                                        "v-list-item-title",
                                        { staticClass: "headline" },
                                        [
                                          _vm._v(
                                            _vm._s(
                                              _vm._f("uppercaseFirst")(
                                                _vm.idea.title
                                              )
                                            )
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _vm.idea.author == "showme"
                                        ? _c(
                                            "v-list-item-subtitle",
                                            {
                                              staticStyle: {
                                                "margin-left": "2px"
                                              }
                                            },
                                            [
                                              _vm._v(
                                                "por " +
                                                  _vm._s(_vm.idea.escrita)
                                              )
                                            ]
                                          )
                                        : _c(
                                            "v-list-item-subtitle",
                                            {
                                              staticStyle: {
                                                "margin-left": "2px"
                                              }
                                            },
                                            [_vm._v("Anónimo(a)")]
                                          )
                                    ],
                                    1
                                  )
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("v-img", {
                                attrs: { src: _vm.idea.img, height: "194" }
                              }),
                              _vm._v(" "),
                              _c("v-card-text", [
                                _c(
                                  "div",
                                  { staticStyle: { "font-size": "1.1rem" } },
                                  [
                                    _c("b", [_vm._v("Descripción corta:")]),
                                    _vm._v(
                                      "\r\n                    " +
                                        _vm._s(_vm.idea.description) +
                                        "\r\n                    "
                                    ),
                                    _c("br"),
                                    _vm._v(" "),
                                    _c("br"),
                                    _vm._v(" "),
                                    _c("b", [_vm._v("Categoría:")]),
                                    _vm._v(
                                      "\r\n                    " +
                                        _vm._s(
                                          _vm._f("toCategory")(
                                            _vm.idea.category
                                          )
                                        ) +
                                        "\r\n                  "
                                    )
                                  ]
                                )
                              ]),
                              _vm._v(" "),
                              _c(
                                "v-card-actions",
                                [
                                  _c(
                                    "v-btn",
                                    {
                                      attrs: { icon: "" },
                                      on: {
                                        click: function($event) {
                                          return _vm.goIdea(_vm.idea.id)
                                        }
                                      }
                                    },
                                    [_c("v-icon", [_vm._v("thumb_up")])],
                                    1
                                  ),
                                  _vm._v(
                                    "\r\n                  " +
                                      _vm._s(_vm.likes) +
                                      "\r\n                  "
                                  ),
                                  _c(
                                    "v-btn",
                                    {
                                      attrs: { icon: "" },
                                      on: {
                                        click: function($event) {
                                          $event.stopPropagation()
                                          $event.preventDefault()
                                          return _vm.vote(_vm.idea)
                                        }
                                      }
                                    },
                                    [_c("v-icon", [_vm._v("share")])],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c("v-spacer"),
                                  _vm._v(" "),
                                  _c(
                                    "v-btn",
                                    {
                                      staticClass: "text-center",
                                      attrs: { icon: "" },
                                      on: {
                                        click: function($event) {
                                          _vm.show = !_vm.show
                                        }
                                      }
                                    },
                                    [
                                      _c("v-icon", [
                                        _vm._v(
                                          _vm._s(
                                            _vm.show
                                              ? "expand_less"
                                              : "expand_more"
                                          )
                                        )
                                      ])
                                    ],
                                    1
                                  )
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("v-expand-transition", [
                                _c(
                                  "div",
                                  {
                                    directives: [
                                      {
                                        name: "show",
                                        rawName: "v-show",
                                        value: _vm.show,
                                        expression: "show"
                                      }
                                    ]
                                  },
                                  [
                                    _c(
                                      "v-card",
                                      { staticClass: "mx-auto" },
                                      [
                                        _c("v-card-text", [
                                          _c("div", {
                                            domProps: {
                                              innerHTML: _vm._s(_vm.idea.body)
                                            }
                                          })
                                        ])
                                      ],
                                      1
                                    )
                                  ],
                                  1
                                )
                              ]),
                              _vm._v(" "),
                              _c(
                                "div",
                                { attrs: { id: "comentariosTemp" } },
                                [
                                  _c(
                                    "v-card-text",
                                    { staticStyle: { "text-align": "center" } },
                                    [
                                      _c(
                                        "v-btn",
                                        {
                                          on: {
                                            click: function($event) {
                                              return _vm.goIdea(_vm.idea.id)
                                            }
                                          }
                                        },
                                        [_vm._v("Leer comentarios")]
                                      )
                                    ],
                                    1
                                  )
                                ],
                                1
                              ),
                              _vm._v(" "),
                               false
                                ? undefined
                                : _vm._e()
                            ],
                            1
                          )
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-flex",
                        {
                          staticClass: "hidden-sm-and-down",
                          attrs: { md3: "", lg4: "", xl4: "", "pl-2": "" }
                        },
                        [
                          _c(
                            "v-container",
                            [
                              _c(
                                "v-layout",
                                { attrs: { row: "" } },
                                _vm._l(_vm.featured, function(f) {
                                  return _c(
                                    "v-flex",
                                    {
                                      key: f.id,
                                      staticStyle: { padding: "10px" }
                                    },
                                    [
                                      _c(
                                        "v-card",
                                        {
                                          staticClass: "mx-auto",
                                          attrs: {
                                            "max-width": "340",
                                            hover: ""
                                          }
                                        },
                                        [
                                          _c(
                                            "v-list-item",
                                            [
                                              _c(
                                                "v-avatar",
                                                {
                                                  attrs: {
                                                    size: "32px",
                                                    item: ""
                                                  }
                                                },
                                                [
                                                  _c("v-img", {
                                                    attrs: {
                                                      src: f.img,
                                                      alt: "Asakaa Innova",
                                                      "mr-3": ""
                                                    }
                                                  })
                                                ],
                                                1
                                              ),
                                              _vm._v(" "),
                                              _c(
                                                "v-list-item-content",
                                                {
                                                  staticStyle: {
                                                    "margin-left": "15px"
                                                  }
                                                },
                                                [
                                                  _c(
                                                    "v-list-item-title",
                                                    { staticClass: "headline" },
                                                    [
                                                      _vm._v(
                                                        _vm._s(
                                                          _vm._f(
                                                            "uppercaseFirst"
                                                          )(f.title)
                                                        )
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  f.author == "showme"
                                                    ? _c(
                                                        "v-list-item-subtitle",
                                                        {
                                                          staticStyle: {
                                                            "margin-left": "2px"
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            "por " +
                                                              _vm._s(f.name)
                                                          )
                                                        ]
                                                      )
                                                    : _c(
                                                        "v-list-item-subtitle",
                                                        {
                                                          staticStyle: {
                                                            "margin-left": "2px"
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            "por Anónimo(a)"
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
                                          _c("v-img", {
                                            attrs: { src: f.img, height: "194" }
                                          }),
                                          _vm._v(" "),
                                          _c("v-card-text", [
                                            _c("h4", [
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("largeText")(
                                                    f.description
                                                  )
                                                )
                                              )
                                            ]),
                                            _vm._v(" "),
                                            _c("h4", [
                                              _c("b", [_vm._v("Categoría:")]),
                                              _vm._v(
                                                "\r\n                          " +
                                                  _vm._s(
                                                    _vm._f("toCategory")(
                                                      f.category
                                                    )
                                                  ) +
                                                  "\r\n                        "
                                              )
                                            ])
                                          ]),
                                          _vm._v(" "),
                                          _c(
                                            "v-card-actions",
                                            [
                                              _c(
                                                "v-btn",
                                                {
                                                  attrs: {
                                                    to: {
                                                      name: "view-idea",
                                                      params: { id: f.id }
                                                    },
                                                    text: "",
                                                    color:
                                                      "deep-purple accent-4"
                                                  }
                                                },
                                                [_vm._v("Leer completa")]
                                              ),
                                              _vm._v(" "),
                                              _c("v-spacer"),
                                              _vm._v(" "),
                                              _c(
                                                "v-btn",
                                                {
                                                  attrs: { icon: "" },
                                                  on: {
                                                    click: function($event) {
                                                      $event.stopPropagation()
                                                      $event.preventDefault()
                                                      return _vm.vote(_vm.idea)
                                                    }
                                                  }
                                                },
                                                [
                                                  _c("v-icon", [
                                                    _vm._v("mdi-share-variant")
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
                                    ],
                                    1
                                  )
                                }),
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
                  _c("br")
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

/***/ "./resources/js/components/landing3/idea/view.vue":
/*!********************************************************!*\
  !*** ./resources/js/components/landing3/idea/view.vue ***!
  \********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./view.vue?vue&type=template&id=5f756c16& */ "./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16&");
/* harmony import */ var _view_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./view.vue?vue&type=script&lang=js& */ "./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _view_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__["render"],
  _view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/landing3/idea/view.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js&":
/*!*********************************************************************************!*\
  !*** ./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_view_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./view.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/idea/view.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_view_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16& ***!
  \***************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./view.vue?vue&type=template&id=5f756c16& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/idea/view.vue?vue&type=template&id=5f756c16&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_view_vue_vue_type_template_id_5f756c16___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);