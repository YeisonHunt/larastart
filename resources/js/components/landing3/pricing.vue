<template>
    <keep-alive>
        <div class="hole">
            <v-app>
                <v-container>
                    <v-layout row>
                        <v-flex>
                            <v-card>
                                <v-tabs
                                    v-model="tab"
                                    background-color="#FAFAFA"
                                    centered
                                    icons-and-text
                                >
                                    <v-tabs-slider></v-tabs-slider>

                                    <v-tab href="#mensual">Mensual</v-tab>

                                    <v-tab href="#anual"
                                        >Anual 30% (Descuento)</v-tab
                                    >
                                </v-tabs>

                                <v-tabs-items v-model="tab">
                                    <v-tab-item :value="'mensual'">
                                        <br />
                                        <!-- Inicio de card -->
                                        <v-content>
                                            <v-layout row>
                                                <v-flex lg4 sm12 pa-2>
                                                    <v-card
                                                        hover
                                                        :loading="loading1"
                                                        class="mx-auto"
                                                        max-width="374"
                                                    >
                                                        <v-img
                                                            height="250"
                                                            :src="
                                                                baseUrl +
                                                                    'img/pricing/personal.jpg'
                                                            "
                                                        ></v-img>

                                                        <v-card-title
                                                            >Plan
                                                            Básico</v-card-title
                                                        >
                                                        <v-card-text>
                                                            <v-row
                                                                style="padding-left:8px;"
                                                            >
                                                                <v-rating
                                                                    v-model="
                                                                        rating1
                                                                    "
                                                                    color="#FFB300"
                                                                    half-increments
                                                                    dense
                                                                    size="14"
                                                                    empty-icon="star_border"
                                                                    half-icon="star_half"
                                                                    full-icon="star"
                                                                    readonly
                                                                ></v-rating>
                                                            </v-row>

                                                            <div
                                                                class="my-4 subtitle-1 black--text"
                                                            >
                                                                
                                                                <v-chip
                                                                    >GRATIS </v-chip
                                                                >
                                                            </div>

                                                            <div>
                                                                <v-list dense>
                                                                    <v-subheader
                                                                        >¿ Qué
                                                                        contiene
                                                                        este
                                                                        plan
                                                                        ?</v-subheader
                                                                    >
                                                                    <v-list-item-group
                                                                        color="primary"
                                                                    >
                                                                        <v-list-item
                                                                            v-for="(item,
                                                                            i) in items"
                                                                            :key="
                                                                                i
                                                                            "
                                                                        >
                                                                            <v-list-item-icon>
                                                                                <v-icon
                                                                                    v-text="
                                                                                        item.icon
                                                                                    "
                                                                                ></v-icon>
                                                                            </v-list-item-icon>
                                                                            <v-list-item-content>
                                                                                <v-list-item-title
                                                                                    v-text="
                                                                                        item.text
                                                                                    "
                                                                                ></v-list-item-title>
                                                                            </v-list-item-content>
                                                                        </v-list-item>
                                                                    </v-list-item-group>
                                                                </v-list>
                                                            </div>
                                                        </v-card-text>

                                                        <div
                                                            style="min-height:40px;"
                                                        ></div>
                                                        <v-divider
                                                            class="mx-2"
                                                        ></v-divider>

                                                        <v-card-actions
                                                            class="justify-center"
                                                        >
                                                            <v-btn
                                                                color=" "
                                                                :loading="
                                                                    loading1
                                                                "
                                                                @click="
                                                                    reserve1
                                                                "
                                                            >
                                                                Registrarme
                                                                ahora
                                                            </v-btn>
                                                        </v-card-actions>
                                                        <br />
                                                    </v-card>
                                                </v-flex>

                                                <v-flex lg4 sm12 pa-2>
                                                    <v-card
                                                        hover
                                                        :loading="loading2"
                                                        class="mx-auto"
                                                        max-width="374"
                                                    >
                                                        <v-img
                                                            height="250"
                                                            :src="
                                                                baseUrl +
                                                                    'img/pricing/team.jpg'
                                                            "
                                                        ></v-img>

                                                        <v-card-title
                                                            >Plan
                                                            Equipos</v-card-title
                                                        >
                                                        <v-card-text>
                                                            <v-row
                                                                style="padding-left:8px;"
                                                            >
                                                                <v-rating
                                                                    v-model="
                                                                        rating2
                                                                    "
                                                                    color="#FFB300"
                                                                    half-increments
                                                                    dense
                                                                    size="14"
                                                                    empty-icon="star_border"
                                                                    half-icon="star_half"
                                                                    full-icon="star"
                                                                    readonly
                                                                ></v-rating>
                                                            </v-row>

                                                            <div
                                                                class="my-4 subtitle-1 black--text"
                                                            >
                                                                <div
                                                                    class="mt-1"
                                                                >
                                                                    
                                                                </div>

                                                                <v-chip
                                                                    >GRATIS </v-chip
                                                                >
                                                            </div>

                                                            <div>
                                                                <v-list dense>
                                                                    <v-subheader
                                                                        >¿ Qué
                                                                        contiene
                                                                        este
                                                                        plan
                                                                        ?</v-subheader
                                                                    >
                                                                    <v-list-item-group
                                                                        color="primary"
                                                                    >
                                                                        <v-list-item
                                                                            v-for="(item,
                                                                            i) in itemsTeams"
                                                                            :key="
                                                                                i
                                                                            "
                                                                        >
                                                                            <v-list-item-icon>
                                                                                <v-icon
                                                                                    v-text="
                                                                                        item.icon
                                                                                    "
                                                                                ></v-icon>
                                                                            </v-list-item-icon>
                                                                            <v-list-item-content>
                                                                                <v-list-item-title
                                                                                    v-text="
                                                                                        item.text
                                                                                    "
                                                                                ></v-list-item-title>
                                                                            </v-list-item-content>
                                                                        </v-list-item>
                                                                    </v-list-item-group>
                                                                </v-list>
                                                            </div>
                                                        </v-card-text>

                                                        <v-divider
                                                            class="mx-2"
                                                        ></v-divider>

                                                        <v-card-actions
                                                            class="justify-center"
                                                        >
                                                            <v-btn
                                                                color="deep-purple accent-4 "
                                                                :loading="
                                                                    loading2
                                                                "
                                                                dark
                                                                @click="
                                                                    reserve2
                                                                "
                                                            >
                                                                Registrarme
                                                                ahora
                                                            </v-btn>
                                                        </v-card-actions>
                                                        <br />
                                                    </v-card>
                                                </v-flex>

                                                <v-flex lg4 sm12 pa-2>
                                                    <v-card
                                                        hover
                                                        :loading="loading3"
                                                        class="mx-auto"
                                                        max-width="374"
                                                    >
                                                        <v-img
                                                            height="250"
                                                            :src="
                                                                baseUrl +
                                                                    'img/pricing/company.jpg'
                                                            "
                                                        ></v-img>

                                                        <v-card-title
                                                            >Plan
                                                            Empresarial</v-card-title
                                                        >
                                                        <v-card-text>
                                                            <v-row
                                                                style="padding-left:8px;"
                                                            >
                                                                <v-rating
                                                                    v-model="
                                                                        rating3
                                                                    "
                                                                    color="#FFB300"
                                                                    half-increments
                                                                    dense
                                                                    size="14"
                                                                    empty-icon="star_border"
                                                                    half-icon="star_half"
                                                                    full-icon="star"
                                                                    readonly
                                                                ></v-rating>
                                                            </v-row>

                                                            <div
                                                                class="my-4 subtitle-1 black--text"
                                                            >
                                                                <div
                                                                    class="mt-1"
                                                                >
                                                                    $ 4 USD /
                                                                    USUARIO
                                                                </div>

                                                               
                                                            </div>

                                                            <div>
                                                                <v-list dense>
                                                                    <v-subheader
                                                                        >¿ Qué
                                                                        contiene
                                                                        este
                                                                        plan
                                                                        ?</v-subheader
                                                                    >
                                                                    <v-list-item-group
                                                                        color="primary"
                                                                    >
                                                                        <v-list-item
                                                                            v-for="(item,
                                                                            i) in itemsCorporate"
                                                                            :key="
                                                                                i
                                                                            "
                                                                        >
                                                                            <v-list-item-icon>
                                                                                <v-icon
                                                                                    v-text="
                                                                                        item.icon
                                                                                    "
                                                                                ></v-icon>
                                                                            </v-list-item-icon>
                                                                            <v-list-item-content>
                                                                                <v-list-item-title
                                                                                    v-text="
                                                                                        item.text
                                                                                    "
                                                                                ></v-list-item-title>
                                                                            </v-list-item-content>
                                                                        </v-list-item>
                                                                    </v-list-item-group>
                                                                </v-list>
                                                            </div>
                                                        </v-card-text>

                                                        <v-divider
                                                            class="mx-2"
                                                        ></v-divider>

                                                        <v-card-actions
                                                            class="justify-center "
                                                        >
                                                            <v-btn
                                                                color="#FCD12A"
                                                                :loading="
                                                                    loading3
                                                                "
                                                                dark
                                                                @click="
                                                                    reserve3
                                                                "
                                                            >
                                                                Registrarme
                                                                ahora
                                                            </v-btn>
                                                        </v-card-actions>
                                                        <br />
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
                                                <br />
                                                <br />
                                                <br />
                                                <v-flex align-self="center">
                                                    <div
                                                        style="text-align:center; margin:30px;"
                                                    >
                                                        Nota: los descuentos se
                                                        aplicarán en la sección
                                                        de pagos dependiendo del
                                                        número de usuarios que
                                                        tenga la empresa.
                                                    </div>
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

                    <div style="height:500px;"></div>

                    <v-layout row>
                        <v-flex>
                            <!-- <section id="plans-include" class>
              <div class="container animated" data-animation="slideInUp">
                <div class="row">
                  <div class="col-xs-12 content">
                    <h1>Todos nuestros planes incluyen:</h1>
                  </div>
                </div>
                <div class="row">
                  <div class="advantages">
                    <div class="col-md-5 col-md-offset-4">
                      <v-icon>call</v-icon>
                      <span>
                        Atención 100% personalizada de nuestro
                        <br class="hide-mobile" />equipo de soporte.
                      </span>
                    </div>
                    <div class="col-md-5 col-md-offset-4">
                      <v-icon>settings_applications</v-icon>
                      <span>Funciones personalizadas para su empresa.</span>
                    </div>
                    <div class="col-md-5 col-md-offset-4">
                      <v-icon>emoji_people</v-icon>
                      <span>Gestión de Empleados (ERM).</span>
                    </div>
                  </div>
                </div>
              </div>
            </section>-->

                            <section id="start-now">
                                <div class="container scroll-animations">
                                    <div
                                        class="row align-content-around d-flex justify-content-center"
                                    >
                                        <div
                                            class="col-md-5 animated"
                                            data-animation="slideInLeft"
                                        >
                                            <p>¿No sabes por dónde comenzar?</p>
                                            <h3>
                                                Prueba Innova por 30 días y
                                                decide por tu empresa.
                                            </h3>
                                            <p>
                                                Sin necesidad de tarjeta de
                                                crédito,
                                                <br class="hide-mobile" />puedes
                                                cancelar cuando desees.
                                            </p>
                                        </div>
                                        <div
                                            class="col-md animated"
                                            data-animation="slideInRight"
                                        >
                                            <a
                                                class="pricing-cta"
                                                href="/register"
                                                >Comenzar Prueba Gratis</a
                                            >
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </v-flex>
                    </v-layout>
                </v-container>

                <br />
            </v-app>
        </div>
    </keep-alive>
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
            selection: 1,
            loading1: false,
            loading2: false,
            loading3: false,
            rating1: 4,
            rating2: 4.5,
            rating3: 5,
            c1: true,
            c2: true,
            item: null,
            items: [
                { text: "Hasta 50 Usuarios en modo empresa", icon: "people" },
                { text: "Gestión de ideas", icon: "bubble_chart" },
                { text: "Creación de retos ", icon: "dashboard" },
                { text: "Retroalimentación de ideas ", icon: "feedback" }
            ],
            itemsTeams: [
                { text: "Todos los beneficios del plan básico", icon: "add" },
                { text: "Hasta 150 Usuarios en modo empresa", icon: "people" },
                { text: "Correos de notificación", icon: "email" },
                { text: "Estadísticas ", icon: "trending_up" },
                { text: "Aplicación Móvil ", icon: "smartphone" }
            ],

            itemsCorporate: [
                { text: "Todos los beneficios del plan Equipos", icon: "add" },
                { text: "Usuarios ilimitados en modo empresa", icon: "people" },
                {
                    text: "Permisos personalizados para clientes",
                    icon: "build"
                },

                { text: "Modo de maduración de ideas ", icon: "done" },
                { text: "Aplicación Móvil ", icon: "smartphone" }
            ]
        };
    },

    methods: {
        goRegister() {
            window.location.href = baseUrl + "register";
        },
        reserve1() {
            this.loading1 = true;

            setTimeout(() => {
                this.loading1 = false;

                window.location.href = baseUrl + "register";
            }, 1000);
        },

        reserve2() {
            this.loading2 = true;

            setTimeout(() => {
                this.loading2 = false;

                window.location.href = baseUrl + "register";
            }, 1000);
        },

        reserve3() {
            this.loading3 = true;

            setTimeout(() => {
                this.loading3 = false;
                window.location.href = baseUrl + "register";
            }, 1000);
        }
    },

    mounted() {
        document.getElementById("home").style.display = "none";
        document.getElementById("inicioLink").classList.remove("active");
    }
};
</script>
