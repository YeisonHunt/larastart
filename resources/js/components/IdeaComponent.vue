<template>

<div style="min-height:80vh;">


<div class="modal fade bd-example-modal-lg" id="modalVotos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">  {{ megusta.length + pulirmas.length + acciondemejora.length }}  Votos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <v-tabs
          centered
          color="cyan"
          dark
          icons-and-text
        >
          <v-tabs-slider color="yellow"></v-tabs-slider>

          <v-tab href="#megusta">
          {{ megusta.length  }}  Me gusta
            <v-icon>arrow_upward</v-icon>
          </v-tab>

          <v-tab href="#pulirmas">
            {{ pulirmas.length  }} Pulir más
            <v-icon>arrow_downward</v-icon>
          </v-tab>

          <v-tab href="#acciondemejora">
            {{ acciondemejora.length  }} Acción de mejora
            <v-icon>arrow_drop_down_circle</v-icon>
          </v-tab>

          <v-tab-item
           
            :value="'megusta'"
          >
            <v-card flat>
              <v-card-text>

             <ul class="list-group" v-for="m in megusta" :key="m.id">
              <li class="list-group-item">{{m.name}}</li>
             
            </ul>

              </v-card-text>
            </v-card>
          </v-tab-item>

            <v-tab-item
           
            :value="'pulirmas'"
          >
            <v-card flat>
              <v-card-text>

             <ul class="list-group" v-for="m in pulirmas" :key="m.id">
              <li class="list-group-item">{{m.name}}</li>
             
            </ul>

              </v-card-text>
            </v-card>
          </v-tab-item>

            <v-tab-item
           
            :value="'acciondemejora'"
          >
            <v-card flat>
              <v-card-text>

            <ul class="list-group" v-for="m in acciondemejora" :key="m.id">
              <li class="list-group-item">{{m.name}}</li>
             
            </ul>

              </v-card-text>
            </v-card>
          </v-tab-item>


        </v-tabs>

          <hr>

        <h5>Tipos de votos</h5>

        <h6> <b>Me gusta</b> : Voto positivo para la idea. </h6> 
        <h6> <b>Pulir más</b> : Voto crítico. La idea puede mejorar. </h6>
        <h6> <b>Acción de mejora</b> : La idea puede aplicarse directamente  sin necesidad de sobre evaluación. </h6> 

      </div>
      
    </div>
  </div>
</div>


  <div class="row" >

    <div class="col-6">

       <div class="form-group" style="">
            <label>Busca alguna idea </label>
            <div class="kt-input-icon kt-input-icon--left">
              <input type="text" class="form-control"  id="generalSearch" />
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

   

    <div class="col-lg-3 col-sm-2 col-md-4 mt-4 ">

      <div  class="">
       

       <v-btn color="#3F51B5"  :to="'/ideaCreation'" dark>
        <v-icon left>add</v-icon>
       Nueva idea</v-btn>

      </div>
     
      
            

    </div>
    <!-- end first column 12 -->

    <!--begin::Modal-->
   
    <!--end::Modal-->
  <br>


   <!-- Mis ideas seccion -->

   <div class="col-12">
      <v-tabs
    fixed-tabs

    icons-and-text
  >
    <v-tabs-slider color="purple darken-4"></v-tabs-slider>

    <v-tab href="#empresariales">
     {{filteredEmpresarial.length}} Empresariales 
      <v-icon>business</v-icon>
    </v-tab>

    <v-tab href="#publicas">
      {{filteredPublic.length}} Publicas 
      <v-icon> public</v-icon>
    </v-tab>

    <v-tab href="#personales">
     {{filteredPersonal.length}} Ideas en borrador 
      <v-icon>person_pin</v-icon>
    </v-tab>

    <v-tab-item
  
      :value="'empresariales'"
    >
      <v-card >
        <br>

        
                               <div class="container-fluid">

                                 <div class="row" v-if="cargandoIdeas">
                                   
                                 <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                                   	<div class="skeleton-card" :style="{backgroundColor: 'white'}">
                                        <CardHeader v-if="header" :round="round" :avatar="avatar" :isLoading="isLoading"></CardHeader>
                                        <CardContent :round="round" :lines="lines" :media="media" :isLoading="isLoading"></CardContent>
                                        <CardActions v-if="actions" :isLoading="isLoading"></CardActions>
                                    </div>
                                 </div>

                                  <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                                   	<div class="skeleton-card" :style="{backgroundColor: 'white'}">
                                        <CardHeader v-if="header" :round="round" :avatar="avatar" :isLoading="isLoading"></CardHeader>
                                        <CardContent :round="round" :lines="lines" :media="media" :isLoading="isLoading"></CardContent>
                                        <CardActions v-if="actions" :isLoading="isLoading"></CardActions>
                                    </div>
                                 </div>

                                  <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                                    	<div class="skeleton-card" :style="{backgroundColor: 'white'}">
                                          <CardHeader v-if="header" :round="round" :avatar="avatar" :isLoading="isLoading"></CardHeader>
                                          <CardContent :round="round" :lines="lines" :media="media" :isLoading="isLoading"></CardContent>
                                          <CardActions v-if="actions" :isLoading="isLoading"></CardActions>
                                      </div>
                                 </div>

                                  <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                                    	<div class="skeleton-card" :style="{backgroundColor: 'white'}">
                                          <CardHeader v-if="header" :round="round" :avatar="avatar" :isLoading="isLoading"></CardHeader>
                                          <CardContent :round="round" :lines="lines" :media="media" :isLoading="isLoading"></CardContent>
                                          <CardActions v-if="actions" :isLoading="isLoading"></CardActions>
                                      </div>
                                 </div>



                                 </div>


                                 <div class="row">
                                   <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12"  v-for="idea in filteredEmpresarial "
      :key="ideas.id"     >

      <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
										<div class="kt-portlet__body kt-portlet__body--fit">
											<div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard "

                                    v-bind:style='{ backgroundImage: "url(" + idea.img + ")", }'  >
												<h3 class="kt-widget19__title kt-font-light">
													{{idea.title | shortText }}
												</h3>
												<div class="kt-widget19__shadow"></div>
												<div class="kt-widget19__labels">
													<a  class="btn btn-light  btn-pill  btn-sm custom-btn">Empresarial</a>
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
															Por: {{idea.escrita}}<br/>&nbsp;
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

                              <button @click="getVotes(idea.id)" >{{idea.likes.length}}</button>
														</span>

                          <button class="kt-widget19__comment" @click="getVotes(idea.id)"   >Votos</button>


													</div>
												</div>
												<div class="kt-widget19__text">
									
                          Creada: {{idea.created_at |humanDate |uppercaseFirst}} <br>
                          Contenido: {{idea.description | mediumText}}

                          

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/innovations/'+idea.id">Leer idea completa...</router-link>



                         <router-link v-bind:to="'/innovations/'+idea.id" class="btn btn-sm  btn-label-danger btn-bold pull-right ">Votar
                         </router-link>


											</div>



										</div>
									</div>
    </div>
          

                </div>
              </div>




      </v-card>
    </v-tab-item>

    <v-tab-item
  
      :value="'publicas'"
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
													<a  class="btn btn-light  btn-pill  btn-sm ">Pública</a>
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

                              <button @click="getVotes(idea.id)" >{{idea.likes.length}}</button>
														</span>

                          <button class="kt-widget19__comment" @click="getVotes(idea.id)"   >Votos</button>



													</div>
												</div>
												<div class="kt-widget19__text">

                           Creada: {{idea.created_at |humanDate |uppercaseFirst}} <br>
                          Contenido: {{idea.description | mediumText}}


												<!--	<b>Categoría: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                           <b>Fecha: </b>{{idea.created_at |humanDate}} <br>
                          {{idea.description | mediumText}}-->

                          

												</div>
											</div>

											<div class="kt-widget19__action">


                         <router-link class="btn btn-sm btn-label-brand btn-bold "
                         v-bind:to="'/innovations/public/'+idea.id">Leer idea completa...</router-link>



                         <router-link v-bind:to="'/innovations/public/'+idea.id" class="btn btn-sm  btn-label-danger btn-bold pull-right ">Votar
                         </router-link>


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
            :key="ideas.id"     >

            <div class="kt-portlet kt-portlet--height-fluid kt-widget19  hvr-underline-from-center">
                          <div class="kt-portlet__body kt-portlet__body--fit">
                            <div class="kt-widget19__pic kt-portlet-fit--top kt-portlet-fit--sides imageCard "

                                          v-bind:style='{ backgroundImage: "url(" + idea.img + ")", }'  >
                              <h3 class="kt-widget19__title kt-font-light">
                                {{idea.title | shortText | uppercaseFirst}}
                              </h3>
                              <div class="kt-widget19__shadow"></div>
                              <div class="kt-widget19__labels" style="background-color:white; border-radius:5px;">
                                <a href="#" class="btn btn-label-light-o2 btn-bold btn-sm " style="color:#7a7f87; ">Borrador </a>
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
                                  Escrita por mi 
                                  </a>
                                  
                                </div>
                                <div class="kt-widget19__stats">
                                  <span class="kt-widget19__number kt-font-brand">

                                    <button @click="getVotes(idea.id)" >{{idea.likes.length}}</button>
                                  </span>

                                <button class="kt-widget19__comment" @click="getVotes(idea.id)"   >Votos</button>



                                </div>
                              </div>
                              <div class="kt-widget19__text">

                                 Creada: {{idea.created_at |humanDate |uppercaseFirst}} <br>
                                 Contenido: {{idea.description | mediumText}}
                                
                              <!--  <b>Category: </b> {{idea.category | toCategory| mediumText |uppercaseFirst}} <br>
                                <b>Date: </b>{{idea.created_at |humanDate}} <br>
                                {{idea.description | mediumText}}-->

                           

                              </div>
                            </div>

                            <div class="kt-widget19__action">


                              <router-link class="btn btn-sm btn-label-brand btn-bold "
                              v-bind:to="'/innovations/'+idea.id">Leer idea completa...</router-link>



                              <router-link v-bind:to="'/innovations/'+idea.id" class="btn btn-sm  btn-label-danger btn-bold pull-right ">Votar
                              </router-link>


                            </div>



                          </div>
                        </div>
                 </div>

                                 </div>
                               </div>



      </v-card>
    </v-tab-item>
  </v-tabs>
   </div>

 

<br>


   <!-- Fin seccion mis ideas -->

    
    

   



 


    





 






    <!-- End Ideas loop -->
  </div>


  <div class="row" v-if="filteredPersonal.length==0"   >

    <img v-bind:src="baseUrl +'img/empty.svg'" alt="" style="width:auto;
    height:auto;
    max-width:100%;
    max-height:80vh;">
  </div>

  </div>
  <!-- end row -->
</template>

<style >

.skeleton-card {
 box-sizing: border-box;
 min-height: 300px;
}

.skeleton-card {


		margin-bottom:10px;
    border-radius: 2px;
    box-shadow: 0 2px 1px -1px rgba(0,0,0,.2), 0 1px 1px 0 rgba(0,0,0,.14), 0 1px 3px 0 rgba(0,0,0,.12);
    text-decoration: none;
    cursor: default;
}

.loading {
    position: relative;
    overflow: hidden;
}

.loading::after {

    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    transform: translateX(-100%);
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.404), transparent);
    animation: loading 1.5s infinite;
}

@keyframes loading {
    100% {
        transform: translateX(100%);
    }
}


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

import CardHeader from './skeleton/components/CardHeader.vue';
import CardContent from './skeleton/components/CardContent.vue';
import CardActions from './skeleton/components/CardActions.vue';

export default {
    props: {
        isLoading: {
            type: Boolean,
            default: true
        },
        header: {
            type: Boolean,
            default: true
        },
        avatar: {
            type: Boolean,
            default: true
        },
        media: {
            type: Boolean,
            default: true
        },
        actions: {
            type: Boolean,
            default: true
        },
        horizontal: {
            type: Boolean,
            default: false
        },
        lines: {
            type: Number,
            default: 2
        },
        dark: {
            type: Boolean,
            default: false
        },
        round: {
            type: Boolean,
            default: true
        },
    },
    components: {
        CardHeader,
        CardContent,
        CardActions
    },
  data() {
    return {
      
      cargandoIdeas:true,
      megusta:{},
      pulirmas:{},
      acciondemejora:{},

        
      editMode: false,
      select1:'all',
         options1:[
        {text:'Todas las categorías',value:'all'},
			
        {text:'Negocios',value:'businessandconsumer'},
        {text:'Sostenibilidad',value:'sustainability'},
        {text:'Vida & Salud',value:'lifeandhealth'},
				{text:'Arte & Cultura',value:'Art & Culture'},
				{text:'Belleza & Moda',value:'beautyandfaashion'},
				{text:'Hogar & Mascotas',value:'homeandpets'},
				{text:'Ciencia & Tecnología',value:'scienceandtechnology'},
				{text:'Turismo & Viajes',value:'tourismandtravel'},
				{text:'Transporte',value:'transport'},
				{text:'Comida',value:'food'},
				{text:'Política & Sociedad',value:'politicsandsociety'},
				{text:'Deportes & Entretenimiento',value:'sportsandentertainment'},
       
        {text:'Improve Asakaa.com',value:'improvethis'},
      ],
      ideas: {},
      publicIdeas:{},
      companyIdeas:{},
      solutions:{},
      category:'all',
      cats:{},
     

      minHeight: '300px',
      baseUrl:window.baseUrl,
      public: false,
      user:{},


      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: "",
        img: ""
      })
    };
  },

  computed:{

      bgcolor() {
            if (this.dark) {
                return '#424242';
            }
            return 'white';
        },
    filteredPersonal: function() {

      

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

    filteredEmpresarial: function() {

      if(this.select1=='all'){

        return this.companyIdeas;
      }else{

        return this.companyIdeas.filter((idea)=>{

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


    getVotes(id){

      $("#modalVotos").modal("show");


        axios.get("/getVotes/"+id).then(response => {

          this.megusta = response.data.megusta;
          this.pulirmas = response.data.pulirmas;
          this.acciondemejora = response.data.acciondemejora;
        
        
          
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });



    },


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

      this.$Progress.start();

      axios.get("/getInnovations").then(response => {

         if(response.data.msg=='loginRequired'){
            window.location.href = baseUrl+'login';

            this.$Progress.finish();// Este nunca va a servir porque es rechazado antes.

          }else{

          this.ideas = response.data.ideas;
          this.publicIdeas = response.data.publicIdeas;
          this.user = response.data.user;
          this.companyIdeas = response.data.companyIdeas;
          this.cats = response.data.cats;

          this.cargandoIdeas=false

          this.$Progress.finish();


          }
        
          
        })
        .catch(error => {
          console.log(error);
          this.$Progress.finish();


          toastr.error("Oops!", "Something goes wrong");
        });






      Fire.$on("AfterCreate", () => {});
    }
  },

  mounted() {
    console.log("Ideas component mounted");
    this.loadUsers();
    $('.dropdown-toggle').dropdown();

    
      $("#admin").removeClass('menuActivo');
      $("#dashboard").removeClass('menuActivo');
      $("#innovations").addClass('menuActivo');
      $("#retos").removeClass('menuActivo');
       $("#blog").removeClass("menuActivo");

      $(document).attr("title", "Innova | Innovaciones");

      //Real time listener

      Echo.channel('new-idea-channel')
          .listen('.InnovationCreated', (e)=>{

            this.loadUsers();
            
          });

  }
};
</script>
