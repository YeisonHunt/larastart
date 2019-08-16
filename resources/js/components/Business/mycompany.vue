<template>
  <div id="todo" style="min-height:80vh;">
    <div class="container" style="background-color:#fff; ">


      <div class="row" v-if="userType=='admin'">
        <div class="col-12">
          <form
            class="kt-form"
            @submit.prevent="updateCompanyInfo"
            @keydown="companyForm.onKeydown($event)"
          >
            <div class="kt-portlet__body">
              <div class="form-group form-group-last">
                <div style="text-align:center;">
                  <h3>Mi empresa</h3>
				  <br>
                </div>
                <div class="alert alert-secondary" role="alert">
                  <div class="alert-icon">
                    <i class="flaticon-suitcase kt-font-brand"></i>
                  </div>
                  <div
                    class="alert-text"
                  >La información colocada aquí como el logo se verá reflejada en las cuentas de usuarios. <br/> <br>
                  Nota: sabemos que los logos están generalmente en formato png o svg, pero al mezclarse con el color de fondo muchas veces no se ven. Innova recomienda
                  utilizar la siguiente herramienta para transformar el formato de su logo a JPG antes de subirlo.
                  
                  <br>

                  <a href="https://png2jpg.com/" target="_blank">Click aqui :PNG to JPG</a>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-8">
                  <div class="form-group">
                    <label>Logo </label>
                    <input
                      type="file"
                      class="form-control"
                      id="customFile"
                      accept="image/x-png, image/jpeg"
                      @change="onFilePicked"
                      ref="contactPhoto"
                    />

					<span class="form-text text-muted">El tamaño del logo debe ser menor a 700 Kb.</span>
                  </div>
                </div>
                <div class="col-4">
                  <div style="text-align:center;">
                    <v-avatar :tile="false" :size="150" color="grey lighten-5">
                      <img :src="logoTemporal" alt="Company Logo" />
                    </v-avatar>
                  </div>
                </div>
              </div>

			 <div class="row">
				 <div class="col-12">
					 <div class="form-group">
                <label>Nombre de la empresa</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="companyForm.name"
                  aria-describedby="emailHelp"
                  placeholder="e.g., Apple Inc"
                />
              </div>
				 </div>
			 </div>
              
            </div>
            <div class="kt-portlet__foot" style="text-align:center;">
              <div class="kt-form__actions">
                <button type="submit" class="btn btn-primary">Guardar</button>
               <router-link  :to="{name:'business'}"  class="btn btn-secondary">Ir atrás</router-link>
              </div>
            </div>
          </form>
        </div>
      </div>


	  <div class="row" v-else>
		  <div class="col-12">
			  <div style="text-align:center;">
				  <p>Eres parte de esta genial empresa:</p>
			  </div>
			  
		  </div>
		  <br>
		  <div class="col-12">
			  <div style="text-align:center;"><h3>{{this.companyForm.name}}</h3></div>
			  
		  </div>
		  <br>

		  <div class="col-12">
			  <div style="text-align:center;">
                    <v-avatar :tile="false" :size="150" color="grey lighten-5">
                      <img :src="logoTemporal" alt="Company Logo" />
                    </v-avatar>
                  </div>
		  </div>

			<br>
			<br/>
		   <div class="col-12">
			  <div style="text-align:center; margin-top:20px;">
                     <router-link  :to="{name:'business'}"  class="btn btn-secondary">Ir atrás</router-link>
                  </div>
		  </div>
		  
	  </div>




    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      logoTemporal: window.baseUrl + "img/plus.svg",
      companyForm: new Form({
        logo: "",
		name: "",
		
	  }),
	  userType:'',
    };
  },

  methods: {
    onFilePicked(event) {
      const files = event.target.files;
      let filename = files[0].name;

      if (filename.lastIndexOf(".") <= 0) {
        return alert("Please add a valid file");
      }

      const fileReader = new FileReader();
      fileReader.addEventListener("load", () => {
        this.logoTemporal = fileReader.result;
        this.companyForm.logo = fileReader.result;
      });
      fileReader.readAsDataURL(files[0]);
      this.logoTemporal = files[0]; // file without any changes

      // esta ultima es la que se envia
    },

    updateCompanyInfo() {
      this.$Progress.start();

      this.companyForm
        .post("/data/updateCompanyInfo")
        .then(({ data }) => {
          this.$router.push({ name: "company" });
          toastr.success("Excelente!", "Información de empresa actualizada.");
          this.companyForm.reset();

          this.getCompanyInfo();
          window.location.reload(false); 
        })
        .catch(error => {
          toastr.error("Oops!", "Algo anda mal");
        });

      this.$Progress.finish();


    }, //end updateCompany

    getCompanyInfo() {

		//request to adminController
      axios
        .get("/data/getCompanyInfo")
        .then(response => {
          this.companyForm.name = response.data.name;
          this.companyForm.logo = response.data.logo;
          if(response.data.logo ==undefined){
           
          }else {
            this.logoTemporal = response.data.logo;
          }
		  
      this.userType= response.data.userType;
      
		  console.log(response.data.name)
        })
        .catch(error => {
          console.log(error);

          toastr.error("Oops!", "Something goes wrong");
        });
    } // end bringCompanyInfo
  },//end methods

  mounted(){
	  this.getCompanyInfo()
  }
};
</script>

<style lang="css" scoped>
</style>