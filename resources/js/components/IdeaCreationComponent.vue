
<template>


				<div class="container-fluid">

    					<div class="row" >
								<div class="col-lg-1"></div>
								<div class="col-lg-10 col-sm-12 col-md-10">

									<!--begin::Portlet-->
									<div class="kt-portlet kt-portlet--last kt-portlet--head-lg kt-portlet--responsive-mobile myForm " id="kt_page_portlet">

										<form enctype="multipart/form-data" class="kt-form" id="kt_form" @submit.prevent="createUser" @keydown="form.onKeydown($event)">
										<div class="kt-portlet__head kt-portlet__head--lg" style="">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">Crea ideas geniales  <small>para solucionar problemas en tu empresa y en el mundo.</small></h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<router-link to="/innovations" class="btn btn-clean kt-margin-r-10">
													<i style="padding-bottom:8px;" class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile" >Atrás</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i style="padding-bottom:8px;" class="la la-check"></i>
														<span class="kt-hidden-mobile">Publicar idea</span>
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
																<h3 class="kt-section__title kt-section__title-lg ">Detalles de Idea</h3>



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


																<br>

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Título</label>
																	<div class="col-9">
																		<input class="form-control" :class="{'is-invalid': form.errors.has('title')}" v-model="form.title" name="title" type="text" placeholder="e.g., Usar bolsa reutilizable a la hora de comprar" required>
																	</div>

																	 <has-error :form="form" field="title" ></has-error>
																</div>

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Descripción corta</label>
																	<div class="col-9">
																		<textarea class="form-control" :class="{'is-invalid': form.errors.has('description')}" v-model="form.description" name="description" type="text" placeholder="e.g., Tener a la mano una bolsa grande para llevar las compras" rows="2" required></textarea>
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

																		<span class="form-text text-muted">El anterior editor enrriquecido de texto te permite escribir descripciones profesionales al alcance de tu mano. </span>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-3 col-form-label">Imágen alusiva a la idea</label>
																	<div class="col-9">
																		<div class="input-group">
																			<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon-photo-camera"></i></span></div>
																			<input type="file"  accept="image/x-png, image/jpeg"   @change="onFilePicked" name="img" class="form-control"   :class="{'is-invalid': form.errors.has('img')}"
																			placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg" aria-describedby="basic-addon1" >

																			<has-error :form="form" field="img" ></has-error>
																		</div>
																		<span class="form-text text-muted">En caso de no escoger una imágen propia, se generará una al azar.</span>
																	</div>
																</div>

																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Categoría</label>
																	<div class="col-9">
																		<div class="input-group">


																			<select class="kt-selectpicker form-control "  :class="{'is-invalid': form.errors.has('category')}"        data-container="body"  name="category" id="kt-selectpicker1" v-model="form.category"  required>

																				<option value="sustainability">Sostenibilidad</option>
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
																				<option value="businessandconsumer">Negocios & Consumo</option>
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
																	<label class="col-3 col-form-label">Mostrar mi nombre en la idea?</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="showme"  :class="{'is-invalid': form.errors.has('author')}"	 name="author" v-model="form.author" > Mostrar mi correo
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="anonymous" :class="{'is-invalid': form.errors.has('author')}" name="author" v-model="form.author" > Anónimo(a)
																				<span></span>
																			</label>
																		<has-error :form="form" field="author" ></has-error>
																		</div>
																	</div>
																</div>

																<br>

																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Mostrar votos en modo empresa?</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="yes"  :class="{'is-invalid': form.errors.has('votes_privacy')}"	 name="votes_privacy" v-model="form.votes_privacy" > Si
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="no" :class="{'is-invalid': form.errors.has('votes_privacy')}" name="votes_privacy" v-model="form.votes_privacy" > Aún no
																				<span></span>
																			</label>
																		<has-error :form="form" field="votes_privacy" ></has-error>
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
												<router-link to="/innovations" class="btn btn-clean kt-margin-r-10">
													<i style="padding-bottom:8px;" class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Atrás</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i style="padding-bottom:8px;" class="la la-check"></i>
														<span class="kt-hidden-mobile">Publicar nueva idea</span>
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
				imagen:'',

				user: window.User,
				baseUrl: window.baseUrl,
                form: new Form({
                    id:'',
                    title: '',
					description:'',
					editordata   : '',
					img:'',
					category :'sustainability',
					language:'es',
					author:'showme',
					privacy:'me',
					type:'idea',
					votes_privacy:'no'

                })
            }
		},

	methods: {

		checkUserType(){

			if(user.account_type=='personal'){
				this.form.privacy='empresarial'
			}else {
				this.form.privacy='empresarial'
			}

		},

		onFilePicked(event) {

			const files = event.target.files;
			let filename = files[0].name;
			this.image = event.target.files[0];

			if (filename.lastIndexOf(".") <= 0) {
				return alert("Please add a valid file");
			}

			const fileReader = new FileReader();
			fileReader.addEventListener("load", () => {
				//this.contactPhoto = fileReader.result;
				//this.form.img = fileReader.result;
			});
			fileReader.readAsDataURL(files[0]);
			//this.contactPhotoImg = files[0]; // file without any changes

			// esta ultima es la que se envia
    },

		testFun(){

			this.form.editordata =   $('#kt_summernote_1').summernote('code');

			console.log(this.form.editordata);
		},

		createUser(){

			 const config = {
                    headers: { 'content-type': 'multipart/form-data' }
                }
			 let formData = new FormData();
                formData.append('image', this.image);
 

			/*let random = Math.floor(Math.random() * 1000) + 1;

			if(this.form.img == ""){

				let random = Math.floor(Math.random() * 26);
				this.form.img= this.baseUrl+'images/'+this.fotos[random];
			}*/

			 this.$Progress.start();
			  // Submit the form via a POST request

			  	 this.form.editordata =  $('#kt_summernote_1').summernote('code');
                 axios.post('/saveIdea2', formData, config)
                .then(function (response) {
					console.log(response.data.success)
					/*this.$router.push('innovations');
                    toastr.success('+ 5 puntos!','Una nueva idea ha aparecido.')
					this.form.reset(); */



                 }).catch(()=>{
                    toastr.error('Oops!','Something goes wrong')
                 })

                //$('#userCreationModal').modal('hide');

                this.$Progress.finish();
		},

		updateRichText(){

			this.form.editordata =  $('textarea[name="editordata"]').html($('#kt_summernote_1').code());
		},




	},


	mounted() {

		this.checkUserType()

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
