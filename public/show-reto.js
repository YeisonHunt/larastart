(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["show-reto"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    var _ref;

    return _ref = {
      solutions: {},
      canIseeVar: false,
      permissions: {},
      id: this.$route.params.id,
      idea: {},
      editMode: false,
      ideas: {},
      user: window.User,
      userIdea: {},
      liked: ""
    }, _defineProperty(_ref, "user", window.user), _defineProperty(_ref, "discussionsFinal", {}), _defineProperty(_ref, "like", {}), _defineProperty(_ref, "soyCreador", false), _defineProperty(_ref, "containter", ""), _defineProperty(_ref, "containerFluid", ""), _defineProperty(_ref, "likesPerIdea", {}), _defineProperty(_ref, "foundLiked", false), _defineProperty(_ref, "baseUrl", window.baseUrl), _defineProperty(_ref, "randomNumber", Math.floor(Math.random() * 100)), _defineProperty(_ref, "lastCommentId", ""), _defineProperty(_ref, "id_idea_general", this.$route.params.id), _defineProperty(_ref, "form", new Form({
      user_id: window.user.id,
      idea_id: this.$route.params.id,
      body: "",
      discussion_parent_id: 0
    })), _defineProperty(_ref, "formChild", new Form({
      user_id: window.user.id,
      idea_id: this.$route.params.id,
      body: "",
      discussion_parent_id: ""
    })), _defineProperty(_ref, "formChild2", new Form({
      user_id: window.user.id,
      idea_id: this.$route.params.id,
      body: "",
      discussion_parent_id: ""
    })), _defineProperty(_ref, "formLike", new Form({
      user_id: window.user.id,
      comment_id: "",
      idea_id: this.$route.params.id
    })), _defineProperty(_ref, "formDesired", new Form({
      innovation_id: this.$route.params.id,
      user_id: window.user.id
    })), _ref;
  },
  computed: {
    updatedLastIdComment: function updatedLastIdComment() {//console.log('Termino de enviar comentario. Ir a padre'+this.lastCommentId);
      //document.getElementById('padre'+this.lastCommentId).focus();
      //console.log('Se marmat');
    },
    randomNumber2: function randomNumber2() {
      return Math.floor(Math.random() * 100);
    },
    mobile: function mobile() {
      if (this.$mq == "sm") {
        return true;
      } else {
        return false;
      }
    },
    large: function large() {
      if (this.$mq == "md" || this.$mq == "lg") {
        return true;
      } else {
        return false;
      }
    },
    likesText: function likesText() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'likes';
      } else {
        return 'likes';
      }
    },
    voteText: function voteText() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Vote idea';
      } else {
        return 'Vote idea';
      }
    },
    likedText: function likedText() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Liked!';
      } else {
        return 'Liked!';
      }
    },
    puedoVer: function puedoVer() {
      if (this.permissions.length != 0) {
        //validamos que exita la idea y luego si tengo permiso
        var iCanSee = false;
        var idUser = this.user.id;
        var idIdea = this.id;
        var item = {};
        var permisos = this.permissions;

        for (var i = 0; i < permisos.length; i++) {
          item = permisos[i];

          if ((item.permission_type == 'can view' || item.permission_type == 'can view-edit') && item.id_user == idUser && item.id_idea == idIdea) {
            iCanSee = true;
          }
        }

        return iCanSee;
      } else if (this.idea.company_id == this.user.company_id) {
        return true;
      } else {
        return false;
      }
    },
    puedoEditar: function puedoEditar() {
      if (this.permissions.length != 0) {
        //validamos que exita la idea y luego si tengo permiso
        var iCanSee = false;
        var idUser = this.user.id;
        var idIdea = this.id;
        /* try {
           this.permissions.forEach(function(permission) {
             if (permission.permission_type == 'can view' && permission.id_user ==idUser && permision.id_idea== idIdea  ) {
                 iCanSee = true;
               console.log('times');
               }
           });
         } catch (e) {
           console.log(e);
         }*/

        var item = {};
        var permisos = this.permissions;

        for (var i = 0; i < permisos.length; i++) {
          item = permisos[i];

          if (item.permission_type == 'can view-edit' && item.id_user == idUser && item.id_idea == idIdea) {
            iCanSee = true;
          }
        }

        return iCanSee;
      } else {
        return false;
      }
    }
  },
  methods: {
    createSolution: function createSolution() {
      this.$router.push({
        name: 'solucion-reto',
        params: {
          id: this.$route.params.id
        }
      });
    },
    alreadyLiked: function alreadyLiked(idea) {
      if (this.likesPerIdea.length != 0) {
        var foundLiked2 = false;

        try {
          this.likesPerIdea.forEach(function (el) {
            if (el.user_id == window.user.id) {
              foundLiked2 = true;
            }
          });
        } catch (e) {}

        this.foundLiked = foundLiked2;
        return foundLiked2;
      } else {
        this.foundLiked = false;
        return false;
      }
    },
    likeIdea: function likeIdea() {
      var _this = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formDesired.post("/saveDesired").then(function (response) {
        toastr.success("Keep rating", "Innovation liked!.");
        _this.likesPerIdea = response.data.desired;
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    checkLiked: function checkLiked(likeObject) {
      //if(likeObject.)
      if (likeObject.length != 0) {
        var scoped = this;
        var found = false;

        try {
          likeObject.forEach(function (elements) {
            if (elements.user_id == window.user.id) {
              found = true;
            }
          });
        } catch (e) {}

        return found;
      } else {
        this.liked = false;
        return false;
      }
    },
    likeComment: function likeComment(idComment) {
      var _this2 = this;

      this.formLike.comment_id = idComment;
      this.formLike.idea_id = this.id_idea_general;
      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formLike.post("/saveLike").then(function (response) {
        toastr.success("Keep innovating", "Thanks for the feedback.");
        _this2.formLike.comment_id = "";
        _this2.formLike.idea_id = "";
        _this2.discussionsFinal = response.data.discussions;
      })["catch"](function (error) {
        console.log(error);
        _this2.formLike.comment_id = "";
        _this2.formLike.idea_id = "";
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish(); //this.discussionsFinal.discussions.push();
    },
    addChild: function addChild(idPadre) {
      $("#" + idPadre).attr("style", "display:block");
      document.getElementById("texto" + idPadre).focus();
    },
    checkChilds: function checkChilds(padre) {
      if (padre.childs.length > 0) {
        return true;
      } else {
        return false;
      }
    },
    loadUsers: function loadUsers() {
      var _this3 = this;

      // podemos usar this.form.get but we are gonna use axios
      axios.get("/getInnovation/" + this.id).then(function (response) {
        _this3.idea = response.data.idea;
        _this3.userIdea = response.data.user;
        _this3.discussionsFinal = response.data.discussions;
        _this3.likesPerIdea = response.data.desired;
        _this3.permissions = response.data.permissions;
        _this3.solutions = response.data.solutions;

        if (response.data.idea.created_by == response.data.user.id) {
          _this3.soyCreador = true;
        } //console.log(response);

      })["catch"](function (error) {
        console.log(error);
      });
    },
    sendComment: function sendComment() {
      var _this4 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.form.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this4.form.reset();

        _this4.discussionsFinal = response.data.discussions; //this.lastCommentId = response.data.lastCommentId;

        _this4.likesPerIdea = response.data.desired;
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    goLastComment: function goLastComment() {
      this.sendComment();
    },
    sendChildComment: function sendChildComment(idComment) {
      var _this5 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild.discussion_parent_id = idComment;
      this.formChild.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this5.formChild.reset();

        _this5.discussionsFinal = response.data.discussions;
        _this5.likesPerIdea = response.data.desired;
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    sendChild2Comment: function sendChild2Comment(idComment) {
      var _this6 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild2.discussion_parent_id = idComment;
      this.formChild2.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this6.formChild2.reset();

        $("#" + idComment).attr("style", "display:none");
        _this6.discussionsFinal = response.data.discussions;
        _this6.likesPerIdea = response.data.desired; // document.getElementById('padre'+response.data.lastCommentId).focus();
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    }
  },
  created: function created() {},
  mounted: function mounted() {
    this.loadUsers();
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&":
/*!********************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.fadeImg {\r\n\r\n    -webkit-animation: fadein 2s; /* Safari, Chrome and Opera > 12.1 */ /* Firefox < 16 */ /* Internet Explorer */ /* Opera < 12.1 */\r\n            animation: fadein 2s;\n}\n@keyframes fadein {\nfrom { opacity: 0;\n}\nto   { opacity: 1;\n}\n}\r\n\r\n/* Firefox < 16 */\r\n\r\n/* Safari, Chrome and Opera > 12.1 */\n@-webkit-keyframes fadein {\nfrom { opacity: 0;\n}\nto   { opacity: 1;\n}\n}\r\n\r\n/* Internet Explorer */\r\n\r\n/* Opera < 12.1 */\n.noEscondido {\r\n  display:block !important;\n}\n.escondido {\r\n  display:none;\n}\n.largeBtn {\r\n  width:100px !important;\n}\n.pulse {\r\n  --color: #1164c5;\r\n  --hover: #1164c5;\n}\n.pulse:hover,\r\n.pulse:focus {\r\n  -webkit-animation: pulse 3s infinite;\r\n          animation: pulse 3s infinite;\r\n  box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);\n}\n@-webkit-keyframes pulse {\n0% {\r\n    box-shadow: 0 0 0 0 var(--hover);\n}\n}\n@keyframes pulse {\n0% {\r\n    box-shadow: 0 0 0 0 var(--hover);\n}\n}\n.wrapText {\r\n  word-wrap: break-word !important;\n}\n.VueStar__decoration {\r\n  width: 50px;\r\n  height: 50px;\r\n  position: absolute;\n}\n.biggerIcons {\r\n  font-size: 1.5em !important;\n}\n.VueStar__icon {\r\n  position: static !important;\r\n  z-index: 0;\r\n  height: 30px;\r\n  width: 20px;\n}\n.VueStar__ground {\r\n  width: 1px;\r\n  height: 1px;\r\n  margin-left: 60px;\r\n  margin-top: 10px;\n}\n@media (max-width: 600px) {\n.VueStar__ground {\r\n\r\n      margin-left: 10px;\r\n      margin-top: 10px;\n}\n}\n.auxiliarVueStar {\r\n   margin-left: 5px;\n}\n.icons {\r\n  margin-left: 10px;\n}\n.media-list {\r\n  padding-left: 0;\n}\n.links {\r\n  cursor: pointer;\n}\n.center {\r\n  margin-right: 10px !important;\n}\n.fit-width-input {\r\n  width: 30vw !important;\n}\n.child-response-input {\r\n  margin-left: 70px;\r\n  position: relative;\r\n  width: 70% !important;\n}\n.biggerFont {\r\n  font-size: 1.1em;\r\n  padding-left: 30px !important;\r\n  margin-left: 40px !important;\n}\n.biggerFont2 {\r\n  font-size: 1.1em;\n}\n.normalFont {\r\n  font-style: normal !important;\r\n  font-size: 1.05em;\r\n  color: grey;\n}\n.normalFont:hover {\r\n  color: #4286f4;\n}\n.sub {\r\n  padding-left: 70px;\n}\n.imgCircle {\r\n  border-radius: 30px;\n}\n.media {\r\n  display: block;\n}\n.allHeight {\r\n  height: 100vh !important;\n}\n.comment-wrapper .media-list .media img {\r\n  width: 64px;\r\n  height: 64px;\r\n  border: 2px solid #e5e7e8;\n}\n.comment-wrapper .media-list .media {\r\n  border-bottom: 1px dashed #efefef;\r\n  margin-bottom: 25px;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./showReto.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80&":
/*!*****************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80& ***!
  \*****************************************************************************************************************************************************************************************************************/
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
    { class: { "container-fluid": _vm.mobile, "container-fluid": _vm.large } },
    [
      _vm.puedoVer
        ? _c(
            "div",
            { staticClass: "row", staticStyle: { "min-height": "80vh" } },
            [
              _c("div", { staticClass: "col-lg-12 col-sm-12 col-md-12" }, [
                _c(
                  "div",
                  { staticClass: "kt-portlet mobilePortlet" },
                  [
                    _c("div", { staticClass: "kt-portlet__head" }, [
                      _c(
                        "div",
                        { staticClass: "kt-portlet__head-label" },
                        [
                          _c(
                            "router-link",
                            {
                              staticClass: "btn btn-clean kt-margin-r-10",
                              attrs: { to: "/retos" }
                            },
                            [
                              _c("i", {
                                staticClass: "la la-arrow-left",
                                staticStyle: { "padding-bottom": "8px" }
                              }),
                              _vm._v(" "),
                              _c("span", { staticClass: "kt-hidden-mobile" }, [
                                _vm._v("Back")
                              ])
                            ]
                          ),
                          _vm._v(" "),
                          _vm._m(0),
                          _vm._v(" "),
                          _c("h3", { staticClass: "kt-portlet__head-title" }, [
                            _vm._v("Nombre del reto: " + _vm._s(_vm.idea.title))
                          ])
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c("div", { staticClass: "kt-portlet__head-toolbar" }, [
                        _c(
                          "div",
                          { staticClass: "kt-portlet__head-actions" },
                          [
                            _vm.puedoEditar
                              ? _c(
                                  "router-link",
                                  {
                                    staticClass:
                                      "btn btn-outline-danger btn-sm btn-icon btn-icon-md",
                                    attrs: { to: "/innovationsEdit/" + this.id }
                                  },
                                  [_c("i", { staticClass: "flaticon-edit" })]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            _c(
                              "router-link",
                              {
                                staticClass:
                                  "btn btn-outline-success btn-sm btn-icon btn-icon-md",
                                attrs: { to: "/shareInnovation/" + this.id }
                              },
                              [_c("i", { staticClass: "flaticon-share" })]
                            )
                          ],
                          1
                        )
                      ])
                    ]),
                    _vm._v(" "),
                    _c("v-img", {
                      attrs: { src: _vm.idea.img, "aspect-ratio": "4" }
                    }),
                    _vm._v(" "),
                    _c("div", {
                      staticClass: "kt-portlet__body wrapText",
                      attrs: { id: "ideaBody" },
                      domProps: { innerHTML: _vm._s(_vm.idea.body) }
                    }),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "container-fluid" }, [
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-6" }, [
                          _c(
                            "div",
                            {
                              staticClass: "kt-demo-icon click",
                              on: { click: _vm.createSolution }
                            },
                            [
                              _vm._m(1),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "kt-demo-icon__class" },
                                [
                                  _vm._v(
                                    "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tProponer una idea para solucionar este reto "
                                  )
                                ]
                              )
                            ]
                          )
                        ])
                      ]),
                      _vm._v(" "),
                      _c("br"),
                      _vm._v(" "),
                      _c("div", { staticClass: "row" }, [
                        _c(
                          "div",
                          { staticClass: "col-12" },
                          [
                            _c(
                              "v-expansion-panel",
                              [
                                _c(
                                  "v-expansion-panel-content",
                                  {
                                    scopedSlots: _vm._u(
                                      [
                                        {
                                          key: "header",
                                          fn: function() {
                                            return [
                                              _c("div", [
                                                _vm._v("Soluciones Actuales")
                                              ])
                                            ]
                                          },
                                          proxy: true
                                        }
                                      ],
                                      null,
                                      false,
                                      1373409902
                                    )
                                  },
                                  [
                                    _vm._v(" "),
                                    _c(
                                      "v-container",
                                      { attrs: { fluid: "" } },
                                      [
                                        _c(
                                          "v-layout",
                                          { attrs: { row: "" } },
                                          _vm._l(_vm.solutions, function(idea) {
                                            return _c(
                                              "v-flex",
                                              {
                                                key: idea.id,
                                                attrs: {
                                                  xs12: "",
                                                  sm6: "",
                                                  md2: "",
                                                  lg4: "",
                                                  xl3: "",
                                                  "pa-2": ""
                                                }
                                              },
                                              [
                                                _c(
                                                  "v-card",
                                                  {
                                                    staticClass: "mx-auto",
                                                    attrs: {
                                                      width: "90%",
                                                      height: "100%",
                                                      hover: ""
                                                    }
                                                  },
                                                  [
                                                    _c("v-img", {
                                                      attrs: {
                                                        src: idea.img,
                                                        height: "194"
                                                      }
                                                    }),
                                                    _vm._v(" "),
                                                    _c("v-card-text", [
                                                      _c(
                                                        "div",
                                                        {
                                                          staticClass:
                                                            "headline"
                                                        },
                                                        [
                                                          _vm._v(
                                                            _vm._s(
                                                              _vm._f(
                                                                "uppercaseFirst"
                                                              )(idea.title)
                                                            )
                                                          )
                                                        ]
                                                      ),
                                                      _vm._v(" "),
                                                      _c("br"),
                                                      _vm._v(" "),
                                                      idea.privacy == "showme"
                                                        ? _c("div", [
                                                            _vm._v(
                                                              "Escrita  por: " +
                                                                _vm._s(
                                                                  idea.escrita
                                                                )
                                                            )
                                                          ])
                                                        : _c("div", [
                                                            _vm._v(
                                                              "Escrita por :Anónimo(a)"
                                                            )
                                                          ]),
                                                      _vm._v(
                                                        "\n\n                 " +
                                                          _vm._s(
                                                            _vm._f("largeText")(
                                                              idea.description
                                                            )
                                                          ) +
                                                          "\n\n                  "
                                                      ),
                                                      _c("p", [
                                                        _c("b", [
                                                          _vm._v("Categoría: ")
                                                        ]),
                                                        _vm._v(
                                                          " " +
                                                            _vm._s(
                                                              _vm._f(
                                                                "toCategory"
                                                              )(idea.category)
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
                                                                name:
                                                                  "view-idea",
                                                                params: {
                                                                  id: idea.id
                                                                }
                                                              },
                                                              text: "",
                                                              color:
                                                                "deep-purple accent-4"
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "Leer completa"
                                                            )
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
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "user-section" }, [
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-12" }, [
                          _c(
                            "div",
                            {
                              staticClass:
                                "kt-portlet kt-portlet--tabs kt-portlet--height-fluid"
                            },
                            [
                              _c("div", { staticClass: "kt-portlet__body" }, [
                                _c("div", { staticClass: "tab-content" }, [
                                  _c(
                                    "div",
                                    {
                                      staticClass: "tab-pane active",
                                      attrs: { id: "kt_widget4_tab1_content" }
                                    },
                                    [
                                      _c("div", { staticClass: "kt-widget4" }, [
                                        _c(
                                          "div",
                                          { staticClass: "kt-widget4__item" },
                                          [
                                            _vm._m(2),
                                            _vm._v(" "),
                                            _vm.idea.author == "showme"
                                              ? _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget4__info"
                                                  },
                                                  [
                                                    _c(
                                                      "a",
                                                      {
                                                        staticClass:
                                                          "kt-widget4__username",
                                                        attrs: { href: "#" }
                                                      },
                                                      [
                                                        _vm._v(
                                                          _vm._s(
                                                            _vm.userIdea.name
                                                          )
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "p",
                                                      {
                                                        staticClass:
                                                          "kt-widget4__text"
                                                      },
                                                      [
                                                        _vm._v(
                                                          _vm._s(
                                                            _vm.userIdea.email
                                                          )
                                                        )
                                                      ]
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _vm.idea.author == "showme"
                                              ? _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-label-brand",
                                                    attrs: { href: "#" }
                                                  },
                                                  [_vm._v("Contact user")]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _vm.idea.author == "anonymous"
                                              ? _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "kt-widget4__info"
                                                  },
                                                  [
                                                    _c(
                                                      "a",
                                                      {
                                                        staticClass:
                                                          "kt-widget4__username",
                                                        attrs: { href: "#" }
                                                      },
                                                      [_vm._v("Anonymous User")]
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "p",
                                                      {
                                                        staticClass:
                                                          "kt-widget4__text"
                                                      },
                                                      [
                                                        _vm._v(
                                                          "Visual Designer, Google Inc"
                                                        )
                                                      ]
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _vm.idea.author == "anonymous"
                                              ? _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-label-brand",
                                                    attrs: { href: "#" }
                                                  },
                                                  [_vm._v("Contact user")]
                                                )
                                              : _vm._e()
                                          ]
                                        )
                                      ])
                                    ]
                                  )
                                ]),
                                _vm._v(" "),
                                _c("br"),
                                _vm._v(" "),
                                _c("div", { staticClass: "comments-section" }, [
                                  _c(
                                    "div",
                                    { staticClass: "row bootstrap snippets" },
                                    [
                                      _c("div", { staticClass: "col-12" }, [
                                        _c(
                                          "div",
                                          { staticClass: "comment-wrapper" },
                                          [
                                            _c(
                                              "div",
                                              {
                                                staticClass: "panel panel-info"
                                              },
                                              [
                                                _c(
                                                  "div",
                                                  { staticClass: "panel-body" },
                                                  [
                                                    _c(
                                                      "h5",
                                                      {
                                                        staticClass: "ml-3 mt-5"
                                                      },
                                                      [
                                                        _vm._v(
                                                          "Nueva retroalimentación"
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-lg-12 col-sm-12"
                                                          },
                                                          [
                                                            _c("center", [
                                                              _c(
                                                                "form",
                                                                {
                                                                  staticClass:
                                                                    "form-inline",
                                                                  on: {
                                                                    submit: function(
                                                                      $event
                                                                    ) {
                                                                      $event.preventDefault()
                                                                      return _vm.goLastComment(
                                                                        $event
                                                                      )
                                                                    },
                                                                    keydown: function(
                                                                      $event
                                                                    ) {
                                                                      return _vm.form.onKeydown(
                                                                        $event
                                                                      )
                                                                    },
                                                                    keyup: function(
                                                                      $event
                                                                    ) {
                                                                      if (
                                                                        !$event.type.indexOf(
                                                                          "key"
                                                                        ) &&
                                                                        _vm._k(
                                                                          $event.keyCode,
                                                                          "enter",
                                                                          13,
                                                                          $event.key,
                                                                          "Enter"
                                                                        )
                                                                      ) {
                                                                        return null
                                                                      }
                                                                      return _vm.goLastComment()
                                                                    }
                                                                  }
                                                                },
                                                                [
                                                                  _c(
                                                                    "div",
                                                                    {
                                                                      staticClass:
                                                                        "form-group"
                                                                    },
                                                                    [
                                                                      _c(
                                                                        "textarea",
                                                                        {
                                                                          directives: [
                                                                            {
                                                                              name:
                                                                                "model",
                                                                              rawName:
                                                                                "v-model",
                                                                              value:
                                                                                _vm
                                                                                  .form
                                                                                  .body,
                                                                              expression:
                                                                                "form.body"
                                                                            }
                                                                          ],
                                                                          staticClass:
                                                                            "form-control ",
                                                                          staticStyle: {
                                                                            margin:
                                                                              "10px",
                                                                            width:
                                                                              "600px"
                                                                          },
                                                                          attrs: {
                                                                            placeholder:
                                                                              "Algo para aportar?",
                                                                            rows:
                                                                              "2",
                                                                            required:
                                                                              ""
                                                                          },
                                                                          domProps: {
                                                                            value:
                                                                              _vm
                                                                                .form
                                                                                .body
                                                                          },
                                                                          on: {
                                                                            input: function(
                                                                              $event
                                                                            ) {
                                                                              if (
                                                                                $event
                                                                                  .target
                                                                                  .composing
                                                                              ) {
                                                                                return
                                                                              }
                                                                              _vm.$set(
                                                                                _vm.form,
                                                                                "body",
                                                                                $event
                                                                                  .target
                                                                                  .value
                                                                              )
                                                                            }
                                                                          }
                                                                        }
                                                                      ),
                                                                      _vm._v(
                                                                        " "
                                                                      ),
                                                                      _c("br")
                                                                    ]
                                                                  )
                                                                ]
                                                              )
                                                            ])
                                                          ],
                                                          1
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _vm._m(3),
                                                    _vm._v(" "),
                                                    _c("br"),
                                                    _vm._v(" "),
                                                    _c(
                                                      "ul",
                                                      {
                                                        staticClass:
                                                          "media-list"
                                                      },
                                                      [
                                                        _vm._l(
                                                          _vm.discussionsFinal,
                                                          function(d) {
                                                            return _c(
                                                              "li",
                                                              {
                                                                key:
                                                                  _vm
                                                                    .discussionsFinal
                                                                    .id,
                                                                staticClass:
                                                                  "media",
                                                                attrs: {
                                                                  id:
                                                                    "padre" +
                                                                    d
                                                                      .discussions
                                                                      .id
                                                                }
                                                              },
                                                              [
                                                                _c(
                                                                  "a",
                                                                  {
                                                                    staticClass:
                                                                      "pull-left",
                                                                    attrs: {
                                                                      href: "#"
                                                                    }
                                                                  },
                                                                  [
                                                                    _c("img", {
                                                                      staticClass:
                                                                        "imgCircle",
                                                                      attrs: {
                                                                        src:
                                                                          "https://picsum.photos/100?random=" +
                                                                          d
                                                                            .discussions
                                                                            .id,
                                                                        alt: ""
                                                                      }
                                                                    })
                                                                  ]
                                                                ),
                                                                _vm._v(" "),
                                                                _c(
                                                                  "div",
                                                                  {
                                                                    staticClass:
                                                                      "media-body"
                                                                  },
                                                                  [
                                                                    _c(
                                                                      "span",
                                                                      {
                                                                        staticClass:
                                                                          "text-muted pull-right mr-5"
                                                                      },
                                                                      [
                                                                        _c(
                                                                          "h6",
                                                                          {
                                                                            staticClass:
                                                                              "text-muted"
                                                                          },
                                                                          [
                                                                            _vm._v(
                                                                              _vm._s(
                                                                                _vm._f(
                                                                                  "humanDate2"
                                                                                )(
                                                                                  d
                                                                                    .discussions
                                                                                    .created_at
                                                                                )
                                                                              )
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    ),
                                                                    _vm._v(" "),
                                                                    _c(
                                                                      "strong",
                                                                      {
                                                                        staticClass:
                                                                          "text-success"
                                                                      },
                                                                      [
                                                                        _vm._v(
                                                                          " " +
                                                                            _vm._s(
                                                                              d
                                                                                .discussions
                                                                                .name
                                                                            )
                                                                        )
                                                                      ]
                                                                    ),
                                                                    _vm._v(" "),
                                                                    _c(
                                                                      "p",
                                                                      {
                                                                        staticClass:
                                                                          "biggerFont"
                                                                      },
                                                                      [
                                                                        _vm._v(
                                                                          _vm._s(
                                                                            d
                                                                              .discussions
                                                                              .body
                                                                          )
                                                                        )
                                                                      ]
                                                                    ),
                                                                    _vm._v(" "),
                                                                    _c(
                                                                      "div",
                                                                      {
                                                                        staticClass:
                                                                          "icons"
                                                                      },
                                                                      [
                                                                        _c(
                                                                          "a",
                                                                          {
                                                                            staticClass:
                                                                              "animated bounce",
                                                                            on: {
                                                                              click: function(
                                                                                $event
                                                                              ) {
                                                                                return _vm.likeComment(
                                                                                  d
                                                                                    .discussions
                                                                                    .id
                                                                                )
                                                                              }
                                                                            }
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "i",
                                                                              {
                                                                                staticClass:
                                                                                  "normalFont links biggerIcons",
                                                                                staticStyle: {
                                                                                  display:
                                                                                    "inline"
                                                                                }
                                                                              },
                                                                              [
                                                                                _vm.checkLiked(
                                                                                  d
                                                                                    .discussions
                                                                                    .likes
                                                                                )
                                                                                  ? _c(
                                                                                      "vue-star",
                                                                                      {
                                                                                        attrs: {
                                                                                          animate:
                                                                                            "animated  normalFont links",
                                                                                          color:
                                                                                            "#ccc"
                                                                                        }
                                                                                      },
                                                                                      [
                                                                                        _c(
                                                                                          "a",
                                                                                          {
                                                                                            staticClass:
                                                                                              "fas fa-thumbs-up",
                                                                                            staticStyle: {
                                                                                              color:
                                                                                                "#4285F4"
                                                                                            },
                                                                                            attrs: {
                                                                                              slot:
                                                                                                "icon"
                                                                                            },
                                                                                            slot:
                                                                                              "icon"
                                                                                          }
                                                                                        )
                                                                                      ]
                                                                                    )
                                                                                  : _c(
                                                                                      "vue-star",
                                                                                      {
                                                                                        attrs: {
                                                                                          animate:
                                                                                            "animated bounce normalFont links",
                                                                                          color:
                                                                                            "#4285F4"
                                                                                        }
                                                                                      },
                                                                                      [
                                                                                        _c(
                                                                                          "a",
                                                                                          {
                                                                                            staticClass:
                                                                                              "fas fa-thumbs-up",
                                                                                            staticStyle: {
                                                                                              color:
                                                                                                "gray"
                                                                                            },
                                                                                            attrs: {
                                                                                              slot:
                                                                                                "icon"
                                                                                            },
                                                                                            slot:
                                                                                              "icon"
                                                                                          }
                                                                                        )
                                                                                      ]
                                                                                    )
                                                                              ],
                                                                              1
                                                                            ),
                                                                            _vm._v(
                                                                              "\n                                                 \n\n                                          " +
                                                                                _vm._s(
                                                                                  " " +
                                                                                    d
                                                                                      .discussions
                                                                                      .likes
                                                                                      .length
                                                                                ) +
                                                                                " " +
                                                                                _vm._s(
                                                                                  _vm.likesText
                                                                                ) +
                                                                                "\n                                        "
                                                                            )
                                                                          ]
                                                                        ),
                                                                        _vm._v(
                                                                          "\n                                           \n                                        "
                                                                        ),
                                                                        _c(
                                                                          "a",
                                                                          {
                                                                            on: {
                                                                              click: function(
                                                                                $event
                                                                              ) {
                                                                                return _vm.addChild(
                                                                                  d
                                                                                    .discussions
                                                                                    .id
                                                                                )
                                                                              }
                                                                            }
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "span",
                                                                              [
                                                                                _c(
                                                                                  "i",
                                                                                  {
                                                                                    staticClass:
                                                                                      "flaticon-reply normalFont links"
                                                                                  },
                                                                                  [
                                                                                    _vm._v(
                                                                                      "  " +
                                                                                        _vm._s(
                                                                                          d
                                                                                            .childs
                                                                                            .length
                                                                                        ) +
                                                                                        "   comments"
                                                                                    )
                                                                                  ]
                                                                                )
                                                                              ]
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    )
                                                                  ]
                                                                ),
                                                                _vm._v(" "),
                                                                _c("br"),
                                                                _vm._v(" "),
                                                                _c("br"),
                                                                _vm._v(" "),
                                                                _vm._l(
                                                                  d.childs,
                                                                  function(
                                                                    sub
                                                                  ) {
                                                                    return _c(
                                                                      "div",
                                                                      {
                                                                        key:
                                                                          sub.id,
                                                                        staticClass:
                                                                          "media sub"
                                                                      },
                                                                      [
                                                                        _c(
                                                                          "a",
                                                                          {
                                                                            staticClass:
                                                                              "pull-left"
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "img",
                                                                              {
                                                                                staticClass:
                                                                                  "imgCircle",
                                                                                attrs: {
                                                                                  src:
                                                                                    "https://picsum.photos/110?random=" +
                                                                                    sub.id,
                                                                                  alt:
                                                                                    ""
                                                                                }
                                                                              }
                                                                            )
                                                                          ]
                                                                        ),
                                                                        _vm._v(
                                                                          " "
                                                                        ),
                                                                        _c(
                                                                          "div",
                                                                          {
                                                                            staticClass:
                                                                              "media-body"
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "span",
                                                                              {
                                                                                staticClass:
                                                                                  "text-muted pull-right mr-5"
                                                                              },
                                                                              [
                                                                                _c(
                                                                                  "h6",
                                                                                  {
                                                                                    staticClass:
                                                                                      "text-muted"
                                                                                  },
                                                                                  [
                                                                                    _vm._v(
                                                                                      _vm._s(
                                                                                        _vm._f(
                                                                                          "humanDate2"
                                                                                        )(
                                                                                          sub.created_at
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                  ]
                                                                                )
                                                                              ]
                                                                            ),
                                                                            _vm._v(
                                                                              " "
                                                                            ),
                                                                            _c(
                                                                              "strong",
                                                                              {
                                                                                staticClass:
                                                                                  "text-success"
                                                                              },
                                                                              [
                                                                                _vm._v(
                                                                                  " " +
                                                                                    _vm._s(
                                                                                      sub.name
                                                                                    )
                                                                                )
                                                                              ]
                                                                            ),
                                                                            _vm._v(
                                                                              " "
                                                                            ),
                                                                            _c(
                                                                              "p",
                                                                              {
                                                                                staticClass:
                                                                                  "biggerFont"
                                                                              },
                                                                              [
                                                                                _vm._v(
                                                                                  _vm._s(
                                                                                    sub.body
                                                                                  )
                                                                                )
                                                                              ]
                                                                            ),
                                                                            _vm._v(
                                                                              " "
                                                                            ),
                                                                            _c(
                                                                              "div",
                                                                              {
                                                                                staticClass:
                                                                                  "icons"
                                                                              },
                                                                              [
                                                                                _c(
                                                                                  "a",
                                                                                  {
                                                                                    staticClass:
                                                                                      "animated bounce",
                                                                                    on: {
                                                                                      click: function(
                                                                                        $event
                                                                                      ) {
                                                                                        return _vm.likeComment(
                                                                                          sub.id
                                                                                        )
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  [
                                                                                    _c(
                                                                                      "i",
                                                                                      {
                                                                                        staticClass:
                                                                                          "normalFont links biggerIcons",
                                                                                        staticStyle: {
                                                                                          display:
                                                                                            "inline"
                                                                                        }
                                                                                      },
                                                                                      [
                                                                                        _vm.checkLiked(
                                                                                          sub.likes
                                                                                        )
                                                                                          ? _c(
                                                                                              "vue-star",
                                                                                              {
                                                                                                attrs: {
                                                                                                  animate:
                                                                                                    "animated  normalFont links",
                                                                                                  color:
                                                                                                    "#ccc"
                                                                                                }
                                                                                              },
                                                                                              [
                                                                                                _c(
                                                                                                  "a",
                                                                                                  {
                                                                                                    staticClass:
                                                                                                      "fas fa-thumbs-up",
                                                                                                    staticStyle: {
                                                                                                      color:
                                                                                                        "#4285F4"
                                                                                                    },
                                                                                                    attrs: {
                                                                                                      slot:
                                                                                                        "icon"
                                                                                                    },
                                                                                                    slot:
                                                                                                      "icon"
                                                                                                  }
                                                                                                )
                                                                                              ]
                                                                                            )
                                                                                          : _c(
                                                                                              "vue-star",
                                                                                              {
                                                                                                attrs: {
                                                                                                  animate:
                                                                                                    "animated bounce normalFont links",
                                                                                                  color:
                                                                                                    "#4285F4"
                                                                                                }
                                                                                              },
                                                                                              [
                                                                                                _c(
                                                                                                  "a",
                                                                                                  {
                                                                                                    staticClass:
                                                                                                      "fas fa-thumbs-up",
                                                                                                    staticStyle: {
                                                                                                      color:
                                                                                                        "gray"
                                                                                                    },
                                                                                                    attrs: {
                                                                                                      slot:
                                                                                                        "icon"
                                                                                                    },
                                                                                                    slot:
                                                                                                      "icon"
                                                                                                  }
                                                                                                )
                                                                                              ]
                                                                                            )
                                                                                      ],
                                                                                      1
                                                                                    ),
                                                                                    _vm._v(
                                                                                      "\n                                                   \n                                            " +
                                                                                        _vm._s(
                                                                                          " " +
                                                                                            sub
                                                                                              .likes
                                                                                              .length
                                                                                        ) +
                                                                                        " " +
                                                                                        _vm._s(
                                                                                          _vm.likesText
                                                                                        ) +
                                                                                        "\n                                          "
                                                                                    )
                                                                                  ]
                                                                                ),
                                                                                _vm._v(
                                                                                  "\n                                             \n                                          "
                                                                                ),
                                                                                _c(
                                                                                  "a",
                                                                                  {
                                                                                    on: {
                                                                                      click: function(
                                                                                        $event
                                                                                      ) {
                                                                                        return _vm.addChild(
                                                                                          d
                                                                                            .discussions
                                                                                            .id
                                                                                        )
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  [
                                                                                    _vm._m(
                                                                                      4,
                                                                                      true
                                                                                    )
                                                                                  ]
                                                                                )
                                                                              ]
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    )
                                                                  }
                                                                ),
                                                                _vm._v(" "),
                                                                _vm.checkChilds(
                                                                  d
                                                                ) && 1 == 2
                                                                  ? _c(
                                                                      "div",
                                                                      {
                                                                        staticClass:
                                                                          "childComment"
                                                                      },
                                                                      [
                                                                        _c(
                                                                          "form",
                                                                          {
                                                                            staticClass:
                                                                              "form",
                                                                            on: {
                                                                              submit: function(
                                                                                $event
                                                                              ) {
                                                                                $event.preventDefault()
                                                                                return _vm.sendChildComment(
                                                                                  d
                                                                                    .discussions
                                                                                    .id
                                                                                )
                                                                              },
                                                                              keydown: function(
                                                                                $event
                                                                              ) {
                                                                                return _vm.formChild.onKeydown(
                                                                                  $event
                                                                                )
                                                                              }
                                                                            }
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "div",
                                                                              {
                                                                                staticClass:
                                                                                  "form-group"
                                                                              },
                                                                              [
                                                                                _c(
                                                                                  "input",
                                                                                  {
                                                                                    directives: [
                                                                                      {
                                                                                        name:
                                                                                          "model",
                                                                                        rawName:
                                                                                          "v-model",
                                                                                        value:
                                                                                          _vm
                                                                                            .formChild
                                                                                            .body,
                                                                                        expression:
                                                                                          "formChild.body"
                                                                                      }
                                                                                    ],
                                                                                    staticClass:
                                                                                      "form-control child-response-input",
                                                                                    attrs: {
                                                                                      type:
                                                                                        "text",
                                                                                      placeholder:
                                                                                        "Write a reply... Enter key to send"
                                                                                    },
                                                                                    domProps: {
                                                                                      value:
                                                                                        _vm
                                                                                          .formChild
                                                                                          .body
                                                                                    },
                                                                                    on: {
                                                                                      input: function(
                                                                                        $event
                                                                                      ) {
                                                                                        if (
                                                                                          $event
                                                                                            .target
                                                                                            .composing
                                                                                        ) {
                                                                                          return
                                                                                        }
                                                                                        _vm.$set(
                                                                                          _vm.formChild,
                                                                                          "body",
                                                                                          $event
                                                                                            .target
                                                                                            .value
                                                                                        )
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                )
                                                                              ]
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    )
                                                                  : _vm._e(),
                                                                _vm._v(" "),
                                                                _c(
                                                                  "div",
                                                                  {
                                                                    staticClass:
                                                                      "childComment",
                                                                    staticStyle: {
                                                                      display:
                                                                        "none"
                                                                    },
                                                                    attrs: {
                                                                      id:
                                                                        d
                                                                          .discussions
                                                                          .id
                                                                    }
                                                                  },
                                                                  [
                                                                    _c(
                                                                      "form",
                                                                      {
                                                                        staticClass:
                                                                          "form",
                                                                        on: {
                                                                          submit: function(
                                                                            $event
                                                                          ) {
                                                                            $event.preventDefault()
                                                                            return _vm.sendChild2Comment(
                                                                              d
                                                                                .discussions
                                                                                .id
                                                                            )
                                                                          },
                                                                          keydown: function(
                                                                            $event
                                                                          ) {
                                                                            return _vm.formChild2.onKeydown(
                                                                              $event
                                                                            )
                                                                          }
                                                                        }
                                                                      },
                                                                      [
                                                                        _c(
                                                                          "div",
                                                                          {
                                                                            staticClass:
                                                                              "form-group"
                                                                          },
                                                                          [
                                                                            _c(
                                                                              "input",
                                                                              {
                                                                                directives: [
                                                                                  {
                                                                                    name:
                                                                                      "model",
                                                                                    rawName:
                                                                                      "v-model",
                                                                                    value:
                                                                                      _vm
                                                                                        .formChild2
                                                                                        .body,
                                                                                    expression:
                                                                                      "formChild2.body"
                                                                                  }
                                                                                ],
                                                                                staticClass:
                                                                                  "form-control child-response-input",
                                                                                attrs: {
                                                                                  type:
                                                                                    "text",
                                                                                  id:
                                                                                    "texto" +
                                                                                    d
                                                                                      .discussions
                                                                                      .id,
                                                                                  placeholder:
                                                                                    "Write a reply... Enter key to send"
                                                                                },
                                                                                domProps: {
                                                                                  value:
                                                                                    _vm
                                                                                      .formChild2
                                                                                      .body
                                                                                },
                                                                                on: {
                                                                                  input: function(
                                                                                    $event
                                                                                  ) {
                                                                                    if (
                                                                                      $event
                                                                                        .target
                                                                                        .composing
                                                                                    ) {
                                                                                      return
                                                                                    }
                                                                                    _vm.$set(
                                                                                      _vm.formChild2,
                                                                                      "body",
                                                                                      $event
                                                                                        .target
                                                                                        .value
                                                                                    )
                                                                                  }
                                                                                }
                                                                              }
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    )
                                                                  ]
                                                                )
                                                              ],
                                                              2
                                                            )
                                                          }
                                                        ),
                                                        _vm._v(" "),
                                                        _c("br"),
                                                        _vm._v(" "),
                                                        _c("br"),
                                                        _vm._v(" "),
                                                        _c("br")
                                                      ],
                                                      2
                                                    )
                                                  ]
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ])
                                    ]
                                  )
                                ])
                              ])
                            ]
                          )
                        ])
                      ])
                    ])
                  ],
                  1
                )
              ])
            ]
          )
        : _c("div", { staticClass: "row " }, [
            _c("div", { staticClass: "col-4" }),
            _vm._v(" "),
            _c(
              "div",
              { staticClass: "col-4" },
              [
                _c(
                  "router-link",
                  {
                    staticClass: "btn btn-primary",
                    attrs: { to: "/innovations" }
                  },
                  [_vm._v("\n\n          Go back to innovations\n        ")]
                )
              ],
              1
            ),
            _vm._v(" "),
            _c("div", { staticClass: "col-4" }),
            _vm._v(" "),
            _c(
              "div",
              { staticClass: "col-12 mt-5" },
              [
                _c("center", [
                  _c(
                    "h4",
                    {
                      staticStyle: {
                        "margin-left": "auto",
                        "margin-right": "auto",
                        display: "block",
                        color: "white"
                      }
                    },
                    [
                      _vm._v(
                        "Sorry, it seems you don't have permission to see this idea."
                      )
                    ]
                  )
                ]),
                _vm._v(" "),
                _c("img", {
                  staticClass: "mt-5 fadeImg",
                  staticStyle: { "text-align": "center", "margin-left": "10%" },
                  attrs: {
                    height: "80%",
                    width: "80%",
                    src: _vm.baseUrl + "img/forbidden.svg",
                    alt: ""
                  }
                })
              ],
              1
            )
          ])
    ]
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("span", { staticClass: "kt-portlet__head-icon" }, [
      _c("i", { staticClass: "flaticon-interface-5" })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "kt-demo-icon__preview" }, [
      _c("i", { staticClass: "flaticon-add" })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "kt-widget4__pic kt-widget4__pic--pic" }, [
      _c("img", {
        attrs: {
          src:
            "https://microhealth.com/assets/images/illustrations/personal-user-illustration-@2x.png",
          height: "40",
          width: "130",
          alt: ""
        }
      })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("p", [
      _vm._v("Nota: presionar tecla "),
      _c("b", [_vm._v("Enter")]),
      _vm._v(" para enviar comentario")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("span", [
      _c("i", { staticClass: "flaticon-reply normalFont links" })
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Retos/showReto.vue":
/*!****************************************************!*\
  !*** ./resources/js/components/Retos/showReto.vue ***!
  \****************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./showReto.vue?vue&type=template&id=abde8c80& */ "./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80&");
/* harmony import */ var _showReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./showReto.vue?vue&type=script&lang=js& */ "./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./showReto.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _showReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__["render"],
  _showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Retos/showReto.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js&":
/*!*****************************************************************************!*\
  !*** ./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./showReto.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css& ***!
  \*************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./showReto.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80&":
/*!***********************************************************************************!*\
  !*** ./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80& ***!
  \***********************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./showReto.vue?vue&type=template&id=abde8c80& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Retos/showReto.vue?vue&type=template&id=abde8c80&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_showReto_vue_vue_type_template_id_abde8c80___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);