
<template >
  <div>
    <div class="row" v-if="puedoEditar">
      <div class="col-lg-12">
        <!--begin::Portlet-->
        <div
          class="kt-portlet kt-portlet--last kt-portlet--head-lg kt-portlet--responsive-mobile myForm"
          id="kt_page_portlet"
        >
          <form
            class="kt-form"
            id="kt_form"
            @submit.prevent="createUser"
            @keydown="form.onKeydown($event)"
          >
            <div class="kt-portlet__head kt-portlet__head--lg" style>
              <div class="kt-portlet__head-label">
                <h3 class="kt-portlet__head-title">
                  Create awesome ideas
                  <small>to improve your company functions</small>
                </h3>
              </div>
              <div class="kt-portlet__head-toolbar">
                <button type="button" class="btn btn-clean kt-margin-r-10" @click="$router.go(-1)">
                  <i style="padding-bottom:8px;" class="la la-arrow-left"></i>
                  <span class="kt-hidden-mobile">Atrás</span>
                </button>
                <div class="btn-group">
                  <button class="btn btn-brand" type="submit" :disabled="form.busy">
                    <i style="padding-bottom:8px;" class="la la-check"></i>
                    <span class="kt-hidden-mobile">Actualizar</span>
                  </button>
                </div>
              </div>
            </div>
            <div class="kt-portlet__body blocked">
              <div class="row">
                <div class="col-xl-2"></div>
                <div class="col-xl-8">
                  <div class="kt-section kt-section--first">
                    <div class="kt-section__body">
                      <h3 class="kt-section__title kt-section__title-lg">Idea details</h3>

                      <div class="form-group row">
                        <label class="col-3 col-form-label">Title</label>
                        <div class="col-9">
                          <input
                            class="form-control"
                            v-model="form.title"
                            name="title"
                            type="text"
                            placeholder="Short idea title..."
                            required
                          >
                        </div>
                      </div>

                      <div class="form-group row">
                        <label class="col-3 col-form-label">Description</label>
                        <div class="col-9">
                          <textarea
                            class="form-control"
                            v-model="form.description"
                            name="description"
                            rows="2"
                            placeholder="Short idea description..."
                            required
                          ></textarea>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for style="margin-left:10px;">Body</label>
                        <div class="col-12">
                        <!--   <textarea id="mySummer" @change="updateRichText" v-model="form.editordata"  name="editordata" class="summernote richtext" ></textarea>-->

                         <html-editor   class="summernote richtext" height="300" :model.sync="form.editordata"></html-editor> 

                          <span
                            class="form-text text-muted"
                          >If you want to increase your idea rating and apreciation. Please use our below rich text editor.</span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-3 col-form-label">Main Image</label>
                        <div class="col-9">
                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text">
                                <i class="flaticon-photo-camera"></i>
                              </span>
                            </div>
                            <input
                              type="text"
                              v-model="form.img"
                              name="img"
                              class="form-control"
                              placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg"
                              aria-describedby="basic-addon1"
                              required
                            >
                          </div>
                          <span
                            class="form-text text-muted"
                          >Choose an awesome image to get more likes for your idea.</span>
                        </div>
                      </div>

                      <div class="form-group form-group-last row">
                        <label class="col-3 col-form-label">Category</label>
                        <div class="col-9">
                          <div class="input-group">
                            <select
                              class="kt-selectpicker form-control"
                              data-live-search="true"
                              data-container="body"
                              data-size="6"
                              name="category"
                              id="kt-selectpicker1"
                              v-model="form.category"
                              required
                            >
                              <option value="improvethis" selected>Improve Asakaa.com</option>
                              <option value="sustainability">Sustainability</option>
                              <option value="lifeandhealth">Life & Health</option>
                              <option value="artandculture">Art & Culture</option>
                              <option value="beautyandfaashion">Beauty & Fashion</option>
                              <option value="homeandpets">Home & Pets</option>
                              <option value="scienceandtechnology">Science & Technology</option>
                              <option value="tourismandtravel">Tourism & Travel</option>
                              <option value="transport">Transport</option>
                              <option value="food">Food</option>
                              <option value="politicsandsociety">Politics & Society</option>
                              <option value="sportsandentertainment">Sports & Entertainment</option>
                              <option value="businessandconsumer">Business & Consumer</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="kt-section">
                    <div class="kt-section__body">
                      <div class="form-group row">
                        <label class="col-3 col-form-label">Language</label>
                        <div class="col-9">
                          <select
                            class="kt-selectpicker form-control"
                            name="language"
                            id="kt-selectpicker2"
                            v-model="form.language"
                            required
                          >
                            <option value="en" selected>English</option>

                            <option value="es">Español - Spanish</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group form-group-last row">
                        <label class="col-3 col-form-label">Author</label>
                        <div class="col-9">
                          <div class="kt-checkbox-inline">
                            <label class="kt-checkbox">
                              <input
                                type="radio"
                                value="showme"
                                checked="true"
                                name="author"
                                v-model="form.author"
                              > Show my username
                              <span></span>
                            </label>
                            <label class="kt-checkbox">
                              <input
                                type="radio"
                                value="anonymous"
                                name="author"
                                v-model="form.author"
                              > Anonymous
                              <span></span>
                            </label>
                          </div>
                        </div>
                      </div>

                      
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <center>
              <div class="kt-portlet__head-toolbar">
                <button type="button" class="btn btn-clean kt-margin-r-10" @click="$router.go(-1)">
                  <i style="padding-bottom:8px;" class="la la-arrow-left"></i>
                  <span class="kt-hidden-mobile">Back</span>
                </button>
                <div class="btn-group">
                  <button class="btn btn-brand" type="submit" :disabled="form.busy">
                    <i style="padding-bottom:8px;" class="la la-check"></i>
                    <span class="kt-hidden-mobile">Update</span>
                  </button>
                </div>
              </div>
            </center>

            <br>
          </form>
        </div>

        <!--end::Portlet-->
      </div>
    </div>

    <div class="row" v-else>
      <div class="col-4"></div>

      <div class="col-4">
        <router-link to="/innovations" class="btn btn-primary">Go back to innovations</router-link>
      </div>

      <div class="col-4"></div>

      <div class="col-12 mt-5">
        <center>
          <h4
            style=" margin-left:auto;
                    margin-right:auto;
                    display:block; color:white;"
          >Sorry, it seems you don't have permission to edit this idea.</h4>
        </center>

        <img
          height="80%"
          width="80%"
          class="mt-5 fadeImg"
          :src="baseUrl +'img/forbidden.svg'"
          alt
          style="text-align:center; margin-left:10%;"
        >
      </div>
    </div>
  </div>
</template>


<style>
.note-toolbar {
  z-index: auto;
}

.summernote {
  display: fixed !important;
}

.blocked {
  z-index: 999 !important;
}

.myForm {
  background-color: #fafafa !important;
}

 .dropdown-menu > li > a {
           display: block;
            padding: 3px 20px;
            clear: both;
            font-weight: normal;
            line-height: 1.42857143;
            color: #333;
            white-space: nowrap;
  }
</style>


<script>
import htmlEditor from "./html-editor.vue";

export default {
  components: {
    htmlEditor
  },

  data() {
    return {
      id: this.$route.params.id,
      idea: null,
      permissions: {},
      user: window.user,
      baseUrl: window.baseUrl,
      form: new Form({
        id: "",
        title: "",
        description: "",
        editordata: "",
        img: "",
        category: "",
        language: "",
        author: "",
        privacy: ""
      })
    };
  },

  computed: {
    puedoEditar: function() {
      if (this.permissions.length != 0) {
        //validamos que exita la idea y luego si tengo permiso

        let iCanSee = false;
        let idUser = this.user.id;
        let idIdea = this.id;
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

        for (let i = 0; i < permisos.length; i++) {
          item = permisos[i];

          if (
            item.permission_type == "can view-edit" &&
            item.id_user == idUser &&
            item.id_idea == idIdea
          ) {
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
    loadIdea() {
      axios
        .get("/getInnovation/" + this.id)
        .then(response => {
          this.form.title = response.data.idea.title;
          this.form.description = response.data.idea.description;
          this.form.img = response.data.idea.img;
          this.form.category = response.data.idea.category;
          this.form.language = response.data.idea.language;
          this.form.author = response.data.idea.author;
          this.form.privacy = response.data.idea.privacy;

          this.form.editordata = response.data.idea.body;
          this.permissions = response.data.permissions;

          $("#mySummer").summernote("code", response.data.idea.body);
        })
        .catch(error => {
          console.log(error);
        });
    },

    createUser() {
      this.$Progress.start();
      // Submit the form via a POST request

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');
      this.form
        .post("/updateIdea/" + this.id)
        .then(({ data }) => {
          this.$router.go(-1);
          toastr.success("Awesome!", "Idea updated successfully.");
          this.form.reset();
        })
        .catch(() => {
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    updateRichText() {
      this.form.editordata =  $('textarea[name="editordata"]').html($('#mySummer').code());
    }
  },

  mounted() {
    
    this.loadIdea();

    var KTSummernoteDemo = {
      init: function() {
        $("#mySummer").summernote({ height: 300 });

        //$('.kt-selectpicker').selectpicker();

        $("#mySummer").summernote();
        $(".dropdown-toggle").dropdown();

        //$(".dropdown").dropdown();

      


      }
    };
    jQuery(document).ready(function() {
    

      KTSummernoteDemo.init();
    });

    
  }
};
</script>
