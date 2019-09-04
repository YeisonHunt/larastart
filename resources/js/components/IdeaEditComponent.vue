
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
                  Editando idea
                  <small>...</small>
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
                      <h3 class="kt-section__title kt-section__title-lg">Detalles de Idea</h3>

                      <div class="form-group row">
                        <label class="col-3 col-form-label">Título</label>
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

                      <br>

                      <div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Privacidad de la idea</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="me"  :class="{'is-invalid': form.errors.has('privacy')}"	 name="privacy" v-model="form.privacy" > Privada (Solo para mi)
																				<span></span>
																			</label>

																			<label class="kt-checkbox">
																				<input type="radio"  value="empresarial"  :class="{'is-invalid': form.errors.has('privacy')}"	 name="privacy" v-model="form.privacy" > Privada (Empresarial)
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="public" :class="{'is-invalid': form.errors.has('privacy')}" name="privacy" v-model="form.privacy" > Hacerla pública
																				<span></span>
																			</label>
																		<has-error :form="form" field="privacy" ></has-error>
																		</div>
																	</div>
																</div>
																<br>

                      <div class="form-group row">
                        <label class="col-3 col-form-label">Descripción corta</label>
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
                        <label for style="margin-left:10px;">Descripción completa</label>
                        <div class="col-12">
                        <!--   <textarea id="mySummer" @change="updateRichText" v-model="form.editordata"  name="editordata" class="summernote richtext" ></textarea>-->

                         <html-editor   class="summernote richtext" height="300" :model.sync="form.editordata"></html-editor> 

                          <span
                            class="form-text text-muted"
                          >El módulo anterior hace que la idea se pueda escribir como un artículo profesional.</span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-3 col-form-label">Imágen alusiva</label>
                        <div class="col-9">
                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text">
                                <i class="flaticon-photo-camera"></i>
                              </span>
                            </div>
                            <input
                              type="file"
                              accept="image/x-png, image/jpeg"
                              @change="onFilePicked"
                              name="img"
                              class="form-control"
                             
                              aria-describedby="basic-addon1"
                              
                              ref="contactPhoto"
                            >
                          </div>
                          <span
                            class="form-text text-muted"
                          >Escoge una imágen que represente la idea (<1MB)</span>
                        </div>

                        
                      </div>

                      <br>

                          <div class="form-group row">
                        <label class="col-3 col-form-label">Previsualización Imágen</label>
                        <div class="col-9">
                         
                           <v-img
                            :src="form.img"
                            height="225"
                      
                          ></v-img>
                        </div>

                        
                      </div>

                      <div class="form-group form-group-last row">
                        <label class="col-3 col-form-label">Categoría</label>
                        <div class="col-9">
                          <div class="input-group">
                           

																			<select class="kt-selectpicker form-control "  :class="{'is-invalid': form.errors.has('category')}"    
                                          data-container="body"  name="category" id="kt-selectpicker1" v-model="form.category"  required>

                                           <optgroup :label="cat.label" v-for="cat in cats" :key="cat.id">
                                            <option :value="c.id+c.name" v-for="c in cat.options" :key="c.id">{{ c.name |toCategory}}</option>
                                          
                                          </optgroup>

																		<!--		<option value="sustainability">Sostenibilidad</option>
																				<option value="lifeandhealth">Vida & Salud </option>
																				<option value="artandculture">Arte & Cultura</option>
																				<option value="beautyandfaashion">Moda & Belleza</option>
																				<option value="homeandpets">Hogar & Mascotas</option>
																				<option value="scienceandtechnology">Ciencia & Tecnología</option>
																				<option value="tourismandtravel">Turismo & Viajes</option>
																				<option value="transport">Transporte</option>
																				<option value="food">Comida</option>
																				<option value="politicsandsociety">Política & Sociedad</option>
																				<option value="sportsandentertainment">Deporte & Entretenimiento</option>
																				<option value="businessandconsumer">Negocios & Consumo</option> -->


																			</select>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="kt-section">
                    <div class="kt-section__body">
                      <div class="form-group row">
                        <label class="col-3 col-form-label">Lenguaje</label>
                        <div class="col-9">
                          <select
                            class="kt-selectpicker form-control"
                            name="language"
                            id="kt-selectpicker2"
                            v-model="form.language"
                            required
                          >
                            <option value="en" selected>Inglés</option>

                            <option value="es">Español</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group form-group-last row">
                        <label class="col-3 col-form-label">Mostrar mi nombre en la idea?</label>
                        <div class="col-9">
                          <div class="kt-checkbox-inline">
                            <label class="kt-checkbox">
                              <input
                                type="radio"
                                value="showme"
                                checked="true"
                                name="author"
                                v-model="form.author"
                              > Si, mostrar.
                              <span></span>
                            </label>
                            <label class="kt-checkbox">
                              <input
                                type="radio"
                                value="anonymous"
                                name="author"
                                v-model="form.author"
                              > Colocar anónimo(a).
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
                  <span class="kt-hidden-mobile">Atrás</span>
                </button>
                <div class="btn-group">
                  <button class="btn btn-brand" type="submit" :disabled="form.busy">
                    <i style="padding-bottom:8px;" class="la la-check"></i>
                    <span class="kt-hidden-mobile">Actualizar idea</span>
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
        <router-link to="/innovations" class="btn btn-primary">Ir a innovaciones</router-link>
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
      cats:{},
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

    onPickFile() {
      this.$refs.contactPhoto.click();
    },

    onFilePicked(event) {
      const files = event.target.files;
      let filename = files[0].name;

      if (filename.lastIndexOf(".") <= 0) {
        return alert("Please add a valid file");
      }

      const fileReader = new FileReader();
      fileReader.addEventListener("load", () => {
       
        this.form.img = fileReader.result;
      });
      fileReader.readAsDataURL(files[0]);
      this.form.img = files[0]; // file without any changes

      // esta ultima es la que se envia
    },


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
          this.cats = response.data.cats;

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
