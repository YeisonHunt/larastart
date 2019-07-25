<template>
  <v-app id="inspire">
    <v-navigation-drawer
      v-model="drawer"
      :clipped="$vuetify.breakpoint.lgAndUp"
      app
    >
      <v-list dense>
        <template v-for="item in items">
          <v-layout
            v-if="item.heading"
            :key="item.heading"
            align-center
          >
            <v-flex xs6>
              <v-subheader v-if="item.heading">
                {{ item.heading }}
              </v-subheader>
            </v-flex>
            <v-flex
              xs6
              class="text-center"
            >
              <a
                href="#!"
                class="body-2 black--text"
              >EDIT</a>
            </v-flex>
          </v-layout>
          <v-list-group
            v-else-if="item.children"
            :key="item.text"
            v-model="item.model"
            :prepend-icon="item.model ? item.icon : item['icon-alt']"
            append-icon=""
          >
            <template v-slot:activator>
              <v-list-item>
                <v-list-item-content>
                  <v-list-item-title>
                    {{ item.text }}
                  </v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </template>
            <v-list-item
              v-for="(child, i) in item.children"
              :key="i"
              @click=""
            >
              <v-list-item-action v-if="child.icon">
                <v-icon>{{ child.icon }}</v-icon>
              </v-list-item-action>
              <v-list-item-content>
                <v-list-item-title>
                  {{ child.text }}
                </v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </v-list-group>
          <v-list-item
            v-else
            :key="item.text"
            @click=""
          >
            <v-list-item-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title>
                {{ item.text }}
              </v-list-item-title>
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
      <v-toolbar-title
        style="width: 400px"
        class="ml-0 pl-4"
      >
        <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
        <span class="hidden-sm-and-down">Asakaa Innova | Ideas Globales</span>
      </v-toolbar-title>
      <v-text-field
        flat
        solo-inverted
        dark
        color="blue darken-1"
        hide-details
        prepend-inner-icon="search"
        placeholder="Buscar ideas ..."
        class="hidden-sm-and-down"
      ></v-text-field>
      <v-spacer></v-spacer>
      <v-btn icon>
        <v-icon>apps</v-icon>
      </v-btn>
      <v-btn icon>
        <v-icon>notifications</v-icon>
      </v-btn>
      <v-btn
        icon
        large
      >
        <v-avatar
          size="32px"
          item
        >
          <v-img
            src="http://www.guardproject.com/landing/html/content/agency3/images/white_logo.png"
            alt="Asakaa Innova"
          >
          </v-img></v-avatar>
      </v-btn>
    </v-app-bar>
    <v-content>
      <v-container
        fluid

      >
     <v-layout row wrap>

        <v-flex  xs12 sm12 pa-3  md4 lg4 xl3  v-for="idea in publicIdeas" :key="idea.id">
            <v-card
                    max-width="400"
                    class="mx-auto"
                >
                    <v-list-item>
                    <v-avatar
          size="32px"
          item
        >
          <v-img
            :src=" idea.img"
            alt="Asakaa Innova"
            mr-3
          >
          </v-img></v-avatar>
                    <v-list-item-content style="margin-left:15px;">
                        <v-list-item-title class="headline">{{idea.title | uppercaseFirst}}</v-list-item-title>
                        <v-list-item-subtitle style="margin-left:2px;">por Yesid Anacona</v-list-item-subtitle>
                    </v-list-item-content>
                    </v-list-item>

                    <v-img
                    :src=" idea.img"
                    height="194"
                    ></v-img>

                    <v-card-text>
                    {{idea.description | largeText}}
                    </v-card-text>

                    <v-card-actions>
                    <v-btn
                        text
                        color="deep-purple accent-4"
                    >
                        Leer
                    </v-btn>
                    <v-btn
                        text
                        color="deep-purple accent-4"
                    >
                        Guardar
                    </v-btn>
                    <v-spacer></v-spacer>
                    <v-btn icon>
                        <v-icon>mdi-heart</v-icon>
                    </v-btn>
                    <v-btn icon>
                        <v-icon>mdi-share-variant</v-icon>
                    </v-btn>
                    </v-card-actions>
                </v-card>
        </v-flex>

     </v-layout>

     <br>

     <v-layout row  align-center
          justify-center>

          <v-flex>
               <div class="text-center">
                    <v-pagination
                    v-model="page"
                    :length="6"
                    circle
                    ></v-pagination>
                </div>
          </v-flex>

     </v-layout>


      </v-container>
    </v-content>
    <v-btn
      bottom
      color="pink"
      dark
      fab
      fixed
      right

    >
      <v-icon>add</v-icon>
    </v-btn>
    <v-dialog
      v-model="dialog"
      width="800px"
    >
      <v-card>
        <v-card-title class="grey darken-2">
          Create contact
        </v-card-title>
        <v-container grid-list-sm>
          <v-layout
            wrap
          >
            <v-flex
              xs12
              align-center
              justify-space-between
            >
              <v-layout align-center>
                <v-avatar
                  size="40px"
                  class="mr-4"
                >
                  <img
                    src="//ssl.gstatic.com/s2/oz/images/sge/grey_silhouette.png"
                    alt=""
                  >
                </v-avatar>
                <v-text-field
                  placeholder="Name"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs6>
              <v-text-field
                prepend-icon="business"
                placeholder="Company"
              ></v-text-field>
            </v-flex>
            <v-flex xs6>
              <v-text-field
                placeholder="Job title"
              ></v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                prepend-icon="mail"
                placeholder="Email"
              ></v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                type="tel"
                prepend-icon="phone"
                placeholder="(000) 000 - 0000"
              ></v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                prepend-icon="notes"
                placeholder="Notes"
              ></v-text-field>
            </v-flex>
          </v-layout>
        </v-container>
        <v-card-actions>
          <v-btn
            text
            color="primary"
          >More</v-btn>
          <v-spacer></v-spacer>
          <v-btn
            text
            color="primary"
            @click="dialog = false"
          >Cancel</v-btn>
          <v-btn
            text
            @click="dialog = false"
          >Save</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-app>
</template>

<script>
  export default {
    props: {
      source: String,
    },
    data: () => ({
      page: 1,
      dialog: false,
      drawer: null,
      items: [
				 { icon: 'add', text: 'Crear nueva idea' },
        { icon: 'contacts', text: 'Ideas Populares' },

        {
          icon: 'keyboard_arrow_up',
          'icon-alt': 'keyboard_arrow_down',
          text: 'Categorías',
          model: false,
          children: [
						{ icon: 'business', text: 'Oportunidades de Negocio' },
            { icon: 'accessibility', text: 'Sostenibilidad' },
						{ icon: 'healing', text: 'Vida y salud' },
						{ icon: 'scatter_plot', text: 'Arte y Cultura' },
						{ icon: 'pets', text: 'Hogar y Mascotas' },
						{ icon: 'devices_other', text: 'Tecnología' },
						{ icon: 'local_airport', text: 'Turismo y Viajes' },
						{ icon: 'directions_car', text: 'Transporte' },
						{ icon: 'fastfood', text: 'Comida' },
						{ icon: 'whatshot', text: 'Deportes' },
          ],
        },

        { icon: 'home', text: 'Inicio' },
        { icon: 'link', text: 'Asakaa Project' },
        { icon: 'monetization_on', text: 'Precios' },
        { icon: 'arrow_forward', text: 'Iniciar sesión' },
        { icon: 'person_add', text: 'Registrarme' },
      ],
			publicIdeas:{},
    }),

		methods: {

			getPublicIdeas(){
				 axios.get('/getPublicIdeas')
						 .then((response) => {

							 this.publicIdeas = response.data.publicIdeas

						 })
						 .catch(function (error) {
						 console.log(error);
						 });
	 }

		},

		mounted() {

	 		this.getPublicIdeas();


 		},//end mounted
  }
</script>
