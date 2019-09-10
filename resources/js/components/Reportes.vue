<template>
  <div style="min-height:80vh;">
    <div class="container-fluid">

      <div class="row">
        <div class="col-lg-6 col-sm-12">
          <h4>Ideas</h4>
          <br />
           <pie-chart :dataset="{borderWidth: 5}" :data="ideas" :download="true"  ></pie-chart>

        </div>
        <div class="col-lg-6 col-sm-12">
          
            <h4>Retos</h4>
          <br />
           <pie-chart :dataset="{borderWidth: 5}" :data="retos" :download="true"  ></pie-chart>

        </div>
        
      </div>

      <br>

      <div class="row">
        <div class="col-12">
          <center>
             <h4>{{semana}}</h4>
          </center>
        </div>
      </div>
      <br>

      <div class="row">

    
      
        <div class="col-lg-6 col-sm-12" style="background-color:white;">
          <h4>Ideas </h4>
          <br>
          <area-chart :data="retosSemana" :download="true" :library="{backgroundColor: '#fff'}"></area-chart>
        </div>
      

       

   
        <div class="col-lg-6 col-sm-12" style="background-color:white;">
          <h4>Ingresos usuarios </h4>

          <br>
          <area-chart :data="usuariosSemana" :download="true"></area-chart>

        </div>
      

      </div>

      <br>

      <div class="row">

   
        <div class="col-lg-6 col-sm-12" style="background-color:white;">
          <h4>Votos </h4>

          <br>
          <area-chart :data="votosSemana" :download="true"></area-chart>

        </div>
      

     
        <div class="col-lg-6 col-sm-12" style="background-color:white;">
          <h4>Comentarios </h4>

          <br>
          <area-chart :data="comentariosSemana" :download="true"></area-chart>

        </div>
     
 </div>
    

    </div>
  </div>
</template>

<script>

export default {
  
  data() {
    return {
           
           ideas:{},
           retos:{},
           retosSemana:{},
           usuariosSemana:{},
           comentariosSemana:{},
           votosSemana:{},
           semana:''
          
      }
    },
    created () {

        axios.get('/getData').then(
            response => {
         
                this.retosSemana = response.data.sumaSemanal
                this.ideas = response.data.ideas
                this.retos = response.data.retos
                this.usuariosSemana  = response.data.usuariosSemana
                this.votosSemana = response.data.votosSemana
                this.comentariosSemana = response.data.comentariosSemana
                this.semana = response.data.semana
            }
        ).catch(error =>{
            console.log(error)
        })
    }
  }

</script>

<style>
</style>