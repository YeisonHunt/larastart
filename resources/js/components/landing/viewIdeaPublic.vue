<template>
  <div class="hole">
    <v-container fluid>

    <v-layout row>

        <v-flex lg1 pb-3 >
            <v-btn  color="blue" @click="$router.go(-1)" flat><v-icon>arrow_back</v-icon>Back</v-btn>
        </v-flex>

        <v-flex lg7 mt-2 text-xs-center>
           <h5>Idea Actual</h5>
        </v-flex>
        <v-flex lg3 mt-2 text-xs-right hide-sm-and-down>
           <h5>Innovaciones populares</h5>
        </v-flex>
    </v-layout>

      <v-layout>
        <v-flex lg8 xs12>
          <v-card>
            <v-img :src="idea.img" height="200px"></v-img>

            <v-card-title primary-title>
              <div style="width:100%;">
                <v-layout row>
                  <v-flex lg-7>
                    <div class="headline text-capitalize">{{idea.title }}</div>
                  </v-flex>

                  <v-flex lg5 text-xs-right>
                    <v-btn icon>
                      <v-icon>favorite</v-icon>
                    </v-btn>
                    <v-btn icon>
                      <v-icon>bookmark</v-icon>
                    </v-btn>
                    <v-btn icon>
                      <v-icon>share</v-icon>
                    </v-btn>
                  </v-flex>
                </v-layout>
              </div>
            </v-card-title>

            <v-container fluid>
              <br>
              <div>
                <h5 style="color:#757575;">{{idea.description}}</h5>
              </div>

              <div v-html="idea.body"></div>
              <br>

              <v-divider></v-divider>

              <br>

              <div class="author">
                <v-layout>
                  <v-flex>
                    <v-layout column>
                      <v-flex>
                        <v-avatar :tile="false" :size="'52'" color="grey lighten-4">
                          <img
                            src="https://vuetifyjs.com/apple-touch-icon-180x180.png"
                            alt="avatar"
                          >
                        </v-avatar>
                      </v-flex>
                    </v-layout>

                    <v-layout column>
                      <v-flex>
                        <div style="color:#757575;">Yeison Caicedo</div>
                      </v-flex>

                      <v-flex>
                        <div style="color:#757575;">yecaicedo@gmail.com</div>
                      </v-flex>
                    </v-layout>
                  </v-flex>
                  <v-flex text-xs-right>
                    <v-btn color="blue" class="text-capitalize" outline dark>
                      Contact User
                      <v-icon right dark>mail</v-icon>
                    </v-btn>
                  </v-flex>
                </v-layout>
              </div>

              <br>

              <v-divider></v-divider>

              <br>

                <div class="response">
                    <h5 style="text-align:center;">Post your comment</h5> 
                    <br>
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
                            >
                            </v-avatar>
                        </v-flex>

                        <v-flex lg-11>
                            <v-textarea
                            name="input-7-1"
                            label="New comment"
                            value=""
                            
                            height="60px"
                            color="blue"
                            hint="Share feedback improves the idea quality."
                            ></v-textarea>
                            
                        </v-flex>
                </v-layout>

                <v-layout row>
                    <v-flex text-xs-center>
                        <v-btn color="blue" class="text-capitalize text-lg-center text-sm-center" dark >Enviar comentario</v-btn>

                    </v-flex>
                </v-layout>

                </div>

              <br>

              <div class="comentarios">
                <h5 style="text-align:center;">5 Comentarios</h5>
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
                      >
                    </v-avatar>
                  </v-flex>

                  <v-flex lg-11>
                    <div style="margin-left:10px;" color="grey lighten-4">
                      <b>Lorena Bustamante</b>
                      <i>Hace 7 minutos</i>
                      <br>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?</p>
                    </div>
                  </v-flex>
                </v-layout>
                <v-layout row>
                  <v-flex text-xs-right>
                    <v-btn flat color="red" class="white--text">
                      <v-icon left dark>favorite</v-icon>
                        243
                    </v-btn>

                    <v-btn flat color="green darken-1" class="white--text">
                      <v-icon left dark>reply</v-icon>
                        REPLY
                    </v-btn>
                  </v-flex>
                </v-layout>

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
                      >
                    </v-avatar>
                  </v-flex>

                  <v-flex lg-9>
                    <div style="margin-left:10px;" color="grey lighten-4">
                      <b>Lorena Bustamante</b>
                      <i>Hace 7 minutos</i>
                      <br>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis magnam eum aut voluptatem perferendis quod. Quae, dolor. Velit quasi illum itaque accusamus consectetur minima at iusto in corrupti, doloribus deleniti?</p>
                    </div>
                  </v-flex>
                </v-layout>

                <v-layout row pl-5>
                  <v-flex text-xs-right>
                    <v-btn flat color="grey darken-1" class="white--text">
                      <v-icon left dark>favorite</v-icon>
                        243
                    </v-btn>

                    <v-btn flat color="green darken-1" class="white--text">
                      <v-icon left dark>reply</v-icon>
                            REPLY
                    </v-btn>
                  </v-flex>
                </v-layout>
              </div>
            </v-container>
          </v-card>
        </v-flex>

        <v-flex lg4 hidden-sm-and-down pt-2>
         
                <v-container
                    fluid
                    grid-list-lg
                >
                    <v-layout row wrap>
                  
                    <v-flex xs12>

                        <router-link :to="{name:'view-idea',params:{id:2}}"> 
                        <v-card ripple color="purple" class="white--text">
                        <v-layout row>
                            <v-flex xs7>
                                   
                            <v-card-title primary-title>
                                <div>
                                <div class="headline">Mejorar el sistema de ... </div>
                                <div>Ellie Goulding</div>
                                <div>(2019)</div>
                                </div>
                            </v-card-title>
                            </v-flex>
                            <v-flex xs5>
                            <v-img style="margin-right:10px;"
                                src="http://andresraya.com/wp-content/uploads/2015/11/feedback-andresraya.png"
                                height="125px"
                                
                            ></v-img>
                            </v-flex>
                        </v-layout>
                        <v-divider light></v-divider>
                        <v-card-actions class="pa-3">
                            Idea Rating
                            <v-spacer></v-spacer>
                      <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon>star_border</v-icon>
                        </v-card-actions>
                        </v-card>
                        </router-link>
                    </v-flex>

                    <v-flex xs12>
                         <router-link :to="{name:'view-idea',params:{id:2}}">  
                        <v-card  ripple color="cyan darken-2" class="white--text">
                        <v-layout>
                            <v-flex xs5>
                            <v-img style="margin-left:10px;"
                                src="https://is5-ssl.mzstatic.com/image/thumb/Purple123/v4/60/95/57/60955777-ace6-b2aa-b276-af098d92e695/AppIcon-0-1x_U007emarketing-0-0-85-220-0-7.png/246x0w.jpg"
                                height="125px"
                                contain
                            ></v-img>
                            </v-flex>
                            <v-flex xs7>
                            <v-card-title primary-title>
                                <div>
                                <div class="headline">App para gestión de redes</div>
                                <div>EPM</div>
                                <div>(2019)</div>
                                </div>
                            </v-card-title>
                            </v-flex>
                        </v-layout>
                        <v-divider light></v-divider>
                        <v-card-actions class="pa-3">
                            Idea Rating
                             <v-spacer></v-spacer>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon>star_border</v-icon>
                        </v-card-actions>
                        </v-card>
                         </router-link>
                    </v-flex>

                    <v-flex xs12>

                        <router-link :to="{name:'view-idea',params:{id:idea.id}}">
                        <v-card color="blue" ripple class="white--text">
                        <v-layout row>
                            <v-flex xs7>
                            <v-card-title primary-title>
                                <div>
                                <div class="headline">Articulos generador por IA</div>
                                <div>Asakaa Inc</div>
                                <div>(2019)</div>
                                </div>
                            </v-card-title>
                            </v-flex>
                            <v-flex xs5>
                            <v-img
                                src="https://estaticos.muyinteresante.es/uploads/images/article/566560d25bafe8a163dc683a/ia.jpg"
                                height="125px"
                                
                                contain
                                style="margin-right:10px; "
                            ></v-img>
                            </v-flex>
                        </v-layout>
                        <v-divider light></v-divider>
                        <v-card-actions class="pa-3">
                           Idea Rating
                            <v-spacer></v-spacer>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon color="yellow">star</v-icon>
                            <v-icon >star_border</v-icon>
                        </v-card-actions>
                        </v-card>

                        </router-link>
                    </v-flex>
                    </v-layout>
                </v-container>
             
        </v-flex>
      </v-layout>
    </v-container>
  </div>
</template>


<style>
a.button,
a.tp-button,
button,
input[type="submit"],
input[type="reset"],
input[type="button"] {
  padding: 5px !important;
  padding-left: 10px !important;
  padding-right: 10px !important;
  padding-bottom: 10px !important;
}

.router-link-exact-active, .router-link-active {
    text-decoration: none !important;
}

.theme--light.v-card {
    background-color: #fff;
    border-color: #fff;
    color: rgba(0,0,0,0.87);
    display: block !important;
}
</style>


<script>
export default {
  data() {
    return {
      idea: {},
      id: this.$route.params.id
    };
  },

  methods: {
    getPublicIdea() {
      axios
        .get("/getPublicIdea/" + this.id)
        .then(response => {
          this.idea = response.data.idea;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },

  mounted() {
    this.getPublicIdea();
  }
};
</script>

