<template>
  <div class="container-fluid" style="min-height:90vh;">
    <div class="hole">

      
    <div class="row">
      <div class="col-lg-12 col-sm-12">
        <div class="row">
          <div class="col-12">
            <v-card>
             

              <v-card-title primary-title>
                <div>
                  <h3 class="headline mb-0" style="color:#1867C0;"> Añadir un nuevo usuario a la compañía</h3>
                  <div style="color:#9b9b9b;"> <b>Las credenciales</b>   para iniciar sesión en Innova serán enviadas al correo que proporcione aquí.</div>

 
                </div>

                <form @submit.prevent="createContact" @keydown="contactForm.onKeydown($event)">
                  <div class="row">
                    <div class="col-lg-8">
                      <div class="mt-4">
                        <div class="form-group">
                          <label style="margin-left:4px;">Foto de perfil</label>
                          <div></div>
                          <div class="custom-file">
                            <input
                              type="file"
                              class="custom-file-input"
                              id="customFile"
                              accept="image/x-png, image/jpeg"
                              @change="onFilePicked"
                              ref="contactPhoto"
                            >
                            <label class="custom-file-label" for="customFile">Escoger imágen en pc...</label>
                          </div>
                        </div>

                        <!--<input style="display:none;" type="file"
                                                              @change="onFilePicked"
                                                              ref="contactPhoto" class="custom-file-input" id="customFile"
                                                                        accept="image/x-png,image/jpeg"
                                                                        >
                                                        <v-btn color="blue"  @click="onPickFile" style="color:white;">
                        Choose contact photo</v-btn>-->
                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="mt-4">
                        <v-avatar :tile="false" :size="100" color="grey lighten-4">
                          <img :src="contactPhoto" alt="avatar">
                        </v-avatar>
                      </div>
                    </div>

                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="Nombres"
                        :hint="'i.e., Johann Carl'"
                        prepend-icon="person"
                        required
                        :autofocus="1==1"
                        v-model="contactForm.firstName"
                      />
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="Apellidos"
                        :hint="'i.e., Friedrich Gauss'"
                        prepend-icon="person_outline"
                        required
                        v-model="contactForm.lastName"
                      />
                    </div>

                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="E-mail"
                        :hint="'i.e., gauss@asakaa.com'"
                        prepend-icon="email"
                        required
                        type="email"
                        v-model="contactForm.email"
                      />
                    </div>

                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <!--    <vs-select
                                                            class="selectExample"
                                                            label="Contact type"
                                                            v-model="typeSelected"
                                                            >
                                                            <vs-select-item :key="index" :value="item.value" 
                                                            :text="item.text" v-for="item,index in typeOptions" />
                        </vs-select>-->

                        <v-select
                          :items="items"
                          label="Grupo "
                          style="margin-top:12px;"
                          prepend-icon="group"
                          required
                          v-model="contactForm.type"
                        ></v-select>
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="pt-2">
                        <v-dialog
                          ref="dialog"
                          v-model="modal"
                          :return-value.sync="contactForm.birthdate"
                          lazy
                          full-width
                          width="290px"
                        >
                          <template v-slot:activator="{ on }">
                            <v-text-field
                              v-model="contactForm.birthdate"
                              label="Fecha de nacimiento"
                              prepend-icon="event"
                              readonly
                              required
                              v-on="on"
                            ></v-text-field>
                          </template>
                          <v-date-picker v-model="date" scrollable>
                            <v-spacer></v-spacer>
                            <v-btn flat color @click="modal = false">Cancel</v-btn>
                            <v-btn flat color="blue" @click="$refs.dialog.save(date)">OK</v-btn>
                          </v-date-picker>
                        </v-dialog>
                      </div>
                    </div>

                  
                    <v-spacer></v-spacer>

                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-autocomplete
                          v-model="contactForm.country"
                         
                          :items="states"
                          :label="`País`"
                          persistent-hint
                          prepend-icon="flag"
                        ></v-autocomplete>
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-text-field
                          class="purple-input"
                          label="Ciudad"
                          :hint="'Campo opcional'"
                          prepend-icon="location_city"
                            
                          type="text"
                          v-model="contactForm.city"
                        />
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-text-field
                          class="purple-input"
                          label="Celular"
                          prepend-icon="phone"
                          
                          type="text"
                          :hint="'Campo opcional'"
                          v-model="contactForm.phone"
                        />
                      </div>
                    </div>

                    <div class="col-lg-9">
                      <div class="mt-4">
                        <router-link
                          :to="{name:'contacts'}"
                          class="btn btn-elevate btn-pill"
                        >
                          <i class="fa fa-arrow-left mb-2"></i>
                          Ir atrás
                        </router-link>
                      </div>
                    </div>

                    <div class="col-lg-3 col-sm-12">
                      <div class="mt-4">
                        <v-btn color="blue" type="submit"  :loading="contactForm.busy"   :disabled="contactForm.busy" style="color:white;">Crear nuevo usuario de compañía</v-btn>
                      </div>
                    </div>
                  </div>
                </form>
              </v-card-title>
            </v-card>
          </div>
        </div>
      </div>

    


    </div>

    
    </div>
  </div>
</template>

<style>

 .custom-loader {
    animation: loader 1s infinite;
    display: flex;
  }
  @-moz-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @-webkit-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @-o-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
.theme--light.v-card {
  background-color: #fff;
  border-color: #fff;
  color: rgba(0, 0, 0, 0.87);
}

.v-card {
  box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2),
    0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
  text-decoration: none;
}

.v-menu__content {
  position: absolute;
  display: inline-block;
  border-radius: 2px;
  max-width: 80%;
  overflow-y: auto;
  overflow-x: hidden;
  contain: content;
  will-change: transform;
  box-shadow: 0px 5px 5px -3px rgba(0, 0, 0, 0.2),
    0px 8px 10px 1px rgba(0, 0, 0, 0.14), 0px 3px 14px 2px rgba(0, 0, 0, 0.12);
}

.menuable__content__active {
  top: 45px !important;
  left: 5px !important;
}
</style>

<script>
export default {
  data() {
    return {
      typeSelected: "Colleagues",
      typeOptions: [
        { text: "Colleagues", value: "Colleagues" },
        { text: "Friends", value: "Friends" },
        { text: "Partners", value: "Partners" },
        { text: "Employee", value: "Employee" },
        { text: "Other", value: "Other" }
      ],
      date: new Date().toISOString().substr(0, 10),
      baseUrl: window.baseUrl,
      modal: false,
      menu: false,
      items: ["Colleagues", "Friends", "Partners", "Other"],
      contactPhoto: window.baseUrl+'images/empty_user.svg',
      contactPhotoImg: null,

      contactForm: new Form({
        firstName: "",
        lastName: "",
        email: "",
        type: "Colleagues",
        avatar:
          "https://i0.pngocean.com/files/2/604/62/computer-icons-silhouette-user-profile-silhouette.jpg",
        company: "",
        birthdate: new Date().toISOString().substr(0, 10),
        friend_id: window.user.id,
        phone: "",
        city: "",
        country: "Colombia"
      }),
      states: [
        "Afghanistan",
        "Albania",
        "Algeria",
        "Andorra",
        "Angola",
        "Anguilla",
        "Antigua &amp; Barbuda",
        "Argentina",
        "Armenia",
        "Aruba",
        "Australia",
        "Austria",
        "Azerbaijan",
        "Bahamas",
        "Bahrain",
        "Bangladesh",
        "Barbados",
        "Belarus",
        "Belgium",
        "Belize",
        "Benin",
        "Bermuda",
        "Bhutan",
        "Bolivia",
        "Bosnia &amp; Herzegovina",
        "Botswana",
        "Brazil",
        "British Virgin Islands",
        "Brunei",
        "Bulgaria",
        "Burkina Faso",
        "Burundi",
        "Cambodia",
        "Cameroon",
        "Canada",
        "Cape Verde",
        "Cayman Islands",
        "Chad",
        "Chile",
        "China",
        "Colombia",
        "Congo",
        "Cook Islands",
        "Costa Rica",
        "Cote D Ivoire",
        "Croatia",
        "Cruise Ship",
        "Cuba",
        "Cyprus",
        "Czech Republic",
        "Denmark",
        "Djibouti",
        "Dominica",
        "Dominican Republic",
        "Ecuador",
        "Egypt",
        "El Salvador",
        "Equatorial Guinea",
        "Estonia",
        "Ethiopia",
        "Falkland Islands",
        "Faroe Islands",
        "Fiji",
        "Finland",
        "France",
        "French Polynesia",
        "French West Indies",
        "Gabon",
        "Gambia",
        "Georgia",
        "Germany",
        "Ghana",
        "Gibraltar",
        "Greece",
        "Greenland",
        "Grenada",
        "Guam",
        "Guatemala",
        "Guernsey",
        "Guinea",
        "Guinea Bissau",
        "Guyana",
        "Haiti",
        "Honduras",
        "Hong Kong",
        "Hungary",
        "Iceland",
        "India",
        "Indonesia",
        "Iran",
        "Iraq",
        "Ireland",
        "Isle of Man",
        "Israel",
        "Italy",
        "Jamaica",
        "Japan",
        "Jersey",
        "Jordan",
        "Kazakhstan",
        "Kenya",
        "Kuwait",
        "Kyrgyz Republic",
        "Laos",
        "Latvia",
        "Lebanon",
        "Lesotho",
        "Liberia",
        "Libya",
        "Liechtenstein",
        "Lithuania",
        "Luxembourg",
        "Macau",
        "Macedonia",
        "Madagascar",
        "Malawi",
        "Malaysia",
        "Maldives",
        "Mali",
        "Malta",
        "Mauritania",
        "Mauritius",
        "Mexico",
        "Moldova",
        "Monaco",
        "Mongolia",
        "Montenegro",
        "Montserrat",
        "Morocco",
        "Mozambique",
        "Namibia",
        "Nepal",
        "Netherlands",
        "Netherlands Antilles",
        "New Caledonia",
        "New Zealand",
        "Nicaragua",
        "Niger",
        "Nigeria",
        "Norway",
        "Oman",
        "Pakistan",
        "Palestine",
        "Panama",
        "Papua New Guinea",
        "Paraguay",
        "Peru",
        "Philippines",
        "Poland",
        "Portugal",
        "Puerto Rico",
        "Qatar",
        "Reunion",
        "Romania",
        "Russia",
        "Rwanda",
        "Saint Pierre &amp; Miquelon",
        "Samoa",
        "San Marino",
        "Satellite",
        "Saudi Arabia",
        "Senegal",
        "Serbia",
        "Seychelles",
        "Sierra Leone",
        "Singapore",
        "Slovakia",
        "Slovenia",
        "South Africa",
        "South Korea",
        "Spain",
        "Sri Lanka",
        "St Kitts &amp; Nevis",
        "St Lucia",
        "St Vincent",
        "St. Lucia",
        "Sudan",
        "Suriname",
        "Swaziland",
        "Sweden",
        "Switzerland",
        "Syria",
        "Taiwan",
        "Tajikistan",
        "Tanzania",
        "Thailand",
        "Timor L'Este",
        "Togo",
        "Tonga",
        "Trinidad &amp; Tobago",
        "Tunisia",
        "Turkey",
        "Turkmenistan",
        "Turks &amp; Caicos",
        "Uganda",
        "Ukraine",
        "United Arab Emirates",
        "United Kingdom",
        "United States",
        "United States Minor Outlying Islands",
        "Uruguay",
        "Uzbekistan",
        "Venezuela",
        "Vietnam",
        "Virgin Islands (US)",
        "Yemen",
        "Zambia",
        "Zimbabwe"
      ]
    };
  },

  methods: {
    onPickFile() {
      this.$refs.contactPhoto.click();
    },

    onFilePicked(event) {
      const files = event.target.files;
      let filename = files[0].name;

      if (filename.lastIndexOf(".") <= 0) {
        return alert("Please add a valid file");
      }

      const fileReader = new FileReader();
      fileReader.addEventListener("load", () => {
        this.contactPhoto = fileReader.result;
        this.contactForm.avatar = fileReader.result;
      });
      fileReader.readAsDataURL(files[0]);
      this.contactPhotoImg = files[0]; // file without any changes

      // esta ultima es la que se envia
    },

    readMore() {
      var win = window.open(
        "https://www.lifeder.com/frases-de-trabajo-en-equipo/",
        "_blank"
      );
      win.focus();
    },

    createContact() {
      this.$Progress.start();
      // Submit the form via a POST request

      this.contactForm
        .post("/saveContact")
        .then(({ data }) => {
          this.$router.push({ name: "contacts" });
          toastr.success("Awesome!", "New contact has been added.");
          this.contactForm.reset();
          console.log(data.msg)
        })
        .catch((error) => {
          toastr.error("Oops!", "Something goes wrong");
          console.log(error)
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    }
  }
};
</script>

