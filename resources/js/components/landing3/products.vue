<template>
    
    <div class="hole">
        <v-app>

            <v-container fluid>
                <v-layout row>
                    <v-flex lg4 sm12 >
                        <v-card
                        hover
                        ripple
                                :loading="loading"
                                class="mx-auto my-12"
                                max-width="374"
                            >
                                <v-img
                                height="250"
                                src="https://asakaa.com/newDesignFour/landing/ill.svg"
                                ></v-img>

                                <v-card-title>Asakaa.com</v-card-title>
                                <v-card-text>
                                <v-layout align-center>
                                    <v-rating
                                    :value="4.5"
                                    color="amber"
                                    half-increments
                                    dense
                                    size="14"
                                    readonly
                                    ></v-rating>

                                    <div class="grey--text ml-4">4.5 (413)</div>
                                </v-layout>

                                <div class="my-4 subtitle-1 black--text">
                                    $ • Gratis 
                                </div>

                                <div>Plataforma para gestión de proyectos  especializada en productividad y organización de tareas.</div>
                                </v-card-text>

                                <v-divider class="mx-4"></v-divider>

                                <v-card-text>
                                <div class="title text--primary">Funcionalidades</div>
                                <v-chip-group
                                    v-model="selection"
                                    active-class="deep-purple accent-4 white--text"
                                    column
                                >
                                    <v-chip>Gantt</v-chip>
                                    <v-chip>Kanban</v-chip>
                                    <v-chip>Gestión de recursos</v-chip>
                                    <v-chip>Informes de productividad</v-chip>
                                </v-chip-group>
                                </v-card-text>

                                <v-card-actions>
                                <v-btn
                                    color="deep-purple accent-4"
                                    text
                                    @click="reserve"
                                >
                                    Visitar 
                                </v-btn>
                                </v-card-actions>
                            </v-card>
                    </v-flex>
                </v-layout>
            </v-container>
        </v-app>
    </div>

</template>

<style>

</style>


<script>
export default {
 


    methods:{

        reserve(){
            window.location.href = "https://asakaa.com"
        }
    },
 
    mounted(){
        document.getElementById('home').style.display = "none";
        document.getElementById("inicioLink").classList.remove("active");
    }

}
</script>
