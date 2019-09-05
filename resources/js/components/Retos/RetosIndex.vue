
<style >
  .custom-btn {
  background: linear-gradient(105deg, #151B26, #1f2c45, #253d6b, #264582, #214791, #204ea8, #1a54c7, #1153d6, #2c57ad, #264174, #253d6b, #253d6b);
  background-size: 400% 400%;
  -webkit-animation: rainbow 5s ease infinite;
  -z-animation: rainbow 5s ease infinite;
  -o-animation: rainbow 5s ease infinite;
  animation: rainbow 5s ease infinite alternate;
  border: 0;

  color: #fff !important;
}
@-webkit-keyframes rainbow {
  0%{background-position:0% 100%}
  100%{background-position:100% 0%}
}
@-moz-keyframes rainbow {
  0%{background-position:0% 100%}
  100%{background-position:100% 0%}
}
@-o-keyframes rainbow {
  0%{background-position:0% 100%}
  100%{background-position:100% 0%}
}
@keyframes rainbow {
  0%{background-position:0% 100%}
  100%{background-position:100% 0%}
}

.imageCard {
  min-height: 300px;
}
</style>


<template>
  <div style="min-height:80vh;">
    <div class="container-fluid">
      <div class="row">

        <div class="col-lg-7 col-md-7 col-sm-12">
          <div class="form-group">
            <label>Busca algún reto en específico</label>
            <div class="kt-input-icon kt-input-icon--left">
              <input type="text" class="form-control" placeholder="Search..." id="generalSearch" />
              <span class="kt-input-icon__icon kt-input-icon__icon--left">
                <span>
                  <i class="la la-search"></i>
                </span>
              </span>
            </div>
          </div>
        </div>

        
    <div class="col-lg-2 col-sm-2 col-md-5">




      <div class="" style="margin-top:1px;" >
        <label for="picka">Categorías</label>
           <div class="input-group">
             
                            <select
                              class="kt-selectpicker form-control"
                              :class="{'is-invalid': form.errors.has('category')}"
                              data-container="body"
                              name="category"
                              id="picka"
                              v-model="select1"
                              required
                            >
                            <option value="all">Todas</option>
                               <optgroup :label="cat.label" v-for="cat in cats" :key="cat.id">
                                 
                                  <option :value="c.id+c.name" v-for="c in cat.options" :key="c.id">{{ c.name |toCategory}}</option>
                                 
                                 </optgroup>

                            

                            </select>
            </div>


    </div>


    </div>

        <div class="col-lg-2 col-md-3 col-sm-6" style="margin-top:24px;">

            <div  class="">
       

       <v-btn color="#673AB7" @click="$router.push({name:'crear-reto'});"   dark>
           <v-icon left>add</v-icon>
         Nuevo reto</v-btn>

      </div>
     

        </div>




      </div>

      <div class="row">


        <div class="col-12">

              <v-tabs
              fixed-tabs

              icons-and-text
            >
              <v-tabs-slider color="purple darken-4"></v-tabs-slider>

              <v-tab href="#empresariales">
              {{filteredEmpresarial.length}} Empresariales 
                <v-icon>person_pin</v-icon>
              </v-tab>

              <v-tab href="#publicos">
                {{filteredPublic.length}} Públicos 
                <v-icon>business</v-icon>
              </v-tab>

              <v-tab href="#personales">
              {{filteredPersonal.length}} Personales 
                <v-icon>public</v-icon>
              </v-tab>

              <v-tab-item
            
                :value="'empresariales'"
              >
                <v-card >
             <br>

        
                               <div class="container-fluid">
                                 <div class="row">
      

       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredEmpresarial "
      :key="idea.id"     >

      <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard  "

                                  :style='{ backgroundImage: "url(" + idea.img + ")", }'  >
												<h3 class="kt-widget19__title kt-font-light">
													{{idea.title | shortText }}
												</h3>
												<div class="kt-widget19__shadow"></div>
												<div class="kt-widget19__labels">
													<a  class="btn btn-light  btn-pill  btn-sm custom-btn " >Empresarial</a>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="kt-widget19__wrapper">
												<div class="kt-widget19__content">
													<div class="kt-widget19__userpic">
														<img :src="idea.img" height="50" width="50">
													</div>
													<div class="kt-widget19__info">
														<a v-if="idea.author='showme'" href="#" class="kt-widget19__username">
																Por: <br/>{{idea.escrita | uppercaseFirst}}
														</a>

                            <a  v-else href="#" class="kt-widget19__username">
														Por: <br/>	&nbsp;Anónimo(a)
														</a>

													<!--	<span class="kt-widget19__time">
															UX/UI Designer, Google
														</span> -->
													</div>
													<div class="kt-widget19__stats">
														<span class="kt-widget19__number kt-font-brand">

                              <router-link class="" v-bind:to="'/retos/ver/'+idea.id">{{idea.solutions.length}}</router-link>
														</span>

                          <router-link class="kt-widget19__comment" v-bind:to="'/retos/ver/'+idea.id">Soluciones</router-link>



													</div>
												</div>
												<div class="kt-widget19__text">
													<b>Categoría: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                           
                              <b>Fecha límite: </b>{{idea.fecha |limite}}  <br>
                          {{idea.description | mediumText}}

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/retos/ver/'+idea.id">Aportar solución...</router-link>





											</div>



										</div>
									</div>
    </div> <!-- fin company ideas -->

                                 </div>
                               </div>

                               
              </v-card>
            </v-tab-item>

              <v-tab-item
            
                :value="'publicos'"
              >
                <v-card >
             <br>

        
                               <div class="container-fluid">
                                 <div class="row">
                                

    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredPublic "
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
													<a  class="btn btn-light  btn-pill  btn-sm ">Públicos</a>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="kt-widget19__wrapper">
												<div class="kt-widget19__content">
													<div class="kt-widget19__userpic">
														<img :src="idea.img" height="50" width="50">
													</div>
													<div class="kt-widget19__info">
														<a v-if="idea.author='showme'" href="#" class="kt-widget19__username">
															Por: <br/>&nbsp;{{idea.escrita | uppercaseFirst}}
														</a>

                            <a  v-else href="#" class="kt-widget19__username">
														Por: <br/>	&nbsp;Anónimo(a)
														</a>

													<!--	<span class="kt-widget19__time">
															UX/UI Designer, Google
														</span> -->
													</div>
													<div class="kt-widget19__stats">
														<span class="kt-widget19__number kt-font-brand">

                              <router-link class="" v-bind:to="'/retos/ver/'+idea.id">{{idea.solutions.length}}</router-link>
														</span>

                          <router-link class="kt-widget19__comment" v-bind:to="'/retos/ver/'+idea.id">Soluciones</router-link>



													</div>
												</div>
												<div class="kt-widget19__text">
													<b>Categoría: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                             <b>Fecha límite: </b>{{idea.fecha |limite}} <br/>
                          {{idea.description | mediumText}}

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/retos/ver/'+idea.id">Aportar solución...</router-link>





											</div>



										</div>
									</div>
    </div>


                                 </div>
                               </div>

                               
              </v-card>
            </v-tab-item>


              <v-tab-item
            
                :value="'personales'"
              >
                <v-card >
             <br>

        
                               <div class="container-fluid">
                                 <div class="row">
                                                                
    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredPersonal "
      :key="idea.id"     >

      <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard "

                                    v-bind:style='{ backgroundImage: "url(" + idea.img + ")", }'  >
												<h3 class="kt-widget19__title kt-font-light">
													{{idea.title | shortText | uppercaseFirst}}
												</h3>
												<div class="kt-widget19__shadow"></div>
												<div class="kt-widget19__labels" style="background-color:white; border-radius:5px;">
													<a href="#" class="btn btn-label-light-o2 btn-bold btn-sm " style="color:#7a7f87; ">Personal </a>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="kt-widget19__wrapper">
												<div class="kt-widget19__content">
													<div class="kt-widget19__userpic">
														<img :src="idea.img" height="50" width="50">
													</div>
													<div class="kt-widget19__info">
														<a href="#" class="kt-widget19__username">
														Escrito por mi 
														</a>

													</div>
													<div class="kt-widget19__stats">
														<span class="kt-widget19__number kt-font-brand">

                              <router-link class="" v-bind:to="'/retos/ver/'+idea.id">{{idea.solutions.length}}</router-link>
														</span>

                          <router-link class="kt-widget19__comment" v-bind:to="'/retos/ver/'+idea.id">Soluciones</router-link>



													</div>
												</div>
												<div class="kt-widget19__text">
													<b>Categoría: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>


                           <b>Fecha límite: </b>{{idea.fecha |limite}} 
                           
                           <br>


                          {{idea.description | mediumText}}

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/retos/ver/'+idea.id">Aportar solución...</router-link>





											</div>



										</div>
									</div>
    </div><!-- fin ideas privadas -->
                                   
    
                                 </div>
                               </div>

                               
              </v-card>
            </v-tab-item>


              </v-tabs>



        </div>


    












      </div> <!-- fin row ideas -->



    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      editMode: false,
      ideas: {},
      baseUrl: window.baseUrl,
      colorx: "#151B26",
      colorx2: "#30456b",
      select1:'all',

      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: ""
      }),
      privateRetos: {},
      companyRetos: {},
      publicRetos: {},
      user: {},
      cats:{},
      showPublicRetos:false
    };
  },

  computed: {
    
    filteredPersonal: function() {

      

      if(this.select1=='all'){

        return this.privateRetos;
      }else{



        return this.privateRetos.filter((idea)=>{

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

        return this.publicRetos;
      }else{

        return this.publicRetos.filter((idea)=>{

        if(idea.category==this.select1){
          return true;
        }else {
          return false;
        }
      } );

      }



    },

    filteredEmpresarial: function() {

      if(this.select1=='all'){

        return this.companyRetos;
      }else{

        return this.companyRetos.filter((idea)=>{

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
    getRetos() {

       this.$Progress.start();
      axios
        .get("/getRetos")
        .then(response => {

            if(response.data.msg=='loginRequired'){
            window.location.href = baseUrl+'login';
          }else {
          this.privateRetos = response.data.privateRetos;
          this.companyRetos = response.data.companyRetos;
          this.publicRetos = response.data.publicRetos;
          this.user = response.data.user;
          this.cats = response.data.categories;

          this.$Progress.finish();

          //console.log(response.data.privateRetos)

          }
        })
        .catch(error => {
          console.log(error);

          this.$Progress.finish();

          toastr.error("Oops!", "Something goes wrong");
        });
    }
  },
  mounted() {
   
    $("#admin").removeClass("menuActivo");
    $("#dashboard").removeClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").addClass("menuActivo");
    $(document).attr("title", "Innova | Retos");
  },

  created () {
     this.getRetos();
  },
};
</script>
