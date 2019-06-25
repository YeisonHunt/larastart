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
           


                <v-card color="blue lighten-1" dark>
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
                  <form  @submit.prevent="saveTeam" @keydown="teamForm.onKeydown($event)"   >
                    <v-container>
                      <v-layout wrap>
                        <v-flex xs12 md6>
                          <v-text-field
                            v-model="teamForm.name"
                            :disabled="isUpdating"
                            box
                            color="blue-light-blue  lighten-2"
                            label="Team Name"
                            required
                          ></v-text-field>
                        </v-flex>
                        <v-flex xs12 md6>
                          <v-text-field
                            v-model="teamForm.department"
                            :disabled="isUpdating"
                            box
                            color="blue-light-blue  lighten-2"
                            label="Team Department"
                            required
                          ></v-text-field>
                        </v-flex>
                        <v-flex xs12>
                          <v-autocomplete
                            v-model="teamForm.members"
                            :disabled="isUpdating"
                            :items="contacts"
                            box
                            chips
                            color="blue-light-blue lighten-2"
                            label="Members"
                            item-text="email"
                            item-value="email"
                            multiple
                            
                            persistent-hint
                          >
                            <template v-slot:selection="data">
                              <v-chip
                                :selected="data.selected"
                                close

                                class="chip--select-multi"
                                
                                color="grey lighten-4"
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

                    <!--
                    <v-switch
                      v-model="autoUpdate"
                      :disabled="isUpdating"
                      class="mb-2"
                      color="grey lighten-5"
                      hide-details
                      label="Auto Update"
                    ></v-switch> -->

                    

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
        <v-toolbar-title>Work Teams &nbsp; &nbsp;</v-toolbar-title>
        <v-divider class="mx-2" inset vertical></v-divider>
        <v-toolbar-title>My Company</v-toolbar-title>
        <v-spacer></v-spacer>

        <v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details></v-text-field>
            &nbsp; &nbsp;
        <v-dialog v-model="dialog" max-width="500px">
          <template v-slot:activator="{ on }">
            <v-btn color="blue" dark class="mb-2" @click="newTeam">New team</v-btn>
          </template>
        </v-dialog>
      </v-toolbar>

      <v-data-table :headers="headers" :items="desserts" class="elevation-1" :search="search">
        <template v-slot:items="props">
          <td>{{ props.item.name }}</td>
          <td class="text-xs-left">{{ props.item.calories }}</td>
          <td class="text-xs-left">{{ props.item.fat }}</td>
          <td class="text-xs-left">{{ props.item.carbs }}</td>

          <td class="justify-center layout px-0">
            <v-icon small class="mr-2" @click="editTeam(props.item)">edit</v-icon>
            <v-icon small @click="deleteItem(props.item)">delete</v-icon>
          </td>
        </template>
        <template v-slot:no-data>
          <v-btn color="primary" @click="initialize">Reset</v-btn>
        </template>
        <template v-slot:no-results>
          <v-alert
            :value="true"
            color="error"
            icon="warning"
          >Your search for "{{ search }}" found no results.</v-alert>
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
        
         teamForm: new Form({
            name: "",
            department:'',
            members:[],
          }),
          teams:{},

     
        autoUpdate: false,
        baseUrl: window.baseUrl,
        friends: [1],
        isUpdating: false,
        name: 'Midnight Crew',
        people: [
       
          {id:1, name: 'Sandra Adams', group: 'Group 1', avatar: srcs[1] },
          {id:2, name: 'Ali Connors', group: 'Group 1', avatar: srcs[2] },
          {id:3, name: 'Trevor Hansen', group: 'Group 1', avatar: srcs[3] },
          {id:1, name: 'Tucker Smith', group: 'Group 1', avatar: srcs[2] },
     
          {id:4, name: 'Britta Holt', group: 'Group 2', avatar: srcs[4] },
          {id:5, name: 'Jane Smith ', group: 'Group 2', avatar: srcs[5] },
          {id:6, name: 'John Smith', group: 'Group 2', avatar: srcs[1] },
          {id:7, name: 'Sandra Williams', group: 'Group 2', avatar: srcs[3] }
        ],
        title: "Work departments ",
        sub:'creation.',
        btnTitle:'Save now',
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
            text: "Work Team (Name)",
            align: "left",
            sortable: false,
            value: "name"
          },
          { text: "Department", value: "calories" },
          { text: "Members", value: "fat" },
          { text: "In Charge", value: "carbs" },

          { text: "Actions", value: "name", sortable: false }
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
        }
          }
     
  },

  computed: {
    formTitle() {
      return this.editedIndex === -1 ? "New Team" : "Edit Team";
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

     remove (item) {
        const index = this.friends.indexOf(item.id)
        if (index >= 0) this.friends.splice(index, 1)
      },

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
      this.desserts = [
        {
          name: "Diseno Movil",
          calories: 159,
          fat: 6.0,
          carbs: 24
        },
        {
          name: "Testers Axon ",
          calories: 237,
          fat: 9.0,
          carbs: 37
        },
        {
          name: "Innovacion EPM",
          calories: 262,
          fat: 16.0,
          carbs: 23
        },
        {
          name: "Ventas Axon",
          calories: 305,
          fat: 3.7,
          carbs: 67
        },
        {
          name: "Comercial",
          calories: 356,
          fat: 16.0,
          carbs: 49
        }
      ];
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

      if(this.teamForm.members.length > 0){
         this.isUpdating=true;

      this.teamForm
            .post("/saveTeam")
            .then(({ data }) => {
              toastr.success("Done!", "New team has appeared!.");

              this.loadContacts();
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

     

    },

    newTeam() {
      $("#teamModal").modal("show");
      this.sub= 'creation.'
      this.btnTitle='Save now'
      this.btnIcon='save'

      this.teamForm.reset();

    },

    editTeam(team){
      $("#teamModal").modal("show");
      this.sub= 'editing.'
      this.btnTitle='Update now'
      this.btnIcon='update'
    }
  }, // end methods

  mounted() {
    this.loadContacts();
    this.getTeams()
  }
};
</script>
