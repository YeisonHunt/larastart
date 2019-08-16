(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["view-landing-publicIdeas-vue"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
      page: 2,
      publicIdeas: {},
      show: false,
      mostradas: [],
      tipo: 'all',
      busqueda: '',
      dialog: false,
      linkToIdea: '',
      baseUrl: window.baseUrl,
      ideaImg: '',
      snackbar: false,
      y: 'top',
      x: null,
      mode: '',
      timeout: 5000,
      text: 'Link copiado al portapapeles'
    };
  },
  methods: {
    copyPorta: function copyPorta(link) {
      this.dialog = false;
      var testingCodeToCopy = document.querySelector('#linkTo');
      testingCodeToCopy.setAttribute('type', 'text');
      testingCodeToCopy.select();
      var successful = document.execCommand('copy');
      this.snackbar = true;
    },
    showDialog: function showDialog(idea) {
      this.dialog = true;
      this.linkToIdea = this.baseUrl + 'public-ideas/view/' + idea.id;
      this.ideaImg = idea.img;
    },
    showMore: function showMore(idea) {//TODO: hacer que funcione para cada una
    },
    getPublicIdeas: function getPublicIdeas() {
      var _this = this;

      axios.get('/getPublicIdeas').then(function (response) {
        _this.publicIdeas = response.data.publicIdeas;
      })["catch"](function (error) {
        console.log(error);
      });
    }
  },
  mounted: function mounted() {
    this.getPublicIdeas();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.noUnderline {\r\n  text-decoration: none !important;\n}\ninput[type=\"date\"], input[type=\"email\"], input[type=\"number\"], input[type=\"password\"], input[type=\"search\"], input[type=\"tel\"], input[type=\"text\"], input[type=\"url\"], select, textarea, .woocommerce .quantity input.qty {\r\n     box-shadow: none !important;\n}\ninput[type=\"date\"], input[type=\"email\"], input[type=\"number\"], input[type=\"password\"], input[type=\"search\"], input[type=\"tel\"], input[type=\"text\"], input[type=\"url\"], select, textarea {\r\n\tborder-style: none !important;\n}\n.v-input input {\r\n    max-height: 42px !important;\r\n    height:50px;\r\n    font-size:1.7rem !important;\n}\n.pure-material-textfield-outlined {\r\n    --pure-material-safari-helper1: rgb(var(--pure-material-primary-rgb, 33, 150, 243));\r\n    position: relative;\r\n    display: inline-block;\r\n    padding-top: 6px;\r\n    font-family: var(--pure-material-font, \"Roboto\", \"Segoe UI\", BlinkMacSystemFont, system-ui, -apple-system);\r\n    font-size: 16px;\r\n    line-height: 1.5;\r\n    overflow: hidden;\n}\r\n\r\n/* Input, Textarea */\n.pure-material-textfield-outlined > input,\r\n.pure-material-textfield-outlined > textarea {\r\n    box-sizing: border-box;\r\n    margin: 0;\r\n    border: solid 1px; /* Safari */\r\n    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.2);\r\n    border-top-color: transparent;\r\n    border-radius: 4px;\r\n    padding: 15px 13px 15px;\r\n    width: 100%;\r\n    height: inherit;\r\n    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);\r\n    background-color: transparent;\r\n    box-shadow: none; /* Firefox */\r\n    font-family: inherit;\r\n    font-size: inherit;\r\n    line-height: inherit;\r\n    caret-color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));\r\n    transition: border 0.2s, box-shadow 0.2s;\n}\r\n\r\n/* Span */\n.pure-material-textfield-outlined > input + span,\r\n.pure-material-textfield-outlined > textarea + span {\r\n    position: absolute;\r\n    top: 0;\r\n    left: 0;\r\n    display: flex;\r\n    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);\r\n    width: 100%;\r\n    max-height: 100%;\r\n    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);\r\n    font-size: 75%;\r\n    line-height: 15px;\r\n    cursor: text;\r\n    transition: color 0.2s, font-size 0.2s, line-height 0.2s;\n}\r\n\r\n/* Corners */\n.pure-material-textfield-outlined > input + span::before,\r\n.pure-material-textfield-outlined > input + span::after,\r\n.pure-material-textfield-outlined > textarea + span::before,\r\n.pure-material-textfield-outlined > textarea + span::after {\r\n    content: \"\";\r\n    display: block;\r\n    box-sizing: border-box;\r\n    margin-top: 6px;\r\n    border-top: solid 1px;\r\n    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.2);\r\n    min-width: 10px;\r\n    height: 8px;\r\n    pointer-events: none;\r\n    box-shadow: inset 0 1px transparent;\r\n    transition: border-color 0.2s, box-shadow 0.2s;\n}\n.pure-material-textfield-outlined > input + span::before,\r\n.pure-material-textfield-outlined > textarea + span::before {\r\n    margin-right: 4px;\r\n    border-left: solid 1px transparent;\r\n    border-radius: 4px 0;\n}\n.pure-material-textfield-outlined > input + span::after,\r\n.pure-material-textfield-outlined > textarea + span::after {\r\n    flex-grow: 1;\r\n    margin-left: 4px;\r\n    border-right: solid 1px transparent;\r\n    border-radius: 0 4px;\n}\r\n\r\n/* Hover */\n.pure-material-textfield-outlined:hover > input,\r\n.pure-material-textfield-outlined:hover > textarea {\r\n    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);\r\n    border-top-color: transparent;\n}\n.pure-material-textfield-outlined:hover > input + span::before,\r\n.pure-material-textfield-outlined:hover > textarea + span::before,\r\n.pure-material-textfield-outlined:hover > input + span::after,\r\n.pure-material-textfield-outlined:hover > textarea + span::after {\r\n    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);\n}\n.pure-material-textfield-outlined:hover > input:not(:focus):placeholder-shown,\r\n.pure-material-textfield-outlined:hover > textarea:not(:focus):placeholder-shown {\r\n    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);\n}\r\n\r\n/* Placeholder-shown */\n.pure-material-textfield-outlined > input:not(:focus):placeholder-shown,\r\n.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown {\r\n    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);\n}\n.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span,\r\n.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span {\r\n    font-size: inherit;\r\n    line-height: 68px;\n}\n.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span::before,\r\n.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span::before,\r\n.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span::after,\r\n.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span::after {\r\n    border-top-color: transparent;\n}\r\n\r\n/* Focus */\n.pure-material-textfield-outlined > input:focus,\r\n.pure-material-textfield-outlined > textarea:focus {\r\n    border-color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));\r\n    border-top-color: transparent;\r\n    box-shadow: inset 1px 0 var(--pure-material-safari-helper1), inset -1px 0 var(--pure-material-safari-helper1), inset 0 -1px var(--pure-material-safari-helper1);\r\n    outline: none;\n}\n.pure-material-textfield-outlined > input:focus + span,\r\n.pure-material-textfield-outlined > textarea:focus + span {\r\n    color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));\n}\n.pure-material-textfield-outlined > input:focus + span::before,\r\n.pure-material-textfield-outlined > input:focus + span::after,\r\n.pure-material-textfield-outlined > textarea:focus + span::before,\r\n.pure-material-textfield-outlined > textarea:focus + span::after {\r\n    border-top-color: var(--pure-material-safari-helper1) !important;\r\n    box-shadow: inset 0 1px var(--pure-material-safari-helper1);\n}\r\n\r\n/* Disabled */\n.pure-material-textfield-outlined > input:disabled,\r\n.pure-material-textfield-outlined > input:disabled + span,\r\n.pure-material-textfield-outlined > textarea:disabled,\r\n.pure-material-textfield-outlined > textarea:disabled + span {\r\n    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;\r\n    border-top-color: transparent !important;\r\n    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38);\r\n    pointer-events: none;\n}\n.pure-material-textfield-outlined > input:disabled + span::before,\r\n.pure-material-textfield-outlined > input:disabled + span::after,\r\n.pure-material-textfield-outlined > textarea:disabled + span::before,\r\n.pure-material-textfield-outlined > textarea:disabled + span::after {\r\n    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;\n}\n.pure-material-textfield-outlined > input:disabled:placeholder-shown,\r\n.pure-material-textfield-outlined > input:disabled:placeholder-shown + span,\r\n.pure-material-textfield-outlined > textarea:disabled:placeholder-shown,\r\n.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span {\r\n    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;\n}\n.pure-material-textfield-outlined > input:disabled:placeholder-shown + span::before,\r\n.pure-material-textfield-outlined > input:disabled:placeholder-shown + span::after,\r\n.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span::before,\r\n.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span::after {\r\n    border-top-color: transparent !important;\n}\r\n\r\n/* Faster transition in Safari for less noticable fractional font-size issue */\n@media not all and (min-resolution:.001dpcm) {\n@supports (-webkit-appearance:none) {\n.pure-material-textfield-outlined > input,\r\n        .pure-material-textfield-outlined > input + span,\r\n        .pure-material-textfield-outlined > textarea,\r\n        .pure-material-textfield-outlined > textarea + span,\r\n        .pure-material-textfield-outlined > input + span::before,\r\n        .pure-material-textfield-outlined > input + span::after,\r\n        .pure-material-textfield-outlined > textarea + span::before,\r\n        .pure-material-textfield-outlined > textarea + span::after {\r\n            transition-duration: 0.1s;\n}\n}\n}\n[include*=\"form-input-select()\"] {\r\n  display: block;\r\n  padding: 0;\r\n  position: relative;\r\n  /* Set options to normal weight */\r\n  /* ------------------------------------  */\r\n  /* START OF UGLY BROWSER-SPECIFIC HACKS */\r\n  /* ----------------------------------  */\r\n  /* FIREFOX won't let us hide the native select arrow, so we have to make it wider than needed and clip it via overflow on the parent container.\r\n     The percentage width is a fallback since FF 4+ supports calc() so we can just add a fixed amount of extra width to push the native arrow out of view. We're applying this hack across all FF versions because all the previous hacks were too fragile and complex.\r\n     You might want to consider not using this hack and using the native select arrow in FF. Note this makes the menus wider than the select button because they display at the specified width and aren't clipped. Targeting hack via http://browserhacks.com/#hack-758bff81c5c32351b02e10480b5ed48e */\r\n  /* Show only the native arrow */\r\n  color: #005BA6;\r\n  display: block;\r\n  border-radius: 0;\r\n  box-shadow: none;\r\n  font-size: 16px;\r\n  margin-top: 9px;\r\n  margin-bottom: 15px;\r\n  width: 100%;\n}\n.select-css {\r\n    display: block;\r\n    font-size: 16px;\r\n    font-family: sans-serif;\r\n    font-weight: 700;\r\n    color: #444;\r\n    line-height: 1.3;\r\n    padding: .6em 1.4em .5em .8em;\r\n    width: 100%;\r\n    max-width: 100%; \r\n    box-sizing: border-box;\r\n    margin: 0;\r\n    border: 1px solid #aaa;\r\n    box-shadow: 0 1px 0 1px rgba(0,0,0,.04);\r\n    border-radius: .5em;\r\n    -moz-appearance: none;\r\n    -webkit-appearance: none;\r\n    appearance: none;\r\n    background-color: #fff;\r\n    background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),\r\n      linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);\r\n    background-repeat: no-repeat, repeat;\r\n    background-position: right .7em top 50%, 0 0;\r\n    background-size: .65em auto, 100%;\n}\n.select-css::-ms-expand {\r\n    display: none;\n}\n.select-css:hover {\r\n    border-color: #888;\n}\n.select-css:focus {\r\n    border-color: #aaa;\r\n    box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);\r\n    box-shadow: 0 0 0 3px -moz-mac-focusring;\r\n    color: #222; \r\n    outline: none;\n}\n.select-css option {\r\n    font-weight:normal;\n}\n.fuente {\r\n  color:#707070 !important;\r\n  font-size:1.2em !important;\r\n  height: 50px;\r\n  padding-bottom:20px !important;\n}\nform{\r\n    position: relative;\r\n    top: 50%;\r\n    left: 50%;\r\n    -webkit-transform: translate(-50%,-50%);\r\n            transform: translate(-50%,-50%);\r\n    transition: all 1s;\r\n    width: 400px;\r\n    height: 50px;\r\n    background: white;\r\n    box-sizing: border-box;\r\n    border-radius: 25px;\r\n    border: 4px solid #edeff0;\r\n    padding: 0 0 10px 0;\r\n    background-color: white;\n}\ninput{\r\n    position: absolute;\r\n    top: 0;\r\n    left: 0;\r\n\r\n    width: 400px !important;\r\n    line-height: 40px !important;\r\n    color:white;\r\n    display: none;\r\n    font-size: 1em;\r\n    border-radius: 20px;\r\n    padding: 0 10px 10px 0;\r\n    border: 1px solid black !important;\n}\n.fa{\r\n    box-sizing: border-box;\r\n    padding: 10px;\r\n    width: 42.5px;\r\n    height: 42.5px;\r\n    position: absolute;\r\n    top: 0;\r\n    right: 0;\r\n    border-radius: 50%;\r\n    color: #07051a;\r\n    text-align: center;\r\n    font-size: 1.2em;\r\n    transition: all 1s;\n}\nform:hover{\r\n    width: 400px;\r\n    cursor: pointer;\r\n    border: 4px solid #ccc;\n}\nform:hover input{\r\n    display: block;\n}\nform:hover .fa{\r\n    background: #ccc;\r\n    color: white !important;\n}\r\n\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./publicIdeas.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400& ***!
  \**********************************************************************************************************************************************************************************************************************/
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
          _vm._v("\n    " + _vm._s(_vm.text) + "\n    "),
          _c(
            "v-btn",
            {
              attrs: { color: "blue", flat: "" },
              on: {
                click: function($event) {
                  _vm.snackbar = false
                }
              }
            },
            [_vm._v("\n      Cerrar\n    ")]
          )
        ],
        1
      ),
      _vm._v(" "),
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
            { attrs: { hover: true, elevation: 10, outlined: true } },
            [
              _c("v-img", {
                attrs: { src: _vm.ideaImg, "aspect-ratio": "2.75" }
              }),
              _vm._v(" "),
              _c("v-card-title", { staticClass: "headline" }, [
                _vm._v("Aquí tienes un link para compartir esta genial idea.")
              ]),
              _vm._v(" "),
              _c("v-card-text", [
                _c("input", {
                  staticStyle: { visibility: "hidden" },
                  attrs: { type: "hidden", id: "linkTo" },
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
                      attrs: { color: "grey lighteen-1", flat: "flat" },
                      on: {
                        click: function($event) {
                          _vm.dialog = false
                        }
                      }
                    },
                    [_vm._v("\n          Cancelar\n        ")]
                  ),
                  _vm._v(" "),
                  _c("v-spacer"),
                  _vm._v(" "),
                  _c(
                    "v-btn",
                    {
                      attrs: { color: "blue darken-1", dark: "" },
                      on: {
                        click: function($event) {
                          return _vm.copyPorta(_vm.linkToIdea)
                        }
                      }
                    },
                    [_vm._v("\n          Copiar al portapapeles\n        ")]
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
        [
          _c("v-flex", { attrs: { lg3: "" } }, [
            _c("h3", { staticClass: "mt-4 ml-3" }, [_vm._v("Ideas Globales")])
          ]),
          _vm._v(" "),
          _c("v-flex", { attrs: { lg5: "" } }, [
            _c("form", { attrs: { action: "" } }, [
              _c("input", {
                staticClass: "fuente",
                attrs: { type: "search", placeholder: "Buscar por titulo..." }
              }),
              _vm._v(" "),
              _c("i", {
                staticClass: "fa fa-search",
                staticStyle: { color: "#ccc" }
              })
            ])
          ]),
          _vm._v(" "),
          _c("v-spacer"),
          _vm._v(" "),
          _c("v-flex", { attrs: { lg3: "" } }, [
            _c("label", { attrs: { for: "selector" } }, [
              _vm._v("Filtrar por tipo")
            ]),
            _vm._v(" "),
            _c(
              "select",
              {
                directives: [
                  {
                    name: "model",
                    rawName: "v-model",
                    value: _vm.tipo,
                    expression: "tipo"
                  }
                ],
                staticClass: "select-css",
                attrs: { id: "selector" },
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
                    _vm.tipo = $event.target.multiple
                      ? $$selectedVal
                      : $$selectedVal[0]
                  }
                }
              },
              [
                _c("option", { attrs: { value: "all" } }, [_vm._v("Todas")]),
                _vm._v(" "),
                _c("option", { attrs: { value: "sustainability" } }, [
                  _vm._v("Sustainability")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "lifeandhealth" } }, [
                  _vm._v("Life & Health")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "artandculture" } }, [
                  _vm._v("Art & Culture")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "beautyandfaashion" } }, [
                  _vm._v("Beauty & Fashion")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "homeandpets" } }, [
                  _vm._v("Home & Pets")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "scienceandtechnology" } }, [
                  _vm._v("Science & Technology")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "tourismandtravel" } }, [
                  _vm._v("Tourism & Travel")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "transport" } }, [
                  _vm._v("Transport")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "food" } }, [_vm._v("Food")]),
                _vm._v(" "),
                _c("option", { attrs: { value: "politicsandsociety" } }, [
                  _vm._v("Politics & Society")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "sportsandentertainment" } }, [
                  _vm._v("Sports & Entertainment")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "businessandconsumer" } }, [
                  _vm._v("Business & Consumer")
                ]),
                _vm._v(" "),
                _c("option", { attrs: { value: "improvethis" } }, [
                  _vm._v("Mejorar Asakaa Project")
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
        { attrs: { row: "", wrap: "" } },
        [
          _vm._l(_vm.publicIdeas, function(idea) {
            return _c(
              "v-flex",
              {
                key: idea.id,
                attrs: { xs12: "", sm12: "", "pa-3": "", md4: "", lg4: "" }
              },
              [
                _c(
                  "v-card",
                  { attrs: { hover: true, ripple: "" } },
                  [
                    _c("v-img", { attrs: { src: idea.img, height: "250px" } }),
                    _vm._v(" "),
                    _c(
                      "v-container",
                      { attrs: { fluid: "" } },
                      [
                        _c(
                          "v-layout",
                          [
                            _c(
                              "v-card-title",
                              { attrs: { "primary-title": "" } },
                              [
                                _c(
                                  "div",
                                  { staticStyle: { width: "100%" } },
                                  [
                                    _c(
                                      "v-layout",
                                      { attrs: { row: "" } },
                                      [
                                        _c("v-flex", { attrs: { lg8: "" } }, [
                                          _c(
                                            "div",
                                            { staticClass: "headline" },
                                            [
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("uppercaseFirst")(
                                                    idea.title
                                                  )
                                                ) +
                                                  "\n                           \n                       "
                                              )
                                            ]
                                          )
                                        ]),
                                        _vm._v(" "),
                                        _c(
                                          "v-flex",
                                          {
                                            attrs: {
                                              lg4: "",
                                              "text-xs-right": ""
                                            }
                                          },
                                          [
                                            _c(
                                              "v-btn",
                                              {
                                                attrs: { icon: "" },
                                                on: {
                                                  click: function($event) {
                                                    $event.stopPropagation()
                                                    return _vm.showDialog(idea)
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
                                    ),
                                    _vm._v(" "),
                                    _c("span", { staticClass: "grey--text" }, [
                                      _vm._v(
                                        _vm._s(
                                          _vm._f("largeText")(idea.description)
                                        )
                                      )
                                    ])
                                  ],
                                  1
                                )
                              ]
                            )
                          ],
                          1
                        ),
                        _vm._v(" "),
                        _c(
                          "v-layout",
                          { attrs: { "align-end": "" } },
                          [
                            _c(
                              "v-card-actions",
                              {
                                staticStyle: {
                                  "margin-left": "10px",
                                  bottom: "0"
                                }
                              },
                              [
                                _c(
                                  "v-btn",
                                  {
                                    staticClass: "text-capitalize noUnderline",
                                    attrs: {
                                      flat: "",
                                      to: {
                                        name: "view-idea",
                                        params: { id: idea.id }
                                      },
                                      color: "teal"
                                    }
                                  },
                                  [_vm._v("Leer completa")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "v-btn",
                                  {
                                    staticClass: "text-capitalize noUnderline",
                                    attrs: {
                                      flat: "",
                                      color: "blue-grey lighten-3"
                                    }
                                  },
                                  [
                                    _vm._v(
                                      "\n                  Vote  \n                "
                                    ),
                                    _c("v-icon", { staticClass: "mb-1" }, [
                                      _vm._v("thumb_up")
                                    ]),
                                    _vm._v(
                                      "\n                 15\n              "
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
                      "v-slide-y-transition",
                      [
                        _c(
                          "v-card-text",
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
                            _c("div", {
                              domProps: { innerHTML: _vm._s(idea.body) }
                            })
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
          }),
          _vm._v(" "),
          _c(
            "v-flex",
            { attrs: { xs12: "", sm12: "", "pa-3": "", md4: "", lg4: "" } },
            [
              _c(
                "v-card",
                { staticClass: "mx-auto" },
                [
                  _c(
                    "v-img",
                    {
                      staticClass: "white--text",
                      attrs: {
                        height: "200px",
                        src: "https://cdn.vuetifyjs.com/images/cards/docks.jpg"
                      }
                    },
                    [
                      _c(
                        "v-card-title",
                        { staticClass: "align-end fill-height" },
                        [_vm._v("Top 10 Australian beaches")]
                      )
                    ],
                    1
                  ),
                  _vm._v(" "),
                  _c("v-card-text", [
                    _c("span", [_vm._v("Author: Yeison Caicedo")]),
                    _c("br"),
                    _vm._v(" "),
                    _c("span", { staticClass: "text--primary" }, [
                      _c("span", [
                        _vm._v(
                          "Plantar arboles en la orilla del mar para prevenir vientos fuertes"
                        )
                      ]),
                      _c("br"),
                      _vm._v(" "),
                      _c("span", [
                        _vm._v(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                        )
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c(
                    "v-card-actions",
                    [
                      _c("v-btn", { attrs: { text: "", color: "orange" } }, [
                        _vm._v("\n                Share\n              ")
                      ]),
                      _vm._v(" "),
                      _c("v-btn", { attrs: { text: "", color: "orange" } }, [
                        _vm._v("\n                Explore\n              ")
                      ])
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
            [
              _c(
                "q-card",
                { staticClass: "my-card" },
                [
                  _c(
                    "q-img",
                    {
                      attrs: { src: "https://cdn.quasar.dev/img/parallax2.jpg" }
                    },
                    [
                      _c("div", { staticClass: "absolute-bottom" }, [
                        _c("div", { staticClass: "text-h6" }, [
                          _vm._v("Our Changing Planet")
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "text-subtitle2" }, [
                          _vm._v("by John Doe")
                        ])
                      ])
                    ]
                  ),
                  _vm._v(" "),
                  _c("q-card-section", [
                    _vm._v(
                      "\n                Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen\n              "
                    )
                  ]),
                  _vm._v(" "),
                  _c(
                    "q-card-actions",
                    [
                      _c("q-btn", { attrs: { flat: "" } }, [
                        _vm._v("Action 1")
                      ]),
                      _vm._v(" "),
                      _c("q-btn", { attrs: { flat: "" } }, [_vm._v("Action 2")])
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
        2
      ),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
      _c("div", { staticClass: "row" }, [
        _c("div", { staticClass: "col-12" }, [
          _c(
            "div",
            { staticClass: "text-xs-center" },
            [
              _c("v-pagination", {
                attrs: { length: 6, color: "blue" },
                model: {
                  value: _vm.page,
                  callback: function($$v) {
                    _vm.page = $$v
                  },
                  expression: "page"
                }
              })
            ],
            1
          )
        ])
      ])
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/landing/publicIdeas.vue":
/*!*********************************************************!*\
  !*** ./resources/js/components/landing/publicIdeas.vue ***!
  \*********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./publicIdeas.vue?vue&type=template&id=7ed19400& */ "./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400&");
/* harmony import */ var _publicIdeas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./publicIdeas.vue?vue&type=script&lang=js& */ "./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./publicIdeas.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _publicIdeas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__["render"],
  _publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/landing/publicIdeas.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js&":
/*!**********************************************************************************!*\
  !*** ./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./publicIdeas.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&":
/*!******************************************************************************************!*\
  !*** ./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css& ***!
  \******************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./publicIdeas.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400&":
/*!****************************************************************************************!*\
  !*** ./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400& ***!
  \****************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./publicIdeas.vue?vue&type=template&id=7ed19400& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/landing/publicIdeas.vue?vue&type=template&id=7ed19400&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_publicIdeas_vue_vue_type_template_id_7ed19400___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);