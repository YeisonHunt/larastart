
<template>
    
	
    					<div class="row" >

								<div class="col-lg-12">

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
																		<input class="form-control" v-model="form.title" name="title" type="text" placeholder="Short idea title...">
																	</div>
																</div>
															
																<div class="form-group row">
																	<label class="col-3 col-form-label">Description</label>
																	<div class="col-9">
																		 <textarea id="kt_summernote_1" @change="updateRichText" v-model="form.editordata"  name="editordata" class="summernote richtext" ></textarea>

                                                                         
																		<span class="form-text text-muted">If you want to increase your idea rating and apreciation. Please use our below rich text editor. </span>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-3 col-form-label">Main Image</label>
																	<div class="col-9">
																		<div class="input-group">
																			<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon-photo-camera"></i></span></div>
																			<input type="text" v-model="form.img" name="img" class="form-control"  placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg" aria-describedby="basic-addon1">
																		</div>
																		<span class="form-text text-muted">Choose an awesome image to get more likes for your idea.</span>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Category</label>
																	<div class="col-9">
																		<div class="input-group">
																			

																			<select class="kt-selectpicker form-control " data-live-search="true"   data-container="body" data-size="6" name="category" id="kt-selectpicker1" v-model="form.category"  required>
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
																		<select class="kt-selectpicker form-control "  name="language" id="kt-selectpicker2" v-model="form.language" required>
																			
																			
																			<option value="de">Deutsch - German</option>
																			<option value="en" selected >English</option>
																			<option value="en-gb">English UK - British English</option>
																			<option value="es">Español - Spanish</option>
																			<option value="eu">Euskara - Basque (beta)</option>
																			<option value="fil">Filipino</option>
																			<option value="fr">Français - French</option>
																			<option value="ga">Gaeilge - Irish (beta)</option>
																			<option value="gl">Galego - Galician (beta)</option>
																			<option value="hr">Hrvatski - Croatian</option>
																			<option value="it">Italiano - Italian</option>
																			<option value="hu">Magyar - Hungarian</option>
																			<option value="nl">Nederlands - Dutch</option>
																			<option value="no">Norsk - Norwegian</option>
																			<option value="pl">Polski - Polish</option>
																			<option value="pt">Português - Portuguese</option>
																			<option value="ro">Română - Romanian</option>
																			<option value="sk">Slovenčina - Slovak</option>
																			<option value="fi">Suomi - Finnish</option>
																			<option value="sv">Svenska - Swedish</option>
																			<option value="vi">Tiếng Việt - Vietnamese</option>
																			<option value="tr">Türkçe - Turkish</option>
																			<option value="el">Ελληνικά - Greek</option>
																			<option value="bg">Български език - Bulgarian</option>
																			<option value="ru">Русский - Russian</option>
																			<option value="sr">Српски - Serbian</option>
																			<option value="uk">Українська мова - Ukrainian</option>
																			<option value="he">עִבְרִית - Hebrew</option>
																			<option value="ur">اردو - Urdu (beta)</option>
																			<option value="ar">العربية - Arabic</option>
																			<option value="fa">فارسی - Persian</option>
																			<option value="mr">मराठी - Marathi</option>
																			<option value="hi">हिन्दी - Hindi</option>
																			<option value="bn">বাংলা - Bangla</option>
																			<option value="gu">ગુજરાતી - Gujarati</option>
																			<option value="ta">தமிழ் - Tamil</option>
																			<option value="kn">ಕನ್ನಡ - Kannada</option>
																			<option value="th">ภาษาไทย - Thai</option>
																			<option value="ko">한국어 - Korean</option>
																			<option value="ja">日本語 - Japanese</option>
																			<option value="zh-cn">简体中文 - Simplified Chinese</option>
																			<option value="zh-tw">繁體中文 - Traditional Chinese</option>
																		</select>
																	</div>
																</div>
																
																<div class="form-group form-group-last row">
																	<label class="col-3 col-form-label">Author</label>
																	<div class="col-9">
																		<div class="kt-checkbox-inline">
																			<label class="kt-checkbox">
																				<input type="radio" value="showme" 	checked="true" name="author" v-model="form.author" > Show my username
																				<span></span>
																			</label>
																			<label class="kt-checkbox">
																				<input type="radio" value="anonymous" name="author" v-model="form.author" > Anonymous
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

										</form>
									</div>

									<!--end::Portlet-->
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
               
                form: new Form({
                    id:'',
                    title: '',
					editordata   : '',
					img:'',
					category :'',
					language:'',
					author:''

                }) 
            }
		},
		
	methods: {

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

		,
	
}


	
					
</script>
