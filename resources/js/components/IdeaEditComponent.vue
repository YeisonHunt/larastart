
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
												<button type="button" class="btn btn-clean kt-margin-r-10" @click="$router.go(-1)">
													<i class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Back</span>
												</button>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i class="la la-check"></i>
														<span class="kt-hidden-mobile">Update</span>
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
																		<input class="form-control" v-model="form.title"  
																		name="title" type="text" placeholder="Short idea title..." required>
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-3 col-form-label">Description</label>
																	<div class="col-9">
																		<textarea class="form-control" v-model="form.description"  
																		name="description" rows="2" placeholder="Short idea description..." required></textarea>
																	</div>
																</div>
															
																<div class="form-group row">
																	<label for="" style="margin-left:10px;">Body</label>
																	<div class="col-12">
																		<!-- <textarea id="kt_summernote_1" @change="updateRichText" v-model="form.editordata"  name="editordata" class="summernote richtext" ></textarea>-->

																		 <html-editor height="300" :model.sync="form.editordata"></html-editor>
																			
                                                                         
																		<span class="form-text text-muted">If you want to increase your idea rating and apreciation. Please use our below rich text editor. </span>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-3 col-form-label">Main Image</label>
																	<div class="col-9">
																		<div class="input-group">
																			<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon-photo-camera"></i></span></div>
																			<input type="text" v-model="form.img" name="img" class="form-control"  placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg" aria-describedby="basic-addon1" required>
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
																			
																			
																			
																			<option value="en" selected >English</option>
																			
																			<option value="es">Español - Spanish</option>
																			
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

											<center>

												<div class="kt-portlet__head-toolbar">
												<button type="button" class="btn btn-clean kt-margin-r-10" @click="$router.go(-1)">
													<i class="la la-arrow-left"></i>
													<span class="kt-hidden-mobile">Back</span>
												</button>
												<div class="btn-group">
													<button  class="btn btn-brand" type="submit" :disabled="form.busy">
														<i class="la la-check"></i>
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

import htmlEditor from './html-editor.vue'

export default {

		 components: {
			htmlEditor
		},

	  data() {
            return  {

                id:this.$route.params.id,
                idea:null,
                form: new Form({
                    id:'',
					title: '',
					description:'',
					editordata   : '',
					img:'',
					category :'',
					language:'',
					author:''

                }) 
            }
		},

	computed: {


		/*refreshIdea: function()	{

			       this.form.title = this.idea.title;
				   this.form.editordata = this.idea.editordata;

				  

				   this.form.img = this.idea.img;
				   this.form.category = this.idea.category;
				   this.form.language = this.idea.language;
				   this.form.author = this.idea.author;

				Vue.$set(this.form,'title',this.idea.title);
				return this.form;
		}*/

	},
		
	methods: {

		loadIdea(){

			console.log('Montado edit component');

				//axios.get('/getInnovation/'+this.id).then(({data})=>(
					
					//this.form.title=data.title
					
					
					//));

					 axios
						.get('/getInnovation/'+this.id)
						.then(response => {
							this.form.title = response.data.title
							this.form.description=response.data.description
							this.form.img=response.data.img
							this.form.category = response.data.category;
				  		    this.form.language = response.data.language;
							 this.form.author = response.data.author;

							 this.form.editordata = response.data.body;
							 
							$('#mySummer').summernote('code', response.data.body);

						})
						.catch(error => {
							console.log(error)
							
						})
						

				 
		},
		
		createUser(){

			 this.$Progress.start();
			  // Submit the form via a POST request
			  
			  	 //this.form.editordata =  $('#kt_summernote_1').summernote('code');
                 this.form.post('/updateIdea/'+this.id)
                .then(({ data }) => { 

				 
					this.$router.push({ path: '/innovations' });
                    toastr.success('Awesome!','Idea updated successfully.')
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
		
		this.loadIdea();
		
		var KTSummernoteDemo={
			
			
			init:function(){
			
			$("#kt_summernote_1").summernote(
				{height:300
				
				
				}
				
				);

			//$('.kt-selectpicker').selectpicker();

			$("#content").summernote();
		    $('.dropdown-toggle').dropdown();

		

			

		}};jQuery(document).ready(function()
		
		{
			console.log('jQuery cargado');
			
			KTSummernoteDemo.init();
			
		
		}
		
		);

		
		}

		
	
}


	
					
</script>
