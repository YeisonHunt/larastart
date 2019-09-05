
<template>
    

				<div class="container-fluid">
	
    					<div class="row" >
								<div class="col-lg-1"></div>
								<div class="col-lg-10 col-sm-12 col-md-10">

									<!--begin::Portlet-->
									<div class="kt-portlet kt-portlet--last kt-portlet--head-lg kt-portlet--responsive-mobile myForm " id="kt_page_portlet">

										<form class="kt-form" id="kt_form" @submit.prevent="createUser" @keydown="form.onKeydown($event)">
										<div class="kt-portlet__head kt-portlet__head--lg" style="">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">Crea retos para buscarles solución en comunidad </h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<router-link to="/retos" class="btn btn-clean kt-margin-r-10">
													<i style="padding-bottom:8px;" class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile" >Atrás</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i style="padding-bottom:8px;" class="la la-save"></i>
														<span class="kt-hidden-mobile">Guardar reto</span>
													</button>
													<button type="button" class="btn btn-brand dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													</button>
													<div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(123px, 38px, 0px);">
														<ul class="kt-nav">
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-reload"></i>
																	<span class="kt-nav__link-text">Save &amp; continue</span>
																</a>
															</li>
															
															<li class="kt-nav__item">
																<a href="#" class="kt-nav__link">
																	<i class="kt-nav__link-icon flaticon2-add-1"></i>
																	<span class="kt-nav__link-text">Save &amp; add new</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="kt-portlet__body blocked ">
											
												<div class="row">
													<div class="col-xl-1"></div>
													<div class="col-xl-11">
														<div class="kt-section kt-section--first">
															<div class="kt-section__body">
																<h3 class="kt-section__title kt-section__title-lg ">Detalles de nuevo reto</h3>

																

																<br>

																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Privacidad de reto</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="me"  :class="{'is-invalid': form.errors.has('privacy')}"	 name="privacy" v-model="form.privacy" > Privado (Solo para mi)
																				<span></span>
																			</label>

																			<label class="kt-checkbox">
																				<input type="radio"  value="empresarial"  :class="{'is-invalid': form.errors.has('privacy')}"	 name="privacy" v-model="form.privacy" > Privado (Empresarial)
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="public" :class="{'is-invalid': form.errors.has('privacy')}" name="privacy" v-model="form.privacy" > Hacerlo público
																				<span></span>
																			</label>
																		<has-error :form="form" field="privacy" ></has-error>
																		</div>
																	</div>
																</div>
																<br>


																

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Título</label>
																	<div class="col-9">
																		<input class="form-control" :class="{'is-invalid': form.errors.has('title')}" v-model="form.title" name="title" type="text" placeholder="e.g., Mejorar las ventas en la región países de suramérica" required>
																	</div>

																	 <has-error :form="form" field="title" ></has-error>
																</div>

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Descripción corta</label>
																	<div class="col-9">
																		<textarea class="form-control" :class="{'is-invalid': form.errors.has('description')}" v-model="form.description" name="description" type="text" placeholder="e.g., Cómo lograr mas ventas en países suramericanos con expansión a gran escala?" rows="2" required></textarea>
																		<has-error :form="form" field="description" ></has-error>
																	</div>
																</div>
															
																<div class="form-group row">
																	
																	<label for="" style="margin-left:10px;">Descripción detallada</label>
																	<div class="col-12">
																		
																		 <textarea id="kt_summernote_1"  
																		 :class="{'is-invalid': form.errors.has('editordata')}" 
																		      @change="updateRichText" v-model="form.editordata" 
																			   name="editordata" class="summernote richtext" ></textarea>

																		<has-error :form="form" field="body" ></has-error>
                                                                         
																		<span class="form-text text-muted">Herramientas de edición de texto profesionales para que cuentes bien la necesidad de este reto. </span>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-3 col-form-label">Imágen alusiva al reto</label>
																	<div class="col-9">
																		<div class="input-group">
																			<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon-photo-camera"></i></span></div>
																			<input type="file"  accept="image/x-png, image/jpeg"   :id="'retoImagen'"   @change="onFilePicked" name="img" class="form-control"   :class="{'is-invalid': form.errors.has('img')}"   
																			placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg" aria-describedby="basic-addon1" >

																			<has-error :form="form" field="img" ></has-error>
																		</div>
																		<span class="form-text text-muted">(Tamaño menor a 3M).</span>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Categoría</label>
																	<div class="col-9">
																		<div class="input-group">
																			

																			<select class="kt-selectpicker form-control "  :class="{'is-invalid': form.errors.has('category')}"        data-container="body"  name="category" id="kt-selectpicker1" v-model="form.category"  required>

																				<optgroup :label="cat.label" v-for="cat in cats" :key="cat.id">
																					<option :value="c.id+c.name" v-for="c in cat.options" :key="c.id">{{ c.name |toCategory}}</option>
																					
																				</optgroup>
																				
																				<!--<option value="sustainability">Sostenibilidad</option>
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
																				<option value="businessandconsumer">Negocios & Consumo</option>-->




																			</select>
																			<has-error :form="form" field="category" ></has-error>



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
																		<select class="kt-selectpicker form-control " :class="{'is-invalid': form.errors.has('language')}"  name="language" id="kt-selectpicker2" v-model="form.language" required>
																			
																			
																			
																			<option value="en" selected >English</option>
																		
																			<option value="es">Español - Spanish</option>
																			
																		</select>

																		<has-error :form="form" field="language" ></has-error>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Mostrar mi correo en la idea?</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="showme"  :class="{'is-invalid': form.errors.has('author')}"	 name="author" v-model="form.author" > Si, mostrar.
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="anonymous" :class="{'is-invalid': form.errors.has('author')}" name="author" v-model="form.author" > Mostrar anónimo(a)
																				<span></span>
																			</label>
																		<has-error :form="form" field="author" ></has-error>
																		</div>
																	</div>
																</div>
																<br>

																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Fecha límite</label>
																	<div class="col-5">
																		<div class="kt-checkbox-inline" >
																			<label class="kt-checkbox">
																				<input type="radio"  value="none"    :class="{'is-invalid': form.errors.has('date')}"	 name="selected" v-model="selected" > Indefinida
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="date" :class="{'is-invalid': form.errors.has('date')}" name="selected" v-model="selected" >Activar fecha límite →
																				<span></span>
																			</label>
																		<has-error :form="form" field="date" ></has-error>
																		</div>
																	</div>

																	<div class="col-3">

																		<div class="input-group date">

																		<!--
																			<div class="input-group date">

																		<input type="text"  @change="checkFecha"  class="form-control" data-provide="datepicker" name="fecha"  placeholder="Fecha límite" id="datepicka" autocomplete="off" :disabled="selected=='none'" :required="selected=='date'" v-model="form.fecha" >		
																	
																		<div class="input-group-append">
																			<span class="input-group-text">
																				<i class="la la-clock-o"></i>
																			</span>
																		</div>
																	</div> -->

																	<date-picker v-model="form.fecha" :config="options" :disabled="selected=='none'" :required="selected=='date'" ></date-picker>

																		<div class="input-group-append">
																			<span class="input-group-text">
																				<i class="la la-clock-o"></i>
																			</span>
																		</div>
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
												<router-link to="/retos" class="btn btn-clean kt-margin-r-10">
													<i style="padding-bottom:8px;" class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Atrás</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i style="padding-bottom:8px;" class="la la-save"></i>
														<span class="kt-hidden-mobile">Publicar nuevo reto</span>
													</button>
												
												</div>
											</div>
											</center>

											<br>

											

										</form>
									</div>

									<!--end::Portlet-->
								</div>

								<div class="col-lg-1"></div>

							
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


</style>


<script>

export default {

	  data() {
            return  {

				fotos:[
					'1.svg',
					'2.svg',
					'3.svg',
					'4.svg',
					'5.svg',
					'6.svg',
					'7.svg',
					'8.jpg',
					'9.jpg',
					'10.jpg',
					'11.svg',
					'12.svg',
					'13.jpg',
					'14.svg',
					'15.svg',
					'16.svg',
					'17.svg',
					'18.svg',
					'19.svg',
					'20.svg',
					'21.svg',
					'22.svg',
					'23.svg',
					'24.svg',
					'25.svg',
					'26.svg',
					'27.svg',

				],
			   
			     value: [
                        { name: 'Equipo 1', code: 'js' }
                    ],
                    options: [
                        { name: 'Equipo 1', code: 'vu' },
                        { name: 'Equipo 2', code: 'js' },
                        { name: 'Equipo 3', code: 'os' }
                    ],
				image:'',
				user: window.User,
				baseUrl: window.baseUrl,
				selected:'none',
                form: new Form({
                    id:'',
                    title: '',
					description:'',
					editordata   : '',
					img:'',
					category :'1sustainability',
					language:'es',
					author:'showme',
					privacy:'empresarial',
					type:'reto',
					fecha:'',

				}),
				cats:{},
				
				options: {
				format: 'DD/MM/YYYY',
				useCurrent: false,
				minDate:  moment(new Date()).add(1,'days'),
				}    
            }
		},

	computed: {


		fechaValidador(){

			if(this.form.fecha != ''){
				//document.getElementById("datepicka").required = true;
				//document.getElementById("datepicka").disabled = false;
				return true;

			}else{
				//document.getElementById("datepicka").required = false;
				//document.getElementById("datepicka").disabled = true;

				return false;

			}
		},

		checkDate() {
			
			if(this.selected = 'date'){
				//document.getElementById("datepicka").required = true;
				//document.getElementById("datepicka").disabled = false;
				return false;

			}else{
				//document.getElementById("datepicka").required = false;
				//document.getElementById("datepicka").disabled = true;

				return true;

			}
			},
	},
		
	methods: {

			

		onFilePicked(event) {
			
			 const files = event.target.files;
			let filename = files[0].name;
			
			let imagenTemporal = event.target.files[0];
			let mbSize = imagenTemporal.size/1024/1024;
			mbSize = mbSize.toFixed(2);
			

			if (filename.lastIndexOf(".") <= 0) {
				alert("Añadir un archivo válido!");
			}
			
			this.image = event.target.files[0];
			

			if(mbSize>3){
				
				alert('La imágen no puede ser mayor a 3 megas');

				document.getElementById('retoImagen').value = null;
				//window.fileInputForm.reset();
				

			}

    },

		testFun(){

			this.form.editordata =   $('#kt_summernote_1').summernote('code');

			console.log(this.form.editordata);
		},

		createUser(){

		const config = {
        headers: { "content-type": "multipart/form-data" }
      };
      let formData = new FormData();

      let random = Math.floor(Math.random() * 1000) + 1;

      if (this.image == "") {
        let random = Math.floor(Math.random() * 26);
        this.form.img = this.baseUrl + "images/" + this.fotos[random];

		formData.append("img", this.form.img);
	
        formData.append("title", this.form.title);
        formData.append("description", this.form.description);
        formData.append("editordata", $("#kt_summernote_1").summernote("code"));
        formData.append("category", this.form.category);
        formData.append("language", this.form.language);
        formData.append("author", this.form.author);
        formData.append("privacy", this.form.privacy);
		formData.append("type", 'reto');
		formData.append("fecha",this.form.fecha);
        formData.append("votes_privacy", this.form.votes_privacy);
      } else {


		formData.append("image", this.image);

        formData.append("title", this.form.title);
        formData.append("description", this.form.description);
        formData.append("editordata", $("#kt_summernote_1").summernote("code"));
        formData.append("category", this.form.category);
        formData.append("language", this.form.language);
        formData.append("author", this.form.author);
        formData.append("privacy", this.form.privacy);
		formData.append("type", 'reto');
		formData.append("fecha",this.form.fecha);
        formData.append("votes_privacy", this.form.votes_privacy);
      }

      this.$Progress.start();
      // Submit the form via a POST request

      this.form.editordata = $("#kt_summernote_1").summernote("code");
      axios
        .post("/saveIdea2", formData, config)
        .then(({ data }) => { 
		
		  toastr.success('+ 10 puntos','Reto creado satisfactoriamente.')
		  this.form.reset();
		  this.$router.push({name:'retos'});
        })
        .catch((error) => {
			console.log(error)
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
		},

		updateRichText(){

			this.form.editordata =  $('textarea[name="editordata"]').html($('#kt_summernote_1').code());
		},

	
	checkFecha(){

		
		  var date = new Date();
			
			var currentDate = document.getElementById('datepicka').value;
			var dateChoosed = moment(currentDate,'DD/MM/YYYY');


			 console.log($('#datepicka').val());
			
				var now = moment();

				if (now > date) {
					toastr.error("Oops!", "La fecha límite debe de estar en un día futuro.");	
				}


				},

		getCategories(){
			
     
                axios.get("/brignPersonalizedCategories")
                    .then(response => {
                    this.cats = response.data.categories;
                
                    })
                    .catch(error => {
                    console.log(error);
                    });

                    
            
		}

	

	},


	mounted() {


		this.getCategories()



		
		var KTSummernoteDemo={init:function(){
			
			$("#kt_summernote_1").summernote(
				{height:250
				
				
				}
				
				);

			//$('.kt-selectpicker').selectpicker();

			$("#content").summernote();
			$('.dropdown-toggle').dropdown();

		
				


		

			

		}};jQuery(document).ready(function()
		
		{
			
			KTSummernoteDemo.init();
			
		
		}
		
		);

		
		}

		
	
}


	
					
</script>
