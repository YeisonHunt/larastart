<template>
  <div style="min-height:80vh;">
    <div :class="{'container-fluid':mobile, 'container':large}" v-if="puedoCompartir">
      <!--begin::Modal-->
      <div
        class="modal fade"
        id="userCreationModal"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="modalTitle">Editing user permissions!</h5>
              <button
                type="button"
                id="closeBtnModal"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              ></button>
            </div>
            <div class="modal-body">
              <form
                class="kt-form"
                @submit.prevent="updatePermissionPerId"
                @keydown="up.onKeydown($event)"
              >
                <div class="kt-portlet__body">
                  <div class="form-group form-group-last">
                    <div class="alert alert-secondary" role="alert">
                      <div class="alert-icon">
                        <i class="flaticon-share kt-font-brand" id="iconBrand"></i>
                      </div>
                      <div
                        class="alert-text"
                        id="modalSubtitle"
                      >Share an idea could help her becomes a reality.</div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input
                      v-model="up.email"
                      :class="{'is-invalid': up.errors.has('email')}"
                      id="priva"
                      type="text"
                      class="form-control"
                      name="priva"
                      aria-describedby="email"
                      disabled
                    >
                    <has-error :form="up" field="email"></has-error>
                  </div>

                  <div class="form-group">
                    <div class="kt-radio-inline">
                      <label class="kt-radio">
                        <input
                          type="radio"
                          value="can view"
                          name="privacy"
                          v-model="up.valor"
                          :checked="up.valor=='can view'"
                          @change="changePrivacy"
                        > Watch
                        <span></span>
                      </label>
                      <label class="kt-radio">
                        <input
                          type="radio"
                          value="can view-edit"
                          name="privacy"
                          @change="changePrivacy"
                          :checked="up.valor=='can view'"
                          v-model="up.valor"
                        > Watch & Edit
                        <span></span>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="kt-portlet__foot float-right">
                  <div class="kt-form__actions">
                    <button
                      type="submit"
                      :disabled="up.busy"
                      id="modalBtn"
                      class="btn btn-primary"
                    >Update Permissions</button>
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

      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="kt-portlet">
            <div class="kt-portlet__head">
              <div class="kt-portlet__head-label">
                <button @click="$router.go(-1)" class="btn btn-light btn-elevate-hover btn-pill">
                  <i class="fa fa-arrow-left"></i> Go back
                </button> &nbsp; &nbsp;
                <h3 class="kt-portlet__head-title">
                  Innovation Privacy
                  <br>
                </h3>
              </div>
            </div>
            <div class="kt-portlet__body">
              <!--begin::Form-->
              <form class="kt-form">
                <div class="form-group">
                  <label>
                    Idea title:
                    <b>{{ idea.title }}</b>
                  </label>

                  <br>Current privacy
                  <hr>
                  <div class="kt-radio-inline">
                    <label class="kt-radio" :class="{'kt-radio--disabled':idea.privacy=='public'}">
                      <input
                        type="radio"
                        value="me"
                        name="privacy"
                        v-model="idea.privacy"
                        :disabled="idea.privacy=='public'"
                        @change="changePrivacy"
                      > Just for me
                      <span></span>
                    </label>
                    <label class="kt-radio kt-radio--bold kt-radio--brand">
                      <input
                        type="radio"
                        value="public"
                        name="privacy"
                        @change="changePrivacy"
                        v-model="idea.privacy"
                      > Public
                      <span></span>
                    </label>
                  </div>
                  <span class="form-text text-muted">
                    Sharing is the first step in making an idea come true.
                    <br>Note: Make an idea public isn't reversible.
                  </span>
                </div>
              </form>

              <form
                class="kt-form"
                @submit.prevent="addUserPermission()"
                @keydown="newPer.onKeydown($event)"
              >
                <div class="form-group">
                  <label>Collaborators</label>

                  <span class="form-text text-muted">Adding people helps to validate your idea.</span>
                </div>

                <div class="row">
                  <div class="col-lg-5 col-md-5 col-sm-12">
                    <div class="form-group">
                      <label>e-mail</label>
                      <input
                        type="email"
                        class="form-control"
                        aria-describedby="emailHelp"
                        placeholder="collaborator@mail.com"
                        v-model="newPer.email"
                        required
                      >
                    </div>
                  </div>
                  <div class="col-lg-5 col-md-5 col-sm-12">
                    <div class="form-group">
                      <label>Permissions</label>

                      <div class="kt-radio-inline mt-2">
                        <label class="kt-radio">
                          <input
                            type="radio"
                            name="privacy"
                            value="watch"
                            v-model="newPer.permissions"
                          > Watch
                          <span></span>
                        </label>
                        <label class="kt-radio">
                          <input
                            type="radio"
                            name="privacy"
                            value="watch-edit"
                            v-model="newPer.permissions"
                          > Watch & Edit
                          <span></span>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-12">
                    <button
                      type="submit"
                      class="mdl-button mdl-js-button mdl-button--fab mt-3 mdl-js-ripple-effect"
                    >
                      <i class="material-icons">add</i>
                    </button>
                  </div>
                </div>
              </form>

              <hr>
              <table
                class="table table-hover table-dark"
                v-if="othersPermissions.length>0"
                style=" table-layout:fixed;"
              >
                <thead>
                  <tr>
                    <th scope="col">E-mail</th>
                    <th scope="col">Permissions</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(per, key ) in listaPermisos" :key="othersPermissions.id">

                    

                    <td  >{{per.email}}</td>
                    <td>
                      <div class="kt-radio-inline mt-2" v-if="per.permission_type=='can view'">
                        <label class="kt-radio kt-radio--disabled">
                          <input type="radio" checked disabled name="privi"> Watch
                          <span></span>
                        </label>
                        <label class="kt-radio kt-radio--disabled">
                          <input type="radio" disabled name="privi"> Watch & Edit
                          <span></span>
                        </label>
                      </div>

                      <div class="kt-radio-inline mt-2" v-else>
                        <label class="kt-radio kt-radio--disabled">
                          <input type="radio" disabled :name="'privi'+per.id"> Watch
                          <span></span>
                        </label>
                        <label class="kt-radio kt-radio--disabled">
                          <input type="radio" checked disabled :name="'privi'+per.id"> Watch & Edit
                          <span></span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <a href="javascript:void(0);" @click="openModal(per)">
                        <i class="flaticon2-settings bigIcons hoverWhite">
                          <span></span>
                        </i>
                      </a>

                      <a href="javascript:void(0);" @click="deletePermissionsUser(per.id)">
                        <i class="flaticon-delete bigIcons hoverWhite">
                          <span></span>
                        </i>
                      </a>
                    </td>


                  </tr>
                </tbody>
              </table>

              <!--end::Form-->
            </div>
          </div>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-12"></div>
      </div>

      <div class="row"></div>
    </div>

    <div class="row" v-else>
      <div class="col-4"></div>

      <div class="col-4">
        <router-link to="/innovations" class="btn btn-primary">Go back to innovations</router-link>
      </div>

      <div class="col-4"></div>

      <div class="col-12 mt-5">
        <center>
          <h4
            style=" margin-left:auto;
                    margin-right:auto;
                    display:block; color:white;"
          >Sorry, it seems you don't have permission to edit this idea.</h4>
        </center>

        <img
          height="80%"
          width="80%"
          class="mt-5 fadeImg"
          :src="baseUrl +'img/forbidden.svg'"
          alt
          style="text-align:center; margin-left:10%;"
        >
      </div>
    </div>
  </div>
</template>


<style>
.whiteHover:hover {
  color: white;
  -webkit-box-shadow: 15px 15px 15px 15px #fff;
  box-shadow: 15px 15px 15px 15px #fff;
  border: 1px solid white !important;
}
</style>


<script>
export default {
  data() {
    return {
      selected: "first",
      options: [
        { text: "Watch", value: "first" },
        { text: "Watch & Edit", value: "second" }
      ],
      id: this.$route.params.id,
      permissions: {},
      idea: {},
      user: window.user,
      othersPermissions: {},
      listPermissions: {
        pers: []
      },
      baseUrl: window.baseUrl,

      newPer: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        email: "",
        permissions: "watch"
      }),

      ideaForm: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        privacy: ""
      }),

      deletePermision: new Form({
        id_user: "",
        id_idea: this.$route.params.id
      }),

      updatePermision: new Form({
        id_user: "",
        id_idea: this.$route.params.id
      }),

      up: new Form({
        id: "",
        valor: "",
        email: ""
      })
    };
  },

  computed: {

    listaPermisos: function(){

       return this.othersPermissions.filter((per)=>{

        if(per.email==this.user.email){
          return false;
        }else {
          return true;
        }
      } );
    },


    puedoCompartir: function() {
      if (this.idea.created_by == this.user.id) {
        return true;
      } else {
        return false;
      }
    },

    mobile: function() {
      if (this.$mq == "sm") {
        return true;
      } else {
        return false;
      }
    },

    large: function() {
      if (this.$mq == "md" || this.$mq == "lg") {
        return true;
      } else {
        return false;
      }
    }
  },

  methods: {
    openModal(per) {
      this.up.id = per.permissionId;
      this.up.valor = per.permission_type;
      this.up.email = per.email;
      $("#userCreationModal").modal("show");
    },

    updatePermissionPerId() {
      //this.up.id = permiso.permissionId;
      //this.up.valor= permiso.permission_type;

      this.$Progress.start();

      this.up
        .post("/updatePermissionPerId")
        .then(response => {
          if (response.data.msg == "User not registered on Asakaa.") {
            toastr.error("Oops!", "User not registered on Asakaa yet.");
          } else {
            toastr.success("Keep sharing", "Permission updated successfully!.");

            this.up.id = "";
            this.up.valor = "";
            $("#userCreationModal").modal("hide");
            this.loadIdeaAndPermissions();
          }
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    changePrivacyUser(idPermiso, idUsuario, pType) {
      //alert(idPermiso);
      if (pType == "view") {
        if ($("#" + idUsuario + "view1").is(":checked")) {
          console.log("Puede ver" + idPermiso);

          this.updatePermissionPerId(idPermiso, "can view");
        } else if ($("#" + idUsuario + "viewedit1").is(":checked")) {
          console.log("puede editar" + idPermiso);

          this.updatePermissionPerId(idPermiso, "can view-edit");
        } else {
        }
      } else {
        if ($("#" + idUsuario + "view2").is(":checked")) {
          console.log("Puede ver2" + idPermiso);

          this.updatePermissionPerId(idPermiso, "can view");
        } else if ($("#" + idUsuario + "viewedit2").is(":checked")) {
          console.log("puede editar2" + idPermiso);
          this.updatePermissionPerId(idPermiso, "can view-edit");
        } else {
        }
      }
    },

    addUserPermission() {
      this.$Progress.start();

      this.newPer
        .post("/addUserPermission")
        .then(response => {
          if (response.data.msg == "User not registered on Asakaa.") {
            toastr.error("Oops!", "User not registered on Asakaa yet.");
          } else {
            toastr.success("Keep sharing", "Permission added successfully!.");
            this.loadIdeaAndPermissions();
          }
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    updateUserPermission() {
      this.$Progress.start();

      this.newPer
        .post("/updateUserPermission")
        .then(response => {
          toastr.success("Keep sharing", "Permission updated successfully!.");
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    loadIdeaAndPermissions() {
      axios
        .get("/getInnovation/" + this.id)
        .then(response => {
          this.idea = response.data.idea;
          this.permissions = response.data.permissions;
          this.ideaForm.privacy = response.data.idea.privacy;
          this.othersPermissions = response.data.othersPermissions;

          //console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
    },

    changePrivacy() {
      if (this.idea.privacy == "public") {
        Swal.fire({
          title: "Are you sure?",
          text: "The idea will remain public forever.",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#3085d6",
          cancelButtonColor: "#d33",
          confirmButtonText: "Yes, I wanna share it with the world!"
        }).then(result => {
          if (result.value) {
            //send the request
            this.ideaForm.privacy = this.idea.privacy;

            this.ideaForm
              .post("/updateIdeaPrivacy")
              .then(({ data }) => {
                toastr.success(
                  "Done!",
                  "The idea has been shared with humanity."
                );

                this.loadIdeaAndPermissions();
              })
              .catch(() => {
                toastr.error("Oops!", "Something went wrong.");
              });
          } else {
            this.idea.privacy = "me";
          }
        }); //end swal
      } else {
      }
    },

    deletePermissionsUser(idUser) {
      Swal.fire({
        title: "Are you sure?",
        text: "The ipermissions will be gone.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, Delete permissions."
      }).then(result => {
        if (result.value) {
          this.deletePermision.id_user = idUser;

          this.deletePermision
            .post("/deletePermissionsUser")
            .then(({ data }) => {
              toastr.success("Done!", "Permissions deleted.");

              this.deletePermision.user_id = "";

              this.loadIdeaAndPermissions();
            })
            .catch(() => {
              toastr.error("Oops!", "Something went wrong.");
            });
        } else {
          this.idea.privacy = "me";
        }
      }); //end swal
    }
  }, // end methods

  mounted() {
    this.loadIdeaAndPermissions();
  }
};
</script>

