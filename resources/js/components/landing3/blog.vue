<template>
  <div class="hole">
    <v-app>
      <v-container class="grey lighten-5">
        <v-row no-gutters class="mt-5">
          <v-col lg="8" sm="12" class="pa-2">

            <div class="blog">
              <div class="text-center">
                <h2> ¿Cómo va Latinoamérica en el tema de la Innovación? </h2>
              </div>

              <div class="mt-10">
                <v-img
                  src="https://cdn.pixabay.com/photo/2016/02/19/10/55/light-bulb-1209491_1280.jpg"
                  lazy-src="https://picsum.photos/id/11/10/6"
                  aspect-ratio="3"
                  class="grey lighten-2"
                  style="border-radius:10px;"
                ></v-img>
              </div>

              <div class="mt-5">
                <div class="text-center">
                  <v-icon :color="'#3BCBFF'">calendar_today</v-icon> Septiembre 18, 2019 &nbsp;&nbsp;
                  <v-icon :color="'#3BCBFF'">account_circle</v-icon> Yesid Anacona &nbsp;&nbsp;
                  <v-icon :color="'#3BCBFF'">label</v-icon> innovación, empresas, modernización &nbsp;&nbsp;
                </div>
              </div>

              <div class="mt-10">
                <p class="text-justify" style="font-size:1.1rem;">
                 Es un hecho que la innovación trae buenos resultados, basta con dar un vistazo mundial al crecimiento económico de Corea del sur, Japón e Israel (por cierto en la imagen podemos ver el tamaño de Israel (rosado) comparado con Colombia (azul)), y ver qué tienen en común una alta inversión en Innovación, si esto es un hecho, ¿Porque en Latinoamérica no Innovamos? [...]
                </p>
              </div>

              <div class="mt-10">
                <div class="text-center">
                  <v-btn :to="{name:'blog1'}" rounded dark color="grey">Continuar leyendo</v-btn>
                </div>
              </div>


               <div style="margin-top:50px;">
                   <hr>
               </div>

            </div>

             <div class="blog">
              <div class="text-center">
                <h2>¿Por qué la innovación es importante para las empresas?</h2>
              </div>

              <div class="mt-10">
                <v-img
                  src="https://www.tripsavvy.com/thmb/oOoIxfAquiM7PBa_sDMXNdo_wtk=/2416x1600/filters:fill(auto,1)/how-to-visit-the-googleplex-google-hq-mountain-view-57e2d4515f9b586c3529ba9c.jpg"
                  lazy-src="https://picsum.photos/id/11/10/6"
                  aspect-ratio="3"
                  class="grey lighten-2"
                  style="border-radius:10px;"
                ></v-img>
              </div>

              <div class="mt-5">
                <div class="text-center">
                  <v-icon :color="'#3BCBFF'">calendar_today</v-icon> Septiembre 18, 2019 &nbsp;&nbsp;
                  <v-icon :color="'#3BCBFF'">account_circle</v-icon> Yesid Anacona &nbsp;&nbsp;

                  <v-icon :color="'#3BCBFF'">label</v-icon> innovación, empresas, modernización &nbsp;&nbsp;
                </div>
              </div>

              <div class="mt-10">
                <p class="text-justify" style="font-size:1.1rem;">
                  
                Hoy en día la innovación es demasiado importante como para descartarla en nuestros planes,  se habla en  casi todas las empresas y en perfiles profesionales de muchas personas. Negocios de diferentes tamaños entienden que innovar muchas veces es necesario para poder mejorar y hasta en algunos casos obligatorio para sobrevivir en el mercado. Teniendo esto en cuenta, podemos decir que la  innovación es una de las claves en las estrategias tanto de país, empresa y persona para poder crecer.
                [...]
                </p>
              </div>

              <div class="mt-10">
                <div class="text-center">
                  <v-btn :to="{name:'blog2'}" rounded dark color="grey">Continuar leyendo</v-btn>
                </div>
              </div>


               <div style="margin-top:50px;">
                   <hr>
               </div>

            </div>

        



            

          </v-col>

          <v-col lg="4" sm="12" class="pt-6 pl-10 pb-2    ">


            <v-row class="search pb-5">
                <v-col lg="10" sm="10" md="10">
                    <v-text-field
                    label="Buscar artículos"
                    placeholder="..."
                    outlined
                   clearable
                ></v-text-field>
                </v-col>

                <v-col lg="2" sm="2" md="2">
                     
                <v-btn style="height:55px;" color="primary" >
                    <v-icon>search</v-icon>
                    </v-btn>
                </v-col>


            </v-row>



            <div class="text-center ">
               <h2>Últimos artículos</h2>     
            </div>

            <router-link :to="{name:'blog1'}" class="ultimos mb-5"  style="border: 1px solid #ECEFF1; border-radius:10px;">

                
              <div class="mt-8 pa-2">
                  <div class="text-center">
                        <v-img
                        src="https://cdn.pixabay.com/photo/2016/02/19/10/55/light-bulb-1209491_1280.jpg"
                        lazy-src="https://picsum.photos/id/11/10/6"
                        aspect-ratio="3"
                        class="grey lighten-2"
                        style="border-radius:10px;"
                        min-width="230px"
                        max-height="160px"
                        position="center"
                        ></v-img>
                  </div>
              
              </div>

              <div class="mt-5">
                  <div class="text-center">
                     <h4>¿Cómo va Latinoamérica en el tema de la Innovación?</h4>
                  </div>
              </div>

               <div class="mt-5">
                  <div class="text-center">
                      <v-icon :color="'#3BCBFF'">calendar_today</v-icon> Septiembre 19, 2019 &nbsp;&nbsp;
                    <v-icon :color="'#3BCBFF'">account_circle</v-icon> Yesid Anacona &nbsp;&nbsp;
                  </div>
              </div>

              <div class="mt-10">
                 
              </div>

            </router-link>

               <router-link :to="{name:'blog2'}" class="ultimos mb-5"  style="border: 1px solid #ECEFF1; border-radius:10px;">

                
              <div class="mt-8 pa-2">
                  <div class="text-center">
                        <v-img
                        src="https://www.tripsavvy.com/thmb/oOoIxfAquiM7PBa_sDMXNdo_wtk=/2416x1600/filters:fill(auto,1)/how-to-visit-the-googleplex-google-hq-mountain-view-57e2d4515f9b586c3529ba9c.jpg"
                        lazy-src="https://picsum.photos/id/11/10/6"
                        aspect-ratio="3"
                        class="grey lighten-2"
                        style="border-radius:10px;"
                        min-width="230px"
                        max-height="160px"
                        position="center"
                        ></v-img>
                  </div>
              
              </div>

              <div class="mt-5">
                  <div class="text-center">
                     <h4>¿Por qué la innovación es importante para las empresas?</h4>
                  </div>
              </div>

               <div class="mt-5">
                  <div class="text-center">
                      <v-icon :color="'#3BCBFF'">calendar_today</v-icon> Septiembre 19, 2019 &nbsp;&nbsp;
                    <v-icon :color="'#3BCBFF'">account_circle</v-icon> Yeison Caicedo &nbsp;&nbsp;
                  </div>
              </div>

              <div class="mt-10">
                 
              </div>

               </router-link>


            


            
          </v-col>
        </v-row>
      </v-container>
    </v-app>
  </div>
</template>

<style>

.ultimos {
    transition: box-shadow .1s;
}

.ultimos:hover  {

     box-shadow: 0 0 11px rgba(33,33,33,.2);
     cursor: pointer; 
}
</style>


<script>
export default {
  mounted() {
    document.getElementById("home").style.display = "none";
    document.getElementById("inicioLink").classList.remove("active");
  }
};
</script>
