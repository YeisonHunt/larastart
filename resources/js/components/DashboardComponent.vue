<template>
  <div class style="min-height:80vh;">
    <div class="hole">
      <div class="container-fluid">

        <div class="row">
          <div class="col-lg-4 col-sm-12">
            <v-card class="mx-auto" color="#26c6da" dark hover height="220">
              <v-card-title>
                <span class="title font-weight-light">Innovaciones</span>
              </v-card-title>

              <v-card-text class="headline font-weight-bold">
                {{iPublicas}} públicas.
                <br />
                {{iPrivadas}} privadas.

                <br />

                {{iEmpresariales}} empresariales.
              </v-card-text>

              <v-card-actions>
                <v-btn
                  style="color:#26c6da;"
                  :to="{name:'ideaList'}"
                  color="white"
                >Ver todas las ideas</v-btn>
              </v-card-actions>
            </v-card>
          </div>
          <div class="col-lg-4 col-sm-12">
            <v-card class="mx-auto" color="#FAB200" dark hover height="220">
              <v-card-title>
                <span class="title font-weight-light">Retos</span>
              </v-card-title>

              <v-card-text class="headline font-weight-bold">
                {{rPublicos}} públicos.
                <br />
                {{rPrivados}} privados.
                 <br />
                 {{rEmpresariales}} empresariales.
              </v-card-text>

              <v-card-actions>
                <v-btn
                  style="color:#FAB200;"
                  :to="{name:'retos'}"
                  color="white"
                >Ver retos</v-btn>
              </v-card-actions>
            </v-card>
          </div>
        <!--  <div class="col-lg-4 col-sm-12">
            <v-card class="mx-auto" color="#A24DDC" dark hover height="220">
              <v-card-title>
                <span class="title font-weight-light">Grupos de trabajo</span>
              </v-card-title>

              <v-card-text class="headline font-weight-bold">
                {{tPublicos}} en todas las empresas.
                <br />
                {{tPrivados}} en mi empresa.
              </v-card-text>

              <v-card-actions>
                <v-btn
                  style="color:#A24DDC;"
                  :to="{name:'work-teams'}"
                  color="white"
                >Ver mis grupos</v-btn>
              </v-card-actions>
            </v-card>
          </div> -->
        </div>

        <br />

       
        <br>

        <div class="row">
         <div class="col-12">
           <div class="row">
             <div class="col-12">
                <h4>Estadísticas generales</h4>

             </div>
             <br>
             <br>
             <div class="col-12">
               <h5>Ideas</h5>
             </div>
           </div>
           <br>
         </div>
          <div class="col-12" style="  overflow: scroll;  background-color:#F7F8FB; box-shadow: 0 5px 5px rgba(0,0,0,0.05), 0 3px 3px rgba(0,0,0,0.05);">
            <table class="table  table-striped table-hover ">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Me gusta</th>
                    <th scope="col">Pulir más</th>
                    <th scope="col">Acción de mejora</th>
                  
                    <th scope="col">Total votos</th>
                        <th scope="col">Comentarios</th>
                   
                    <th scope="col">Vistas</th>
                    
                  </tr>
                </thead>
                <tbody  style="font-size:15px; !important">
                  <tr v-for="(idea,index) in ideas" :key="idea.id">
                    <th scope="row" >{{(idea.id)}}</th>
                    <td>{{idea.title}}</td>
                    <td>{{idea.megusta}}</td>
                    <td>{{idea.pulirmas}}</td>
                    <td>{{idea.accion}}</td>
                   
                    <td>{{ idea.total}}</td>
                     <td>{{idea.comentarios}}</td>
                    <td>{{idea.vistas}}</td>
                    
                  </tr>
               
                </tbody>
              </table>
              
            
          </div>
        </div><!-- Fin table ideas -->


        <br>

        <div class="row">
          <h5>Retos</h5>
          <br>
          <br>
           <div class="col-12" style="background-color:#F7F8FB; box-shadow: 0 5px 5px rgba(0,0,0,0.05), 0 3px 3px rgba(0,0,0,0.05);">
            <table class="table  table-striped table-hover ">
                <thead class="thead-dark">
                  <tr>
                     <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Comentarios</th>
                     <th scope="col">Vistas</th>
                    <th scope="col">Soluciones</th>
          
                  </tr>
                </thead>
                 <tbody  style="font-size:15px; !important">
                  <tr v-for="(reto) in retos" :key="reto.id">
                    <th scope="row" >{{(reto.id)}}</th>
                    <td>{{reto.title}}</td>
               
                    <td>{{reto.comentarios}}</td>
                    <td>{{reto.vistas}}</td>
                    <td>{{reto.soluciones}}</td>
                    
                  </tr>
               
                </tbody>
              </table>
              
            
          </div>
        </div><!-- Fin tabla retos -->

          <br>

        <div class="row">
          <h5>Usuarios</h5>
          <br>
          <br>
           <div class="col-12" style="background-color:#F7F8FB; box-shadow: 0 5px 5px rgba(0,0,0,0.05), 0 3px 3px rgba(0,0,0,0.05);">
            <table class="table  table-striped table-hover  ">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Puntos</th>
                    <th scope="col">Votos</th>
                    <th scope="col">Comentarios</th>
                    <th scope="col">Ingresos</th>
                    <th scope="col">Ideas</th>
                    <th scope="col">Retos</th>
                  </tr>
                </thead>
                    <tbody  style="font-size:15px; !important">
                  <tr v-for="user in usuarios" :key="user.id">
                    <th scope="row" >{{(user.id)}}</th>
                    <td>{{user.nombre}}</td>
                    <td>{{user.puntos}}</td>
                    <td>{{user.votos}}</td>
                    <td>{{user.comentarios}}</td>
                    <td>{{user.ingresos}}</td>
                    <td>{{user.ideas}}</td>
                    <td>{{user.retos}}</td>

               
                 
                    
                  </tr>
               
                </tbody>
              </table>
              
            
          </div>
        </div><!-- Fin tabla usuarios -->




      </div>
    </div>
  </div>
</template>


<style >
.hello {
  width: 100%;
  height: 500px;
}

table tbody { display:block; max-height:450px; overflow-y:scroll; }
table thead, table tbody tr { display:table; width:100%; table-layout:fixed; }

.table-striped > tbody > tr:nth-child(2n+1) > td, .table-striped > tbody > tr:nth-child(2n+1) > th {
   background-color: #eceff1;
}

.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
  background-color: #b3e5fc;
}
</style>


<script>
/*import * as am4core from "@amcharts/amcharts4/core";
import * as am4charts from "@amcharts/amcharts4/charts";
import am4themes_animated from "@amcharts/amcharts4/themes/animated";

am4core.useTheme(am4themes_animated); */

export default {
  name: "HelloWorld",

  data() {
    return {
      innovations: "",
      contacts: "",
      workteams: "",
      iPublicas: '',
      iPrivadas: '',
      rPublicos: '',
      rPrivados: '',
      tPublicos: '',
      tPrivados: '',
      iEmpresariales:'',
      rEmpresariales:'',

      ideas:{},
      retos:{},
      usuarios:{}
    };
  },

  methods: {
    getDataInfo() {

        this.$Progress.start();
      axios
        .get("/getDataInfo")
        .then(response => {

          
          if(response.data.msg=='loginRequired'){
            window.location.href = baseUrl+'login';
              this.$Progress.finish();
          }else {
          this.iPublicas = response.data.iPublicas;
          this.iPrivadas = response.data.iPrivadas;
          this.iEmpresariales = response.data.iEmpresariales;
          this.rPublicos = response.data.rPublicos;
          this.rPrivados = response.data.rPrivados;
          this.rEmpresariales = response.data.rEmpresariales;
          this.tPublicos = response.data.tPublicos;
          this.tPrivados = response.data.tPrivados;

          this.ideas = response.data.ideas;


          this.retos = response.data.retos;
          
          this.usuarios = response.data.usuarios;



            this.$Progress.finish();
          }


        })
        .catch(error => {
          console.log(error);
            this.$Progress.finish();

          toastr.error("Oops!", "Something goes wrong");
        });
    },

    goAsakaa() {
      window.open("https://asakaa.com", "_blank");
    }
  },

  mounted() {
	//this.cargarGrafico()
	
	this.getDataInfo()

    $("#admin").removeClass("menuActivo");
    $("#dashboard").addClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").removeClass("menuActivo");
    $(document).attr("title", "Innova | Dashboard");

  }
};
</script>


