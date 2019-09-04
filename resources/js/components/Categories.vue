<template>
    <div style="min-height:80vh;">

        <div class="modal fade" id="categoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{modalTitle}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                     <div class="container">
                                 <div class="row">
                                     <div class="col-12">
                            <v-card>
                         
                                   <form    @submit.prevent="save"
                                            @keydown="form.onKeydown($event)" >
                            <v-card-text>
                         
                            <v-text-field counter
                             maxlength="20" :title="'4 carácteres mínimo'" :pattern="'.{4,}'" :id="'categoryInput'" v-model="form.name" label="Nombre de categoría" required></v-text-field>
                           
                            </v-card-text>

                            <v-card-actions>
                                <v-spacer></v-spacer>
                                <v-btn color="blue darken-1" flat @click="close">Cancelar</v-btn>
                                <v-btn color="blue darken-1" dark type="submit" :disabled="form.busy"  >{{btnTitle}}</v-btn>
                            </v-card-actions>

                               </form>

                         
                            </v-card>

                                      </div>
                                 </div>
                             </div>
                </div>
                
                </div>
            </div>
        </div>


         <v-toolbar flat color="white">
      <v-toolbar-title>Categorías Personalizadas</v-toolbar-title>
      
      <v-spacer></v-spacer>

         <v-btn color="orange darken-1"  dark class="mb-2" @click="showCategoryModal" >Nueva categoría</v-btn>
    
    </v-toolbar>
    <v-data-table
      :headers="headers"
      :items="categories"
      class="elevation-1"
    >
      <template v-slot:items="props">
        <td>{{ props.item.id }}</td>
        <td class="text-xs-left">{{ props.item.name }}</td>
       
        <td class="text-xs-left">
          <v-icon
            small
            class="mr-2"
            @click="editItem(props.item)"
          >
            edit
          </v-icon>
          <v-icon
            small
            @click="deleteItem(props.item)"
          >
            delete
          </v-icon>
        </td>
      </template>
      <template v-slot:no-data>
        <v-btn color="primary" @click="initialize">Reset</v-btn>
      </template>
    </v-data-table>
    </div>
</template>

<script>
  export default {
    data: () => ({

      form: new Form({
          name:'',
          id: '',
      }),
      modalTitle:'Nueva categoría',
      btnTitle:'Guardar',
      focus:true,
      dialog: false,
      headers: [
        {
          text: '#',
          align: 'left',
          sortable: true,
          value: 'id'
        },
        { text: 'Nombre', value: 'name', sortable:true },
     
        { text: 'Acciones', value: 'name', sortable: false }
      ],
      desserts: [],
      categories:[],
      editedIndex: -1,
      editedItem: {
        name: '',
        name: 0,
        fat: 0,
        carbs: 0,
        protein: 0
      },
      defaultItem: {
        name: '',
        name: 0,
        fat: 0,
        carbs: 0,
        protein: 0
      }
    }),

    computed: {
      formTitle () {
        return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
      }
    },

  

    

    methods: {

      showCategoryModal(){

          $("#categoryModal").modal('show');
          this.btnTitle='Guardar'
          this.modalTitle='Nueva categoría'
          //document.getElementById('categoryInput').dbclick();
      },
      initialize () {
        
      },

      editItem (item) {
       
       $('#categoryModal').modal('show');
       this.modalTitle= 'Editando categoría'
       this.btnTitle= 'Actualizar'

       this.form.name = item.name;
       this.form.id   = item.id;

      },

      deleteItem (item) {

       Swal.fire({
        title: "Estás seguro(a)?",
        text: "No se puede deshacer esta acción.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, borrar categoría."
      }).then(result => {
        if (result.value) {
          //send the request

          this.form.id = item.id;
          this.form
            .post("/deleteCategory/"+item.id)
            .then(response => {
              toastr.success("Listo", "Categoría borrada.");
              this.categories= response.data.categories;
              
            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
            });
        }
      });


      },

      close () {
        $('#categoryModal').modal('hide');
        
      },

      save () {
     
           this.$Progress.start();

           this.form.name = this.form.name.charAt(0).toUpperCase() + this.form.name.slice(1)
          
            this.form
                .post("/saveCategory")
                .then(response => {
               
                $("#closeBtnModal").click();
                $(".modal-backdrop").remove();
                toastr.success("Genial", "Nueva categoría creada.");
                this.categories= response.data.categories;
                this.form.name='';

                $('#categoryModal').modal('hide');
                })
                .catch(() => {
                toastr.error("Oops!", "Something goes wrong");
                });

            

            this.$Progress.finish();

      },

     loadCategories(){
         
            this.$Progress.start();
                this.form.post("/getCategories")
                    .then(response => {
                    this.categories = response.data.categories;
                
                    })
                    .catch(error => {
                    console.log(error);
                    });

                    
            this.$Progress.finish();
     },

     
    },
    mounted() {
         this.loadCategories()
         console.log('asdasdadsdas')
     },
  }
</script>

