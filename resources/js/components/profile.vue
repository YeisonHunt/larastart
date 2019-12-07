<template>
    <div  style="min-height:80vh;">
         <div class="container-fluid" style="margin-right:30px;">

               <div class="row">
                   <div class="col-12">
                       <h6>Perfil de usuario</h6>
                       <br/>
                       <h3>Cambiar configuración de cuenta</h3>

                   </div>
               </div>

               <br/>

               <div class="row">
                   <div class="col-12">
                         <v-tabs
                            
                            color="white"
                            
                            icons-and-text
                            >
                            <v-tabs-slider color="blue"></v-tabs-slider>

                            <v-tab href="#general">
                            GENERAL
                               
                            </v-tab>

                            <v-tab href="#suscripcion">
                                SUSCRIPCIÓN
                                
                            </v-tab>

                            <v-tab href="#notificaciones">
                                NOTIFICACIONES
                                
                            </v-tab>

                             <v-tab href="#seguridad">
                                SEGURIDAD
                              
                            </v-tab>

                            <v-tab-item
                            
                                :value="'general'"
                            >
                                <v-card flat>
                                <v-card-text>
                               
                                <div class="col-lg-3 col-sm-12 col-xl-3">
                                    <div class="card">
                                    <div class="card-body">
                                        Puntos: {{puntos}}
                                    </div>
                                    </div>
                                </div>

                                 <div class="col-lg-9 col-sm-12 col-xl-3">
                                    
                                </div>
                                
                              

                                </v-card-text>
                                </v-card>
                            </v-tab-item>

                                <v-tab-item
                            
                                :value="'suscripcion'"
                            >
                                <v-card flat>
                                <v-card-text>

                                En proceso...

                                </v-card-text>
                                </v-card>
                            </v-tab-item>

                                <v-tab-item
                            
                                :value="'notificaciones'"
                            >
                                <v-card flat>
                                <v-card-text>

                                En proceso...

                                </v-card-text>
                                </v-card>
                            </v-tab-item>

                               <v-tab-item
                            
                                :value="'seguridad'"
                            >
                                <v-card flat>
                                <v-card-text>

                                En proceso...

                                </v-card-text>
                                </v-card>
                            </v-tab-item>


                            </v-tabs>
                   </div>
               </div>
             </div>   
    </div>
</template>

<script>
    export default {
        data() {
            return {
                puntos: {}
            }
        },

        computed: {
            total() {
               

            }
        },
        methods: {
            getPuntos() {
                 axios
                    .post("/getPuntos")
                    .then(response => {
                 
                    this.puntos = response.data.puntos
                    

                 
                    })
                    .catch(error => {
                    console.log(error);
                    });
            }
        },

        mounted () {
            this.getPuntos()
        },
    }
</script>

<style >

</style>