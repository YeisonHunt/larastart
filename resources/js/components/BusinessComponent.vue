<template>
  <div class="hole">
    <div class="row">

      <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Team Management</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/team.svg'"  width="90%" height="90%" alt=""
                class="ml-3 animateOnHover"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->

    <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Innovation Engine</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/innovation.svg'" width="73%" height="70%" alt=""
                class="ml-5"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->


        <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Growth Weapon</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/growth.svg'" width="90%" height="90%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->


    <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Reports Machine</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/reports.svg'" width="80%" height="80%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->

   

      

    
    


    </div><!-- end row -->

    <div class="row">

         <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >ISO Tools</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/iso.png'" width="100%" height="100%" alt=""
                class="ml-3 mt-5" style="vertical-align:center;"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->


        <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Big Gantt</h3>
              <span class="kt-widget14__desc">Check out each team member for work details</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/gantt.svg'" width="80%" height="80%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div> <!-- end first col -->



    </div><!-- end second row -->

    <div class="row"> <!-- esta fila solo esta para lograr que la pantalla se llene -->
        <div class="col-12">
            <hr style="border:none;
                back-ground-color: #ADD8e6;
                color: #ADD8E6;
                height: 1px;
                width: 80%;">
        </div>
    </div>

    
  </div><!-- end hole -->
</template>

<style>



.adminFunction {
    cursor:pointer;
}

html, body {
    height: 100%;
    width: 100%;
}

</style>


<script>
export default {

    data(){
        
        return{
            baseUrl: window.baseUrl
        }
    },
    mounted() {}
};
</script>
