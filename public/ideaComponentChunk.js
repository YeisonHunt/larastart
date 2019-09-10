(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["ideaComponentChunk"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
      megusta: {},
      pulirmas: {},
      acciondemejora: {},
      editMode: false,
      select1: 'all',
      options1: [{
        text: 'Todas las categorías',
        value: 'all'
      }, {
        text: 'Negocios',
        value: 'businessandconsumer'
      }, {
        text: 'Sostenibilidad',
        value: 'sustainability'
      }, {
        text: 'Vida & Salud',
        value: 'lifeandhealth'
      }, {
        text: 'Arte & Cultura',
        value: 'Art & Culture'
      }, {
        text: 'Belleza & Moda',
        value: 'beautyandfaashion'
      }, {
        text: 'Hogar & Mascotas',
        value: 'homeandpets'
      }, {
        text: 'Ciencia & Tecnología',
        value: 'scienceandtechnology'
      }, {
        text: 'Turismo & Viajes',
        value: 'tourismandtravel'
      }, {
        text: 'Transporte',
        value: 'transport'
      }, {
        text: 'Comida',
        value: 'food'
      }, {
        text: 'Política & Sociedad',
        value: 'politicsandsociety'
      }, {
        text: 'Deportes & Entretenimiento',
        value: 'sportsandentertainment'
      }, {
        text: 'Improve Asakaa.com',
        value: 'improvethis'
      }],
      ideas: {},
      publicIdeas: {},
      companyIdeas: {},
      solutions: {},
      category: 'all',
      cats: {},
      minHeight: '300px',
      baseUrl: window.baseUrl,
      "public": false,
      user: {},
      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: "",
        img: ""
      })
    };
  },
  computed: {
    filteredPersonal: function filteredPersonal() {
      var _this = this;

      if (this.select1 == 'all') {
        return this.ideas;
      } else {
        return this.ideas.filter(function (idea) {
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
        return this.publicIdeas;
      } else {
        return this.publicIdeas.filter(function (idea) {
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
        return this.companyIdeas;
      } else {
        return this.companyIdeas.filter(function (idea) {
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
    getVotes: function getVotes(id) {
      var _this4 = this;

      $("#modalVotos").modal("show");
      axios.get("/getVotes/" + id).then(function (response) {
        _this4.megusta = response.data.megusta;
        _this4.pulirmas = response.data.pulirmas;
        _this4.acciondemejora = response.data.acciondemejora;
      })["catch"](function (error) {
        console.log(error);
        toastr.error("Oops!", "Something goes wrong");
      });
    },
    filterIdeas: function filterIdeas(category) {
      this.filterValue = category;
      console.log(category); //Vue.set(app,'filterValue', category);
    },
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
      var _this5 = this;

      console.log("ID" + this.form.id);
      this.$Progress.start(); // Submit the form via a POST request

      this.form.put("/editIdea/" + this.form.id).then(function (_ref) {
        var data = _ref.data;

        _this5.loadUsers(); //form.ideatxt=''
        //form.bugorfeaturetxt=''


        toastr.success("Awesome!", "Idea has been evolved.");
        $("#closeBtnModal").click();
        $(".modal-backdrop").remove();
      })["catch"](function () {
        toastr.error("Oops!", "Something goes wrong");

        _this5.$Progress.fail();
      }); //$('#userCreationModal').modal('hide');

      this.$Progress.finish(); // Fire.$emit('AfterCreate');
    },
    deleteIdea: function deleteIdea(id) {
      var _this6 = this;

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
          _this6.form["delete"]("/deleteIdea/" + id).then(function (_ref2) {
            var data = _ref2.data;
            toastr.success("Done!", "The idea has been deleted.");

            _this6.loadUsers();
          })["catch"](function () {
            toastr.error("Oops!", "Something went wrong.");
          });
        }
      });
    },
    createUser: function createUser() {
      var _this7 = this;

      this.$Progress.start(); // Submit the form via a POST request

      this.form.post("/saveIdea").then(function (_ref3) {
        var data = _ref3.data;

        _this7.loadUsers();

        $("#closeBtnModal").click();
        $(".modal-backdrop").remove();
        toastr.success("Awesome!", "New innovation has appeared."); //form.ideatxt=''
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
      var _this8 = this;

      // podemos usar this.form.get but we are gonna use axios
      this.$Progress.start();
      axios.get("/getInnovations").then(function (response) {
        if (response.data.msg == 'loginRequired') {
          window.location.href = baseUrl + 'login';

          _this8.$Progress.finish(); // Este nunca va a servir porque es rechazado antes.

        } else {
          _this8.ideas = response.data.ideas;
          _this8.publicIdeas = response.data.publicIdeas;
          _this8.user = response.data.user;
          _this8.companyIdeas = response.data.companyIdeas;
          _this8.cats = response.data.cats;

          _this8.$Progress.finish();
        }
      })["catch"](function (error) {
        console.log(error);

        _this8.$Progress.finish();

        toastr.error("Oops!", "Something goes wrong");
      });
      Fire.$on("AfterCreate", function () {});
    }
  },
  mounted: function mounted() {
    var _this9 = this;

    console.log("Ideas component mounted");
    this.loadUsers();
    $('.dropdown-toggle').dropdown();
    $("#admin").removeClass('menuActivo');
    $("#dashboard").removeClass('menuActivo');
    $("#innovations").addClass('menuActivo');
    $("#retos").removeClass('menuActivo');
    $(document).attr("title", "Innova | Innovaciones"); //Real time listener

    Echo.channel('new-idea-channel').listen('.InnovationCreated', function (e) {
      _this9.loadUsers();
    });
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.custom-btn {\r\n  background: linear-gradient(105deg, #151B26, #1f2c45, #253d6b, #264582, #214791, #204ea8, #1a54c7, #1153d6, #2c57ad, #264174, #253d6b, #253d6b);\r\n  background-size: 400% 400%;\r\n  -webkit-animation: rainbow 5s ease infinite;\r\n  -z-animation: rainbow 5s ease infinite;\r\n  animation: rainbow 5s ease infinite alternate;\r\n  border: 0;\r\n\r\n  color: #fff !important;\n}\n@-webkit-keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n@keyframes rainbow {\n0%{background-position:0% 100%}\n100%{background-position:100% 0%}\n}\n.imageOnly {\r\n\r\n  background-color: #ccc;\r\n  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #ccc 80px);\r\n  -webkit-animation: shine-lines 2s normal ease-out;\r\n          animation: shine-lines 2s normal ease-out;\n}\n.post .avatar {\r\n  float: left;\r\n  width: 52px;\r\n  height: 52px;\r\n  background-color: #ccc;\r\n  border-radius: 25%;\r\n  margin: 8px;\r\n  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #F4F4F4 80px);\r\n  background-size: 600px;\r\n  -webkit-animation: shine-avatar 2s infinite ease-out;\r\n          animation: shine-avatar 2s infinite ease-out;\n}\n.post .line {\r\n  float: left;\r\n  width: 140px;\r\n  height: 16px;\r\n  margin-top: 12px;\r\n  border-radius: 7px;\r\n  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #F4F4F4 80px);\r\n  background-size: 600px;\r\n  -webkit-animation: shine-lines 2s infinite ease-out;\r\n          animation: shine-lines 2s infinite ease-out;\n}\n.post .avatar + .line {\r\n  margin-top: 11px;\r\n  width: 100px;\n}\n.post .line ~ .line {\r\n  background-color: #ddd;\n}\n@-webkit-keyframes shine-lines {\n0% {\r\n    background-position: -100px;\n}\n40%, 100% {\r\n    background-position: 340px;\n}\n}\n@keyframes shine-lines {\n0% {\r\n    background-position: -100px;\n}\n40%, 100% {\r\n    background-position: 340px;\n}\n}\n@-webkit-keyframes shine-avatar {\n0% {\r\n    background-position: -32px;\n}\n40%, 100% {\r\n    background-position: 208px;\n}\n}\n@keyframes shine-avatar {\n0% {\r\n    background-position: -32px;\n}\n40%, 100% {\r\n    background-position: 208px;\n}\n}\n.imageCard {\r\n  min-height: 300px;\n}\n.biggerText {\r\n  font-size: 1.2rem;\n}\n.toast-title {\r\n  color: #fff !important;\n}\nbody {\r\n  -webkit-font-smoothing: antialiased;\r\n  -moz-osx-font-smoothing: grayscale;\n}\n.post-module {\r\n  position: relative;\r\n  z-index: 1;\r\n  display: block;\r\n  background: #ffffff;\r\n  min-width: 270px;\r\n  height: 470px;\r\n  box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);\r\n  transition: all 0.3s linear 0s;\n}\n.post-module:hover,\r\n.hover {\r\n  box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);\n}\n.post-module:hover .thumbnail img,\r\n.hover .thumbnail img {\r\n  -webkit-transform: scale(1.05);\r\n  transform: scale(1.05);\r\n  opacity: 0.6;\n}\n.post-module .thumbnail {\r\n  background: #000000;\r\n  height: 400px;\r\n  overflow: hidden;\n}\n.post-module .thumbnail .date {\r\n  position: absolute;\r\n  top: 5px;\r\n  right: 20px;\r\n  z-index: 1;\r\n  background: #e74c3c;\r\n  width: 55px;\r\n  height: 55px;\r\n  padding: 7px 0;\r\n  border-radius: 100%;\r\n  color: #ffffff;\r\n  font-weight: 700;\r\n  text-align: center;\r\n  -webkti-box-sizing: border-box;\r\n  box-sizing: border-box;\n}\n.post-module .thumbnail .date .day {\r\n  font-size: 18px;\n}\n.post-module .thumbnail .date .month {\r\n  font-size: 12px;\r\n  text-transform: uppercase;\n}\n.post-module .thumbnail img {\r\n  display: block;\r\n  width: 120%;\r\n  transition: all 0.3s linear 0s;\n}\n.post-module .post-content {\r\n  position: absolute;\r\n  bottom: 0;\r\n  background: #ffffff;\r\n  width: 100%;\r\n  height: 250px !important;\r\n  padding: 20px;\r\n  -webkti-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;\n}\n.post-module .post-content .category {\r\n  position: absolute;\r\n  top: -34px;\r\n  left: 0;\r\n  background: #e74c3c;\r\n  padding: 10px 15px;\r\n  color: #ffffff;\r\n  font-size: 14px;\r\n  font-weight: 600;\r\n  text-transform: uppercase;\n}\n.post-module .post-content .title {\r\n  margin: 0;\r\n  padding: 0 0 10px;\r\n  color: #333333;\r\n  font-size: 26px;\r\n  font-weight: 700;\r\n  height: 70px !important;\n}\n.post-module .post-content .sub_title {\r\n  margin: 0;\r\n  padding: 0 0 20px;\r\n  color: #e74c3c;\r\n  font-size: 20px;\r\n  font-weight: 400;\r\n  height: 70px !important;\n}\n.post-module .post-content .description {\r\n  display: none;\r\n  color: #666666;\r\n  font-size: 14px;\r\n  line-height: 1.8em;\n}\n.post-module .post-content .post-meta {\r\n  margin: 30px 0 0;\r\n  color: #999999;\r\n  height: 30px !important;\n}\n.post-module .post-content .post-meta .timestamp {\r\n  margin: 0 16px 0 0;\n}\n.post-module .post-content .post-meta a {\r\n  color: #999999;\r\n  text-decoration: none;\n}\n.hover .post-content .description {\r\n  display: block !important;\r\n  height: auto !important;\r\n  opacity: 1 !important;\n}\n.container {\r\n  max-width: 800px;\r\n  min-width: 640px;\r\n  margin: 0 auto;\n}\n.container:before,\r\n.container:after {\r\n  content: \"\";\r\n  display: block;\r\n  clear: both;\n}\n.container .column {\r\n  width: 50%;\r\n  padding: 0 25px;\r\n  -webkti-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  float: left;\n}\n.container .column .demo-title {\r\n  margin: 0 0 15px;\r\n  color: #666666;\r\n  font-size: 18px;\r\n  font-weight: bold;\r\n  text-transform: uppercase;\n}\n.container .info {\r\n  width: 300px;\r\n  margin: 50px auto;\r\n  text-align: center;\n}\n.container .info h1 {\r\n  margin: 0 0 15px;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  font-weight: bold;\r\n  color: #333333;\n}\n.container .info span {\r\n  color: #666666;\r\n  font-size: 12px;\n}\n.container .info span a {\r\n  color: #000000;\r\n  text-decoration: none;\n}\n.container .info span .fa {\r\n  color: #e74c3c;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--7-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--7-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./IdeaComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a&":
/*!****************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a& ***!
  \****************************************************************************************************************************************************************************************************************/
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
    _c(
      "div",
      {
        staticClass: "modal fade bd-example-modal-lg",
        attrs: {
          id: "modalVotos",
          tabindex: "-1",
          role: "dialog",
          "aria-labelledby": "exampleModalLabel",
          "aria-hidden": "true"
        }
      },
      [
        _c(
          "div",
          { staticClass: "modal-dialog modal-lg", attrs: { role: "document" } },
          [
            _c("div", { staticClass: "modal-content" }, [
              _c("div", { staticClass: "modal-header" }, [
                _c(
                  "h5",
                  {
                    staticClass: "modal-title",
                    attrs: { id: "exampleModalLabel" }
                  },
                  [
                    _vm._v(
                      "  " +
                        _vm._s(
                          _vm.megusta.length +
                            _vm.pulirmas.length +
                            _vm.acciondemejora.length
                        ) +
                        "  Votos"
                    )
                  ]
                ),
                _vm._v(" "),
                _vm._m(0)
              ]),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "modal-body" },
                [
                  _c(
                    "v-tabs",
                    {
                      attrs: {
                        centered: "",
                        color: "cyan",
                        dark: "",
                        "icons-and-text": ""
                      }
                    },
                    [
                      _c("v-tabs-slider", { attrs: { color: "yellow" } }),
                      _vm._v(" "),
                      _c(
                        "v-tab",
                        { attrs: { href: "#megusta" } },
                        [
                          _vm._v(
                            "\r\n          " +
                              _vm._s(_vm.megusta.length) +
                              "  Me gusta\r\n            "
                          ),
                          _c("v-icon", [_vm._v("arrow_upward")])
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-tab",
                        { attrs: { href: "#pulirmas" } },
                        [
                          _vm._v(
                            "\r\n            " +
                              _vm._s(_vm.pulirmas.length) +
                              " Pulir más\r\n            "
                          ),
                          _c("v-icon", [_vm._v("arrow_downward")])
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-tab",
                        { attrs: { href: "#acciondemejora" } },
                        [
                          _vm._v(
                            "\r\n            " +
                              _vm._s(_vm.acciondemejora.length) +
                              " Acción de mejora\r\n            "
                          ),
                          _c("v-icon", [_vm._v("arrow_drop_down_circle")])
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-tab-item",
                        { attrs: { value: "megusta" } },
                        [
                          _c(
                            "v-card",
                            { attrs: { flat: "" } },
                            [
                              _c(
                                "v-card-text",
                                _vm._l(_vm.megusta, function(m) {
                                  return _c(
                                    "ul",
                                    { key: m.id, staticClass: "list-group" },
                                    [
                                      _c(
                                        "li",
                                        { staticClass: "list-group-item" },
                                        [_vm._v(_vm._s(m.name))]
                                      )
                                    ]
                                  )
                                }),
                                0
                              )
                            ],
                            1
                          )
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-tab-item",
                        { attrs: { value: "pulirmas" } },
                        [
                          _c(
                            "v-card",
                            { attrs: { flat: "" } },
                            [
                              _c(
                                "v-card-text",
                                _vm._l(_vm.pulirmas, function(m) {
                                  return _c(
                                    "ul",
                                    { key: m.id, staticClass: "list-group" },
                                    [
                                      _c(
                                        "li",
                                        { staticClass: "list-group-item" },
                                        [_vm._v(_vm._s(m.name))]
                                      )
                                    ]
                                  )
                                }),
                                0
                              )
                            ],
                            1
                          )
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c(
                        "v-tab-item",
                        { attrs: { value: "acciondemejora" } },
                        [
                          _c(
                            "v-card",
                            { attrs: { flat: "" } },
                            [
                              _c(
                                "v-card-text",
                                _vm._l(_vm.acciondemejora, function(m) {
                                  return _c(
                                    "ul",
                                    { key: m.id, staticClass: "list-group" },
                                    [
                                      _c(
                                        "li",
                                        { staticClass: "list-group-item" },
                                        [_vm._v(_vm._s(m.name))]
                                      )
                                    ]
                                  )
                                }),
                                0
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
          ]
        )
      ]
    ),
    _vm._v(" "),
    _c("div", { staticClass: "row" }, [
      _vm._m(1),
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
      _c("div", { staticClass: "col-lg-3 col-sm-2 col-md-4 mt-4 " }, [
        _c(
          "div",
          {},
          [
            _c(
              "v-btn",
              { attrs: { color: "#3F51B5", to: "/ideaCreation", dark: "" } },
              [
                _c("v-icon", { attrs: { left: "" } }, [_vm._v("add")]),
                _vm._v("\r\n       Nueva idea")
              ],
              1
            )
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("br"),
      _vm._v(" "),
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
                    "\r\n     " +
                      _vm._s(_vm.filteredEmpresarial.length) +
                      " Empresariales \r\n      "
                  ),
                  _c("v-icon", [_vm._v("business")])
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "v-tab",
                { attrs: { href: "#publicas" } },
                [
                  _vm._v(
                    "\r\n      " +
                      _vm._s(_vm.filteredPublic.length) +
                      " Publicas \r\n      "
                  ),
                  _c("v-icon", [_vm._v(" public")])
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "v-tab",
                { attrs: { href: "#personales" } },
                [
                  _vm._v(
                    "\r\n     " +
                      _vm._s(_vm.filteredPersonal.length) +
                      " Ideas en borrador \r\n      "
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
                                                "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                                                  _vm._s(
                                                    _vm._f("shortText")(
                                                      idea.title
                                                    )
                                                  ) +
                                                  "\r\n\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                              staticClass: "kt-widget19__labels"
                                            },
                                            [
                                              _c(
                                                "a",
                                                {
                                                  staticClass:
                                                    "btn btn-light  btn-pill  btn-sm custom-btn"
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
                                        { staticClass: "kt-widget19__wrapper" },
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
                                                            "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: " +
                                                              _vm._s(
                                                                idea.escrita
                                                              )
                                                          ),
                                                          _c("br"),
                                                          _vm._v(
                                                            " \r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                                            "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                          ),
                                                          _c("br"),
                                                          _vm._v(
                                                            "\t Anónimo(a)\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                                        "button",
                                                        {
                                                          on: {
                                                            click: function(
                                                              $event
                                                            ) {
                                                              return _vm.getVotes(
                                                                idea.id
                                                              )
                                                            }
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            _vm._s(
                                                              idea.likes.length
                                                            )
                                                          )
                                                        ]
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "button",
                                                    {
                                                      staticClass:
                                                        "kt-widget19__comment",
                                                      on: {
                                                        click: function(
                                                          $event
                                                        ) {
                                                          return _vm.getVotes(
                                                            idea.id
                                                          )
                                                        }
                                                      }
                                                    },
                                                    [_vm._v("Votos")]
                                                  )
                                                ]
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
                                              _c("b", [_vm._v("Categoría: ")]),
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
                                              _c("b", [_vm._v("Fecha: ")]),
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("humanDate")(
                                                    idea.created_at
                                                  )
                                                ) + " "
                                              ),
                                              _c("br"),
                                              _vm._v(
                                                "\r\n                          " +
                                                  _vm._s(
                                                    _vm._f("mediumText")(
                                                      idea.description
                                                    )
                                                  ) +
                                                  "\r\n\r\n                          \r\n\r\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                              )
                                            ]
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "div",
                                        { staticClass: "kt-widget19__action" },
                                        [
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm btn-label-brand btn-bold ",
                                              attrs: {
                                                to: "/innovations/" + idea.id
                                              }
                                            },
                                            [_vm._v("Leer idea completa...")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm  btn-label-danger btn-bold pull-right ",
                                              attrs: {
                                                to: "/innovations/" + idea.id
                                              }
                                            },
                                            [
                                              _vm._v(
                                                "Votar\r\n                         "
                                              )
                                            ]
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
                { attrs: { value: "publicas" } },
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
                                                "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                                                  _vm._s(
                                                    _vm._f("uppercaseFirst")(
                                                      _vm._f("shortText")(
                                                        idea.title
                                                      )
                                                    )
                                                  ) +
                                                  "\r\n\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                              staticClass: "kt-widget19__labels"
                                            },
                                            [
                                              _c(
                                                "a",
                                                {
                                                  staticClass:
                                                    "btn btn-light  btn-pill  btn-sm "
                                                },
                                                [_vm._v("Pública")]
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
                                        { staticClass: "kt-widget19__wrapper" },
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
                                                            "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                          ),
                                                          _c("br"),
                                                          _vm._v(
                                                            " " +
                                                              _vm._s(
                                                                _vm._f(
                                                                  "uppercaseFirst"
                                                                )(idea.escrita)
                                                              ) +
                                                              "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                                            "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tPor: "
                                                          ),
                                                          _c("br"),
                                                          _vm._v(
                                                            "\t Anónimo(a)\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
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
                                                        "button",
                                                        {
                                                          on: {
                                                            click: function(
                                                              $event
                                                            ) {
                                                              return _vm.getVotes(
                                                                idea.id
                                                              )
                                                            }
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            _vm._s(
                                                              idea.likes.length
                                                            )
                                                          )
                                                        ]
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "button",
                                                    {
                                                      staticClass:
                                                        "kt-widget19__comment",
                                                      on: {
                                                        click: function(
                                                          $event
                                                        ) {
                                                          return _vm.getVotes(
                                                            idea.id
                                                          )
                                                        }
                                                      }
                                                    },
                                                    [_vm._v("Votos")]
                                                  )
                                                ]
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
                                              _c("b", [_vm._v("Categoría: ")]),
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
                                              _c("b", [_vm._v("Fecha: ")]),
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("humanDate")(
                                                    idea.created_at
                                                  )
                                                ) + " "
                                              ),
                                              _c("br"),
                                              _vm._v(
                                                "\r\n                          " +
                                                  _vm._s(
                                                    _vm._f("mediumText")(
                                                      idea.description
                                                    )
                                                  ) +
                                                  "\r\n\r\n                          \r\n\r\n\t\t\t\t\t\t\t\t\t\t\t\t"
                                              )
                                            ]
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "div",
                                        { staticClass: "kt-widget19__action" },
                                        [
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm btn-label-brand btn-bold ",
                                              attrs: {
                                                to:
                                                  "/innovations/public/" +
                                                  idea.id
                                              }
                                            },
                                            [_vm._v("Leer idea completa...")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm  btn-label-danger btn-bold pull-right ",
                                              attrs: {
                                                to:
                                                  "/innovations/public/" +
                                                  idea.id
                                              }
                                            },
                                            [
                                              _vm._v(
                                                "Votar\r\n                         "
                                              )
                                            ]
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
                                                "\r\n                                " +
                                                  _vm._s(
                                                    _vm._f("uppercaseFirst")(
                                                      _vm._f("shortText")(
                                                        idea.title
                                                      )
                                                    )
                                                  ) +
                                                  "\r\n                              "
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
                                        { staticClass: "kt-widget19__wrapper" },
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
                                                        "\r\n                                  Escrita por mi \r\n                                  "
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
                                                        "button",
                                                        {
                                                          on: {
                                                            click: function(
                                                              $event
                                                            ) {
                                                              return _vm.getVotes(
                                                                idea.id
                                                              )
                                                            }
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            _vm._s(
                                                              idea.likes.length
                                                            )
                                                          )
                                                        ]
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "button",
                                                    {
                                                      staticClass:
                                                        "kt-widget19__comment",
                                                      on: {
                                                        click: function(
                                                          $event
                                                        ) {
                                                          return _vm.getVotes(
                                                            idea.id
                                                          )
                                                        }
                                                      }
                                                    },
                                                    [_vm._v("Votos")]
                                                  )
                                                ]
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
                                              _c("b", [_vm._v("Category: ")]),
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
                                              _c("b", [_vm._v("Date: ")]),
                                              _vm._v(
                                                _vm._s(
                                                  _vm._f("humanDate")(
                                                    idea.created_at
                                                  )
                                                ) + " "
                                              ),
                                              _c("br"),
                                              _vm._v(
                                                "\r\n                                " +
                                                  _vm._s(
                                                    _vm._f("mediumText")(
                                                      idea.description
                                                    )
                                                  ) +
                                                  "\r\n\r\n                           \r\n\r\n                              "
                                              )
                                            ]
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _c(
                                        "div",
                                        { staticClass: "kt-widget19__action" },
                                        [
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm btn-label-brand btn-bold ",
                                              attrs: {
                                                to: "/innovations/" + idea.id
                                              }
                                            },
                                            [_vm._v("Leer idea completa...")]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "router-link",
                                            {
                                              staticClass:
                                                "btn btn-sm  btn-label-danger btn-bold pull-right ",
                                              attrs: {
                                                to: "/innovations/" + idea.id
                                              }
                                            },
                                            [
                                              _vm._v(
                                                "Votar\r\n                              "
                                              )
                                            ]
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
      ),
      _vm._v(" "),
      _c("br")
    ]),
    _vm._v(" "),
    _vm.filteredPersonal.length == 0
      ? _c("div", { staticClass: "row" }, [
          _c("img", {
            staticStyle: {
              width: "auto",
              height: "auto",
              "max-width": "100%",
              "max-height": "80vh"
            },
            attrs: { src: _vm.baseUrl + "img/empty.svg", alt: "" }
          })
        ])
      : _vm._e()
  ])
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
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-6" }, [
      _c("div", { staticClass: "form-group" }, [
        _c("label", [_vm._v("Busca alguna idea ")]),
        _vm._v(" "),
        _c("div", { staticClass: "kt-input-icon kt-input-icon--left" }, [
          _c("input", {
            staticClass: "form-control",
            attrs: { type: "text", id: "generalSearch" }
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

/***/ "./resources/js/components/IdeaComponent.vue":
/*!***************************************************!*\
  !*** ./resources/js/components/IdeaComponent.vue ***!
  \***************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./IdeaComponent.vue?vue&type=template&id=7d7ea72a& */ "./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a&");
/* harmony import */ var _IdeaComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./IdeaComponent.vue?vue&type=script&lang=js& */ "./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./IdeaComponent.vue?vue&type=style&index=0&lang=css& */ "./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _IdeaComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__["render"],
  _IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/IdeaComponent.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js&":
/*!****************************************************************************!*\
  !*** ./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js& ***!
  \****************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./IdeaComponent.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&":
/*!************************************************************************************!*\
  !*** ./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css& ***!
  \************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader??ref--7-1!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/vue-loader/lib??vue-loader-options!./IdeaComponent.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_7_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_7_2_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a&":
/*!**********************************************************************************!*\
  !*** ./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a& ***!
  \**********************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./IdeaComponent.vue?vue&type=template&id=7d7ea72a& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/IdeaComponent.vue?vue&type=template&id=7d7ea72a&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_IdeaComponent_vue_vue_type_template_id_7d7ea72a___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);