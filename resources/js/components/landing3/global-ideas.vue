<template>
    
    <div class="hole">

      
      <v-app>

      
         <v-content>
        <v-container fluid>

            <v-snackbar
            v-model="snackbar"
            :bottom="y === 'bottom'"
            :left="x === 'left'"
            :multi-line="mode === 'multi-line'"
            :right="x === 'right'"
            :timeout="timeout"
            :top="y === 'top'"
            :vertical="mode === 'vertical'"
          >
            {{ text }}
            <v-btn color="#576CFF" @click="snackbar = false">Cerrar</v-btn>
          </v-snackbar>

            <v-layout justify-center>
        <v-dialog v-model="dialog" max-width="400">
          <v-card :hover="true" :elevation="10" :outlined="true"
          
           >
            <v-img :src="ideaImg" aspect-ratio="2.75"></v-img>
            <v-card-title class="headline">Aquí tienes un link para compartir esta genial idea.</v-card-title>

            <v-card-text>
              <input type="hidden" id="linkToA" :value="linkToIdea" />

              <a style="text-decoration:none;" :href="linkToIdea">{{linkToIdea}}</a>
            </v-card-text>

            <v-card-actions>
              <v-spacer></v-spacer>

              <v-btn text small @click="dialog = false">Cancelar</v-btn>

              <v-spacer></v-spacer>

              <v-btn
                color="#576CFF"
                dark
                @click="copyPorta(linkToIdea)"
              >Copiar al portapapeles</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
      </v-layout>

   

          <v-layout row pl-3 pr-3 pt-1 pb-2>

         
            <v-flex>
              <v-img  style=" border-radius:10px;" :aspect-ratio="6" :src="bannerImg">
              <v-layout pa-2 column fill-height class="lightbox white--text">
                <v-spacer></v-spacer>
                <v-flex shrink style="padding:10px; font-size:1.2rem;">
                  <div class="subheading" style="color:white;">Estamos mejorando el mundo con nuevas ideas.</div>
                  <div class="body-1" style="color:white;">Quieres ser parte?</div>
                </v-flex>
              </v-layout>
            </v-img>

            <br>

             
            <v-layout row style="margin-left:10px;">
                <v-flex xs12 sm12 md6 lg6>
                  <v-text-field
                  color="#576CFF"

                    label="Busca alguna innovación de nuestros miles de usuarios"
                    placeholder="Ej: Energía renovable"
                    outlined
                    v-model="searchQuery"
                  ></v-text-field>
              </v-flex>

              <v-flex md1 lg1 class="hidden-sm-and-down">

              </v-flex>


              <v-flex xs12 sm12 md4 lg4 style="margin-right:10px;">
                 <v-select
        
                  v-model="select"
                  :items="items2"
                  item-text="category"
                  item-value="val"
                  label="Filtrar ideas por categoría																			"
                  outline
                  color="#576CFF"
                  append-icon="arrow_drop_down"
                 
                 
                ></v-select>


              </v-flex>

            </v-layout>

            </v-flex>
          </v-layout>




          <v-layout v-if="filteredIdeas.length<=0">
            <v-flex>
              <v-img :src="baseUrl+'images/empty.svg'" height="400" contain></v-img>
              <br />
              <br />
              <v-banner two-line>
                <v-avatar slot="icon" color="deep-purple accent-4" size="40">
                  <v-icon icon="mdi-lock" color="white">search</v-icon>
                </v-avatar>Lo sentimos, al parecer aún no hay ideas con el título
                <b>{{searchQuery}}</b>
                  . Aunque podrías ser el primero en crearla. Qué dices?
                <template v-slot:actions>
                  <v-btn text @click="checkAction('add')" color="deep-purple accent-4">Crear innovación ahora</v-btn>
                </template>
              </v-banner>
            </v-flex>
          </v-layout>

         

          <v-layout row wrap v-else>
            <v-flex xs12 sm12 pa-3 style="padding:10px !important;"  md4 lg4 xl3 v-for="idea in filteredIdeas" :key="idea.id" transition="scroll-y-transition">
              <v-card max-width=""  class="mx-auto" hover>
                <v-list-item>
                  <v-avatar size="32px" item>
                    <v-img :src=" idea.img" alt="Asakaa Innova" mr-3></v-img>
                  </v-avatar>
                  <v-list-item-content style="margin-left:15px;">
                    <v-list-item-title class="headline">{{idea.title | uppercaseFirst}}</v-list-item-title>
                    <v-list-item-subtitle style="margin-left:2px;" v-if="checkUser(idea.author)" >por {{idea.escrita}}</v-list-item-subtitle>
                     <v-list-item-subtitle style="margin-left:2px;" v-else >Anónimo(a)</v-list-item-subtitle>
                  </v-list-item-content>
                </v-list-item>

                <v-img :src=" idea.img" height="194"></v-img>

                <v-card-text>
                 
                 {{idea.description | largeText}}
               
                  <h4> <b>Categoría: </b> {{idea.category | toCategory}}</h4>  
                </v-card-text>

                <v-card-actions>
                  <v-btn :to="{name:'view-idea',params:{id:idea.id}}" text color="deep-purple accent-4">Leer completa</v-btn>
                
                  <v-spacer></v-spacer>
                
                  <v-btn icon @click.stop.prevent="vote(idea)">
                    <v-icon>share</v-icon>
                  </v-btn>
                </v-card-actions>
              </v-card>
            </v-flex>
          </v-layout>

          <br />

          <v-layout row align-center justify-center v-if="filteredIdeas.length>0">
            <v-flex>
              <div class="text-center">
                <v-pagination  color="#576CFF" v-model="currentPage" :length="totalPages" circle></v-pagination>
              </div>
            </v-flex>
          </v-layout>
          <br>
          <br>

        
        </v-container>
      </v-content>

      </v-app>
     
    </div>

</template>

<style>

.lightbox {
    box-shadow: 0 0 20px inset rgba(0, 0, 0, 0.2);
    background-image: linear-gradient(to top, rgba(0, 0, 0, 0.4) 0%, transparent 102px);
  }

</style>






<script>

export default {

  props: {
    source: String
  },
  data: () => ({
     settings: {
        maxScrollbarLength: 60
      },
    category: 'business',
    select: "all",
    items2: [
       {category:"Todas", val:'all'},
     {category:"Oportunidades de negocio", val:'businessandconsumer'},
     {category:"Sostenibilidad", val:'sustainability'},
     {category:"Vida y Salud", val:'lifeandhealth'},
     {category:"Arte y Cultura", val:'artandculture'},
     {category:"Hogar y Mascotas", val:'homeandpets'},
     {category:"Tecnología", val:'scienceandtechnology'},
     {category:"Turismo y Viajes", val:'tourismandtravel'},
     {category:"Transporte", val:'transport'},
     {category:"Comida", val:'food'},
     {category:"Deportes", val:'sportsandentertainment'},
     {category:"Política", val:'politicsandsociety'},
     ],
    value: ["business", "bar", "fizz", "buzz"],
    snackbar: false,
    y: "top",
    x: null,
    mode: "",
    timeout: 5000,
    text: "Link copiado al portapapeles",
    dialog: false,
    linkToIdea: "",
    baseUrl: window.baseUrl,
    currentPage: 1,
    dialog: false,
    drawer: false,
    ideaImg: " ",
    items: [
      { icon: "add", text: "Crear nueva idea" },
      { icon: "contacts", text: "Todas las ideas" },

     /* {
        icon: "keyboard_arrow_up",
        "icon-alt": "keyboard_arrow_down",
        text: "Categorías",

        model: false,
        children: [
          { icon: "business", text: "Oportunidades de Negocio" },
          { icon: "accessibility", text: "Sostenibilidad" },
          { icon: "healing", text: "Vida y salud" },
          { icon: "scatter_plot", text: "Arte y Cultura" },
          { icon: "pets", text: "Hogar y Mascotas" },
          { icon: "devices_other", text: "Tecnología" },
          { icon: "local_airport", text: "Turismo y Viajes" },
          { icon: "directions_car", text: "Transporte" },
          { icon: "fastfood", text: "Comida" },
          { icon: "whatshot", text: "Deportes" }
        ]
      },*/

      { icon: "home", text: "Inicio" },
      { icon: "link", text: "Asakaa Project" },
      { icon: "monetization_on", text: "Precios" },
      { icon: "arrow_forward", text: "Iniciar sesión" },
      { icon: "person_add", text: "Registrarme" }
    ],
    publicIdeas: [],
    publicIdeasNoFiltered:[],
    searchQuery: "",
    pageSize: 8
  }),

  computed: {

    

    bannerImg: function(){

      if(this.select=='all'){

        return 'https://cdn.pixabay.com/photo/2016/03/09/16/47/woman-1246844_960_720.jpg';
      }else if(this.select=='sustainability'){
        return 'https://cdn.pixabay.com/photo/2016/04/26/15/01/holiday-1354563_960_720.jpg';
      }
      else if(this.select=='businessandconsumer'){
        return 'https://cdn.pixabay.com/photo/2015/03/26/09/40/business-suit-690048_960_720.jpg';
      }else if(this.select=='lifeandhealth'){
        return 'https://cdn.pixabay.com/photo/2018/02/06/14/07/dance-3134828_960_720.jpg';
      }else if(this.select=='artandculture'){
        return 'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg';
      }else if(this.select=='homeandpets'){
        return 'https://cdn.pixabay.com/photo/2016/11/22/19/41/adorable-1850276_960_720.jpg';
      }else if(this.select=='scienceandtechnology'){
        return 'https://cdn.pixabay.com/photo/2017/12/10/17/00/robot-3010309_960_720.jpg';
      }else if(this.select=='tourismandtravel'){
        return 'https://cdn.pixabay.com/photo/2015/07/11/23/02/plane-841441_960_720.jpg';
      }else if(this.select=='transport'){
        return 'https://cdn.pixabay.com/photo/2017/10/27/10/27/subway-2893851_960_720.jpg';
      }else if(this.select=='food'){
        return 'https://cdn.pixabay.com/photo/2017/06/29/20/09/mexican-2456038_960_720.jpg';
      }else if(this.select=='sportsandentertainment'){
        return 'https://cdn.pixabay.com/photo/2014/07/04/19/15/biker-384178_960_720.jpg';
      }else if(this.select=='politicsandsociety'){
        return 'https://cdn-images-1.medium.com/max/1502/1*mBDvKqK7CbHPGVQw4L3IAw.png';
      }
      
      
      
      else {
        return 'https://cdn.pixabay.com/photo/2019/06/25/04/40/light-4297386_960_720.jpg';
      }

    },

    filteredIdeas2: function() {
      if (this.searchQuery == "") {
        return this.publicIdeas;
      } else {
        return this.publicIdeas.filter(idea => {
          return idea.title.toLowerCase().match(this.searchQuery.toLowerCase());
        });
      }
    },

    totalPages: function() {
      if (this.publicIdeas.length % this.pageSize == 0) {
        return this.publicIdeas.length / this.pageSize;
      } else {
        return Math.floor(this.publicIdeas.length / this.pageSize) + 1;
      }
    },

    filteredIdeas: function() {
      if (this.searchQuery == "" && this.select == "all") {
        this.publicIdeas = this.publicIdeasNoFiltered;

        return this.publicIdeas.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );
      } else if (this.searchQuery == "" && this.select != "all") {
        this.publicIdeas = this.publicIdeas.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );

        return this.publicIdeas.filter(idea => {
          if (idea.category == this.select) {
            return true;
          } else {
            return false;
          }
        });
      } else if (this.searchQuery != "" && this.select != "all") {
        this.publicIdeas = this.publicIdeas.slice(
          (this.currentPage - 1) * this.pageSize,
          (this.currentPage - 1) * this.pageSize + this.pageSize
        );

        this.publicIdeas = this.publicIdeas.filter(idea => {
          if (idea.category == this.select) {
            return true;
          } else {
            return false;
          }
        });

        return this.publicIdeas.filter(idea => {
          return idea.title.toLowerCase().match(this.searchQuery.toLowerCase());
        });
      } else {
        return this.publicIdeas.filter(idea => {
          return idea.title.toLowerCase().match(this.searchQuery.toLowerCase());
        });
      }
    } // end visible users
  },

  methods: {

    checkUser(privacy){

      if(privacy=='showme'){
        return true;
      }else {
        return false;
      }
    },

    copyPorta(link) {
      this.dialog = false;
      const input = document.createElement("input");
      document.body.appendChild(input);
      input.value = this.linkToIdea;

      // 2) Select the text
      input.focus();
      input.select();

      // 3) Copy text to clipboard
      const isSuccessful = document.execCommand("copy");

      this.snackbar = true;
    },

    vote(idea) {
      this.dialog = true;
      this.linkToIdea = this.baseUrl + "public-ideas/view/" + idea.id;
      this.ideaImg = idea.img;
    },

    goAdmin(){
      
        let host = window.baseUrl;
         window.location = host + "admin";
    },

    goIdea(idIdea){
      let host = window.baseUrl;
          window.location = host + "innovations/"+idIdea;
    },
    checkAction(icon) {
      
      var host = window.baseUrl;
      switch (icon) {
        case "add":
          window.location = host + "ideaCreation";
          break;
        case "home":
          window.location = host;
          break;

        case "link":
          window.location = "https://asakaa.com";
          break;
        case "monetization_on":
          window.location = host + "pricing";
          break;
        case "arrow_forward":
          window.location = host + "login";
          break;
        case "person_add":
          window.location = host + "register";
          break;
        case "contacts":
          window.location = host + "public-ideas";
          break;

        default:
          break;
      }
    },

    getPublicIdeas() {
      axios
        .get("/getPublicIdeas")
        .then(response => {
          this.publicIdeas = response.data.publicIdeas;
          this.publicIdeasNoFiltered= response.data.publicIdeas;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },

  mounted() {
    this.getPublicIdeas();
    document.getElementById('home').style.display = "none";
    document.getElementById("inicioLink").classList.remove("active");
  } 
};
</script>
