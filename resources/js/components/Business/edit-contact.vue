<template>
  <div class="container-fluid" style="min-height:90vh;">
    <div class="row">
      <div class="col-lg-8 col-sm-12">
        <div class="row">
          <div class="col-12">
            <v-card>
              <v-img
                src="https://cdn.pixabay.com/photo/2015/12/22/04/00/edit-1103599_960_720.png"
                aspect-ratio="4.0"
              ></v-img>

              <v-card-title primary-title>
                <div>
                  <h3 class="headline mb-0" style="color:#1867C0;">Editing contact</h3>
                  <div>Editing contacts helps to keep information updated and at hand for any moment.</div>

                  <br>
                  <h5>Contact information</h5>
                </div>

                <form @submit.prevent="createContact" 
                @keydown="contactForm2.onKeydown($event)">
                  <div class="row">
                    <div class="col-lg-8">
                      <div class="mt-4">
                        <div class="form-group">
                          <label style="margin-left:4px;">Contact profile photo</label>
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
                            <label class="custom-file-label" for="customFile">Choose image</label>
                          </div>
                        </div>

                        
                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="mt-4">
                        <v-avatar :tile="false" :size="100" color="grey lighten-4">
                          <img :src="contactForm2.avatar" alt="avatar">
                        </v-avatar>
                      </div>
                    </div>

                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="First Name"
                        :hint="'i.e., Johann Carl'"
                        append-icon="person"
                        required
                        :autofocus="1==1"
                        v-model="contactForm2.firstName"
                      />
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="Last Name"
                        :hint="'i.e., Friedrich Gauss'"
                        append-icon="person_outline"
                        required
                        v-model="contactForm2.lastName"
                      />
                    </div>

                    <div class="col-lg-4 col-sm-6">
                      <v-text-field
                        class="purple-input"
                        label="E-mail"
                        :hint="'i.e., gauss@asakaa.com'"
                        append-icon="email"
                        required
                        type="email"
                        v-model="contactForm2.email"
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
                          label="Contact group"
                          style="margin-top:12px;"
                          prepend-icon="group"
                          required
                          v-model="contactForm2.type"
                        ></v-select>
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="pt-2">
                        <v-dialog
                          ref="dialog"
                          v-model="modal"
                          :return-value.sync="contactForm2.birthdate"
                          lazy
                          full-width
                          width="290px"
                        >
                          <template v-slot:activator="{ on }">
                            <v-text-field
                              v-model="contactForm2.birthdate"
                              label="Born date"
                              append-icon="event"
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

                    <div class="col-lg-4 col-sm-6">
                      <div class="pt-2">
                        <v-text-field
                          class="purple-input"
                          label="Company"
                          append-icon="account_balance"
                          required
                          :hint="'i.e., Google, Mercadolibre, EPM'"
                          style="margin-top:4px;"
                          v-model="contactForm2.company"
                        />
                      </div>
                    </div>

                    <v-spacer></v-spacer>

                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-autocomplete
                          v-model="contactForm2.country"
                          :hint="'Optional'"
                          :items="states"
                          :label="`Country`"
                          persistent-hint
                          prepend-icon="flag"
                        ></v-autocomplete>
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-text-field
                          class="purple-input"
                          label="City"
                          :hint="'Optional'"
                          append-icon="location_city"
                          required
                          type="text"
                          v-model="contactForm2.city"
                        />
                      </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                      <div class="mt-2">
                        <v-text-field
                          class="purple-input"
                          label="Phone"
                          append-icon="phone"
                          required
                          type="text"
                          :hint="'Optional'"
                          v-model="contactForm2.phone"
                        />
                      </div>
                    </div>

                    <div class="col-lg-9">
                      <div class="mt-4">
                        <router-link
                          :to="{name:'contacts'}"
                          class="btn btn-outline-brand btn-elevate btn-pill"
                        >
                          <i class="fa fa-arrow-left mb-2"></i>
                          Go back
                        </router-link>
                      </div>
                    </div>

                    <div class="col-lg-3 col-sm-12">
                      <div class="mt-4">
                        <v-btn color="blue" type="submit" :disabled="contactForm2.busy" style="color:white;">Update contact</v-btn>
                      </div>
                    </div>
                  </div>
                </form>
              </v-card-title>
            </v-card>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-sm-12">
        <div style="background-color:white;">
          <v-avatar slot="offset" class="mx-auto d-block" size="130">
            <img
              src="https://www.infobae.com/new-resizer/BJswSsOlSn1P8jv3W7m2XJubkUE=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/09/24175204/alejandro-magno4.jpg"
              class="mt-2"
            >
          </v-avatar>
          <v-card-text class="text-xs-center">
            <h6 class="category text-gray font-weight-thin mb-3">Conquistador</h6>
            <h4 class="card-title font-weight-light">Alejandro Magno</h4>
            <p
              class="card-description font-weight-light"
            >"Recuerda que de la conducta de cada uno depende el destino de todos."</p>
            <v-btn
              style="color:white;"
              color="blue"
              round
              class="font-weight-light"
              @click="readMore"
            >Read more</v-btn>
          </v-card-text>
        </div>
      </div>
    </div>

    

  </div>
</template>

<style>
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
      modal: false,
      menu: false,
      items: ["Colleagues", "Friends", "Partners", "Other"],
      contactPhoto:
        "https://i0.pngocean.com/files/2/604/62/computer-icons-silhouette-user-profile-silhouette.jpg",
      contactPhotoImg: null,

      firstName:'',

      contactForm2: new Form({

        id:'',  
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
        this.contactForm2.avatar = fileReader.result;
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

      this.contactForm2
        .post("/updateContact")
        .then(({ data }) => {
          this.$router.push({ name: "team-work" });
          toastr.success("Awesome!", "Contact has been updated successfully.");
          this.contactForm2.reset();
        })
        .catch(() => {
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    loadContact(){

        axios
        .get("/getContact/"+this.$route.params.id)
        .then(response => {

          this.contactForm2.id = response.data.contact.id;  
          this.contactForm2.firstName = response.data.contact.firstName;
          this.contactForm2.lastName = response.data.contact.lastName;
          this.contactForm2.email = response.data.contact.email;
          this.contactForm2.type = response.data.contact.type;
          this.contactForm2.avatar = response.data.contact.avatar;
          this.contactForm2.company = response.data.contact.company;
          this.contactForm2.birthdate = response.data.contact.birthdate;
          this.contactForm2.phone = response.data.contact.phone;
          this.contactForm2.city = response.data.contact.city;
          this.contactForm2.country = response.data.contact.country;
        
          
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });
    }

  },// end methods

    mounted(){

        this.loadContact();

    }


};
</script>

