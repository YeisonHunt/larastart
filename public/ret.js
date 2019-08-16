(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["ret"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js& ***!
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
      value: [{
        name: 'Equipo 1',
        code: 'js'
      }],
      options: [{
        name: 'Equipo 1',
        code: 'vu'
      }, {
        name: 'Equipo 2',
        code: 'js'
      }, {
        name: 'Equipo 3',
        code: 'os'
      }],
      user: window.User,
      reto: {},
      form: new Form({
        id: '',
        title: '',
        description: '',
        editordata: '',
        img: '',
        category: 'sustainability',
        language: 'es',
        author: 'anonymous',
        privacy: 'me',
        type: 'solucion',
        reto_id: this.$route.params.id
      })
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
        //this.contactPhoto = fileReader.result;
        _this.form.img = fileReader.result;
      });
      fileReader.readAsDataURL(files[0]); //this.contactPhotoImg = files[0]; // file without any changes
      // esta ultima es la que se envia
    },
    testFun: function testFun() {
      this.form.editordata = $('#kt_summernote_1').summernote('code');
      console.log(this.form.editordata);
    },
    createUser: function createUser() {
      var _this2 = this;

      this.$Progress.start(); // Submit the form via a POST request

      this.form.editordata = $('#kt_summernote_1').summernote('code');
      this.form.post('/saveIdea2').then(function (_ref) {
        var data = _ref.data;

        _this2.$router.push({
          name: 'ver-reto',
          params: {
            id: _this2.$route.params.id
          }
        });

        toastr.success('Awesome!', 'New idea has appeared.');

        _this2.form.reset();
      })["catch"](function () {
        toastr.error('Oops!', 'Something goes wrong');
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    updateRichText: function updateRichText() {
      this.form.editordata = $('textarea[name="editordata"]').html($('#kt_summernote_1').code());
    },
    getReto: function getReto() {
      var _this3 = this;

      axios.get("/getInnovation/" + this.$route.params.id).then(function (response) {
        _this3.reto = response.data.idea; //console.log(response);
      })["catch"](function (error) {
        console.log(error);
      });
    }
  },
  mounted: function mounted() {
    this.getReto();
    var KTSummernoteDemo = {
      init: function init() {
        $("#kt_summernote_1").summernote({
          height: 250
        }); //$('.kt-selectpicker').selectpicker();

        $("#content").summernote();
        $('.dropdown-toggle').dropdown();
      }
    };
    jQuery(document).ready(function () {
      KTSummernoteDemo.init();
    });
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.note-toolbar {\r\n    z-index: auto;\n}\n.summernote {\r\n\tdisplay: fixed !important;\n}\n.blocked {\r\n\tz-index: 999 !important;\n}\n.myForm {\r\n\tbackground-color: #fafafa !important;\n}\r\n\r\n\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./SolucionReto.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6&":
/*!*********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6& ***!
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
  return _c("div", { staticClass: "container-fluid" }, [
    _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-12" }, [
        _c("div", { staticClass: "kt-section" }, [
          _c("span", { staticClass: "kt-section__info" }, [
            _vm._v(
              "\n\t\t\t\t\t\t\t\t\t\t\t\t\tReto Actual : " +
                _vm._s(_vm.reto.title) +
                "\n\t\t\t\t\t\t\t\t\t\t\t\t"
            )
          ]),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "kt-section__content kt-section__content--solid" },
            [
              _vm._v(
                "\n\t\t\t\t\t\t\t\t\t\t\t\t\tDescripción corta:  " +
                  _vm._s(_vm.reto.description) +
                  "\n\t\t\t\t\t\t\t\t\t\t\t\t"
              )
            ]
          )
        ])
      ])
    ]),
    _vm._v(" "),
    _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-lg-1" }),
      _vm._v(" "),
      _c("div", { staticClass: "col-lg-10 col-sm-12 col-md-10" }, [
        _c(
          "div",
          {
            staticClass:
              "kt-portlet kt-portlet--last kt-portlet--head-lg kt-portlet--responsive-mobile myForm ",
            attrs: { id: "kt_page_portlet" }
          },
          [
            _c(
              "form",
              {
                staticClass: "kt-form",
                attrs: { id: "kt_form" },
                on: {
                  submit: function($event) {
                    $event.preventDefault()
                    return _vm.createUser($event)
                  },
                  keydown: function($event) {
                    return _vm.form.onKeydown($event)
                  }
                }
              },
              [
                _c(
                  "div",
                  { staticClass: "kt-portlet__head kt-portlet__head--lg" },
                  [
                    _vm._m(0),
                    _vm._v(" "),
                    _c(
                      "div",
                      { staticClass: "kt-portlet__head-toolbar" },
                      [
                        _c(
                          "router-link",
                          {
                            staticClass: "btn btn-clean kt-margin-r-10",
                            attrs: {
                              to: {
                                name: "ver-reto",
                                params: { id: _vm.$route.params.id }
                              }
                            }
                          },
                          [
                            _c("i", {
                              staticClass: "la la-arrow-left",
                              staticStyle: { "padding-bottom": "8px" }
                            }),
                            _vm._v(" "),
                            _c("span", { staticClass: "kt-hidden-mobile" }, [
                              _vm._v("Atrás")
                            ])
                          ]
                        ),
                        _vm._v(" "),
                        _c("div", { staticClass: "btn-group" }, [
                          _c(
                            "button",
                            {
                              staticClass: "btn btn-brand",
                              attrs: { type: "submit", disabled: _vm.form.busy }
                            },
                            [
                              _c("i", {
                                staticClass: "la la-check",
                                staticStyle: { "padding-bottom": "8px" }
                              }),
                              _vm._v(" "),
                              _c("span", { staticClass: "kt-hidden-mobile" }, [
                                _vm._v("Guardar idea")
                              ])
                            ]
                          ),
                          _vm._v(" "),
                          _c("button", {
                            staticClass:
                              "btn btn-brand dropdown-toggle dropdown-toggle-split",
                            attrs: {
                              type: "button",
                              "data-toggle": "dropdown",
                              "aria-haspopup": "true",
                              "aria-expanded": "false"
                            }
                          }),
                          _vm._v(" "),
                          _vm._m(1)
                        ])
                      ],
                      1
                    )
                  ]
                ),
                _vm._v(" "),
                _c("div", { staticClass: "kt-portlet__body blocked " }, [
                  _c("div", { staticClass: "row" }, [
                    _c("div", { staticClass: "col-xl-1" }),
                    _vm._v(" "),
                    _c("div", { staticClass: "col-xl-11" }, [
                      _c(
                        "div",
                        { staticClass: "kt-section kt-section--first" },
                        [
                          _c("div", { staticClass: "kt-section__body" }, [
                            _c(
                              "h3",
                              {
                                staticClass:
                                  "kt-section__title kt-section__title-lg "
                              },
                              [_vm._v("Detalles de Idea")]
                            ),
                            _vm._v(" "),
                            _c("br"),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "form-group form-group-last row" },
                              [
                                _c(
                                  "label",
                                  { staticClass: "col-3 col-form-label" },
                                  [_vm._v("Privacidad de la idea")]
                                ),
                                _vm._v(" "),
                                _c("div", { staticClass: "col-9" }, [
                                  _c(
                                    "div",
                                    { staticClass: "kt-checkbox-inline" },
                                    [
                                      _c(
                                        "label",
                                        { staticClass: "kt-checkbox" },
                                        [
                                          _c("input", {
                                            directives: [
                                              {
                                                name: "model",
                                                rawName: "v-model",
                                                value: _vm.form.privacy,
                                                expression: "form.privacy"
                                              }
                                            ],
                                            class: {
                                              "is-invalid": _vm.form.errors.has(
                                                "privacy"
                                              )
                                            },
                                            attrs: {
                                              type: "radio",
                                              value: "me",
                                              name: "privacy"
                                            },
                                            domProps: {
                                              checked: _vm._q(
                                                _vm.form.privacy,
                                                "me"
                                              )
                                            },
                                            on: {
                                              change: function($event) {
                                                return _vm.$set(
                                                  _vm.form,
                                                  "privacy",
                                                  "me"
                                                )
                                              }
                                            }
                                          }),
                                          _vm._v(
                                            " Privada (Solo para mi)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                          ),
                                          _c("span")
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "label",
                                        { staticClass: "kt-checkbox" },
                                        [
                                          _c("input", {
                                            directives: [
                                              {
                                                name: "model",
                                                rawName: "v-model",
                                                value: _vm.form.privacy,
                                                expression: "form.privacy"
                                              }
                                            ],
                                            class: {
                                              "is-invalid": _vm.form.errors.has(
                                                "privacy"
                                              )
                                            },
                                            attrs: {
                                              type: "radio",
                                              value: "empresarial",
                                              name: "privacy"
                                            },
                                            domProps: {
                                              checked: _vm._q(
                                                _vm.form.privacy,
                                                "empresarial"
                                              )
                                            },
                                            on: {
                                              change: function($event) {
                                                return _vm.$set(
                                                  _vm.form,
                                                  "privacy",
                                                  "empresarial"
                                                )
                                              }
                                            }
                                          }),
                                          _vm._v(
                                            " Privada (Empresarial)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                          ),
                                          _c("span")
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "label",
                                        { staticClass: "kt-checkbox" },
                                        [
                                          _c("input", {
                                            directives: [
                                              {
                                                name: "model",
                                                rawName: "v-model",
                                                value: _vm.form.privacy,
                                                expression: "form.privacy"
                                              }
                                            ],
                                            class: {
                                              "is-invalid": _vm.form.errors.has(
                                                "privacy"
                                              )
                                            },
                                            attrs: {
                                              type: "radio",
                                              value: "public",
                                              name: "privacy"
                                            },
                                            domProps: {
                                              checked: _vm._q(
                                                _vm.form.privacy,
                                                "public"
                                              )
                                            },
                                            on: {
                                              change: function($event) {
                                                return _vm.$set(
                                                  _vm.form,
                                                  "privacy",
                                                  "public"
                                                )
                                              }
                                            }
                                          }),
                                          _vm._v(
                                            " Hacerla pública\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                          ),
                                          _c("span")
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c("has-error", {
                                        attrs: {
                                          form: _vm.form,
                                          field: "privacy"
                                        }
                                      })
                                    ],
                                    1
                                  )
                                ])
                              ]
                            ),
                            _vm._v(" "),
                            _c("br"),
                            _vm._v(" "),
                            _c("br"),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "form-group row" },
                              [
                                _c(
                                  "label",
                                  { staticClass: "col-3 col-form-label  " },
                                  [_vm._v("Título")]
                                ),
                                _vm._v(" "),
                                _c("div", { staticClass: "col-9" }, [
                                  _c("input", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.title,
                                        expression: "form.title"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    class: {
                                      "is-invalid": _vm.form.errors.has("title")
                                    },
                                    attrs: {
                                      name: "title",
                                      type: "text",
                                      placeholder:
                                        "e.g., Usar bolsa reutilizable a la hora de comprar",
                                      required: ""
                                    },
                                    domProps: { value: _vm.form.title },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "title",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  })
                                ]),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: { form: _vm.form, field: "title" }
                                })
                              ],
                              1
                            ),
                            _vm._v(" "),
                            _c("div", { staticClass: "form-group row" }, [
                              _c(
                                "label",
                                { staticClass: "col-3 col-form-label  " },
                                [_vm._v("Descripción corta")]
                              ),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "col-9" },
                                [
                                  _c("textarea", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.description,
                                        expression: "form.description"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    class: {
                                      "is-invalid": _vm.form.errors.has(
                                        "description"
                                      )
                                    },
                                    attrs: {
                                      name: "description",
                                      type: "text",
                                      placeholder:
                                        "e.g., Tener a la mano una bolsa grande para llevar las compras",
                                      rows: "2",
                                      required: ""
                                    },
                                    domProps: { value: _vm.form.description },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "description",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: {
                                      form: _vm.form,
                                      field: "description"
                                    }
                                  })
                                ],
                                1
                              )
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "form-group row" }, [
                              _c(
                                "label",
                                {
                                  staticStyle: { "margin-left": "10px" },
                                  attrs: { for: "" }
                                },
                                [_vm._v("Descripción detallada")]
                              ),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "col-12" },
                                [
                                  _c("textarea", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.editordata,
                                        expression: "form.editordata"
                                      }
                                    ],
                                    staticClass: "summernote richtext",
                                    class: {
                                      "is-invalid": _vm.form.errors.has(
                                        "editordata"
                                      )
                                    },
                                    attrs: {
                                      id: "kt_summernote_1",
                                      name: "editordata"
                                    },
                                    domProps: { value: _vm.form.editordata },
                                    on: {
                                      change: _vm.updateRichText,
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "editordata",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: { form: _vm.form, field: "body" }
                                  }),
                                  _vm._v(" "),
                                  _c(
                                    "span",
                                    { staticClass: "form-text text-muted" },
                                    [
                                      _vm._v(
                                        "El anterior editor enrriquecido de texto te permite escribir descripciones profesionales al alcance de tu mano. "
                                      )
                                    ]
                                  )
                                ],
                                1
                              )
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "form-group row" }, [
                              _c(
                                "label",
                                { staticClass: "col-3 col-form-label" },
                                [_vm._v("Imágen alusiva a la idea")]
                              ),
                              _vm._v(" "),
                              _c("div", { staticClass: "col-9" }, [
                                _c(
                                  "div",
                                  { staticClass: "input-group" },
                                  [
                                    _vm._m(2),
                                    _vm._v(" "),
                                    _c("input", {
                                      staticClass: "form-control",
                                      class: {
                                        "is-invalid": _vm.form.errors.has("img")
                                      },
                                      attrs: {
                                        type: "file",
                                        accept: "image/x-png, image/jpeg",
                                        name: "img",
                                        placeholder:
                                          "https://wwwmyawesomeideaimg.com/myimage.jpg",
                                        "aria-describedby": "basic-addon1",
                                        required: ""
                                      },
                                      on: { change: _vm.onFilePicked }
                                    }),
                                    _vm._v(" "),
                                    _c("has-error", {
                                      attrs: { form: _vm.form, field: "img" }
                                    })
                                  ],
                                  1
                                ),
                                _vm._v(" "),
                                _c(
                                  "span",
                                  { staticClass: "form-text text-muted" },
                                  [
                                    _vm._v(
                                      "Escoger una buena imágen hace que la idea sea más llamativa y fácil de comprender."
                                    )
                                  ]
                                )
                              ])
                            ]),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "form-group form-group-last row" },
                              [
                                _c(
                                  "label",
                                  { staticClass: "col-3 col-form-label" },
                                  [_vm._v("Categoría")]
                                ),
                                _vm._v(" "),
                                _c("div", { staticClass: "col-9" }, [
                                  _c(
                                    "div",
                                    { staticClass: "input-group" },
                                    [
                                      _c(
                                        "select",
                                        {
                                          directives: [
                                            {
                                              name: "model",
                                              rawName: "v-model",
                                              value: _vm.form.category,
                                              expression: "form.category"
                                            }
                                          ],
                                          staticClass:
                                            "kt-selectpicker form-control ",
                                          class: {
                                            "is-invalid": _vm.form.errors.has(
                                              "category"
                                            )
                                          },
                                          attrs: {
                                            "data-container": "body",
                                            name: "category",
                                            id: "kt-selectpicker1",
                                            required: ""
                                          },
                                          on: {
                                            change: function($event) {
                                              var $$selectedVal = Array.prototype.filter
                                                .call(
                                                  $event.target.options,
                                                  function(o) {
                                                    return o.selected
                                                  }
                                                )
                                                .map(function(o) {
                                                  var val =
                                                    "_value" in o
                                                      ? o._value
                                                      : o.value
                                                  return val
                                                })
                                              _vm.$set(
                                                _vm.form,
                                                "category",
                                                $event.target.multiple
                                                  ? $$selectedVal
                                                  : $$selectedVal[0]
                                              )
                                            }
                                          }
                                        },
                                        [
                                          _c(
                                            "option",
                                            {
                                              attrs: { value: "sustainability" }
                                            },
                                            [_vm._v("Sostenibilidad")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: { value: "lifeandhealth" }
                                            },
                                            [_vm._v("Vida & Salud ")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: { value: "artandculture" }
                                            },
                                            [_vm._v("Arte & Cultura")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "beautyandfaashion"
                                              }
                                            },
                                            [_vm._v("Moda & Belleza")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            { attrs: { value: "homeandpets" } },
                                            [_vm._v("Hogar & Mascotas")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "scienceandtechnology"
                                              }
                                            },
                                            [_vm._v("Ciencia & Tecnología")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "tourismandtravel"
                                              }
                                            },
                                            [_vm._v("Turismo & Viajes")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            { attrs: { value: "transport" } },
                                            [_vm._v("Transporte")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            { attrs: { value: "food" } },
                                            [_vm._v("Comida")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "politicsandsociety"
                                              }
                                            },
                                            [_vm._v("Política & Sociedad")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "sportsandentertainment"
                                              }
                                            },
                                            [
                                              _vm._v(
                                                "Deporte & Entretenimiento"
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "option",
                                            {
                                              attrs: {
                                                value: "businessandconsumer"
                                              }
                                            },
                                            [_vm._v("Negocios & Consumo")]
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c("has-error", {
                                        attrs: {
                                          form: _vm.form,
                                          field: "category"
                                        }
                                      })
                                    ],
                                    1
                                  )
                                ])
                              ]
                            )
                          ])
                        ]
                      ),
                      _vm._v(" "),
                      _c("div", { staticClass: "kt-section" }, [
                        _c("div", { staticClass: "kt-section__body" }, [
                          _c("div", { staticClass: "form-group row" }, [
                            _c(
                              "label",
                              { staticClass: "col-3 col-form-label" },
                              [_vm._v("Lenguaje")]
                            ),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "col-9" },
                              [
                                _c(
                                  "select",
                                  {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.language,
                                        expression: "form.language"
                                      }
                                    ],
                                    staticClass:
                                      "kt-selectpicker form-control ",
                                    class: {
                                      "is-invalid": _vm.form.errors.has(
                                        "language"
                                      )
                                    },
                                    attrs: {
                                      name: "language",
                                      id: "kt-selectpicker2",
                                      required: ""
                                    },
                                    on: {
                                      change: function($event) {
                                        var $$selectedVal = Array.prototype.filter
                                          .call($event.target.options, function(
                                            o
                                          ) {
                                            return o.selected
                                          })
                                          .map(function(o) {
                                            var val =
                                              "_value" in o ? o._value : o.value
                                            return val
                                          })
                                        _vm.$set(
                                          _vm.form,
                                          "language",
                                          $event.target.multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        )
                                      }
                                    }
                                  },
                                  [
                                    _c(
                                      "option",
                                      { attrs: { value: "en", selected: "" } },
                                      [_vm._v("English")]
                                    ),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "es" } }, [
                                      _vm._v("Español - Spanish")
                                    ])
                                  ]
                                ),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: { form: _vm.form, field: "language" }
                                })
                              ],
                              1
                            )
                          ]),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "form-group form-group-last row" },
                            [
                              _c(
                                "label",
                                { staticClass: "col-3 col-form-label" },
                                [_vm._v("Mostrar mi nombre en la idea?")]
                              ),
                              _vm._v(" "),
                              _c("div", { staticClass: "col-9" }, [
                                _c(
                                  "div",
                                  { staticClass: "kt-checkbox-inline" },
                                  [
                                    _c(
                                      "label",
                                      { staticClass: "kt-checkbox" },
                                      [
                                        _c("input", {
                                          directives: [
                                            {
                                              name: "model",
                                              rawName: "v-model",
                                              value: _vm.form.author,
                                              expression: "form.author"
                                            }
                                          ],
                                          class: {
                                            "is-invalid": _vm.form.errors.has(
                                              "author"
                                            )
                                          },
                                          attrs: {
                                            type: "radio",
                                            value: "showme",
                                            name: "author"
                                          },
                                          domProps: {
                                            checked: _vm._q(
                                              _vm.form.author,
                                              "showme"
                                            )
                                          },
                                          on: {
                                            change: function($event) {
                                              return _vm.$set(
                                                _vm.form,
                                                "author",
                                                "showme"
                                              )
                                            }
                                          }
                                        }),
                                        _vm._v(
                                          " Mostrar mi correo\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                        ),
                                        _c("span")
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c(
                                      "label",
                                      { staticClass: "kt-checkbox" },
                                      [
                                        _c("input", {
                                          directives: [
                                            {
                                              name: "model",
                                              rawName: "v-model",
                                              value: _vm.form.author,
                                              expression: "form.author"
                                            }
                                          ],
                                          class: {
                                            "is-invalid": _vm.form.errors.has(
                                              "author"
                                            )
                                          },
                                          attrs: {
                                            type: "radio",
                                            value: "anonymous",
                                            name: "author"
                                          },
                                          domProps: {
                                            checked: _vm._q(
                                              _vm.form.author,
                                              "anonymous"
                                            )
                                          },
                                          on: {
                                            change: function($event) {
                                              return _vm.$set(
                                                _vm.form,
                                                "author",
                                                "anonymous"
                                              )
                                            }
                                          }
                                        }),
                                        _vm._v(
                                          " Anónimo(a)\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                                        ),
                                        _c("span")
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c("has-error", {
                                      attrs: { form: _vm.form, field: "author" }
                                    })
                                  ],
                                  1
                                )
                              ])
                            ]
                          )
                        ])
                      ])
                    ])
                  ])
                ]),
                _vm._v(" "),
                _c("center", [
                  _c(
                    "div",
                    { staticClass: "kt-portlet__head-toolbar" },
                    [
                      _c(
                        "router-link",
                        {
                          staticClass: "btn btn-clean kt-margin-r-10",
                          attrs: {
                            to: {
                              name: "ver-reto",
                              params: { id: _vm.$route.params.id }
                            }
                          }
                        },
                        [
                          _c("i", {
                            staticClass: "la la-arrow-left",
                            staticStyle: { "padding-bottom": "8px" }
                          }),
                          _vm._v(" "),
                          _c("span", { staticClass: "kt-hidden-mobile" }, [
                            _vm._v("Atrás")
                          ])
                        ]
                      ),
                      _vm._v(" "),
                      _c("div", { staticClass: "btn-group" }, [
                        _c(
                          "button",
                          {
                            staticClass: "btn btn-brand",
                            attrs: { type: "submit", disabled: _vm.form.busy }
                          },
                          [
                            _c("i", {
                              staticClass: "la la-check",
                              staticStyle: { "padding-bottom": "8px" }
                            }),
                            _vm._v(" "),
                            _c("span", { staticClass: "kt-hidden-mobile" }, [
                              _vm._v("Guardar nueva para reto")
                            ])
                          ]
                        )
                      ])
                    ],
                    1
                  )
                ]),
                _vm._v(" "),
                _c("br")
              ],
              1
            )
          ]
        )
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "col-lg-1" })
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "kt-portlet__head-label" }, [
      _c("h3", { staticClass: "kt-portlet__head-title" }, [
        _vm._v("Centro de soluciones")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "div",
      {
        staticClass: "dropdown-menu dropdown-menu-right",
        staticStyle: {
          position: "absolute",
          "will-change": "transform",
          top: "0px",
          left: "0px",
          transform: "translate3d(123px, 38px, 0px)"
        },
        attrs: { "x-placement": "bottom-end" }
      },
      [
        _c("ul", { staticClass: "kt-nav" }, [
          _c("li", { staticClass: "kt-nav__item" }, [
            _c("a", { staticClass: "kt-nav__link", attrs: { href: "#" } }, [
              _c("i", { staticClass: "kt-nav__link-icon flaticon2-reload" }),
              _vm._v(" "),
              _c("span", { staticClass: "kt-nav__link-text" }, [
                _vm._v("Save & continue")
              ])
            ])
          ]),
          _vm._v(" "),
          _c("li", { staticClass: "kt-nav__item" }, [
            _c("a", { staticClass: "kt-nav__link", attrs: { href: "#" } }, [
              _c("i", { staticClass: "kt-nav__link-icon flaticon2-add-1" }),
              _vm._v(" "),
              _c("span", { staticClass: "kt-nav__link-text" }, [
                _vm._v("Save & add new")
              ])
            ])
          ])
        ])
      ]
    )
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "input-group-prepend" }, [
      _c("span", { staticClass: "input-group-text" }, [
        _c("i", { staticClass: "flaticon-photo-camera" })
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Retos/SolucionReto.vue":
/*!********************************************************!*\
  !*** ./resources/js/components/Retos/SolucionReto.vue ***!
  \********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./SolucionReto.vue?vue&type=template&id=a0863ae6& */ "./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6&");
/* harmony import */ var _SolucionReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./SolucionReto.vue?vue&type=script&lang=js& */ "./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./SolucionReto.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _SolucionReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__["render"],
  _SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Retos/SolucionReto.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js&":
/*!*********************************************************************************!*\
  !*** ./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./SolucionReto.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&":
/*!*****************************************************************************************!*\
  !*** ./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css& ***!
  \*****************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./SolucionReto.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6&":
/*!***************************************************************************************!*\
  !*** ./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6& ***!
  \***************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./SolucionReto.vue?vue&type=template&id=a0863ae6& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/SolucionReto.vue?vue&type=template&id=a0863ae6&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SolucionReto_vue_vue_type_template_id_a0863ae6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);