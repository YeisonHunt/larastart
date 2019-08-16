<template>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                     <div class="card-header">
                            <button  @click="goBusiness" type="button" class="btn btn-light"> <svg style="color:#ccc;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <polygon id="Shape" points="0 0 24 0 24 24 0 24"/>
                                <path d="M6.70710678,15.7071068 C6.31658249,16.0976311 5.68341751,16.0976311 5.29289322,15.7071068 C4.90236893,15.3165825 4.90236893,14.6834175 5.29289322,14.2928932 L11.2928932,8.29289322 C11.6714722,7.91431428 12.2810586,7.90106866 12.6757246,8.26284586 L18.6757246,13.7628459 C19.0828436,14.1360383 19.1103465,14.7686056 18.7371541,15.1757246 C18.3639617,15.5828436 17.7313944,15.6103465 17.3242754,15.2371541 L12.0300757,10.3841378 L6.70710678,15.7071068 Z" id="Path-94" fill="#000000" fill-rule="nonzero" transform="translate(12.000003, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-12.000003, -11.999999) "/>
                            </g>
                        </svg> Volver </button>
                        </div>
                    <div class="card-body">
                        <h4>Bienvenido(a) a  creación de retos</h4>
                        <br>
                        <p>A continuación podrá describir la necesidad o el por qué de este reto para encontrarle una solución 
                        entre los grupos que hayas creado o los miembros de Asakaa Innova.
                      </p>

                      <br>

                    <form action="">
                      <div class="row">
                          <div class="col-lg-6 col-sm-12">
                              <div class="input-group mb-3">
                                 
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Título </span>
                                </div>
                                
                                <input type="text" id="tituloReto" class="form-control" placeholder="e.g., Mejorar las ventas en centroamérica" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                          </div>
                        
                          <div class="col-lg-6 col-sm-12">
                              <div class="input-group mb-3">
                                 
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Imágen alusiva</span>
                                </div>
                                
                                <input type="file" id="" class="form-control"  aria-label="Username"          aria-describedby="basic-addon1">
                                </div>
                          </div>
                          <br>

                          <div class="col-lg-12 col-sm-12">
                              <label for="textArea">Descripción detallada</label>
                             <textarea name="" id="textArea" class="form-control"  cols="20" rows="5"></textarea>
                          </div>
                          
                      </div>

                        <br>
                    
                      <div class="row">
                          <div class="col-12">
                             <div class="form-group">
                                <label>Privacidad </label>
                                <div class="kt-radio-inline">
                                    <label class="kt-radio">
                                        <input type="radio" name="radio2" checked> Público
                                        <span></span>
                                    </label>
                                    <label class="kt-radio">
                                        <input type="radio" name="radio2"> Privado
                                        <span></span>
                                    </label>
                                    
                                </div>
                                <span class="form-text text-muted">En el modo público, se podrá dirijir a toda la comunidad de Asakaa Innova para buscar una solución.

                                    <br/>
                                    En el modo privado, podrá escoger los grupos a los cuales quiere dirijir el reto en específico.
                                </span>
                            </div>
                          </div>
                      </div>

                      <br>


                      <div class="row">
                          <div class="col-12">
                                <label class="typo__label">Escoger equipos de trabajo</label>
                                <multiselect v-model="value" tag-placeholder="Add this as new tag" placeholder="Search or add a tag" label="name" track-by="code" :options="options" :multiple="true" :taggable="true" @tag="addTag" :openDirection="'bottom'"  ></multiselect>
                          </div>
                      </div>

                      <br>
                      <br>
                      <br>

                      <div class="row">
                          <div class="col-12">
                              <button class="btn btn-primary">Guardar nuevo reto</button>
                          </div>
                      </div>

                      </form>



                    </div>

                     <div class="card-footer text-muted">
                             Crea un reto para estimular la mente de nuestros usuarios.
                            </div>
                    
                    </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                key: 'bar',
                value: [
                        { name: 'Javascript', code: 'js' }
                    ],
                    options: [
                        { name: 'Vue.js', code: 'vu' },
                        { name: 'Javascript', code: 'js' },
                        { name: 'Open Source', code: 'os' }
                    ],

                asdasd: 'ESTA VISTA YA NO ESSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                
            }
        },

        methods: {
            goBusiness() {
                this.$router.push({name:'business'})
            },
            addTag (newTag) {
            const tag = {
                name: newTag,
                code: newTag.substring(0, 2) + Math.floor((Math.random() * 10000000))
            }
            this.options.push(tag)
            this.value.push(tag)
            },

          
        },// end methods

        mounted () {
            this.getRetos()
        },
    }
</script>

<style lang="css" scoped>

</style>