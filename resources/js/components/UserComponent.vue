<template>
   

        
            
              
            
       

        <div class="row">
            <div class="col">

                  <button  class="btn btn-primary float-right mb-2" @click="modalCreateUser"  > Add Idea &nbsp; <i class="flaticon-add-circular-button"></i> </button>

                    
        <!--begin::Modal-->
            <div class="modal fade" id="userCreationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalTitle" >Creating new idea</h5>
                            <button type="button" id="closeBtnModal" class="close" data-dismiss="modal" aria-label="Close">
                            </button>
                        </div>
                        <div class="modal-body">

                            <form class="kt-form" @submit.prevent="editMode ? editIdea() : createUser() " @keydown="form.onKeydown($event)">
                                <div class="kt-portlet__body">
                                    <div class="form-group form-group-last">
                                        <div class="alert alert-secondary" role="alert">
                                            <div class="alert-icon"><i class="flaticon-add-circular-button kt-font-brand" id="iconBrand" ></i></div>
                                            <div class="alert-text" id="modalSubtitle">
                                                This VueJS component creates an awesome user idea a flash!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Idea Text </label>
                                        <input  v-model="form.ideatxt" :class="{'is-invalid': form.errors.has('ideatxt')}" id="ideatxt"  type="text" class="form-control" name="ideatxt" aria-describedby="emailHelp" placeholder="Enter full idea">
                                        <has-error :form="form" field="ideatxt"></has-error>
                                    </div>

                                     <div class="form-group">
                                        <label>Bug or new Feature</label>
                                        <input  v-model="form.bugorfeaturetxt" :class="{'is-invalid': form.errors.has('bugorfeaturetxt')}"  type="text" class="form-control" name="bugorfeaturetxt"   aria-describedby="emailHelp" placeholder="Enter bug or feature">
                                        <has-error :form="form" field="bugorfeaturetxt" ></has-error>

                                        <span class="form-text text-muted">We'll never share your idea with anyone else.</span>
                                    </div>
                                    
                                    
                                </div>
                                <div class="kt-portlet__foot float-right">
                                    <div class="kt-form__actions">
                                        <button type="submit" :disabled="form.busy" id="modalBtn"   class="btn btn-primary">Save Idea</button>
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
                  

        <table class=" table table-striped  table-hover ">
          <thead class="thead-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Idea</th>
              <th scope="col">Bug or Fix</th>
              <th colspan="" rowspan="" headers="" scope="col">Registered at</th>
              <th scope="col">Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr  v-for="idea in ideas" :key="ideas.id">
              <th scope="row">{{idea.id}}</th>
              <td>  {{idea.ideatxt}}</td>
              <td>{{idea.bugorfeaturetxt}}</td>
              <td colspan="" rowspan="" headers="">{{idea.created_at | humanDate}}</td>
              <td>
                
                <a href="javascript:void(0);" @click="modalEditUser(idea)" >
                    <i class="flaticon-settings-1 bigIcons"><span></span></i>

                </a>

                &nbsp; &nbsp; &nbsp; &nbsp;

                <a href="javascript:void(0);" @click="deleteIdea(idea.id)" >
                    <i class="flaticon-delete bigIcons"><span></span></i>

                </a>

              </td>
            </tr>
           
          </tbody>
        </table>
            </div>
        </div>

       
   
</template>

<style type="text/css">
    
    .toast-title {
        color: #fff !important;
    }

</style>

<script>
    export default {

        data() {
            return  {
                editMode:false,
                ideas:{},

                form: new Form({
                    id:'',
                    ideatxt: '',
                    bugorfeaturetxt   : '',
                }) 
            }
        },

        methods: {

        modalEditUser(idea){

            this.form.ideatxt = idea.ideatxt;
            this.form.bugorfeaturetxt = idea.bugorfeaturetxt;
            this.form.id = idea.id;

            this.editMode = true;

            $("#modalTitle").text('Edit idea');
            $("#modalSubtitle").text('This VueJS component edits an awesome user idea a flash!');
            $("#modalBtn").text("Update idea");

            $("#iconBrand").attr( "class", "flaticon-edit kt-font-brand");



            $('#userCreationModal').modal('show');

            $( "#ideatxt" ).focus();


            



        },

        modalCreateUser(){

            this.form.reset();
            this.editMode=false;

            $("#modalTitle").text('New idea');
            $("#modalSubtitle").text('This VueJS component creates an awesome user idea a flash!');
            $("#modalBtn").text("Save idea");
            $("#iconBrand").attr( "class", "flaticon-add-circular-button kt-font-brand");

            $('#userCreationModal').modal('show');
            $( "#ideatxt" ).focus();


        },

        editIdea(){

                console.log('ID'+ this.form.id);
                this.$Progress.start();
              // Submit the form via a POST request
                 this.form.put('/editIdea/'+ this.form.id)
                .then(({ data }) => { 

                    this.loadUsers()
                    
                    //form.ideatxt=''
                    //form.bugorfeaturetxt=''
                    toastr.success('Awesome!','Idea has been evolved.')
                    $("#closeBtnModal").click()
                    $('.modal-backdrop').remove() 

                 }).catch(()=>{
                    toastr.error('Oops!','Something goes wrong')
                    this.$Progress.fail();    
                 })

                //$('#userCreationModal').modal('hide');
                 

                this.$Progress.finish();

                
               // Fire.$emit('AfterCreate');


        },


        deleteIdea(id){

            Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              type: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
              if (result.value) {


                //send the request
                this.form.delete('/deleteIdea/'+id).then(({data})=>{

                      toastr.success('Done!','The idea has been deleted.')
                  
                    this.loadUsers()

                }).catch(()=>{

                      toastr.error('Oops!','Something went wrong.') 
                });
                

                



              }
            })
        },


        createUser () {

                this.$Progress.start();
              // Submit the form via a POST request
                 this.form.post('/saveIdea')
                .then(({ data }) => { 

                    this.loadUsers()
                    $("#closeBtnModal").click()
                    $('.modal-backdrop').remove()  
                    toastr.success('Awesome!','New idea has appeared.')

                    
                    //form.ideatxt=''
                    //form.bugorfeaturetxt=''


                 }).catch(()=>{
                    toastr.error('Oops!','Something goes wrong')    
                 })

                //$('#userCreationModal').modal('hide');
                
                this.$Progress.finish();

               
                Fire.$emit('AfterCreate');

                
            },

        testFunction(){
            alert('Emitiendo evento');
        },

        loadUsers(){
            // podemos usar this.form.get but we are gonna use axios
            
            axios.get('/ideas').then(({data})=>(this.ideas=data.data));

            Fire.$on("AfterCreate",()=>{

                
            })
        }


        },

        mounted() {
            console.log('Users component mounted')
            this.loadUsers()
        }
    }
</script>
