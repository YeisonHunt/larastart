<template>
  <div class="hole">
    <v-app>
      <v-container>
        <v-layout row>
          <v-flex>
            <v-card>
              <v-tabs v-model="tab" background-color="#FAFAFA" centered icons-and-text>
                <v-tabs-slider></v-tabs-slider>

                <v-tab href="#mensual">Mensual</v-tab>

                <v-tab href="#anual">Anual 30% (Descuento)</v-tab>
              </v-tabs>

              <v-tabs-items v-model="tab">
                <v-tab-item :value="'mensual'">
                  <br />
                  <!-- Inicio de card -->
                  <v-content>
                    <v-layout row>
                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="blue-grey lighten-5">
                          <v-card-title>Gratis</v-card-title>
                          <v-card-text class="letraMediana">
                            Hasta
                            <b>50</b> contactos
                            <br />Hasta
                            <b>200</b> ideas
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon> &nbsp; Gratis de por vida
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>

                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="primary" dark>
                          <v-card-title>Básico</v-card-title>
                          <v-card-text class="letraMediana">
                            Hasta
                            <b>150</b> contactos
                            <br />Hasta
                            <b>500</b> ideas
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon>&nbsp; 3 USD / Por Usuario
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>

                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="amber darken-1" dark>
                          <v-card-title>Prefesional Completo</v-card-title>
                          <v-card-text class="letraMediana">
                            Contactos
                            <b>Ilimitados</b>
                            <br />Ideas
                            <b>Ilimitadas</b>
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon> &nbsp;
5 USD / Por Usuario
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>
                    </v-layout>
                  </v-content>

                  <!-- Fin de card -->

                  <br />
                </v-tab-item>

                <v-tab-item :value="'anual'">
                  <br />
                  <!-- Inicio de card -->
                  <v-content>
                    <v-layout row>
                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="blue-grey lighten-5">
                          <v-card-title>Gratis</v-card-title>
                          <v-card-text class="letraMediana">
                            Hasta
                            <b>50</b> contactos
                            <br />Hasta
                            <b>200</b> ideas
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon> &nbsp;Gratis de por vida
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>

                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="primary" dark>
                          <v-card-title>Básico</v-card-title>
                          <v-card-text class="letraMediana">
                            Hasta
                            <b>150</b> contactos
                            <br />Hasta
                            <b>500</b> ideas
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon> &nbsp;2 USD / Por Usuario
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>

                      <v-flex lg4 sm12 pa-2>
                        <v-card class="mx-auto" color="amber darken-1" dark>
                          <v-card-title>Prefesional Completo</v-card-title>
                          <v-card-text class="letraMediana">
                            Contactos
                            <b>Ilimitados</b>
                            <br />Ideas
                            <b>Ilimitadas</b>
                            <br />
                            <br />
                            <v-icon>mdi-square-inc-cash</v-icon> &nbsp;
4 USD / Por Usuario
                          </v-card-text>
                          <v-card-actions>
                            <v-btn text  @click="goRegister">Comenzar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </v-flex>

                      <br />
                      <br />
                      <br />
                      <v-flex align-self="center">
                        <div
                          style="text-align:center;"
                        >Nota: los descuentos se aplicarán en la sección de pagos dependiendo del número de usuarios que tenga la empresa. También se puede colocar un número de usuarios tope en configuraciones de pago.</div>
                      </v-flex>
                    </v-layout>
                  </v-content>

                  <!-- Fin de card -->

                  <br />
                </v-tab-item>
              </v-tabs-items>
            </v-card>
          </v-flex>
        </v-layout>

        <br />

        <v-layout row>
          <v-flex>
            <section id="plans-include" class="">
              <div class="container animated" data-animation="slideInUp">
                <div class="row">
                  <div class="col-xs-12 content">
                    <h1>Todos nuestros planes incluyen:</h1>
                  </div>
                </div>
                <div class="row">
                  <div class="advantages">
                    <div class="col-md-5 col-md-offset-4">
                     <v-icon>mdi-face-agent</v-icon>
                      <span>
                        Atención 100% personalizada de nuestro
                        <br class="hide-mobile" />equipo de soporte
                      </span>
                    </div>
                    <div class="col-md-5 col-md-offset-4">
                      <v-icon>mdi-settings-outline</v-icon>
                      <span>Funciones personalizadas para su empresa</span>
                    </div>
                    <div class="col-md-5 col-md-offset-4">
                     <v-icon>mdi-account-group-outline</v-icon>
                      <span>Gestión de Empleados (ERM)</span>
                    </div>
                  </div>
                </div>
              </div>
            </section>
            <section id="start-now">
              <div class="container scroll-animations">
                <div class="row align-content-around d-flex justify-content-center">
                  <div class="col-md-5 animated" data-animation="slideInLeft">
                    <p>¿No sabes por dónde comenzar?</p>
                    <h3>Prueba Innova Gratis por todo lo que quieras.</h3>
                    <p>
                      Sin necesidad de tarjeta de crédito,
                      <br class="hide-mobile" />puedes cancelar cuando desees.
                    </p>
                  </div>
                  <div class="col-md animated" data-animation="slideInRight">
                    <a
                      
                      class="pricing-cta"
                      href="/register"
                    >Comenzar Prueba Gratis</a>
                  </div>
                </div>
              </div>
            </section>
          </v-flex>
        </v-layout>
      </v-container>
    </v-app>
  </div>
</template>

<style>
.letraMediana {
  font-size: 1.1rem;
}
</style>


<script>
export default {
  data() {
    return {
      tab: null,
      pricingMensual: "",
      pricingAnual: "",
      baseUrl: window.baseUrl,
    };
  },

  methods: {
    goRegister() {
        window.location.href = baseUrl+"register"
    }
  },

  mounted() {
    document.getElementById("home").style.display = "none";
    document.getElementById("inicioLink").classList.remove("active");
  }
};
</script>
