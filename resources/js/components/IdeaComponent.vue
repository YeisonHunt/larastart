<template>

<div style="min-height:80vh;">
  <div class="row" >

    <div class="col-lg-6"></div>


     <div class="col-lg-1 col-sm-2">
        <h5 class="mt-4 ">Show Public Ideas</h5>
      </div>

    <div class="col-lg-1 col-sm-2" >
     <span class="kt-switch kt-switch--info mt-4">
															<label>
																<input type="checkbox"  name="public" v-model="public">
																<span></span>
															</label>
														</span>
    </div>




    <div class="col-lg-2 col-sm-2 col-md-5">




      <div class="mb-3" >

            <!--
              <b-dropdown id="dropdown-1" text="Filter by Category" class="m-mb-2 " variant="primary">
                <b-dropdown-item  v-on:click="filterIdeas('all')">All categories</b-dropdown-item>

                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('improvethis')" >Improve Asakaa.com</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('sustainability')">Sustainability</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('lifeandhealth')">Life & Health</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('artandculture')">Art & Culture</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('beautyandfaashion')">Beauty & Fashion</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('homeandpets')">Home & Pets</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('scienceandtechnology')">Science & Technology</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('tourismandtravel')">Tourism & Travel</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('transport')">Transport</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('food')">Food</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('politicsandsociety')">Politics & Society</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('sportsandentertainment')">Sports & Entertainment</b-dropdown-item>
                <b-dropdown-item class="darkGray" v-on:click="filterIdeas('businessandconsumer')">Business & Consumer</b-dropdown-item>


              </b-dropdown>
              -->

        <vs-select
          class="selectExample "
          label="Categories"
          v-model="select1"
          >
          <vs-select-item :key="index" :value="item.value" :text="item.text" v-for="item,index in options1" />
        </vs-select>

    </div>


    </div>

    <div class="col-lg-2 col-sm-2 col-md-4 mt-4">
      <router-link to="/ideaCreation" class="btn btn-primary ">
        Add Idea &nbsp;
        <i class="flaticon-add-circular-button"></i>
      </router-link>
    </div>
    <!-- end first column 12 -->

    <!--begin::Modal-->
    <div
      class="modal fade"
      id="userCreationModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalTitle">Creating new idea</h5>
            <button
              type="button"
              id="closeBtnModal"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form
              class="kt-form"
              @submit.prevent="editMode ? editIdea() : createUser() "
              @keydown="form.onKeydown($event)"
            >
              <div class="kt-portlet__body">
                <div class="form-group form-group-last">
                  <div class="alert alert-secondary" role="alert">
                    <div class="alert-icon">
                      <i class="flaticon-add-circular-button kt-font-brand" id="iconBrand"></i>
                    </div>
                    <div
                      class="alert-text"
                      id="modalSubtitle"
                    >This VueJS component creates an awesome user idea a flash!</div>
                  </div>
                </div>
                <div class="form-group">
                  <label>Idea</label>
                  <input
                    v-model="form.ideatxt"
                    :class="{'is-invalid': form.errors.has('ideatxt')}"
                    id="ideatxt"
                    type="text"
                    class="form-control"
                    name="ideatxt"
                    aria-describedby="emailHelp"
                    placeholder="Short idea title"
                  >
                  <has-error :form="form" field="ideatxt"></has-error>
                </div>

                <div class="form-group">
                  <label>Description</label>
                  <input
                    v-model="form.bugorfeaturetxt"
                    :class="{'is-invalid': form.errors.has('bugorfeaturetxt')}"
                    type="text"
                    class="form-control"
                    name="bugorfeaturetxt"
                    aria-describedby="emailHelp"
                    placeholder="Idea body..."
                  >
                  <has-error :form="form" field="bugorfeaturetxt"></has-error>

                  <span class="form-text text-muted">We'll never share your idea with anyone else.</span>
                </div>

                <div class="form-group">
                  <label>Img URL</label>
                  <input
                    v-model="form.img"
                    :class="{'is-invalid': form.errors.has('img')}"
                    id="img"
                    type="text"
                    class="form-control"
                    name="img"
                    placeholder="Image URL..."
                  >
                  <has-error :form="form" field="img"></has-error>
                </div>
              </div>
              <div class="kt-portlet__foot float-right">
                <div class="kt-form__actions">
                  <button
                    type="submit"
                    :disabled="form.busy"
                    id="modalBtn"
                    class="btn btn-primary"
                  >Save Idea</button>
                  <button type="reset" class="btn btn-secondary" data-dismiss="modal">Cancel</button>

                  <!-- i can use v-show="editMode" -->
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!--end::Modal-->


   <!-- Mis ideas seccion -->


<br>
   <!-- Fin seccion mis ideas -->


    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredPublic "
      :key="ideas.id"    v-if="public" >

      <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard "

                                    v-bind:style='{ backgroundImage: "url(" + idea.img + ")", }'  >
												<h3 class="kt-widget19__title kt-font-light">
													{{idea.title | shortText | uppercaseFirst}}
												</h3>
												<div class="kt-widget19__shadow"></div>
												<div class="kt-widget19__labels">
													<a  class="btn btn-light  btn-pill  btn-sm ">Public</a>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="kt-widget19__wrapper">
												<div class="kt-widget19__content">
													<div class="kt-widget19__userpic">
														<img src="https://www.placecage.com/g/140/100" height="50" width="50">
													</div>
													<div class="kt-widget19__info">
														<a href="#" class="kt-widget19__username">
															{{idea.author | uppercaseFirst}}
														</a>
														<span class="kt-widget19__time">
															UX/UI Designer, Google
														</span>
													</div>
													<div class="kt-widget19__stats">
														<span class="kt-widget19__number kt-font-brand">

                              <router-link class="" v-bind:to="'/innovations/'+idea.id">{{idea.likes.length}}</router-link>
														</span>

                          <router-link class="kt-widget19__comment" v-bind:to="'/innovationPublic/'+idea.id">Votes</router-link>



													</div>
												</div>
												<div class="kt-widget19__text">
													<b>Category: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                           <b>Date: </b>{{idea.created_at |humanDate}} <br>
                          {{idea.description | mediumText}}

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/innovationPublic/'+idea.id">Read full idea...</router-link>



                         <router-link v-bind:to="'/innovationPublic/'+idea.id" class="btn btn-sm  btn-label-danger btn-bold pull-right ">Vote
                         </router-link>


											</div>



										</div>
									</div>
    </div>





    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredIdeas "
      :key="ideas.id"     >

      <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard "

                                    v-bind:style='{ backgroundImage: "url(" + idea.img + ")", }'  >
												<h3 class="kt-widget19__title kt-font-light">
													{{idea.title | shortText | uppercaseFirst}}
												</h3>
												<div class="kt-widget19__shadow"></div>
												<div class="kt-widget19__labels">
													<a href="#" class="btn btn-label-light-o2 btn-bold btn-sm ">Mine </a>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="kt-widget19__wrapper">
												<div class="kt-widget19__content">
													<div class="kt-widget19__userpic">
														<img src="https://www.placecage.com/g/140/100" height="50" width="50">
													</div>
													<div class="kt-widget19__info">
														<a href="#" class="kt-widget19__username">
															{{idea.author | uppercaseFirst}}
														</a>
														<span class="kt-widget19__time">
															UX/UI Designer, Google
														</span>
													</div>
													<div class="kt-widget19__stats">
														<span class="kt-widget19__number kt-font-brand">

                              <router-link class="" v-bind:to="'/innovations/'+idea.id">{{idea.likes.length}}</router-link>
														</span>

                          <router-link class="kt-widget19__comment" v-bind:to="'/innovations/'+idea.id">Votes</router-link>



													</div>
												</div>
												<div class="kt-widget19__text">
													<b>Category: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                           <b>Date: </b>{{idea.created_at |humanDate}} <br>
                          {{idea.description | mediumText}}

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/innovations/'+idea.id">Read full idea...</router-link>



                         <router-link v-bind:to="'/innovations/'+idea.id" class="btn btn-sm  btn-label-danger btn-bold pull-right ">Vote
                         </router-link>


											</div>



										</div>
									</div>
    </div>








    <!-- End Ideas loop -->
  </div>


  <div class="row" v-if="filteredIdeas.length==0"   >

    <img v-bind:src="baseUrl +'img/empty.svg'" alt="" style="width:auto;
    height:auto;
    max-width:100%;
    max-height:80vh;">
  </div>

  </div>
  <!-- end row -->
</template>

<style type="text/css">

hr {
  border: 0;
  width: 100%;
  color: #9E9E9E;
  background-color: #9E9E9E;
  height: 5px;
}

.imageOnly {

  background-color: #ccc;
  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #ccc 80px);
  animation: shine-lines 2s normal ease-out;
}

.post .avatar {
  float: left;
  width: 52px;
  height: 52px;
  background-color: #ccc;
  border-radius: 25%;
  margin: 8px;
  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #F4F4F4 80px);
  background-size: 600px;
  animation: shine-avatar 2s infinite ease-out;
}
.post .line {
  float: left;
  width: 140px;
  height: 16px;
  margin-top: 12px;
  border-radius: 7px;
  background-image: linear-gradient(90deg, #F4F4F4 0px, rgba(229, 229, 229, 0.8) 40px, #F4F4F4 80px);
  background-size: 600px;
  animation: shine-lines 2s infinite ease-out;
}
.post .avatar + .line {
  margin-top: 11px;
  width: 100px;
}
.post .line ~ .line {
  background-color: #ddd;
}

@keyframes shine-lines {
  0% {
    background-position: -100px;
  }
  40%, 100% {
    background-position: 340px;
  }
}
@keyframes shine-avatar {
  0% {
    background-position: -32px;
  }
  40%, 100% {
    background-position: 208px;
  }
}




.imageCard {
  min-height: 300px;
}
.biggerText {
  font-size: 1.2rem;
}

.toast-title {
  color: #fff !important;
}

body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.post-module {
  position: relative;
  z-index: 1;
  display: block;
  background: #ffffff;
  min-width: 270px;
  height: 470px;
  -webkit-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
  -webkit-transition: all 0.3s linear 0s;
  -moz-transition: all 0.3s linear 0s;
  -ms-transition: all 0.3s linear 0s;
  -o-transition: all 0.3s linear 0s;
  transition: all 0.3s linear 0s;
}
.post-module:hover,
.hover {
  -webkit-box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
}
.post-module:hover .thumbnail img,
.hover .thumbnail img {
  -webkit-transform: scale(1.05);
  -moz-transform: scale(1.05);
  transform: scale(1.05);
  opacity: 0.6;
}
.post-module .thumbnail {
  background: #000000;
  height: 400px;
  overflow: hidden;
}
.post-module .thumbnail .date {
  position: absolute;
  top: 5px;
  right: 20px;
  z-index: 1;
  background: #e74c3c;
  width: 55px;
  height: 55px;
  padding: 7px 0;
  -webkit-border-radius: 100%;
  -moz-border-radius: 100%;
  border-radius: 100%;
  color: #ffffff;
  font-weight: 700;
  text-align: center;
  -webkti-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.post-module .thumbnail .date .day {
  font-size: 18px;
}
.post-module .thumbnail .date .month {
  font-size: 12px;
  text-transform: uppercase;
}
.post-module .thumbnail img {
  display: block;
  width: 120%;

  -webkit-transition: all 0.3s linear 0s;
  -moz-transition: all 0.3s linear 0s;
  -ms-transition: all 0.3s linear 0s;
  -o-transition: all 0.3s linear 0s;
  transition: all 0.3s linear 0s;
}
.post-module .post-content {
  position: absolute;
  bottom: 0;
  background: #ffffff;
  width: 100%;
  height: 250px !important;
  padding: 20px;
  -webkti-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
  -moz-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
  -ms-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
  -o-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
  transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
}
.post-module .post-content .category {
  position: absolute;
  top: -34px;
  left: 0;
  background: #e74c3c;
  padding: 10px 15px;
  color: #ffffff;
  font-size: 14px;
  font-weight: 600;
  text-transform: uppercase;
}
.post-module .post-content .title {
  margin: 0;
  padding: 0 0 10px;
  color: #333333;
  font-size: 26px;
  font-weight: 700;
  height: 70px !important;
}
.post-module .post-content .sub_title {
  margin: 0;
  padding: 0 0 20px;
  color: #e74c3c;
  font-size: 20px;
  font-weight: 400;
  height: 70px !important;
}
.post-module .post-content .description {
  display: none;
  color: #666666;
  font-size: 14px;
  line-height: 1.8em;
}
.post-module .post-content .post-meta {
  margin: 30px 0 0;
  color: #999999;
  height: 30px !important;
}
.post-module .post-content .post-meta .timestamp {
  margin: 0 16px 0 0;
}
.post-module .post-content .post-meta a {
  color: #999999;
  text-decoration: none;
}
.hover .post-content .description {
  display: block !important;
  height: auto !important;
  opacity: 1 !important;
}
.container {
  max-width: 800px;
  min-width: 640px;
  margin: 0 auto;
}
.container:before,
.container:after {
  content: "";
  display: block;
  clear: both;
}
.container .column {
  width: 50%;
  padding: 0 25px;
  -webkti-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  float: left;
}
.container .column .demo-title {
  margin: 0 0 15px;
  color: #666666;
  font-size: 18px;
  font-weight: bold;
  text-transform: uppercase;
}
.container .info {
  width: 300px;
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 24px;
  font-weight: bold;
  color: #333333;
}
.container .info span {
  color: #666666;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #e74c3c;
}
</style>

<script>
export default {
  data() {
    return {
      editMode: false,
      select1:'all',
         options1:[
        {text:'All Categories',value:'all'},
				{text:'Improve Asakaa.com',value:'improvethis'},

        {text:'Sustainability',value:'sustainability'},
        {text:'Life & Health',value:'lifeandhealth'},
				{text:'Art & Culture',value:'Art & Culture'},
				{text:'Beauty & Fashion',value:'beautyandfaashion'},
				{text:'Home & Pets',value:'homeandpets'},
				{text:'Science & Technology',value:'scienceandtechnology'},
				{text:'Tourism & Travel',value:'tourismandtravel'},
				{text:'Transport',value:'transport'},
				{text:'Food',value:'food'},
				{text:'Politics & Society',value:'politicsandsociety'},
				{text:'Sports & Entertainment',value:'sportsandentertainment'},
				{text:'Business & Consumer',value:'businessandconsumer'},
      ],
      ideas: {},
      publicIdeas:{},

      minHeight: '300px',
      baseUrl:window.baseUrl,
      public: true,


      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: "",
        img: ""
      })
    };
  },

  computed:{
    filteredIdeas: function() {

      if(this.select1=='all'){

        return this.ideas;
      }else{

        return this.ideas.filter((idea)=>{

        if(idea.category==this.select1){
          return true;
        }else {
          return false;
        }
      } );

      }


    },

    filteredPublic: function() {

      if(this.select1=='all'){

        return this.publicIdeas;
      }else{

        return this.publicIdeas.filter((idea)=>{

        if(idea.category==this.select1){
          return true;
        }else {
          return false;
        }
      } );

      }



    },




  },

  methods: {




    filterIdeas(category){

      this.filterValue=category ;

      console.log(category);
     //Vue.set(app,'filterValue', category);


    },

    modalEditUser(idea) {
      this.form.ideatxt = idea.ideatxt;
      this.form.bugorfeaturetxt = idea.bugorfeaturetxt;
      this.form.id = idea.id;

      this.editMode = true;

      $("#modalTitle").text("Edit idea");
      $("#modalSubtitle").text(
        "This VueJS component edits an awesome user idea a flash!"
      );
      $("#modalBtn").text("Update idea");

      $("#iconBrand").attr("class", "flaticon-edit kt-font-brand");

      $("#userCreationModal").modal("show");

      $("#ideatxt").focus();
    },

    modalCreateUser() {
      this.form.reset();
      this.editMode = false;

      $("#modalTitle").text("New idea");
      $("#modalSubtitle").text(
        "This VueJS component creates an awesome user idea a flash!"
      );
      $("#modalBtn").text("Save idea");
      $("#iconBrand").attr(
        "class",
        "flaticon-add-circular-button kt-font-brand"
      );

      $("#userCreationModal").modal("show");
      $("#ideatxt").focus();
    },

    editIdea() {
      console.log("ID" + this.form.id);
      this.$Progress.start();
      // Submit the form via a POST request
      this.form
        .put("/editIdea/" + this.form.id)
        .then(({ data }) => {
          this.loadUsers();

          //form.ideatxt=''
          //form.bugorfeaturetxt=''
          toastr.success("Awesome!", "Idea has been evolved.");
          $("#closeBtnModal").click();
          $(".modal-backdrop").remove();
        })
        .catch(() => {
          toastr.error("Oops!", "Something goes wrong");
          this.$Progress.fail();
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();

      // Fire.$emit('AfterCreate');
    },

    deleteIdea(id) {
      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
      }).then(result => {
        if (result.value) {
          //send the request
          this.form
            .delete("/deleteIdea/" + id)
            .then(({ data }) => {
              toastr.success("Done!", "The idea has been deleted.");

              this.loadUsers();
            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
            });
        }
      });
    },

    createUser() {
      this.$Progress.start();
      // Submit the form via a POST request
      this.form
        .post("/saveIdea")
        .then(({ data }) => {
          this.loadUsers();
          $("#closeBtnModal").click();
          $(".modal-backdrop").remove();
          toastr.success("Awesome!", "New innovation has appeared.");

          //form.ideatxt=''
          //form.bugorfeaturetxt=''
        })
        .catch(() => {
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();

      Fire.$emit("AfterCreate");
    },

    testFunction() {
      alert("Emitiendo evento");
    },

    loadUsers() {
      // podemos usar this.form.get but we are gonna use axios

      axios.get("/getInnovations").then(response => {

          this.ideas = response.data.ideas;
          this.publicIdeas = response.data.publicIdeas;
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });






      Fire.$on("AfterCreate", () => {});
    }
  },

  mounted() {
    console.log("Ideas component mounted");
    this.loadUsers();
    $('.dropdown-toggle').dropdown();
  }
};
</script>
