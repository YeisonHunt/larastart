<template>
  <div class style="min-height:80vh;">
    <div class="hole">

		<v-container fluid>
			<v-layout row>
				<v-flex lg6 xs12 sm12 pa-2>
					<v-card
							class="mx-auto"
							color="#26c6da"
							dark
							hover
							
						>
							<v-card-title>
							<v-icon
								large
								left
							>
								mdi-lightbulb
							</v-icon>
							<span class="title font-weight-light">Innovaciones</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							1237 públicas. 
							423  privadas.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#26c6da;" :to="{name:'ideaList'}" color="white">Ver todas las ideas</v-btn>
						</v-card-actions>
						</v-card>
				</v-flex>

				<v-flex lg6 xs12 sm12 pa-2>
					<v-card
							class="mx-auto"
							color="#FAB200"
							dark
							hover
							
						>
							<v-card-title>
							<v-icon
								large
								left
							>
								mdi-image-filter-center-focus-strong
							</v-icon>
							<span class="title font-weight-light">Retos</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							324 públicos.  
							266  privados.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#FAB200;" :to="{name:'ideaList'}" color="white">Ver todas los retos</v-btn>
						</v-card-actions>
						</v-card>
				</v-flex>

				<v-flex lg6 xs12 sm12 pa-2>
					<v-card
							class="mx-auto"
							color="#A24DDC"
							dark
							hover
							
						>
							<v-card-title>
							<v-icon
								large
								left
							>
								mdi-account-group
							</v-icon>
							<span class="title font-weight-light">Grupos de trabajo</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							23 públicos. 
							245  privados.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#A24DDC;" :to="{name:'work-teams'}" color="white">Ver todas los grupos</v-btn>
						</v-card-actions>
						</v-card>
				</v-flex>

				

			</v-layout>
	        <v-flex lg4 sm12  xs12 pt-2 style="padding-right:10px;">
					<v-card
							class="mx-auto"
							color="#9E9E9E "
							dark
							hover
							
						>
							<v-card-title>
							<v-icon
								large
								left
							>
								mdi-view-module
							</v-icon>
							<span class="title font-weight-light">+ módulos en</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							Asakaa Project Management
							<div class="subheading">Maneja tus proyectos desde un solo lugar.</div>
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#9E9E9E ;" @click="goAsakaa" color="white">Explorar herramienta</v-btn>
						</v-card-actions>
						</v-card>
				</v-flex>

			<br>
			<v-layout row>

			</v-layout>
		</v-container>
 

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

  data(){

      return {
        innovations:'',
        contacts:'',
        workteams:'',

      }
  },

  methods: {

	  goAsakaa(){
		  window.open('https://asakaa.com', '_blank');
	  }

   /* cargarGrafico(){
       let chart = am4core.create(this.$refs.chartdiv, am4charts.XYChart);

        chart.paddingRight = 20;

        let data = [];
        let visits = 10;
        for (let i = 1; i < 366; i++) {
          visits += Math.round((Math.random() < 0.5 ? 1 : -0.8) * Math.random() * 10);
          data.push({
            date: new Date(2019, 0, i),
            name: "name" + i,
            value: visits
          });
        }

        chart.data = data;

        let dateAxis = chart.xAxes.push(new am4charts.DateAxis());
        dateAxis.renderer.grid.template.location = 0;

        let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
        valueAxis.tooltip.disabled = true;
        valueAxis.renderer.minWidth = 35;

        let series = chart.series.push(new am4charts.LineSeries());
        series.dataFields.dateX = "date";
        series.dataFields.valueY = "value";

        series.tooltipText = "{valueY.value}";
        chart.cursor = new am4charts.XYCursor();

        let scrollbarX = new am4charts.XYChartScrollbar();
        scrollbarX.series.push(series);
        chart.scrollbarX = scrollbarX;

      this.chart = chart;
    }//Fin cargar grafico function */

  },

  mounted() {
   
	 //this.cargarGrafico()

	
      $("#admin").removeClass('menuActivo');
      $("#dashboard").addClass('menuActivo');
      $("#innovations").removeClass('menuActivo');
	
  },

  
};
</script>


