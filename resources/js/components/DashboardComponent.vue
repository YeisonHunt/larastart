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
                <v-btn style="color:#FAB200;" :to="{name:'retos'}" color="white">Ver retos</v-btn>
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
          </div>-->
        </div>

        <br />

        <br />


        <div v-if="userType=='admin'">

      

        <!-- Fin table ideas -->

        <br />
              <div class="row">
                <div class="col-12">

                  <h4>Estadísticas empresariales</h4>
                  <br>

                  
                    <v-toolbar flat color="#CFD8DC">
                    <v-toolbar-title>Ideas</v-toolbar-title>
                   
                  </v-toolbar>
                  <v-data-table
                    :headers="headersIdeas"
                    :items="ideas"
                    class="elevation-1"
                    >
                    <template v-slot:items="props">
                      <td>{{ props.item.title }}</td>
                
                      <td class="text-xs-left">{{ props.item.megusta }}</td>
                      <td class="text-xs-left">{{ props.item.pulirmas }}</td>
                      <td class="text-xs-left">{{ props.item.accion }}</td>
                      <td class="text-xs-left">{{ props.item.total }}</td>
                      <td class="text-xs-left">{{ props.item.comentarios }}</td>
                      <td class="text-xs-left">{{ props.item.vistas }}</td>
                  
                    </template>
                  </v-data-table>
                </div>
              </div>
    

        <!-- Fin tabla retos -->

        <br />

            <div class="row">
                <div class="col-12">
                  <v-toolbar flat color="#CFD8DC">
                    <v-toolbar-title>Retos</v-toolbar-title>
                   
                  </v-toolbar>
                  <v-data-table
                    :headers="headersRetos"
                    :items="retos"
                    class="elevation-1"
                    >
                    <template v-slot:items="props">
                      <td>{{ props.item.title }}</td>
                
                      <td class="text-xs-left">{{ props.item.comentarios }}</td>
                      <td class="text-xs-left">{{ props.item.vistas }}</td>
                      <td class="text-xs-left">{{ props.item.soluciones }}</td>
                  
                    </template>
                  </v-data-table>
                </div>
              </div>
    


        <br>


              <div class="row">
                <div class="col-12">
                    <v-toolbar flat color="#CFD8DC">
                    <v-toolbar-title>Usuarios</v-toolbar-title>
                   
                  </v-toolbar>
                  <v-data-table
                    :headers="headersUsuarios"
                    :items="usuarios"
                    class="elevation-1"
                    >
                    <template v-slot:items="props">
                      <td>{{ props.item.nombre }}</td>
                
                      <td class="text-xs-left">{{ props.item.puntos }}</td>
                      <td class="text-xs-left">{{ props.item.votos }}</td>
                      <td class="text-xs-left">{{ props.item.comentarios }}</td>
                      <td class="text-xs-left">{{ props.item.ingresos }}</td>
                      <td class="text-xs-left">{{ props.item.ideas }}</td>
                      <td class="text-xs-left">{{ props.item.retos }}</td>
                    </template>
                  </v-data-table>
                </div>
              </div>
    

          </div>
      </div>
    </div>
  </div>
</template>


<style >
.hello {
  width: 100%;
  height: 500px;
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
      iPublicas: "",
      iPrivadas: "",
      rPublicos: "",
      rPrivados: "",
      tPublicos: "",
      tPrivados: "",
      iEmpresariales: "",
      rEmpresariales: "",

      userType: "",

      ideas: {},
      retos: {},
      usuarios: {},
       headersIdeas: [
          {
            text: 'Nombre',
            align: 'left',
            sortable: false,
            value: 'title'
          },
          { text: 'Me gusta', value: 'megusta' },
          { text: 'Pulir más', value: 'pulirmas' },
          { text: 'Acción de mejora', value: 'accion' },
           { text: 'Total votos', value: 'total' },
          { text: 'Comentarios', value: 'comentarios' },
          { text: 'Vistas', value: 'vistas' },
        
        ],
       headersRetos: [
          {
            text: 'Nombre',
            align: 'left',
            sortable: false,
            value: 'title'
          },
          { text: 'Comentarios', value: 'comentarios' },
          { text: 'Vistas', value: 'vistas' },
          { text: 'Soluciones', value: 'soluciones' },
        
        ],
      headersUsuarios: [
          {
            text: 'Nombre',
            align: 'left',
            sortable: false,
            value: 'nombre'
          },
          { text: 'Puntos', value: 'puntos' },
          { text: 'Votos', value: 'votos' },
          { text: 'Comentarios', value: 'comentarios' },
          { text: 'Ingresos', value: 'ingresos' },
          { text: 'Ideas', value: 'ideas' },
          { text: 'Retos', value: 'retos' }
        ],
       

    };
  },

  methods: {
    getDataInfo() {
      this.$Progress.start();
      axios
        .get("/getDataInfo")
        .then(response => {
          if (response.data.msg == "loginRequired") {
            window.location.href = baseUrl + "login";
            this.$Progress.finish();
          } else {
            this.iPublicas = response.data.iPublicas;
            this.iPrivadas = response.data.iPrivadas;
            this.iEmpresariales = response.data.iEmpresariales;
            this.rPublicos = response.data.rPublicos;
            this.rPrivados = response.data.rPrivados;
            this.rEmpresariales = response.data.rEmpresariales;
            this.tPublicos = response.data.tPublicos;
            this.tPrivados = response.data.tPrivados;
            this.userType = response.data.userType;

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

    this.getDataInfo();

    $("#admin").removeClass("menuActivo");
    $("#dashboard").addClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").removeClass("menuActivo");
    $(document).attr("title", "Innova | Dashboard");
  }
};
</script>


