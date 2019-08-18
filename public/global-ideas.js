(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["global-ideas"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  props: {
    source: String
  },
  data: function data() {
    var _ref;

    return _ref = {
      settings: {
        maxScrollbarLength: 60
      },
      category: 'business',
      select: "all",
      items2: [{
        category: "Todas",
        val: 'all'
      }, {
        category: "Oportunidades de negocio",
        val: 'businessandconsumer'
      }, {
        category: "Sostenibilidad",
        val: 'sustainability'
      }, {
        category: "Vida y Salud",
        val: 'lifeandhealth'
      }, {
        category: "Arte y Cultura",
        val: 'artandculture'
      }, {
        category: "Hogar y Mascotas",
        val: 'homeandpets'
      }, {
        category: "Tecnología",
        val: 'scienceandtechnology'
      }, {
        category: "Turismo y Viajes",
        val: 'tourismandtravel'
      }, {
        category: "Transporte",
        val: 'transport'
      }, {
        category: "Comida",
        val: 'food'
      }, {
        category: "Deportes",
        val: 'sportsandentertainment'
      }, {
        category: "Política",
        val: 'politicsandsociety'
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
    }, _defineProperty(_ref, "dialog", false), _defineProperty(_ref, "drawer", false), _defineProperty(_ref, "ideaImg", " "), _defineProperty(_ref, "items", [{
      icon: "add",
      text: "Crear nueva idea"
    }, {
      icon: "contacts",
      text: "Todas las ideas"
    },
    /* {
       icon: "keyboard_arrow_up",
       "icon-alt": "keyboard_arrow_down",
       text: "Categorías",
         model: false,
       children: [
         { icon: "business", text: "Oportunidades de Negocio" },
         { icon: "accessibility", text: "Sostenibilidad" },
         { icon: "healing", text: "Vida y salud" },
         { icon: "scatter_plot", text: "Arte y Cultura" },
         { icon: "pets", text: "Hogar y Mascotas" },
         { icon: "devices_other", text: "Tecnología" },
         { icon: "local_airport", text: "Turismo y Viajes" },
         { icon: "directions_car", text: "Transporte" },
         { icon: "fastfood", text: "Comida" },
         { icon: "whatshot", text: "Deportes" }
       ]
     },*/
    {
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
    }]), _defineProperty(_ref, "publicIdeas", []), _defineProperty(_ref, "publicIdeasNoFiltered", []), _defineProperty(_ref, "searchQuery", ""), _defineProperty(_ref, "pageSize", 8), _ref;
  },
  computed: {
    bannerImg: function bannerImg() {
      if (this.select == 'all') {
        return 'https://cdn.pixabay.com/photo/2016/03/09/16/47/woman-1246844_960_720.jpg';
      } else if (this.select == 'sustainability') {
        return 'https://cdn.pixabay.com/photo/2016/04/26/15/01/holiday-1354563_960_720.jpg';
      } else if (this.select == 'businessandconsumer') {
        return 'https://cdn.pixabay.com/photo/2015/03/26/09/40/business-suit-690048_960_720.jpg';
      } else if (this.select == 'lifeandhealth') {
        return 'https://cdn.pixabay.com/photo/2018/02/06/14/07/dance-3134828_960_720.jpg';
      } else if (this.select == 'artandculture') {
        return 'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg';
      } else if (this.select == 'homeandpets') {
        return 'https://cdn.pixabay.com/photo/2016/11/22/19/41/adorable-1850276_960_720.jpg';
      } else if (this.select == 'scienceandtechnology') {
        return 'https://cdn.pixabay.com/photo/2017/12/10/17/00/robot-3010309_960_720.jpg';
      } else if (this.select == 'tourismandtravel') {
        return 'https://cdn.pixabay.com/photo/2015/07/11/23/02/plane-841441_960_720.jpg';
      } else if (this.select == 'transport') {
        return 'https://cdn.pixabay.com/photo/2017/10/27/10/27/subway-2893851_960_720.jpg';
      } else if (this.select == 'food') {
        return 'https://cdn.pixabay.com/photo/2017/06/29/20/09/mexican-2456038_960_720.jpg';
      } else if (this.select == 'sportsandentertainment') {
        return 'https://cdn.pixabay.com/photo/2014/07/04/19/15/biker-384178_960_720.jpg';
      } else if (this.select == 'politicsandsociety') {
        return 'https://cdn-images-1.medium.com/max/1502/1*mBDvKqK7CbHPGVQw4L3IAw.png';
      } else {
        return 'https://cdn.pixabay.com/photo/2019/06/25/04/40/light-4297386_960_720.jpg';
      }
    },
    filteredIdeas2: function filteredIdeas2() {
      var _this = this;

      if (this.searchQuery == "") {
        return this.publicIdeas;
      } else {
        return this.publicIdeas.filter(function (idea) {
          return idea.title.toLowerCase().match(_this.searchQuery.toLowerCase());
        });
      }
    },
    totalPages: function totalPages() {
      if (this.publicIdeas.length % this.pageSize == 0) {
        return this.publicIdeas.length / this.pageSize;
      } else {
        return Math.floor(this.publicIdeas.length / this.pageSize) + 1;
      }
    },
    filteredIdeas: function filteredIdeas() {
      var _this2 = this;

      if (this.searchQuery == "" && this.select == "all") {
        this.publicIdeas = this.publicIdeasNoFiltered;
        return this.publicIdeas.slice((this.currentPage - 1) * this.pageSize, (this.currentPage - 1) * this.pageSize + this.pageSize);
      } else if (this.searchQuery == "" && this.select != "all") {
        this.publicIdeas = this.publicIdeas.slice((this.currentPage - 1) * this.pageSize, (this.currentPage - 1) * this.pageSize + this.pageSize);
        return this.publicIdeas.filter(function (idea) {
          if (idea.category == _this2.select) {
            return true;
          } else {
            return false;
          }
        });
      } else if (this.searchQuery != "" && this.select != "all") {
        this.publicIdeas = this.publicIdeas.slice((this.currentPage - 1) * this.pageSize, (this.currentPage - 1) * this.pageSize + this.pageSize);
        this.publicIdeas = this.publicIdeas.filter(function (idea) {
          if (idea.category == _this2.select) {
            return true;
          } else {
            return false;
          }
        });
        return this.publicIdeas.filter(function (idea) {
          return idea.title.toLowerCase().match(_this2.searchQuery.toLowerCase());
        });
      } else {
        return this.publicIdeas.filter(function (idea) {
          return idea.title.toLowerCase().match(_this2.searchQuery.toLowerCase());
        });
      }
    } // end visible users

  },
  methods: {
    checkUser: function checkUser(privacy) {
      if (privacy == 'showme') {
        return true;
      } else {
        return false;
      }
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
    goIdea: function goIdea(idIdea) {
      var host = window.baseUrl;
      window.location = host + "innovations/" + idIdea;
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
    getPublicIdeas: function getPublicIdeas() {
      var _this3 = this;

      axios.get("/getPublicIdeas").then(function (response) {
        _this3.publicIdeas = response.data.publicIdeas;
        _this3.publicIdeasNoFiltered = response.data.publicIdeas;
      })["catch"](function (error) {
        console.log(error);
      });
    }
  },
  mounted: function mounted() {
    this.getPublicIdeas();
    document.getElementById('home').style.display = "none";
    document.getElementById("inicioLink").classList.remove("active");
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.lightbox {\r\n    box-shadow: 0 0 20px inset rgba(0, 0, 0, 0.2);\r\n    background-image: linear-gradient(to top, rgba(0, 0, 0, 0.4) 0%, transparent 102px);\n}\r\n\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--7-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--7-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./global-ideas.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac&":
/*!************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac& ***!
  \************************************************************************************************************************************************************************************************************************/
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
                      _vm._v("\n        " + _vm._s(_vm.text) + "\n        "),
                      _c(
                        "v-btn",
                        {
                          attrs: { color: "#576CFF" },
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
                            {
                              attrs: {
                                hover: true,
                                elevation: 10,
                                outlined: true
                              }
                            },
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
                                      attrs: { color: "#576CFF", dark: "" },
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
                  _c(
                    "v-layout",
                    {
                      attrs: {
                        row: "",
                        "pl-3": "",
                        "pr-3": "",
                        "pt-1": "",
                        "pb-2": ""
                      }
                    },
                    [
                      _c(
                        "v-flex",
                        [
                          _c(
                            "v-img",
                            {
                              staticStyle: { "border-radius": "10px" },
                              attrs: { "aspect-ratio": 6, src: _vm.bannerImg }
                            },
                            [
                              _c(
                                "v-layout",
                                {
                                  staticClass: "lightbox white--text",
                                  attrs: {
                                    "pa-2": "",
                                    column: "",
                                    "fill-height": ""
                                  }
                                },
                                [
                                  _c("v-spacer"),
                                  _vm._v(" "),
                                  _c(
                                    "v-flex",
                                    {
                                      staticStyle: {
                                        padding: "10px",
                                        "font-size": "1.2rem"
                                      },
                                      attrs: { shrink: "" }
                                    },
                                    [
                                      _c(
                                        "div",
                                        {
                                          staticClass: "subheading",
                                          staticStyle: { color: "white" }
                                        },
                                        [
                                          _vm._v(
                                            "Estamos mejorando el mundo con nuevas ideas."
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "div",
                                        {
                                          staticClass: "body-1",
                                          staticStyle: { color: "white" }
                                        },
                                        [_vm._v("Quieres ser parte?")]
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
                          _c("br"),
                          _vm._v(" "),
                          _c(
                            "v-layout",
                            {
                              staticStyle: { "margin-left": "10px" },
                              attrs: { row: "" }
                            },
                            [
                              _c(
                                "v-flex",
                                {
                                  attrs: {
                                    xs12: "",
                                    sm12: "",
                                    md6: "",
                                    lg6: ""
                                  }
                                },
                                [
                                  _c("v-text-field", {
                                    attrs: {
                                      color: "#576CFF",
                                      label:
                                        "Busca alguna innovación de nuestros miles de usuarios",
                                      placeholder: "Ej: Energía renovable",
                                      outlined: ""
                                    },
                                    model: {
                                      value: _vm.searchQuery,
                                      callback: function($$v) {
                                        _vm.searchQuery = $$v
                                      },
                                      expression: "searchQuery"
                                    }
                                  })
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("v-flex", {
                                staticClass: "hidden-sm-and-down",
                                attrs: { md1: "", lg1: "" }
                              }),
                              _vm._v(" "),
                              _c(
                                "v-flex",
                                {
                                  staticStyle: { "margin-right": "10px" },
                                  attrs: {
                                    xs12: "",
                                    sm12: "",
                                    md4: "",
                                    lg4: ""
                                  }
                                },
                                [
                                  _c("v-select", {
                                    attrs: {
                                      items: _vm.items2,
                                      "item-text": "category",
                                      "item-value": "val",
                                      label:
                                        "Filtrar ideas por categoría\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                      outline: "",
                                      color: "#576CFF",
                                      "append-icon": "arrow_drop_down"
                                    },
                                    model: {
                                      value: _vm.select,
                                      callback: function($$v) {
                                        _vm.select = $$v
                                      },
                                      expression: "select"
                                    }
                                  })
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
                  _vm.filteredIdeas.length <= 0
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
                                                },
                                                on: {
                                                  click: function($event) {
                                                    return _vm.checkAction(
                                                      "add"
                                                    )
                                                  }
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
                                    4062464224
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
                                    "Lo sentimos, al parecer aún no hay ideas con el título\n            "
                                  ),
                                  _c("b", [_vm._v(_vm._s(_vm.searchQuery))]),
                                  _vm._v(
                                    "\n              . Aunque podrías ser el primero en crearla. Qué dices?\n            "
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
                        { attrs: { row: "", wrap: "" } },
                        _vm._l(_vm.filteredIdeas, function(idea) {
                          return _c(
                            "v-flex",
                            {
                              key: idea.id,
                              staticStyle: { padding: "10px !important" },
                              attrs: {
                                xs12: "",
                                sm12: "",
                                "pa-3": "",
                                md4: "",
                                lg4: "",
                                xl3: "",
                                transition: "scroll-y-transition"
                              }
                            },
                            [
                              _c(
                                "v-card",
                                {
                                  staticClass: "mx-auto",
                                  attrs: { "max-width": "", hover: "" }
                                },
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
                                              src: idea.img,
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
                                          staticStyle: { "margin-left": "15px" }
                                        },
                                        [
                                          _c(
                                            "v-list-item-title",
                                            { staticClass: "headline" },
                                            [
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("uppercaseFirst")(
                                                    idea.title
                                                  )
                                                )
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          _vm.checkUser(idea.author)
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
                                                      _vm._s(idea.escrita)
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
                                    attrs: { src: idea.img, height: "194" }
                                  }),
                                  _vm._v(" "),
                                  _c("v-card-text", [
                                    _vm._v(
                                      "\n             \n             " +
                                        _vm._s(
                                          _vm._f("largeText")(idea.description)
                                        ) +
                                        "\n           \n              "
                                    ),
                                    _c("h4", [
                                      _c("b", [_vm._v("Categoría: ")]),
                                      _vm._v(
                                        " " +
                                          _vm._s(
                                            _vm._f("toCategory")(idea.category)
                                          )
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
                                              params: { id: idea.id }
                                            },
                                            text: "",
                                            color: "deep-purple accent-4"
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
                                              return _vm.vote(idea)
                                            }
                                          }
                                        },
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
                        }),
                        1
                      ),
                  _vm._v(" "),
                  _c("br"),
                  _vm._v(" "),
                  _vm.filteredIdeas.length > 0
                    ? _c(
                        "v-layout",
                        {
                          attrs: {
                            row: "",
                            "align-center": "",
                            "justify-center": ""
                          }
                        },
                        [
                          _c("v-flex", [
                            _c(
                              "div",
                              { staticClass: "text-center" },
                              [
                                _c("v-pagination", {
                                  attrs: {
                                    color: "#576CFF",
                                    length: _vm.totalPages,
                                    circle: ""
                                  },
                                  model: {
                                    value: _vm.currentPage,
                                    callback: function($$v) {
                                      _vm.currentPage = $$v
                                    },
                                    expression: "currentPage"
                                  }
                                })
                              ],
                              1
                            )
                          ])
                        ],
                        1
                      )
                    : _vm._e(),
                  _vm._v(" "),
                  _c("br"),
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

/***/ "./resources/js/components/landing3/global-ideas.vue":
/*!***********************************************************!*\
  !*** ./resources/js/components/landing3/global-ideas.vue ***!
  \***********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./global-ideas.vue?vue&type=template&id=81188fac& */ "./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac&");
/* harmony import */ var _global_ideas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./global-ideas.vue?vue&type=script&lang=js& */ "./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./global-ideas.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _global_ideas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__["render"],
  _global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/landing3/global-ideas.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js&":
/*!************************************************************************************!*\
  !*** ./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js& ***!
  \************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./global-ideas.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&":
/*!********************************************************************************************!*\
  !*** ./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css& ***!
  \********************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--7-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--7-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./global-ideas.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac&":
/*!******************************************************************************************!*\
  !*** ./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac& ***!
  \******************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./global-ideas.vue?vue&type=template&id=81188fac& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing3/global-ideas.vue?vue&type=template&id=81188fac&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_global_ideas_vue_vue_type_template_id_81188fac___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);