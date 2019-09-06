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
          <h4>Retos por semana</h4>
          <br>
          <line-chart :data="retosSemana"></line-chart>
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
           retosSemana:{}
          
      }
    },
    created () {

        axios.get('/getData').then(
            response => {
         
                this.retosSemana = response.data.sumaSemanal
                this.ideas = response.data.ideas
                this.retos = response.data.retos
            }
        ).catch(error =>{
            console.log(error)
        })
    }
  }

</script>

<style>
</style>