<template>
  <div class="hole" style="min-height:80vh;">
    

     <div
      class="modal fade"
      id="teamModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      style="display: none;"
      aria-hidden="true"
    >
     <div class="modal-dialog modal-lg" role="document" >
        <div class="modal-content" >
          <div class="modal-body">
            <div class="kt-portlet kt-portlet--skin-solid kt-portlet-- kt-bg-brand">
             
              <div class="kt-portlet__body">
                
                <v-card  >
                  <v-card-title>
                    <span class="headline">{{ formTitle }}</span>
                  </v-card-title>

                  <v-card-text>
                    <v-container grid-list-md>
                      <v-layout wrap>
                        <v-flex xs12 sm6 md4>
                          <v-text-field v-model="editedItem.name" label="Dessert name"></v-text-field>
                        </v-flex>
                        <v-flex xs12 sm6 md4>
                          <v-text-field v-model="editedItem.calories" label="Calories"></v-text-field>
                        </v-flex>
                        <v-flex xs12 sm6 md4>
                          <v-text-field v-model="editedItem.fat" label="Fat (g)"></v-text-field>
                        </v-flex>
                        <v-flex xs12 sm6 md4>
                          <v-text-field v-model="editedItem.carbs" label="Carbs (g)"></v-text-field>
                        </v-flex>
                        <v-flex xs12 sm6 md4>
                          <v-text-field v-model="editedItem.protein" label="Protein (g)"></v-text-field>
                        </v-flex>
                      </v-layout>
                    </v-container>
                  </v-card-text>

                  <v-card-actions>
                    <v-spacer></v-spacer>
                    <v-btn color="blue darken-1" flat @click="close">Cancel</v-btn>
                    <v-btn color="blue" style="color:white;" @click="save">Save</v-btn>
                  </v-card-actions>
                </v-card>
              </div>
            </div>
          </div>
        </div>
      </div>

     </div>

    <div class="container-fluid">

    <v-toolbar flat color="white">
      <v-toolbar-title>Work Teams &nbsp; &nbsp; </v-toolbar-title>
      <v-divider
        class="mx-2"
        inset
        vertical
      ></v-divider>
      <v-toolbar-title>My Company</v-toolbar-title>
      <v-spacer></v-spacer>


      <v-text-field
        v-model="search"
        append-icon="search"
        label="Search"
        single-line
        hide-details
      ></v-text-field>

      &nbsp; &nbsp;
     
      <v-dialog v-model="dialog" max-width="500px" >
        <template v-slot:activator="{ on }">
          <v-btn color="blue" dark class="mb-2" @click="">New team</v-btn>
        </template>


      </v-dialog>



    </v-toolbar>


    <v-data-table
      :headers="headers"
      :items="desserts"
      class="elevation-1"
      :search="search"
    >
      <template v-slot:items="props">
        <td>{{ props.item.name }}</td>
        <td class="text-xs-left">{{ props.item.calories }}</td>
        <td class="text-xs-left">{{ props.item.fat }}</td>
        <td class="text-xs-left">{{ props.item.carbs }}</td>
 
        <td class="justify-center layout px-0">
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
      <template v-slot:no-results>
        <v-alert :value="true" color="error" icon="warning">
          Your search for "{{ search }}" found no results.
        </v-alert>
      </template>
      
    </v-data-table>
    </div>
    

    
  </div><!-- end hole -->
</template>

<style>



.adminFunction {
    cursor:pointer;
}

html, body {
    height: 100%;
    width: 100%;
}

</style>


<script>
export default {
    data: () => ({
      search: '',
      dialog: false,
      contacts:{},
      workteam:{

        name:'',
        department:'',
        members:[]
      },
      headers: [
        {
          text: 'Work Team (Name)',
          align: 'left',
          sortable: false,
          value: 'name'
        },
        { text: 'Department', value: 'calories' },
        { text: 'Members', value: 'fat' },
        { text: 'In Charge', value: 'carbs' },
        
        { text: 'Actions', value: 'name', sortable: false }
      ],
      desserts: [],
      editedIndex: -1,
      editedItem: {
        name: '',
        calories: 0,
        fat: 0,
        carbs: 0,
        
      },
      defaultItem: {
        name: '',
        calories: 0,
        fat: 0,
        carbs: 0,
        
      }
    }),

    computed: {
      formTitle () {
        return this.editedIndex === -1 ? 'New Team' : 'Edit Team'
      }
    },

    watch: {
      dialog (val) {
        val || this.close()
      }
    },

    created () {
      this.initialize()
    },

    methods: {

       loadContacts() {
          axios
            .get("/getContacts")
            .then(response => {
              
              this.contacts = response.data.contacts;
            })
            .catch(error => {
              console.log(error);

              toastr.error("Oops!", "Something goes wrong");
            });
    },

      initialize () {
        this.desserts = [
          {
            name: 'Diseno Movil',
            calories: 159,
            fat: 6.0,
            carbs: 24,
            
          },
          {
            name: 'Testers Axon ',
            calories: 237,
            fat: 9.0,
            carbs: 37,
           
          },
          {
            name: 'Innovacion EPM',
            calories: 262,
            fat: 16.0,
            carbs: 23,
            
          },
          {
            name: 'Ventas Axon',
            calories: 305,
            fat: 3.7,
            carbs: 67,
          
          },
          {
            name: 'Comercial',
            calories: 356,
            fat: 16.0,
            carbs: 49,
         
          },
          
        ]
      },

      editItem (item) {
        this.editedIndex = this.desserts.indexOf(item)
        this.editedItem = Object.assign({}, item)
        this.dialog = true
      },

      deleteItem (item) {
        const index = this.desserts.indexOf(item)
        confirm('Are you sure you want to delete this item?') && this.desserts.splice(index, 1)
      },

      close () {
        this.dialog = false
        $("#teamModal").modal("hide");
      },

      save () {
        if (this.editedIndex > -1) {
          Object.assign(this.desserts[this.editedIndex], this.editedItem)
        } else {
          this.desserts.push(this.editedItem)
        }
        this.close()
      },

      newTeam(){

         $("#teamModal").modal("show");
      }


    },// end methods

    mounted(){
      this.loadContacts()


    }
  }
</script>
