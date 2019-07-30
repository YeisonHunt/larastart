<template>
  <div>
    <v-app id="inspire">
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
        <v-btn color="blue" @click="snackbar = false">Cerrar</v-btn>
      </v-snackbar>

      <v-layout justify-center>
        <v-dialog v-model="dialog" max-width="400">
          <v-card :hover="true" :elevation="10">
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
                color="blue darken-1"
                dark
                @click="copyPorta(linkToIdea)"
              >Copiar al portapapeles</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
      </v-layout>

      <v-navigation-drawer v-model="drawer" :clipped="$vuetify.breakpoint.lgAndUp" app>
        <v-list dense>
          <template v-for="item in items">
            <v-layout v-if="item.heading" :key="item.heading" align-center>
              <v-flex xs6>
                <v-subheader v-if="item.heading">{{ item.heading }}</v-subheader>
              </v-flex>
              <v-flex xs6 class="text-center">
                <a href="#!" class="body-2 black--text">EDIT</a>
              </v-flex>
            </v-layout>
            <v-list-group
              v-else-if="item.children"
              :key="item.text"
              v-model="category"
              :prepend-icon="item.model ? item.icon : item['icon-alt']"
              append-icon
            >
              <template v-slot:activator>
                <v-list-item>
                  <v-list-item-content>
                    <v-list-item-title>{{ item.text }}</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>
              </template>
              <v-list-item
                v-for="(child, i) in item.children"
                :key="i"
                @click="checkAction(child.icon)"
              >
                <v-list-item-action v-if="child.icon">
                  <v-icon>{{ child.icon }}</v-icon>
                </v-list-item-action>
                <v-list-item-content>
                  <v-list-item-title>{{ child.text }}</v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </v-list-group>
            <v-list-item v-else :key="item.text" @click="checkAction(item.icon)">
              <v-list-item-action>
                <v-icon>{{ item.icon }}</v-icon>
              </v-list-item-action>
              <v-list-item-content>
                <v-list-item-title>{{ item.text }}</v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </template>
        </v-list>
      </v-navigation-drawer>

      <v-app-bar
        :clipped-left="$vuetify.breakpoint.lgAndUp"
        app
        color="indigo "
        dark
        src="https://cdn.vuetifyjs.com/images/backgrounds/bg-2.jpg"
      >
        <v-toolbar-title style="width: 400px" class="ml-0 pl-4">
          <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
          <span class="hidden-sm-and-down">Asakaa Innova | Ideas Globales</span>
        </v-toolbar-title>

        <v-spacer></v-spacer>

        <v-btn icon large style="margin-right:10px;" @click="goAdmin">
          <v-avatar size="32px" item>
            <v-img
              src="http://www.guardproject.com/landing/html/content/agency3/images/white_logo.png"
              alt="Asakaa Innova"
            ></v-img>
          </v-avatar>
        </v-btn>
      </v-app-bar>
      <v-content>
        <v-container fluid>
          <v-layout v-if="!idea">
            <v-flex>
              <v-img :src="baseUrl+'images/empty.svg'" height="400" contain></v-img>
              <br />
              <br />
              <v-banner two-line>
                <v-avatar slot="icon" color="deep-purple accent-4" size="40">
                  <v-icon icon="mdi-lock" color="white">search</v-icon>
                </v-avatar>Lo sentimos, al parecer la idea presente aún no es creada.
                <b>{{searchQuery}}</b>
                . Aunque podrías ser el primero en hacerlo. Qué dices?
                <template
                  v-slot:actions
                >
                  <v-btn text color="deep-purple accent-4">Crear innovación ahora</v-btn>
                </template>
              </v-banner>
            </v-flex>
          </v-layout>

          <v-layout row v-else>
            <v-flex lg1 pb-3 ml-3 mt-1>
              <v-btn class="mx-2" fab dark small color="primary" :to="{name:'public-ideas'}">
                <v-icon>arrow_back</v-icon>
              </v-btn>
            </v-flex>

            <v-flex lg7 mt-3 text-xs-center>
              <h3>Idea actual</h3>
            </v-flex>
            <v-flex lg3 mt-2 text-xs-right hide-sm-and-down>
              <h3>Tendencias</h3>
            </v-flex>
          </v-layout>

          <!-- Here goes the content -->

          <v-layout row wrap>
            <v-flex xs12 sm12 pa-2 md8 lg8 xl8>
              <v-card class="mx-auto" hover>
                <v-list-item>
                  <v-avatar size="32px" item>
                    <v-img :src="idea.img" alt="Asakaa Innova"></v-img>
                  </v-avatar>
                  <v-list-item-content style="margin-left:15px;">
                    <v-list-item-title class="headline">{{idea.title | uppercaseFirst}}</v-list-item-title>
                    <v-list-item-subtitle style="margin-left:2px;">por {{idea.author}}</v-list-item-subtitle>
                  </v-list-item-content>
                </v-list-item>

                <v-img :src=" idea.img" height="194"></v-img>

                <v-card-text>
                  <div style="font-size:1.1rem;">
                    <b>Descripción corta:</b>
                    {{idea.description}}
                    <br />
                    <br />
                    <b>Categoría:</b>
                    {{idea.category | toCategory}}
                  </div>
                </v-card-text>

                <v-card-actions>
                  <v-btn icon @click="goIdea(idea.id)">
                    <v-icon>mdi-heart</v-icon>
                  </v-btn>
                  {{likes}}
                  <v-btn icon @click.stop.prevent="vote(idea)">
                    <v-icon>mdi-share-variant</v-icon>
                  </v-btn>
                  <v-spacer></v-spacer>

                  <v-btn class="text-center" icon @click="show = !show">
                    <v-icon>{{ show ? 'keyboard_arrow_down' : 'keyboard_arrow_up' }}</v-icon>
                  </v-btn>
                </v-card-actions>

                <v-expand-transition>
                  <div v-show="show">
                    <v-card-text>
                      <div v-html="idea.body"></div>
                    </v-card-text>
                  </div>
                </v-expand-transition>

                <div id="comentariosTemp">
                  <v-card-text style="text-align:center;">
                    <v-btn @click="goIdea(idea.id)">Leer comentarios</v-btn>
                  </v-card-text>
                </div>

                <div class="comentarios" v-if="1==2">
                  <v-card-text>
                    <v-container>
                      <h2 style="text-align:center;">5 Comentarios</h2>
                      <br />
                      <br />

                      <v-layout row>
                        <v-flex lg1>
                          <v-avatar
                            :tile="false"
                            :size="'52'"
                            style="margin-top:10px;"
                            color="grey lighten-4"
                          >
                            <img
                              src="https://demos.creative-tim.com/vue-material-kit-pro/img/card-profile4-square.1a164917.jpg"
                              alt="avatar"
                            />
                          </v-avatar>
                        </v-flex>

                        <v-flex lg11>
                          <div style="margin-left:10px;" color="grey lighten-4">
                            <b>Lorena Bustamante</b>
                            <i>Hace 7 minutos</i>
                            <br />
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?</p>
                          </div>
                        </v-flex>
                      </v-layout>

                      <v-layout row>
                        <v-flex text-xs-right>
                          <v-btn text color="red" class="white--text">
                            <v-icon left dark>favorite</v-icon>243
                          </v-btn>

                          <v-btn text color="green darken-1" class="white--text text-capitalize">
                            <v-icon left dark>reply</v-icon>Responder
                          </v-btn>
                        </v-flex>
                      </v-layout>
                      <br />

                      <v-layout row pl-5>
                        <v-flex lg1>
                          <v-avatar
                            :tile="false"
                            :size="'52'"
                            style="margin-top:10px;"
                            color="grey lighten-4"
                          >
                            <img
                              src="https://demos.creative-tim.com/vue-material-kit-pro/img/card-profile4-square.1a164917.jpg"
                              alt="avatar"
                            />
                          </v-avatar>
                        </v-flex>

                        <v-flex lg9>
                          <div style="margin-left:10px;" color="grey lighten-4">
                            <b>Lorena Bustamante</b>
                            <i>Hace 7 minutos</i>
                            <br />
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?</p>
                          </div>
                        </v-flex>
                      </v-layout>

                      <v-layout row pl-5>
                        <v-flex text-xs-right>
                          <v-btn text color="grey darken-1" class="white--text">
                            <v-icon left dark>favorite</v-icon>243
                          </v-btn>

                          <v-btn text color="green darken-1" class="white--text text-capitalize">
                            <v-icon left dark>reply</v-icon>Responder
                          </v-btn>
                        </v-flex>
                      </v-layout>
                    </v-container>
                  </v-card-text>
                </div>
              </v-card>
            </v-flex>

            <v-flex md3 lg4 xl4 class="hidden-sm-and-down" pl-2  >
              <v-container>
                <v-layout row>
                  <v-flex v-for="f in featured" :key="f.id" pb-4>
                    <v-card max-width="340" class="mx-auto" hover>
                      <v-list-item>
                        <v-avatar size="32px" item>
                          <v-img :src=" f.img" alt="Asakaa Innova" mr-3></v-img>
                        </v-avatar>
                        <v-list-item-content style="margin-left:15px;">
                          <v-list-item-title class="headline">{{f.title | uppercaseFirst}}</v-list-item-title>
                          <v-list-item-subtitle style="margin-left:2px;">por Yesid Anacona</v-list-item-subtitle>
                        </v-list-item-content>
                      </v-list-item>

                      <v-img :src=" f.img" height="194"></v-img>

                      <v-card-text>
                        <h4>{{f.description | largeText}}</h4>

                        <h4>
                          <b>Categoría:</b>
                          {{f.category | toCategory}}
                        </h4>
                      </v-card-text>

                      <v-card-actions>
                        <v-btn
                          :to="{name:'view-idea',params:{id:f.id}}"
                          text
                          color="deep-purple accent-4"
                        >Leer completa</v-btn>

                        <v-spacer></v-spacer>
                        <v-btn icon @click="goIdea(f.id)">
                          <v-icon>mdi-heart</v-icon>
                        </v-btn>
                        <v-btn icon @click.stop.prevent="vote(idea)">
                          <v-icon>mdi-share-variant</v-icon>
                        </v-btn>
                      </v-card-actions>
                    </v-card>
                  </v-flex>
                </v-layout>
              </v-container>
            </v-flex>
          </v-layout>

          <!-- Here finishes the content -->
          <br />

          <v-card height="30">
            <v-footer absolute class="font-weight-medium">
              <v-flex text-center xs12>
                {{ new Date().getFullYear() }} —
                <strong>Asakaa | Innova</strong>
              </v-flex>
            </v-footer>
          </v-card>
        </v-container>
      </v-content>
      <v-btn bottom color="pink" dark fab fixed right @click="checkAction('add')">
        <v-icon>add</v-icon>
      </v-btn>
    </v-app>
  </div>
</template>


<style>
.lightbox {
  box-shadow: 0 0 20px inset rgba(0, 0, 0, 0.2);
  background-image: linear-gradient(
    to top,
    rgba(0, 0, 0, 0.6) 0%,
    transparent 102px
  );
}

@import url("https://fonts.googleapis.com/css?family=Montserrat:600,700&display=swap");

h1,
h2,
h3,
h4,
h5 {
  font-family: "Montserrat", sans-serif !important;
  font-weight: 600 !important;
}
</style>


<script>
export default {
  props: {
    source: String
  },
  data: () => ({
    category: "business",
    select: "all",
    items2: [
      { category: "Todas", val: "all" },
      { category: "Oportunidades de negocio", val: "businessandconsumer" },
      { category: "Sostenibilidad", val: "sustainability" },
      { category: "Vida y Salud", val: "lifeandhealth" },
      { category: "Arte y Cultura", val: "artandculture" },
      { category: "Hogar y Mascotas", val: "homeandpets" },
      { category: "Tecnología", val: "scienceandtechnology" },
      { category: "Turismo y Viajes", val: "tourismandtravel" },
      { category: "Transporte", val: "transport" },
      { category: "Comida", val: "food" },
      { category: "Deportes", val: "sportsandentertainment" },
      { category: "Política", val: "politicsandsociety" }
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
    drawer: null,
    ideaImg: " ",
    show: true,
    items: [
      { icon: "add", text: "Crear nueva idea" },
      { icon: "contacts", text: "Todas las ideas" },

      

      { icon: "home", text: "Inicio" },
      { icon: "link", text: "Asakaa Project" },
      { icon: "monetization_on", text: "Precios" },
      { icon: "arrow_forward", text: "Iniciar sesión" },
      { icon: "person_add", text: "Registrarme" }
    ],
    publicIdeas: [],
    publicIdeasNoFiltered: [],
    featured: [],
    idea: [],
    searchQuery: "",
    pageSize: 8,
    id: "",
    likes: 0
  }),

  created() {
    this.id = this.$route.params.id;
  },

  computed: {
    bannerImg: function() {
      if (this.select == "all") {
        return "https://cdn.pixabay.com/photo/2016/03/09/16/47/woman-1246844_960_720.jpg";
      } else if (this.select == "sustainability") {
        return "https://cdn.pixabay.com/photo/2016/04/26/15/01/holiday-1354563_960_720.jpg";
      } else if (this.select == "businessandconsumer") {
        return "https://cdn.pixabay.com/photo/2015/03/26/09/40/business-suit-690048_960_720.jpg";
      } else if (this.select == "lifeandhealth") {
        return "https://cdn.pixabay.com/photo/2018/02/06/14/07/dance-3134828_960_720.jpg";
      } else if (this.select == "artandculture") {
        return "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg";
      } else if (this.select == "homeandpets") {
        return "https://cdn.pixabay.com/photo/2016/11/22/19/41/adorable-1850276_960_720.jpg";
      } else if (this.select == "scienceandtechnology") {
        return "https://cdn.pixabay.com/photo/2017/12/10/17/00/robot-3010309_960_720.jpg";
      } else if (this.select == "tourismandtravel") {
        return "https://cdn.pixabay.com/photo/2015/07/11/23/02/plane-841441_960_720.jpg";
      } else if (this.select == "transport") {
        return "https://cdn.pixabay.com/photo/2017/10/27/10/27/subway-2893851_960_720.jpg";
      } else if (this.select == "food") {
        return "https://cdn.pixabay.com/photo/2017/06/29/20/09/mexican-2456038_960_720.jpg";
      } else if (this.select == "sportsandentertainment") {
        return "https://cdn.pixabay.com/photo/2014/07/04/19/15/biker-384178_960_720.jpg";
      } else if (this.select == "politicsandsociety") {
        return "https://cdn-images-1.medium.com/max/1502/1*mBDvKqK7CbHPGVQw4L3IAw.png";
      } else {
        return "https://cdn.pixabay.com/photo/2019/06/25/04/40/light-4297386_960_720.jpg";
      }
    }
  },

  methods: {

    goIdea(idIdea){
      let host = window.baseUrl;
          window.location = host + "innovations/"+idIdea;
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

    goAdmin() {
      let host = window.baseUrl;
      window.location = host + "admin";
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

    getPublicIdea() {
      axios
        .get("/getPublicIdea/" + this.id)
        .then(response => {
          this.idea = response.data.idea;
          this.featured = response.data.featured;
          this.likes = response.data.desired;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },

  mounted() {
    this.getPublicIdea();
  } //end mounted
};
</script>
