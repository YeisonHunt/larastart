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
          <div class="col-lg-4 col-sm-12">
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
          </div>
        </div>

        <br />
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
      iPublicas: '',
      iPrivadas: '',
      rPublicos: '',
      rPrivados: '',
      tPublicos: '',
      tPrivados: ''
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
          this.rPublicos = response.data.rPublicos;
          this.rPrivados = response.data.rPrivados;
          this.tPublicos = response.data.tPublicos;
          this.tPrivados = response.data.tPrivados;
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


