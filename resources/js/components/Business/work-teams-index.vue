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
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
           


                <v-card color="grey lighten-5" dark>
                  <v-img height="230"  :src="baseUrl+ 'images/team.png'">
                    <v-layout wrap>
                      <v-flex xs12>
                        <v-progress-linear
                          :active="isUpdating"
                          class="ma-0"
                          color="light-blue darken-1"
                          height="4"
                          indeterminate
                        ></v-progress-linear>
                      </v-flex>
                      <v-flex text-xs-right xs12>
                         <v-menu
                            bottom
                            left
                            transition="slide-y-transition"
                          >
                            <template v-slot:activator="{ on }">
                              <v-btn
                                icon
                                class="blue"
                                v-on="on"
                                data-dismiss="modal"
                              >
                                <v-icon>close</v-icon>
                              </v-btn>
                            </template>
                          
                         </v-menu>
                      </v-flex>
                      <v-layout align-start column justify-end pa-3>
                        <h3 class="headline grey--text">Teams </h3>
                        <span class="grey--text text--lighten-1">{{ title }}
                          <br/>
                          {{sub}}


                        </span>
                      </v-layout>
                    </v-layout>
                  </v-img>
                  <form id="formulario" @submit.prevent="saveTeam" @keydown="teamForm.onKeydown($event)"   >
                    <v-container>
                      <v-layout wrap>
                        <v-flex xs12 md6>
                          <v-text-field
                            v-model="teamForm.name"
                            :disabled="isUpdating"
                            box
                            color="grey lighten-5"
                            label="Nombre del equipo"
                            required
                          ></v-text-field>
                        </v-flex>
                        <v-flex xs12 md6>
                          <v-text-field
                            v-model="teamForm.department"
                            :disabled="isUpdating"
                            box
                            color="grey lighten-5"
                            label="Departamento"
                            required
                          ></v-text-field>
                        </v-flex>
                        <v-flex xs12>
                          <v-autocomplete 
                            v-model="teamForm.members"
                            :disabled="isUpdating"
                            :items="contacts"
                             dense
                            outline
                            chips
                            color="grey darken-3"
                            label="Usuarios de empresa"
                            item-text="email"
                            item-value="email"
                            multiple
                            @change="checkTeamEmpty"
                            persistent-hint
                          >
                            <template v-slot:selection="data">
                              <v-chip
                                :selected="data.selected"
                                close

                                class="chip--select-multi"
                                
                                color="grey lighten-5"
                                style="color:#424242;"
                                @input="remove(data.item)"
                              >
                                <v-avatar>
                                  <img :src="data.item.avatar">
                                </v-avatar>
                                {{ data.item.firstName + ' '+ data.item.lastName }}
                              </v-chip>
                            </template>
                            <template v-slot:item="data">
                              <template v-if="typeof data.item !== 'object'">
                                <v-list-tile-content v-text="data.item"></v-list-tile-content>
                              </template>
                              <template v-else>
                                <v-list-tile-avatar>
                                  <img :src="data.item.avatar">
                                </v-list-tile-avatar>
                                <v-list-tile-content>
                                  <v-list-tile-title v-html="data.item.firstName + ' '+ data.item.lastName"></v-list-tile-title>
                                  <v-list-tile-sub-title v-html="data.item.email"></v-list-tile-sub-title>
                                </v-list-tile-content>
                              </template>
                            </template>
                          </v-autocomplete>
                        </v-flex>
                      </v-layout>
                    </v-container>
                 
                 
                  <v-card-actions>

        
                    

                    <v-btn
                      :disabled="autoUpdate"
                      :loading="isUpdating"
                      class="ml-2 mb-2"
                     
                       color="grey lighten-5"
                      style="color:#01579B !important;"
                      round
                      type="submit"
                      
                     
                    >
                      <v-icon    left>{{btnIcon}}</v-icon> <span  >{{ btnTitle}}</span>  
                    </v-btn>
                  </v-card-actions>
                   </form>
                </v-card>


            
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <v-toolbar flat color="white">
        <v-toolbar-title> 
          <v-btn fab  small color="grey lighten-5" @click="$router.go(-1)">
            <v-icon dark>arrow_back</v-icon>
          </v-btn>
          
             Equipos de Trabajo &nbsp; &nbsp;</v-toolbar-title>
      
        <v-spacer></v-spacer>

        <v-text-field v-model="search" append-icon="search" label="Buscar por nombre o departamento" single-line hide-details></v-text-field>
            &nbsp; &nbsp;
        <v-dialog v-model="dialog" max-width="500px">
          <template v-slot:activator="{ on }">
            <!--<v-btn color="indigo" dark class="mb-2" @click="newTeam">Nuevo Equipo</v-btn>-->

             <vs-button color="primary" type="gradient" @click="newTeam" icon="add">Crear nuevo equipo</vs-button>
            
          </template>
        </v-dialog>
      </v-toolbar>

        <v-progress-linear v-slot:progress color="#ccc" indeterminate v-if="loadingTable" ></v-progress-linear>
      <v-data-table disable-initial-sort :headers="headers"  :loading="loadingTable" :items="teams" class="elevation-1" :search="search">
         
        <template v-slot:items="props">
         
          <td>{{ props.item.name }}</td>
          <td class="text-xs-left">{{ props.item.department }}</td>
          <td >

          

             
                   <v-avatar  v-for="dude in props.item.avatars.avatar" :key="dude.id"
                      size="40px"
                    >
                      <img
                      
                        :src="dude.avatar"
                        :alt="dude.email"
                        :title="dude.firstName + ' '+ dude.lastName"
                   
                      >
                  
                   </v-avatar>
            


            

          </td>
        

          <td class="justify-center layout px-0">
            <v-icon small class="mr-2" @click="editTeam(props.item)">edit</v-icon>
            <v-icon small @click="deleteTeam(props.item.id)">delete</v-icon>
          </td>
        </template>
        <template v-slot:no-data>
          <v-btn color="primary" @click="initialize">Reset</v-btn>
        </template>
        <template v-slot:no-results>
          <v-alert
            :value="true"
            style="color:red;"
            icon="warning"
          >Tu busqueda por  "{{ search }}" no arrojó resultados.</v-alert>
        </template>
      </v-data-table>
    </div>
  </div>
  <!-- end hole -->
</template>

<style>
.adminFunction {
  cursor: pointer;
}

.v-autocomplete__content {
  margin-top:30px !important;
}


html,
body {
  height: 100%;
  width: 100%;
}

#formulario {
  background-color:#424242;
}

.darkGrey {
  color:#424242;
}
</style>


<script>
export default {
  data() {

   const srcs ={
        1: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
        2: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
        3: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
        4: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
        5: 'https://cdn.vuetifyjs.com/images/lists/5.jpg'
      }

      return {
        
       
          teams:[],
          saving:false,

        loadingTable:true,
        autoUpdate: false,
        baseUrl: window.baseUrl,
        friends: [1],
        isUpdating: false,
        name: 'Midnight Crew',
        title: "Equipos de trabajo en ",
        sub:'creación.',
        btnTitle:'Guardar equipo ahora',
        btnIcon:'save',

        search: "",
        dialog: false,
        contacts: [],
        workteam: {
          name: "",
          department: "",
          members: []
        },
        headers: [
          {
            text: "Nombre de Equipo",
            align: "left",
            sortable: false,
            value: "name"
          },
          { text: "Departamento", value: "department" },
          { text: "Miembros", value: "fat" },
         

          { text: "Acciones", value: "name", sortable: false }
        ],
        desserts: [],
        editedIndex: -1,
        editedItem: {
          name: "",
          calories: 0,
          fat: 0,
          carbs: 0
        },
        defaultItem: {
          name: "",
          calories: 0,
          fat: 0,
          carbs: 0
        },
          teamForm: new Form({
            id:'',
            name: "",
            department:'',
            members:[],
            updateForm:'object'
          }),

          deleteTeamF: new Form({
            id:'',
           
          }),

          itemActual:{}, 
          teamTemporal:{},
          membersUpdater:false,
          }
     
  },

  computed: {
    formTitle() {
      return this.editedIndex === -1 ? "New Team" : "Edit Team";
    },


    miembros:function(){

        return this.teamForm.members.filter(contact => {
          if (contact.email != itemActual.email) {
            return true;
          } else {
            return false;
          }
        });

    }



  },

  watch: {
    dialog(val) {
      val || this.close();
    },
     isUpdating (val) {
        if (val) {
          setTimeout(() => (this.isUpdating = false), 3000)
        }
      }
  },

  created() {
    this.initialize();
  },



  methods: {


    deleteTeam(idTeam){


        Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete the team."
      }).then(result => {
        if (result.value) {
          
          this.deleteTeamF.id = idTeam  

          this.deleteTeamF
            .post("/deleteTeam")
            .then(({ data }) => {
              toastr.success("Done!", "Team deleted!.");

              this.getTeams()
           

            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
              this.isUpdating=false;
            });


        }
      });

        




    },

    editTeam(team){
      $("#teamModal").modal("show");
      this.sub= 'edición.'
      this.btnTitle='Actualizar equipo ahora'
      this.btnIcon='update'

      this.saving = false

      this.teamForm.id = team.id
      this.teamForm.name = team.name
      this.teamForm.department = team.department
      this.teamForm.members = team.avatars.avatar

      this.teamTemporal = team.avatars.avatar
      this.membersUpdater=false

    },

    checkTeamEmpty(){

     this.membersUpdater = true
     this.teamForm.updateForm = 'array'

      /*if(this.teamForm.members.length >0){

       //this.teamForm.members = this.teamForm.members
       console.log('condicion tiene otros')
      }else {
       this.teamForm.members = {} ;
       console.log('condicion vacia')
      } */

    },

     remove (item) {

       
       console.log(item)
      
        /*let nuevoObjeto;

        nuevoObjeto =  this.teamForm.members.filter(contact => {
          return String(contact.email) != String(item.email)
          
        }); */

        if(this.membersUpdater){
          //Buscar email sencillo
       
             const ind = this.teamForm.members.indexOf(item.email)
            if (ind >= 0) this.teamForm.members.splice(ind, 1)


        }else {
          //buscar por objeto
                const index = this.teamForm.members.map(
                  function(e){
                    return e.email;
                  }
                ).indexOf(item.email)
                if (index >= 0) this.teamForm.members.splice(index, 1)
        }

        
        

        
        

      },

    loadContacts() {
      axios
        .get("/getContacts")
        .then(response => {
         
          this.contacts = response.data.contacts;
          this.loadingTable=false;
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });
    },

      getTeams() {
      axios
        .get("/getTeams")
        .then(response => {
          this.teams = response.data.teams;
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });
    },


    initialize() {
      
    },

    editItem(item) {
      this.editedIndex = this.desserts.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    },

    deleteItem(item) {
      const index = this.desserts.indexOf(item);
      confirm("Are you sure you want to delete this item?") &&
        this.desserts.splice(index, 1);
    },

    close() {
      this.dialog = false;
      $("#teamModal").modal("hide");
    },

    save() {
      if (this.editedIndex > -1) {
        Object.assign(this.desserts[this.editedIndex], this.editedItem);
      } else {
        this.desserts.push(this.editedItem);
      }
      this.close();
    },

    saveTeam(){

      if(this.saving){
          if(this.teamForm.members.length > 0){
         this.isUpdating=true;

      this.teamForm
            .post("/saveTeam")
            .then(({ data }) => {
              toastr.success("Done!", "New team has appeared!.");

              this.getTeams()
              this.isUpdating=false;
              $("#teamModal").modal("hide");

            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
              this.isUpdating=false;
            });
      }else {
      
        Swal.fire(
        'Oops?',
        'Teams must have at least 1 member.',
        'question'
      )

      }
      }else {

      if(this.teamForm.members.length > 0){
         this.isUpdating=true;

            this.teamForm
                  .post("/updateTeam")
                  .then(({ response }) => {
                    toastr.success("Done!", "Equipo actualizado con éxito!.");

                    this.getTeams()
                    //this.teams = response.data.teams;
                    this.isUpdating=false;
                    $("#teamModal").modal("hide");

                  })
                  .catch(({error}) => {
                    //toastr.error("Oops!", "Algo anda mal.");
                    console.log(error);
                    this.isUpdating=false;
                    $("#teamModal").modal("hide");
                  });
            }else {
            
              Swal.fire(
              'Oops?',
              'Teams must have at least 1 member.',
              'question'
            )

            }


      }//end else update team

    

     

    },


    updateTeam(){


      if(this.teamForm.members.length > 0){
         this.isUpdating=true;

      this.teamForm
            .post("/updateTeam")
            .then(({ response }) => {
              toastr.success("Done!", "Equipo actualizado con éxito!.");

              //this.getTeams()
              this.teams = response.data.teams;
              this.isUpdating=false;
              $("#teamModal").modal("hide");

            })
            .catch(() => {
              toastr.error("Oops!", "Algo anda mal.");
              this.isUpdating=false;
            });
      }else {
      
        Swal.fire(
        'Oops?',
        'Teams must have at least 1 member.',
        'question'
      )

      }


    },

    newTeam() {
      $("#teamModal").modal("show");
      this.sub= 'creation.'
      this.btnTitle='Guardar equipo ahora'
      this.btnIcon='save'

      this.saving=true

      this.teamForm.reset();

    },

    
  }, // end methods

  mounted() {
    this.loadContacts();
    this.getTeams()
  }
};
</script>
