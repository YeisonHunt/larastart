<template>

  <keep-alive>
    <div class="hole" style="min-height:80vh;">
    <div class="row">
      <router-link
        v-if="userType=='admin'"
        :to="{name:'contacts'}"
        class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center"
      >
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title">Mis usuarios de empresa</h3>
              <span class="kt-widget14__desc">Maneja todos tus usuarios corporativos aquí.</span>
            </div>

            <div class="kt-widget14__chart">
              <img
                :src="baseUrl+'img/contact.svg'"
                width="90%"
                height="90%"
                alt
                class="ml-3 animateOnHover"
              />
            </div>
          </div>
        </div>
      </router-link>
      <!-- end first col -->

      <router-link
        v-if="userType=='admin'"
        :to="{name:'work-teams'}"
        class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center"
      >
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title">Equipos de trabajo</h3>
              <span
                class="kt-widget14__desc"
              >Grupos de personas destinadas a funciones e innovaciones específicas.</span>
            </div>

            <div class="kt-widget14__chart">
              <img
                :src="baseUrl+'img/team.svg'"
                width="90%"
                height="90%"
                alt
                class="ml-3 animateOnHover"
              />
            </div>
          </div>
        </div>
      </router-link>
      <!-- end first col -->

      <!-- <router-link :to="{name:'retos'}" class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Retos de Innovación</h3>
              <span class="kt-widget14__desc">Esta herramienta te permite dar a conocer necesidades, buscarles solución con ayuda de grupos de trabajo y/o la comunidad en general.</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/innovation.svg'" width="73%" height="70%" alt=""
                class="ml-5"
                >
            </div>


          </div>
        </div>
      </router-link>-->

      <router-link
        :to="{name:'company'}"
        class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center"
      >
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title">Mi empresa</h3>
              <span
                class="kt-widget14__desc"
              >Aquí podrás modificar el nombre y el logo de la empresa, estos se verán reflejados en las cuentas de usuario que tengas a disposición.</span>
            </div>

            <div class="kt-widget14__chart">
              <img
                :src="baseUrl+'img/company.svg'"
                width="90%"
                height="90%"
                alt
                class="ml-3 animateOnHover"
              />
            </div>
          </div>
        </div>
      </router-link>

      <router-link
        v-if="userType=='admin'"
        :to="{name:'categories'}"
        class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center"
      >
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title">Categorías Personalizadas</h3>
              <span
                class="kt-widget14__desc"
              >Crea categerías especializadas para tu empresa, tus productos y tus servicios. Esto sirve para ayudar a organizar las ideas de innovación en grupos específicos.</span>
            </div>

            <div class="kt-widget14__chart">
              <img
                :src="baseUrl+'img/category.svg'"
                width="90%"
                height="90%"
                alt
                class="ml-3 animateOnHover"
              />
            </div>
          </div>
        </div>
      </router-link>
      <!-- end first col -->

      <router-link
        v-if="userType=='admin'"
        :to="{name:'reportes'}"
        class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction hvr-float hvr-underline-from-center"
      >
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title">Reportes & Gráficas</h3>
              <span
                class="kt-widget14__desc"
              >Reportes gráficos de datos basados en ideas y retos.</span>
            </div>

            <div class="kt-widget14__chart">
              <img
                :src="baseUrl+'img/hologram.svg'"
                width="90%"
                height="90%"
                alt
                class="ml-3 animateOnHover"
              />
            </div>
          </div>
        </div>
      </router-link>

      <!--
        <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Growth Weapon</h3>
              <span class="kt-widget14__desc">Se detailed expansion plans recommended for you and your company.</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/growth.svg'" width="90%" height="90%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div> 

      -->

      <!--
    <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Reports Machine</h3>
              <span class="kt-widget14__desc">View all your important data in delighfull insights.</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/reports.svg'" width="80%" height="80%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div> 

      -->

      <!--
    
         <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >ISO Tools</h3>
              <span class="kt-widget14__desc">Cuality assurance for all your customers.</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/iso.png'" width="100%" height="100%" alt=""
                class="ml-3 mt-5" style="vertical-align:center;"
                >
            </div>


          </div>
        </div>
      </div>-->

      <!--
        <div class="col-lg-3 col-md-3 col-sm-12 col-xl-3 adminFunction  hvr-float hvr-underline-from-center">
        <div class="kt-portlet kt-portlet--height-fluid">
          <div class="kt-widget14">
            <div class="kt-widget14__header kt-margin-b-14">
              <h3 class="kt-widget14__title" >Big Gantt</h3>
              <span class="kt-widget14__desc">Watch the state of all your projects in just one view.</span>
            </div>


            <div class="kt-widget14__chart" >
                
                <img :src="baseUrl+'img/gantt.svg'" width="80%" height="80%" alt=""
                class="ml-3"
                >
            </div>


          </div>
        </div>
      </div>-->
    </div>
    <!-- end row -->
  </div>
  </keep-alive>
  


  <!-- end hole -->
</template>

<style>
.adminFunction {
  cursor: pointer;
}

html,
body {
  height: 100%;
  width: 100%;
}
</style>


<script>
export default {
  data() {
    return {
      baseUrl: window.baseUrl,
      userType: ""
    };
  },

  methods: {
    getUser() {

      this.$Progress.start();

      axios
        .get("/data/getCompanyInfo")
        .then(response => {

          if(response.data.msg=='loginRequired'){
            window.location.href = baseUrl+'login';
            this.$Progress.finish();

          }else {
            this.userType = response.data.userType;
            this.$Progress.finish();

          }
          
        })
        .catch(error => {
          console.log(error);
          this.$Progress.finish();


          toastr.error("Oops!", "Something goes wrong");
        });
    }
  },
  mounted() {
    $("#admin").addClass("menuActivo");
    $("#dashboard").removeClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").removeClass("menuActivo");
     $("#blog").removeClass("menuActivo");
    $(document).attr("title", "Innova | Administrador");

    this.getUser();

    console.log('business mounted');
  }
};
</script>
