<template>
  <div class="hole" style="min-height:80vh;">
    <div class="container-fluid">
      <div class="row">

        <div class="col-lg-1 pt-3">
          
            <v-btn fab  small color="grey lighten-5" @click="$router.go(-1)">
            <v-icon dark>arrow_back</v-icon>
          </v-btn>
        </div>

        <div class="col-lg-1 col-sm-6 pt-2">

          
          <h2 class="kt-portlet__head-title">Usuarios empresariales</h2>
          <p>&nbsp; {{users.length}} Total</p>
        </div>

        <div class="col-lg-6 col-sm-12 form-row">
         

          <div class="col-lg-3 col-sm-6 mt-2">
            <!-- <sui-dropdown
              text="Order by"
              placeholder
              selection
              :options="options"
              v-model="current"
              class="form-control letter"
            />-->
          </div>

           <div class="col-sm-12 col-lg-6 mt-2">
            <div style="padding-top:5px !important;">
              <vs-input
                icon="search"
                class="letraGrande"
                label-placeholder="Search by name"
                v-model="searchInput"
              />
            </div>
          </div>

          <div class="col-lg-3 col-sm-6 mt-2">
    
             <div class="form-group">
              <label for="exampleFormControlSelect1">Filtrar</label>
              <select class="form-control" id="exampleFormControlSelect1" v-model="typeFilter">
                <option value="Everyone">Todos(as)</option>
                <option value="Collegues">Colegas</option>
                <option value="Partners">Compañeros</option>
                <option value="Employee">Empleados</option>
                <option value="Other">Otros</option>
              </select>
            </div>


          </div>
        </div>

        

        <div class="col-lg-4 col-sm-6 mt-2">
          <div class="ml-5 " style="margin-top:20px;">
            <div class="kt-portlet__head-wrapper align-middle" style="padding-top:5px !important;">

                     <v-btn color="#673AB7" @click="$router.push({name:'create-contact'});"   dark>
                      <v-icon left>add</v-icon>
                    Nuevo usuario</v-btn>


            </div>
          </div>
        </div>
      </div>

      <br>

      
      <!-- end 2nd row -->

      <!-- new Users table -->

      
              <div class="row">
                <div class="col-12">
                    <v-toolbar flat color="#ECEFF1">
                    <v-toolbar-title>Usuarios</v-toolbar-title>
                    <v-spacer></v-spacer>
                    <v-text-field
                      v-model="search"
                      append-icon="search"
                      label="Buscar usuarios por nombre o correo..."
                      single-line
                      hide-details
                    ></v-text-field>
                   
                  </v-toolbar>
                  <v-data-table
                    :headers="headers"
                    :items="visibleUsers"
                    class="elevation-1"
                     :search="search"
                    >
                    <template v-slot:items="props">
                      <td>{{ props.item.firstName }}</td>
                
                      <td class="text-xs-left"><img
                          alt="image"
                          :src="props.item.avatar"
                          class="rounded-circle"
                          width="50"
                          height="50"
                          data-toggle="tooltip"
                          title
                          data-original-title="Hariono Yusup"
                        ></td>
                      <td class="text-xs-left">{{ props.item.email }}</td>
                      <td class="text-xs-left"> Active</td>
                      <td class="text-xs-left">{{ props.item.type }}</td>
                      <td class="text-xs-left">{{props.item.birthdate | cumple}}</td>
                      <td class="text-xs-left">{{props.item.company | uppercaseFirst}}</td>

                       <td class="justify-center layout px-0">

                        <v-icon class="mr-2"
                         @click="showContactModal(props.item)"
                        >
                          remove_red_eye
                        </v-icon>

                        <v-icon
                          
                          
                          class="mr-2"
                          @click="editar(props.item.id)"
                        >
                          edit
                        </v-icon>
                        <v-icon
                          
                           @click="deleteContact(props.item.id)"
                        >
                          delete
                        </v-icon>
                      </td>


                    </template>
                  </v-data-table>
                </div>
              </div>

      <!-- end new users table -->




    </div>

    <!-- Modal see user -->

    <div
      class="modal fade"
      id="contactModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      style="display: none; "
      aria-hidden="true"
      
    >
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="kt-portlet  "  >
              <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                  <span class="kt-portlet__head-icon">
                    <i class="flaticon-notes"></i>
                  </span>
                  <h3
                    class="kt-portlet__head-title" style="color:gray !important;"
                  >{{user.firstName + ' ' + user.lastName | uppercaseFirst}}</h3>
                </div>
                <div class="kt-portlet__head-toolbar">
                  <div class="kt-portlet__head-actions">
                    <a href="#" class="btn btn-light btn-pill btn-sm btn-icon btn-icon-md" @click="closeModal">
                      <i class="flaticon-close"></i>
                    </a>
                  </div>
                </div>
              </div>
              <div class="kt-portlet__body">
                <div class="row">
                  <div class="col-6">
                    <v-avatar :tile="tile" :size="100" color="grey lighten-4">
                      <img :src="user.avatar" alt="avatar">
                    </v-avatar>
                  </div>
                  <div class="col-6"></div>
                </div>
                <div class="pt-3">
                  <h5>Información de contacto</h5>
                </div>
                <div class="row mt-3">
                  <div class="col-6">
                    <h6>Email: {{user.email}}</h6>
                  </div>

                  <div class="col-6">
                    <h6>Group: {{user.type}}</h6>
                  </div>
                </div>

                <div class="mt-2"></div>
                <div class="row">
                  <div class="col-6">
                    <h6>Birthday: {{user.birthdate | cumple}}</h6>
                  </div>

                  <div class="col-6">
                    <h6>Company: {{user.company}}</h6>
                  </div>
                </div>
                <div class="mt-2"></div>
                <div class="row">
                  <div class="col-6">
                    <h6>Country: {{user.country}}</h6>
                  </div>

                  <div class="col-6">
                    <h6>City: {{user.city}}</h6>
                  </div>
                </div>
                <div class="mt-2"></div>

                <div class="row">
                  <div class="col-6">
                    <h6>Phone: {{user.phone}}</h6>
                  </div>

                  <div class="col-6"></div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<style>


h3,
.letter,
table {
  font-family: "Open Sans", "sans-serif" !important;
}

.vs-table,
.header-table,
.con-input-search,
.vs-table--search-input {
  font-size: 1.2rem !important;
}

.vs-pagination--ul {
  margin-top: 10px;
}

.table-hover > tbody > tr:hover {
  background-color: #e8eaf6;
  color: #424242;
}

.con-select .vs-select {
  width: 30% !important;
}
</style>

<script>
export default {
  name: "SelectionExample",
  data() {
    return {
       search:'',
        headers: [
          {
            text: 'Nombre completo',
            align: 'left',
            value: 'name'
          },
          { text: 'Avatar', value: 'avatar',sortable: false, },
          { text: 'Correo', value: 'email' },
          { text: 'Estado', value: 'state' },
           { text: 'Tipo', value: 'type' },
          { text: 'Cumpleaños', value: 'birthdate' },
          { text: 'Empresa', value: 'company' },
          { text: 'Acciones', value: 'name', sortable: false },
        
        ],
      tile: false,
      user: {
        avatar: "",
        firstName: "",
        lastName: "",
        email: "",
        type: "",
        birthdate: "",
        company: "",
        country: "",
        city: "",
        phone: ""
      },

      contact: {},
      typeFilter: "Everyone",
      typeFilterOptions: [
        { text: "Everyone", value: "Everyone" },
        { text: "Friends", value: "Friends" },
        { text: "Colleagues", value: "Colleagues" },
        { text: "Partners", value: "Partners" },
        { text: "Employee", value: "Employee" },
        { text: "Other", value: "Other" }
      ],
      searchInput: "",
      current: null,
      selected: [],
      nextId: 11,
      currentPage: 1,
      pageSize: 10,
      optionsPageSize: [
        {
          text: "10",
          value: 10
        },
        {
          text: "20",
          value: 20
        },
        {
          text: "50",
          value: 50
        }
      ],
      users: [],
      contacts: [],
      options: [
        {
          text: "Male",
          value: 1
        },
        {
          text: "Female",
          value: 2
        }
      ],

      menuHeader: {
        icon: "",
        content: "Header"
      },
      searchInMenu: {
        icon: "search",
        iconPosition: "left"
      },
      selectedValue: null,
      options2: [
        {
          key: "Important",
          text: "Important",
          value: "Important",
          label: { color: "red", empty: true, circular: true }
        },
        {
          key: "Announcement",
          text: "Announcement",
          value: "Announcement",
          label: { color: "blue", empty: true, circular: true }
        },
        {
          key: "Cannot Fix",
          text: "Cannot Fix",
          value: "Cannot Fix",
          label: { color: "black", empty: true, circular: true }
        },
        {
          key: "News",
          text: "News",
          value: "News",
          label: { color: "purple", empty: true, circular: true }
        },
        {
          key: "Enhancement",
          text: "Enhancement",
          value: "Enhancement",
          label: { color: "orange", empty: true, circular: true }
        },
        {
          key: "Change Declined",
          text: "Change Declined",
          value: "Change Declined",
          label: { empty: true, circular: true }
        },
        {
          key: "Off Topic",
          text: "Off Topic",
          value: "Off Topic",
          label: { color: "yellow", empty: true, circular: true }
        },
        {
          key: "Interesting",
          text: "Interesting",
          value: "Interesting",
          label: { color: "pink", empty: true, circular: true }
        },
        {
          key: "Discussion",
          text: "Discussion",
          value: "Discussion",
          label: { color: "green", empty: true, circular: true }
        }
      ],

      form: new Form({
        id: ""
      })
    };
  },

  computed: {

   

    currentPageMod: function() {
      return this.currentPage + 1;
    },

    totalPages: function() {
      if (this.users.length % this.pageSize == 0) {
        return this.users.length / this.pageSize;
      } else {
        return Math.floor(this.users.length / this.pageSize) + 1;
      }
    },

    visibleUsers: function() {
      if (this.searchInput == "" && this.typeFilter == "Everyone") {
        this.users = this.contacts;

        return this.users.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );
      } else if (this.searchInput == "" && this.typeFilter != "Everyone") {
        this.users = this.users.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );

        return this.users.filter(user => {
          if (user.type == this.typeFilter) {
            return true;
          } else {
            return false;
          }
        });
      } else if (this.searchInput != "" && this.typeFilter != "Everyone") {
        this.users = this.users.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );

        this.users = this.users.filter(user => {
          if (user.type == this.typeFilter) {
            return true;
          } else {
            return false;
          }
        });

        return this.users.filter(user => {
          return (user.firstName + user.lastName)
            .toLowerCase()
            .match(this.searchInput.toLowerCase());
        });
      } else {
        return this.users.filter(user => {
          return (user.firstName + user.lastName)
            .toLowerCase()
            .match(this.searchInput.toLowerCase());
        });
      }
    } // end visible users
  },

  methods: {


    editar(id){

      this.$router.push({name:'edit-contact',params:{id:id}})
    },

    closeModal(){
      $("#contactModal").modal("hide");
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

    showContactModal(user) {
      $("#contactModal").modal("show");

      this.user.avatar = user.avatar;
      this.user.firstName = user.firstName;
      this.user.lastName = user.lastName;
      this.user.email = user.email;
      this.user.type = user.type;
      this.user.birthdate = user.birthdate;
      this.user.company = user.company;
      this.user.city = user.city;
      this.user.phone = user.phone;
      this.user.country = user.country;
    },

    deleteContact(id) {

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete the contact."
      }).then(result => {
        if (result.value) {
          //send the request

          this.form.id = id;
          this.form
            .delete("/deleteContact/" + id)
            .then(({ data }) => {
              toastr.success("Done!", "The contact has been deleted.");

              this.loadContacts();
            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
            });
        }
      });


      
    }
  },

  mounted() {
    this.loadContacts();

    jQuery(document).ready(function() {
      $("#logMenu").click(function() {
        //$('#logMenuDrop').toggleClass('show');
      });

      $("#app").click(function() {
        //$('#logMenuDrop').removeClass('show');
      });
    });
  }
};
</script>


