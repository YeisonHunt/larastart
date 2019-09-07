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
        <div class="col-lg-12">
          <h4>Ideas por semana</h4>
          <br>
          <line-chart :data="retosSemana"></line-chart>
        </div>
      </div>

        <br>

      <div class="row">
        <div class="col-12">
          <h4>Ingresos empleados por semana</h4>

          <br>
          <line-chart :data="usuariosSemana"></line-chart>

        </div>
      </div>

      <br>

      <div class="row">
        <div class="col-12">
          <h4>Votos por semana</h4>

          <br>
          <line-chart :data="votosSemana"></line-chart>

        </div>
      </div>

      <br>

      <div class="row">
        <div class="col-12">
          <h4>Comentarios por semana</h4>

          <br>
          <line-chart :data="comentariosSemana"></line-chart>

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
            }
        ).catch(error =>{
            console.log(error)
        })
    }
  }

</script>

<style>
</style>