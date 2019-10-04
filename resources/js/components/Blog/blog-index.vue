<template>
  <div class style="min-height:80vh;">
    <div class="row">
      <div class="col-8">
        <div class="form-group" style>
          <label>Busca algún Blog</label>
          <div class="kt-input-icon kt-input-icon--left">
            <input
              type="text"
              class="form-control"
              placeholder="Ej: Por qué la innovación es tan crítica en una empresa?"
              id="blogSearch"
              v-model="searchInput"
            />
            <span class="kt-input-icon__icon kt-input-icon__icon--left">
              <span>
                <i class="la la-search"></i>
              </span>
            </span>
          </div>
        </div>
      </div>

      <div class="col-4 mt-4" v-if="userType=='admin'">
        <div class>
          <v-btn color="#3F51B5" :to="'/blog-interno/create'" dark>
            <v-icon left>add</v-icon>Nuevo Blog
          </v-btn>
        </div>
      </div>
    </div>
    <!-- end first row -->

    <div class="row">
      <div class="col-sm-12 col-md-6 pb-4" v-for="blog in filteredBlogs" :key="blog.id">
        <!-- Aqui va el v-for -->
        <v-card 
        
        hover :to="{name:'blog-interno-show',params:{id:blog.id}}"  >
            
          <v-img
            :src="blog.img"
            
            aspect-ratio="2.75"
          ></v-img>

          <v-card-title primary-title>
            <div>
             
               
                 
                    <h3 class="headline mb-0 text-truncate pr-5 mr-5">{{blog.title | uppercaseFirst | blogTitle}}</h3>
                
 
            

              <div
                class="mt-1 mr-2 pr-3" style="max-width: 90%;   text-align:justify; text-justify: inter-word; "
              >{{blog.des}}</div>
            </div>
          </v-card-title>

          <v-card-actions>
            <v-btn>Leer completo</v-btn>
             <v-spacer></v-spacer>
               <div style="color:#90A4AE" >{{(blog.vistas/2)}}</div>
                  <v-btn class="mr-2" flat icon color="#90A4AE">
                    <v-icon dark>remove_red_eye</v-icon>
                  </v-btn>
          </v-card-actions>
        </v-card>
      </div>
    </div>
    <!-- end blogs row -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      userType: "",
      blogs:{},
      searchInput:'',
    };
  },

  computed: {
    filteredBlogs() {

      if(this.searchInput==''){

          return this.blogs
      }else {
        return this.blogs.filter(blog => {
          return (blog.title)
            .toLowerCase()
            .match(this.searchInput.toLowerCase());
        });
      }

      
    }
  },

  methods: {
    getUser() {
     

      axios
        .get("/data/getCompanyInfo")
        .then(response => {
          if (response.data.msg == "loginRequired") {
            window.location.href = baseUrl + "login";
            
          } else {
            this.userType = response.data.userType;
           
          }
        })
        .catch(error => {
          console.log(error);
         

          toastr.error("Oops!", "Something goes wrong");
        });
    },

    getBlogs() {
      this.$Progress.start();

      axios
        .get("/blog-interno/blogs")
        .then(response => {
          
            this.blogs = response.data.blogs;
            this.$Progress.finish();
          
        })
        .catch(error => {
          console.log(error);
          this.$Progress.finish();

          toastr.error("Oops!", "Something goes wrong");
        });
    },

    verBlog(blog){

      this.$emit("blog",blog)


    }
  },
  mounted() {
    $("#blog").addClass("menuActivo");
    $("#dashboard").removeClass("menuActivo");
    $("#innovations").removeClass("menuActivo");
    $("#retos").removeClass("menuActivo");
    $("#admin").removeClass("menuActivo");
    $(document).attr("title", "Innova | Blog");

    this.getUser();
    this.getBlogs()
  }
};
</script>

<style >
.v-toolbar__content {
  padding: 0 !important;
}
</style>