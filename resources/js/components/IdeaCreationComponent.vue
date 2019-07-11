
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
												<h3 class="kt-portlet__head-title">Create awesome ideas  <small>to improve your company functions</small></h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<router-link to="/innovations" class="btn btn-clean kt-margin-r-10">
													<i class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Back</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i class="la la-check"></i>
														<span class="kt-hidden-mobile">Save</span>
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
																<h3 class="kt-section__title kt-section__title-lg ">Idea details</h3>

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Title</label>
																	<div class="col-9">
																		<input class="form-control" :class="{'is-invalid': form.errors.has('title')}" v-model="form.title" name="title" type="text" placeholder="Short idea title..." required>
																	</div>

																	 <has-error :form="form" field="title" ></has-error>
																</div>

																<div class="form-group row">
																	<label class="col-3 col-form-label  ">Description</label>
																	<div class="col-9">
																		<textarea class="form-control" :class="{'is-invalid': form.errors.has('description')}" v-model="form.description" name="description" type="text" placeholder="Short idea description..." rows="2" required></textarea>
																		<has-error :form="form" field="description" ></has-error>
																	</div>
																</div>
															
																<div class="form-group row">
																	
																	<label for="" style="margin-left:10px;">Body</label>
																	<div class="col-12">
																		
																		 <textarea id="kt_summernote_1"  
																		 :class="{'is-invalid': form.errors.has('editordata')}" 
																		      @change="updateRichText" v-model="form.editordata" 
																			   name="editordata" class="summernote richtext" ></textarea>

																		<has-error :form="form" field="body" ></has-error>
                                                                         
																		<span class="form-text text-muted">If you want to increase your idea rating and apreciation. Please use our below rich text editor. </span>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-3 col-form-label">Main Image</label>
																	<div class="col-9">
																		<div class="input-group">
																			<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon-photo-camera"></i></span></div>
																			<input type="file"  accept="image/x-png, image/jpeg"   @change="onFilePicked" name="img" class="form-control"   :class="{'is-invalid': form.errors.has('img')}"   
																			placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg" aria-describedby="basic-addon1" required>

																			<has-error :form="form" field="img" ></has-error>
																		</div>
																		<span class="form-text text-muted">Choose an awesome image to get more likes for your idea.</span>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Category</label>
																	<div class="col-9">
																		<div class="input-group">
																			

																			<select class="kt-selectpicker form-control "  :class="{'is-invalid': form.errors.has('category')}"        data-container="body"  name="category" id="kt-selectpicker1" v-model="form.category"  required>
																				<option value="improvethis" selected >Improve Asakaa.com</option>
																				<option value="sustainability">Sustainability</option>
																				<option value="lifeandhealth">Life & Health </option>
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
																			<has-error :form="form" field="category" ></has-error>



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
																		<select class="kt-selectpicker form-control " :class="{'is-invalid': form.errors.has('language')}"  name="language" id="kt-selectpicker2" v-model="form.language" required>
																			
																			
																			
																			<option value="en" selected >English</option>
																		
																			<option value="es">Español - Spanish</option>
																			
																		</select>

																		<has-error :form="form" field="language" ></has-error>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Author</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="showme"  :class="{'is-invalid': form.errors.has('author')}"	 name="author" v-model="form.author" > Show my username
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="anonymous" :class="{'is-invalid': form.errors.has('author')}" name="author" v-model="form.author" > Anonymous
																				<span></span>
																			</label>
																		<has-error :form="form" field="author" ></has-error>
																		</div>
																	</div>
																</div>

																<hr style="border: 0;
																			height: 1px;
																			background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); ">

																	<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Privacy</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio"  value="me"  :class="{'is-invalid': form.errors.has('privacy')}"	 name="privacy" v-model="form.privacy" > Just for me
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="public" :class="{'is-invalid': form.errors.has('privacy')}" name="privacy" v-model="form.privacy" > Public
																				<span></span>
																			</label>
																		<has-error :form="form" field="privacy" ></has-error>
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
													<i class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Back</span>
												</router-link>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i class="la la-check"></i>
														<span class="kt-hidden-mobile">Save</span>
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
               
			    user: window.User,
                form: new Form({
                    id:'',
                    title: '',
					description:'',
					editordata   : '',
					img:'',
					category :'',
					language:'',
					author:'anonymous',
					privacy:'me'

                }) 
            }
		},
		
	methods: {

		onFilePicked(event) {
			
			const files = event.target.files;
			let filename = files[0].name;

			if (filename.lastIndexOf(".") <= 0) {
				return alert("Please add a valid file");
			}

			const fileReader = new FileReader();
			fileReader.addEventListener("load", () => {
				//this.contactPhoto = fileReader.result;
				this.form.img = fileReader.result;
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

			 this.$Progress.start();
			  // Submit the form via a POST request
			  
			  	 this.form.editordata =  $('#kt_summernote_1').summernote('code');
                 this.form.post('/saveIdea2')
                .then(({ data }) => { 

				 
					this.$router.push('innovations');
                    toastr.success('Awesome!','New idea has appeared.')
					this.form.reset();
                    


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
