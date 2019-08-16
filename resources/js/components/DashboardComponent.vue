<template>
  <div class style="min-height:80vh;">
    <div class="hole">


		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4 col-sm-12">
					<v-card
							class="mx-auto"
							color="#26c6da"
							dark
							hover
							height="220"
							
						>
							<v-card-title>
						
							<span class="title font-weight-light">Innovaciones</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							1237 públicas. <br>
							423  privadas.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#26c6da;" :to="{name:'ideaList'}" color="white">Ver todas las ideas</v-btn>
						</v-card-actions>
						</v-card>
				</div>
				<div class="col-lg-4 col-sm-12">
					<v-card
							class="mx-auto"
							color="#FAB200"
							dark
							hover
							height="220"
						>
							<v-card-title>
						
							<span class="title font-weight-light">Retos</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							324 públicos.  <br>
							266  privados.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#FAB200;" :to="{name:'ideaList'}" color="white">Ver todas los retos</v-btn>
						</v-card-actions>
						</v-card>
				</div>
				<div class="col-lg-4 col-sm-12">
					<v-card
							class="mx-auto"
							color="#A24DDC"
							dark
							hover
							height="220"
						>
							<v-card-title>
							
							<span class="title font-weight-light">Grupos de trabajo</span>
							</v-card-title>

							<v-card-text class="headline font-weight-bold">
							23 públicos. <br>
							245  privados.
							</v-card-text>

						 <v-card-actions>
					
						<v-btn style="color:#A24DDC;" :to="{name:'work-teams'}" color="white">Ver todas los grupos</v-btn>
						</v-card-actions>
						</v-card>
				</div>
			</div>

			<br>

		
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
	  $("#retos").removeClass('menuActivo');
	
  },

  
};
</script>


