(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["publicIdeaChunk"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************/
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
toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": true,
  "positionClass": "toast-top-center",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "4000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
};
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    var _ref;

    return _ref = {
      canIseeVar: false,
      permissions: {},
      id: this.$route.params.id,
      idea: {},
      editMode: false,
      ideas: {},
      user: window.User,
      userIdea: {},
      liked: ""
    }, _defineProperty(_ref, "user", window.user), _defineProperty(_ref, "discussionsFinal", {}), _defineProperty(_ref, "like", {}), _defineProperty(_ref, "containter", ""), _defineProperty(_ref, "containerFluid", ""), _defineProperty(_ref, "likesPerIdea", {}), _defineProperty(_ref, "foundLiked", false), _defineProperty(_ref, "baseUrl", window.baseUrl), _defineProperty(_ref, "randomNumber", Math.floor(Math.random() * 100)), _defineProperty(_ref, "lastCommentId", ""), _defineProperty(_ref, "id_idea_general", this.$route.params.id), _defineProperty(_ref, "form", new Form({
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
    })), _defineProperty(_ref, "deleteForm", new Form({
      id: ''
    })), _ref;
  },
  computed: {
    puedoEditar: function puedoEditar() {
      if (this.idea.created_by == this.user.id) {
        return true;
      } else {
        return false;
      }
    },
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
    voteText: function voteText() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Me gusta';
      } else {
        return 'Me gusta';
      }
    },
    likedText: function likedText() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Me gusta';
      } else {
        return 'Me gusta';
      }
    },
    voteTextN: function voteTextN() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Leída';
      } else {
        return 'Leída';
      }
    },
    likedTextN: function likedTextN() {
      if (this.$mq == 'sm') {
        return '';
      } else if (this.$mq == 'md' || this.$mq == 'lg') {
        return 'Leída';
      } else {
        return 'Leída';
      }
    }
  },
  methods: {
    deleteIdea: function deleteIdea() {
      var _this = this;

      var id = this.$route.params.id;
      Swal.fire({
        title: "Estas seguro(a)?",
        text: "No será posible deshacer esta acción.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, borrar idea."
      }).then(function (result) {
        if (result.value) {
          _this.$Progress.start(); // Submit the form via a POST request


          _this.deleteForm.id = id; //this.form.editordata =  $('#kt_summernote_1').summernote('code');

          _this.deleteForm.post("/deleteInnovation").then(function (response) {
            if (response.data.estado == 'OK') {
              toastr.success('Bien', 'Idea borrada correctamente');

              _this.$router.push({
                name: 'ideaList'
              });
            } else {
              toastr.info('Oops', 'No se pudo completar el borrado.');
            }

            console.log(response.data.msg);

            _this.$Progress.finish();
          })["catch"](function (error) {
            console.log(error);
            toastr.error("Oops!", "Something goes wrong");

            _this.$Progress.finish();
          }); //$('#userCreationModal').modal('hide');

        }
      });
    },
    alreadyLiked1: function alreadyLiked1(idea) {
      if (this.likesPerIdea.length != 0) {
        var foundLiked2 = false;

        try {
          this.likesPerIdea.forEach(function (el) {
            if (el.user_id == window.user.id && el.type == 'like') {
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
    // end alreadyLike(idea)
    alreadyLiked2: function alreadyLiked2(idea) {
      if (this.likesPerIdea.length != 0) {
        var foundLiked2 = false;

        try {
          this.likesPerIdea.forEach(function (el) {
            if (el.user_id == window.user.id && el.type == 'dislike') {
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
    // end alreadyLike(idea)2
    alreadyLiked3: function alreadyLiked3(idea) {
      if (this.likesPerIdea.length != 0) {
        var foundLiked2 = false;

        try {
          this.likesPerIdea.forEach(function (el) {
            if (el.user_id == window.user.id && el.type == 'action') {
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
    // end alreadyLike(idea)3
    likeIdea: function likeIdea(type) {
      var _this2 = this;

      this.$Progress.start(); // Submit the form via a POST request

      this.formDesired.type = type; //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formDesired.post("/saveDesired").then(function (response) {
        toastr.success("Gracias por la valoración.", "Sigue puntuando tus ideas favoritas.");
        _this2.likesPerIdea = response.data.desired;
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
      var _this3 = this;

      this.formLike.comment_id = idComment;
      this.formLike.idea_id = this.id_idea_general;
      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formLike.post("/saveLike").then(function (response) {
        toastr.success("Keep innovating", "Thanks for the feedback.");
        _this3.formLike.comment_id = "";
        _this3.formLike.idea_id = "";
        _this3.discussionsFinal = response.data.discussions;
      })["catch"](function (error) {
        console.log(error);
        _this3.formLike.comment_id = "";
        _this3.formLike.idea_id = "";
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
      var _this4 = this;

      // podemos usar this.form.get but we are gonna use axios
      axios.get("/getInnovation/" + this.id).then(function (response) {
        _this4.idea = response.data.idea;
        _this4.userIdea = response.data.user;
        _this4.discussionsFinal = response.data.discussions;
        _this4.likesPerIdea = response.data.desired;
        _this4.permissions = response.data.permissions; //console.log(response);
      })["catch"](function (error) {
        console.log(error);
      });
    },
    sendComment: function sendComment() {
      var _this5 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.form.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this5.form.reset();

        _this5.discussionsFinal = response.data.discussions; //this.lastCommentId = response.data.lastCommentId;

        _this5.likesPerIdea = response.data.desired;
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
      var _this6 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild.discussion_parent_id = idComment;
      this.formChild.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this6.formChild.reset();

        _this6.discussionsFinal = response.data.discussions;
        _this6.likesPerIdea = response.data.desired;
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    sendChild2Comment: function sendChild2Comment(idComment) {
      var _this7 = this;

      this.$Progress.start(); // Submit the form via a POST request
      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild2.discussion_parent_id = idComment;
      this.formChild2.post("/addComment").then(function (response) {
        toastr.success("Awesome!", "Comment added successfully.");

        _this7.formChild2.reset();

        $("#" + idComment).attr("style", "display:none");
        _this7.discussionsFinal = response.data.discussions;
        _this7.likesPerIdea = response.data.desired; // document.getElementById('padre'+response.data.lastCommentId).focus();
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

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.toast-title {\r\n  color:white !important;\n}\n.fadeImg {\r\n  \r\n    -webkit-animation: fadein 2s; /* Safari, Chrome and Opera > 12.1 */ /* Firefox < 16 */ /* Internet Explorer */ /* Opera < 12.1 */\r\n            animation: fadein 2s;\n}\n@keyframes fadein {\nfrom { opacity: 0;\n}\nto   { opacity: 1;\n}\n}\r\n\r\n/* Firefox < 16 */\r\n\r\n/* Safari, Chrome and Opera > 12.1 */\n@-webkit-keyframes fadein {\nfrom { opacity: 0;\n}\nto   { opacity: 1;\n}\n}\r\n\r\n/* Internet Explorer */\r\n\r\n/* Opera < 12.1 */\n.noEscondido {\r\n  display:block !important;\n}\n.escondido {\r\n  display:none;\n}\n.largeBtn {\r\n  width:100px !important;\n}\n.pulse {\r\n  --color: #1164c5;\r\n  --hover: #1164c5;\n}\n.pulse:hover,\r\n.pulse:focus {\r\n  -webkit-animation: pulse 3s infinite;\r\n          animation: pulse 3s infinite;\r\n  box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);\n}\n@-webkit-keyframes pulse {\n0% {\r\n    box-shadow: 0 0 0 0 var(--hover);\n}\n}\n@keyframes pulse {\n0% {\r\n    box-shadow: 0 0 0 0 var(--hover);\n}\n}\n.wrapText {\r\n  word-wrap: break-word !important;\n}\n.VueStar__decoration {\r\n  width: 50px;\r\n  height: 50px;\r\n  position: absolute;\n}\n.biggerIcons {\r\n  font-size: 1.5em !important;\n}\n.VueStar__icon {\r\n  position: static !important;\r\n  z-index: 0;\r\n  height: 30px;\r\n  width: 20px;\n}\n.VueStar__ground {\r\n  width: 1px;\r\n  height: 1px;\r\n  margin-left: 60px;\r\n  margin-top: 10px;\n}\n@media (max-width: 600px) {\n.VueStar__ground {\r\n      \r\n      margin-left: 10px;\r\n      margin-top: 10px;\n}\n}\n.auxiliarVueStar {\r\n   margin-left: 5px;\n}\n.icons {\r\n  margin-left: 10px;\n}\n.media-list {\r\n  padding-left: 0;\n}\n.links {\r\n  cursor: pointer;\n}\n.center {\r\n  margin-right: 10px !important;\n}\n.fit-width-input {\r\n  width: 30vw !important;\n}\n.child-response-input {\r\n  margin-left: 70px;\r\n  position: relative;\r\n  width: 70% !important;\n}\n.biggerFont {\r\n  font-size: 1.1em;\r\n  padding-left: 30px !important;\r\n  margin-left: 40px !important;\n}\n.biggerFont2 {\r\n  font-size: 1.1em;\n}\n.normalFont {\r\n  font-style: normal !important;\r\n  font-size: 1.05em;\r\n  color: grey;\n}\n.normalFont:hover {\r\n  color: #4286f4;\n}\n.sub {\r\n  padding-left: 70px;\n}\n.imgCircle {\r\n  border-radius: 30px;\n}\n.media {\r\n  display: block;\n}\n.allHeight {\r\n  height: 100vh !important;\n}\n.comment-wrapper .media-list .media img {\r\n  width: 64px;\r\n  height: 64px;\r\n  border: 2px solid #e5e7e8;\n}\n.comment-wrapper .media-list .media {\r\n  border-bottom: 1px dashed #efefef;\r\n  margin-bottom: 25px;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6&":
/*!**************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6& ***!
  \**************************************************************************************************************************************************************************************************************************/
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
      _c("div", { staticClass: "row", staticStyle: { "min-height": "80vh" } }, [
        _c("div", { staticClass: "col-lg-12 col-sm-12 col-md-12" }, [
          _c("div", { staticClass: "kt-portlet mobilePortlet" }, [
            _c("div", { staticClass: "kt-portlet__head" }, [
              _c(
                "div",
                { staticClass: "kt-portlet__head-label" },
                [
                  _c(
                    "router-link",
                    {
                      staticClass: "btn btn-clean kt-margin-r-10",
                      attrs: { to: "/innovations" }
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
                    _vm._v(_vm._s(_vm.idea.title))
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
                    !_vm.alreadyLiked1(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("like")
                              }
                            }
                          },
                          [
                            _c("i", { staticClass: "flaticon2-arrow-up" }),
                            _vm._v(
                              "\n                  " +
                                _vm._s(_vm.voteText) +
                                "\n              "
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.alreadyLiked1(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("unlike")
                              }
                            }
                          },
                          [
                            _c("i", { staticClass: "flaticon2-arrow-up" }),
                            _vm._v(
                              "\n                  " +
                                _vm._s(_vm.likedText) +
                                "\n               "
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    !_vm.alreadyLiked2(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("dislike")
                              }
                            }
                          },
                          [
                            _c("i", { staticClass: "flaticon2-arrow-down " }),
                            _vm._v(
                              "\n                  " +
                                _vm._s(_vm.voteTextN) +
                                "\n              "
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.alreadyLiked2(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("undislike")
                              }
                            }
                          },
                          [
                            _c("i", { staticClass: "flaticon2-arrow-down" }),
                            _vm._v(
                              "\n                  " +
                                _vm._s(_vm.likedTextN) +
                                "\n               "
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    !_vm.alreadyLiked3(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("action")
                              }
                            }
                          },
                          [
                            _c(
                              "div",
                              {
                                staticStyle: {
                                  padding: "2px",
                                  "font-size": "0.8rem"
                                }
                              },
                              [_vm._v(" Acción de mejora")]
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.alreadyLiked3(_vm.idea)
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-primary btn-sm btn-icon pulse btn-icon-md ",
                            class: { largeBtn: _vm.large },
                            on: {
                              click: function($event) {
                                return _vm.likeIdea("unaction")
                              }
                            }
                          },
                          [
                            _c(
                              "div",
                              {
                                staticStyle: {
                                  padding: "2px",
                                  "font-size": "0.8rem"
                                }
                              },
                              [_vm._v(" Acción de mejora")]
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.puedoEditar
                      ? _c(
                          "router-link",
                          {
                            staticClass:
                              "btn btn-outline-warning btn-sm btn-icon btn-icon-md",
                            attrs: { to: "/innovationsEdit/" + this.id }
                          },
                          [_c("i", { staticClass: "flaticon-edit" })]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.puedoEditar
                      ? _c(
                          "router-link",
                          {
                            staticClass:
                              "btn btn-outline-success btn-sm btn-icon btn-icon-md",
                            attrs: { to: "/shareInnovation/" + this.id }
                          },
                          [_c("i", { staticClass: "flaticon-share" })]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _vm.puedoEditar
                      ? _c(
                          "button",
                          {
                            staticClass:
                              "btn btn-outline-danger btn-sm btn-icon btn-icon-md",
                            on: { click: _vm.deleteIdea }
                          },
                          [_c("i", { staticClass: "flaticon-delete" })]
                        )
                      : _vm._e()
                  ],
                  1
                )
              ])
            ]),
            _vm._v(" "),
            _c(
              "div",
              {
                directives: [{ name: "viewer", rawName: "v-viewer" }],
                staticClass: "images "
              },
              [
                _c("img", {
                  staticClass: "imgFit",
                  attrs: { src: _vm.idea.img }
                })
              ]
            ),
            _vm._v(" "),
            _c("div", {
              staticClass: "kt-portlet__body wrapText",
              attrs: { id: "ideaBody" },
              domProps: { innerHTML: _vm._s(_vm.idea.body) }
            }),
            _vm._v(" "),
            _c("br"),
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
                                _c("div", { staticClass: "kt-widget4__item" }, [
                                  _vm._m(1),
                                  _vm._v(" "),
                                  _vm.idea.author == "showme"
                                    ? _c(
                                        "div",
                                        { staticClass: "kt-widget4__info" },
                                        [
                                          _c(
                                            "a",
                                            {
                                              staticClass:
                                                "kt-widget4__username",
                                              attrs: { href: "#" }
                                            },
                                            [_vm._v(_vm._s(_vm.userIdea.name))]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "p",
                                            { staticClass: "kt-widget4__text" },
                                            [_vm._v(_vm._s(_vm.userIdea.email))]
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
                                        { staticClass: "kt-widget4__info" },
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
                                            { staticClass: "kt-widget4__text" },
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
                                ])
                              ])
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _c("br"),
                        _vm._v(" "),
                        _c("div", { staticClass: "comments-section" }, [
                          _c("div", { staticClass: "row bootstrap snippets" }, [
                            _c("div", { staticClass: "col-12" }, [
                              _c("div", { staticClass: "comment-wrapper" }, [
                                _c("div", { staticClass: "panel panel-info" }, [
                                  _c("div", { staticClass: "panel-body" }, [
                                    _c("h5", { staticClass: "ml-3 mt-5" }, [
                                      _vm._v("Comments Section")
                                    ]),
                                    _vm._v(" "),
                                    _c(
                                      "form",
                                      {
                                        staticClass: "form-inline",
                                        on: {
                                          submit: function($event) {
                                            $event.preventDefault()
                                            return _vm.goLastComment($event)
                                          },
                                          keydown: function($event) {
                                            return _vm.form.onKeydown($event)
                                          },
                                          keyup: function($event) {
                                            if (
                                              !$event.type.indexOf("key") &&
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
                                          { staticClass: "form-group" },
                                          [
                                            _c("textarea", {
                                              directives: [
                                                {
                                                  name: "model",
                                                  rawName: "v-model",
                                                  value: _vm.form.body,
                                                  expression: "form.body"
                                                }
                                              ],
                                              staticClass:
                                                "form-control fit-width-input",
                                              staticStyle: {
                                                margin: "10px",
                                                overflow: "hidden"
                                              },
                                              attrs: {
                                                placeholder:
                                                  "Write a comment...",
                                                rows: "2",
                                                required: ""
                                              },
                                              domProps: {
                                                value: _vm.form.body
                                              },
                                              on: {
                                                input: function($event) {
                                                  if ($event.target.composing) {
                                                    return
                                                  }
                                                  _vm.$set(
                                                    _vm.form,
                                                    "body",
                                                    $event.target.value
                                                  )
                                                }
                                              }
                                            })
                                          ]
                                        )
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c("br"),
                                    _vm._v(" "),
                                    _c(
                                      "ul",
                                      { staticClass: "media-list" },
                                      [
                                        _vm._l(_vm.discussionsFinal, function(
                                          d
                                        ) {
                                          return _c(
                                            "li",
                                            {
                                              key: _vm.discussionsFinal.id,
                                              staticClass: "media",
                                              attrs: {
                                                id: "padre" + d.discussions.id
                                              }
                                            },
                                            [
                                              _c(
                                                "a",
                                                {
                                                  staticClass: "pull-left",
                                                  attrs: { href: "#" }
                                                },
                                                [
                                                  _c("img", {
                                                    staticClass: "imgCircle",
                                                    attrs: {
                                                      src:
                                                        "https://picsum.photos/100?random=" +
                                                        d.discussions.id,
                                                      alt: ""
                                                    }
                                                  })
                                                ]
                                              ),
                                              _vm._v(" "),
                                              _c(
                                                "div",
                                                { staticClass: "media-body" },
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
                                                                d.discussions
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
                                                            d.discussions.name
                                                          )
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "p",
                                                    {
                                                      staticClass: "biggerFont"
                                                    },
                                                    [
                                                      _vm._v(
                                                        _vm._s(
                                                          d.discussions.body
                                                        )
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "div",
                                                    { staticClass: "icons" },
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
                                                                d.discussions.id
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
                                                                d.discussions
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
                                                                      _c("a", {
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
                                                                      })
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
                                                                      _c("a", {
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
                                                                      })
                                                                    ]
                                                                  )
                                                            ],
                                                            1
                                                          ),
                                                          _vm._v(
                                                            "\n                                               \n  \n                                        " +
                                                              _vm._s(
                                                                " " +
                                                                  d.discussions
                                                                    .likes
                                                                    .length
                                                              ) +
                                                              " " +
                                                              _vm._s(
                                                                _vm.likesText
                                                              ) +
                                                              "\n                                      "
                                                          )
                                                        ]
                                                      ),
                                                      _vm._v(
                                                        "\n                                         \n                                      "
                                                      ),
                                                      _c(
                                                        "a",
                                                        {
                                                          on: {
                                                            click: function(
                                                              $event
                                                            ) {
                                                              return _vm.addChild(
                                                                d.discussions.id
                                                              )
                                                            }
                                                          }
                                                        },
                                                        [
                                                          _c("span", [
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
                                                                      d.childs
                                                                        .length
                                                                    ) +
                                                                    "  comments"
                                                                )
                                                              ]
                                                            )
                                                          ])
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
                                              _vm._l(d.childs, function(sub) {
                                                return _c(
                                                  "div",
                                                  {
                                                    key: sub.id,
                                                    staticClass: "media sub"
                                                  },
                                                  [
                                                    _c(
                                                      "a",
                                                      {
                                                        staticClass: "pull-left"
                                                      },
                                                      [
                                                        _c("img", {
                                                          staticClass:
                                                            "imgCircle",
                                                          attrs: {
                                                            src:
                                                              "https://picsum.photos/110?random=" +
                                                              sub.id,
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
                                                                      sub.created_at
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
                                                                _vm._s(sub.name)
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
                                                              _vm._s(sub.body)
                                                            )
                                                          ]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass: "icons"
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
                                                                  "\n                                                 \n                                          " +
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
                                                              [_vm._m(2, true)]
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]
                                                )
                                              }),
                                              _vm._v(" "),
                                              _vm.checkChilds(d) && 1 == 2
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
                                                          staticClass: "form",
                                                          on: {
                                                            submit: function(
                                                              $event
                                                            ) {
                                                              $event.preventDefault()
                                                              return _vm.sendChildComment(
                                                                d.discussions.id
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
                                                              _c("input", {
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
                                                                  type: "text",
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
                                                              })
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
                                                  staticClass: "childComment",
                                                  staticStyle: {
                                                    display: "none"
                                                  },
                                                  attrs: {
                                                    id: d.discussions.id
                                                  }
                                                },
                                                [
                                                  _c(
                                                    "form",
                                                    {
                                                      staticClass: "form",
                                                      on: {
                                                        submit: function(
                                                          $event
                                                        ) {
                                                          $event.preventDefault()
                                                          return _vm.sendChild2Comment(
                                                            d.discussions.id
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
                                                          _c("input", {
                                                            directives: [
                                                              {
                                                                name: "model",
                                                                rawName:
                                                                  "v-model",
                                                                value:
                                                                  _vm.formChild2
                                                                    .body,
                                                                expression:
                                                                  "formChild2.body"
                                                              }
                                                            ],
                                                            staticClass:
                                                              "form-control child-response-input",
                                                            attrs: {
                                                              type: "text",
                                                              id:
                                                                "texto" +
                                                                d.discussions
                                                                  .id,
                                                              placeholder:
                                                                "Write a reply... Enter key to send"
                                                            },
                                                            domProps: {
                                                              value:
                                                                _vm.formChild2
                                                                  .body
                                                            },
                                                            on: {
                                                              input: function(
                                                                $event
                                                              ) {
                                                                if (
                                                                  $event.target
                                                                    .composing
                                                                ) {
                                                                  return
                                                                }
                                                                _vm.$set(
                                                                  _vm.formChild2,
                                                                  "body",
                                                                  $event.target
                                                                    .value
                                                                )
                                                              }
                                                            }
                                                          })
                                                        ]
                                                      )
                                                    ]
                                                  )
                                                ]
                                              )
                                            ],
                                            2
                                          )
                                        }),
                                        _vm._v(" "),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c("br"),
                                        _vm._v(" "),
                                        _c("br")
                                      ],
                                      2
                                    )
                                  ])
                                ])
                              ])
                            ])
                          ])
                        ])
                      ])
                    ]
                  )
                ])
              ])
            ])
          ])
        ])
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
      _c("i", { staticClass: "flaticon2-calendar-2" })
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
    return _c("span", [
      _c("i", { staticClass: "flaticon-reply normalFont links" })
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/PublicIdeaViewComponent.vue":
/*!*************************************************************!*\
  !*** ./resources/js/components/PublicIdeaViewComponent.vue ***!
  \*************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6& */ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6&");
/* harmony import */ var _PublicIdeaViewComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./PublicIdeaViewComponent.vue?vue&type=script&lang=js& */ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _PublicIdeaViewComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__["render"],
  _PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/PublicIdeaViewComponent.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js&":
/*!**************************************************************************************!*\
  !*** ./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./PublicIdeaViewComponent.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&":
/*!**********************************************************************************************!*\
  !*** ./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& ***!
  \**********************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6&":
/*!********************************************************************************************!*\
  !*** ./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6& ***!
  \********************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/PublicIdeaViewComponent.vue?vue&type=template&id=fbe073c6&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_PublicIdeaViewComponent_vue_vue_type_template_id_fbe073c6___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);