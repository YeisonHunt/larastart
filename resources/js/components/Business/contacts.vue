<template>
  <div class="hole" style="min-height:80vh;">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-1 col-sm-6">
          <h3 class="kt-portlet__head-title">Contacts</h3>
          <p>&nbsp; {{users.length}} Total</p>
        </div>

        <div class="col-lg-7 col-sm-12 form-row">
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
            <!-- <sui-dropdown
              text="Order by"
              placeholder
              selection
              :options="options"
              v-model="current"
              class="form-control letter"
            />-->
          </div>

          <div class="col-lg-3 col-sm-6 mt-2">
            <vs-select
              class="selectExample"
              icon="arrow_downward"
              label="Type"
              v-model="typeFilter"
            >
              <vs-select-item
                :key="index"
                :value="item.value"
                :text="item.text"
                v-for="item,index in typeFilterOptions"
              />
            </vs-select>
          </div>
        </div>

        <div class="col-lg-4 col-sm-6 mt-2">
          <div class="ml-5 mt-3">
            <div class="kt-portlet__head-wrapper align-middle" style="padding-top:5px !important;">
              <router-link :to="{name:'create-contact'}">
                <vs-button color="primary" type="line" icon="add">Add new contact</vs-button>
                <!-- <vs-button color="primary" type="gradient" icon="add">Add new contact</vs-button> -->
              </router-link>
            </div>
          </div>
        </div>
      </div>

      <br>

      <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
          <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__body kt-portlet__body--fit">
              <!--begin: Datatable -->
              <div
                class="kt-datatable kt-datatable--default kt-datatable--brand kt-datatable--error kt-datatable--loaded"
                id="ajax_data"
              >
                <table class="table table-hover table-responsive-sm">
                  <thead class="thead-primary">
                    <tr>
                      <th class="letraGrande" style="font-weight: bold;">#</th>
                      <th class="letraGrande" style="font-weight: bold;">Photo</th>
                      <th class="letraGrande" style="font-weight: bold;">Full Name</th>
                      <th class="letraGrande" style="font-weight: bold;">Email</th>
                      <th class="letraGrande" style="font-weight: bold;">Status</th>
                      <th class="letraGrande" style="font-weight: bold;">Type</th>
                      <th class="letraGrande" style="font-weight: bold;">Birthday</th>

                      <th class="letraGrande" style="font-weight: bold;">Company</th>
                      <th class="letraGrande" style="font-weight: bold;">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(user,index) in visibleUsers" :key="visibleUsers.id">
                      <th scope="row">
                        <div class="mt-3 letraGrande">{{user.id}}</div>
                      </th>
                      <td>
                        <img
                          alt="image"
                          :src="user.avatar"
                          class="rounded-circle"
                          width="50"
                          height="50"
                          data-toggle="tooltip"
                          title
                          data-original-title="Hariono Yusup"
                        >
                      </td>
                      <td>
                        <div
                          class="mt-3 letraGrande"
                        >{{user.firstName + ' ' + user.lastName | uppercaseFirst }}</div>
                      </td>

                      <td>
                        <div class="mt-3 letraGrande">{{user.email}}</div>
                      </td>
                      <td>
                        <div class="mt-3 letraGrande">
                          <vs-chip color="primary" class="letraGrande">Active</vs-chip>
                        </div>
                      </td>
                      <td>
                        <div class="mt-3 letraGrande">{{user.type}}</div>
                      </td>
                      <td>
                        <div class="mt-3 letraGrande">{{user.birthdate | cumple}}</div>
                      </td>

                      <td>
                        <div class="mt-3 letraGrande">{{user.company | uppercaseFirst}}</div>
                      </td>
                      <td>
                        <div class>
                          <button
                            data-placement="top"
                            title
                            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect"
                            @click="showContactModal(user)"
                          >
                            <div id="tt1" class="icon material-icons">visibility</div>
                            
                          </button>

                          <router-link
                            :to="{name:'edit-contact',params:{id:user.id}}"
                            data-toggle="kt-tooltip"
                            data-placement="top"
                            title
                            data-original-title="Edit"
                            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect"
                          >
                            <i class="material-icons">edit</i>
                          </router-link>

                          <button
                            @click="deleteContact(user.id)"
                            data-toggle="kt-tooltip"
                            data-placement="top"
                            title
                            data-original-title="Delete"
                            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect"
                          >
                            <i class="material-icons">delete</i>
                          </button>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <!--end: Datatable -->
            </div>
          </div>

          <div class="row">
            <div class="col-lg-6 col-sm-12">
              <vs-select class="selectExample" icon="arrow_downward" v-model="pageSize">
                <vs-select-item
                  :key="index"
                  :value="item.value"
                  :text="item.text"
                  v-for="item,index in optionsPageSize"
                />
              </vs-select>
            </div>

            <div class="col-lg-6 col-sm-12">
              <vs-pagination :total="totalPages" :max="5" v-model="currentPage"></vs-pagination>
            </div>
          </div>
        </div>
      </div>
      <!-- end 2nd row -->
    </div>

    <!-- Modal see user -->

    <div
      class="modal fade"
      id="contactModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      style="display: none;"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="kt-portlet kt-portlet--skin-solid kt-portlet-- kt-bg-brand">
              <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                  <span class="kt-portlet__head-icon">
                    <i class="flaticon-notes"></i>
                  </span>
                  <h3
                    class="kt-portlet__head-title"
                  >{{user.firstName + ' ' + user.lastName | uppercaseFirst}}</h3>
                </div>
                <div class="kt-portlet__head-toolbar">
                  <div class="kt-portlet__head-actions">
                    <a href="#" class="btn btn-outline-light btn-pill btn-sm btn-icon btn-icon-md">
                      <i class="flaticon-edit-1"></i>
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
                  <h5>Contact information</h5>
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

                <div class="row">
                  <div class="col-12">
                    <p style="font-size:0.9em;">Note: Click outside to close this window</p>
                  </div>
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
@import url("https://fonts.googleapis.com/css?family=Open+Sans&display=swap");

body {
  font-family: "Open Sans", "sans-serif" !important;
}

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
      pageSize: 5,
      optionsPageSize: [
        {
          text: "5",
          value: 5
        },
        {
          text: "10",
          value: 10
        },
        {
          text: "25",
          value: 25
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


