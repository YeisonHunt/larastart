<template>
  <div class style="min-height:80vh;">
    <div class="container-fluid">
      <div class="row" v-if="privacy">
        <div class="col-12" style="background-color:#fff">
          <v-btn :to="{name:'blog'}" fab color="indigo" dark>
            <v-icon>arrow_left</v-icon>
          </v-btn>

          <v-btn
            v-if="autor"
            fab
            :to="{name:'blog-interno-edit',params:{id:$route.params.id}}"
            color="orange"
            dark
          >
            <v-icon>edit</v-icon>
          </v-btn>

          <v-btn v-if="autor" @click="borrarBlog" fab>
            <v-icon>delete</v-icon>
          </v-btn>

          <br />
          <br />

          <h4 class="headline text-center">{{blog.title | uppercaseFirst}}</h4>

          <br />

          <div class="images" v-viewer>
            <img :src="blog.img" class="imgFit" />
          </div>

          <br />

          <div class="row">
            <div class="col-12">
              <div class="text-center">
                <v-icon :color="'#3BCBFF'">calendar_today</v-icon>
                {{blog.fecha | formatDate}} &nbsp;&nbsp;
                <v-icon :color="'#3BCBFF'">account_circle</v-icon>
                {{blog.autores | autoresAqui}} &nbsp;&nbsp;
                <v-icon :color="'#3BCBFF'">label</v-icon>
                {{blog.tags | tagsAqui}} &nbsp;&nbsp;
              </div>
            </div>
          </div>

          <br />
          <br />

          <div class="row">
            <div class="container">
              <div class="row">
                <div class="col-12">
                  <div
                    class="tiptap-vuetify-editor__content"
                    style="font-size:1.1rem; text-align:justify; text-justify: inter-word;"
                    v-html="blog.content "
                  ></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row" v-else>
        <div class="col-12">
          <div class="text-center">
            <h4>No tienes acceso a este blog.</h4>
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
      blogId: this.$route.params.id,
      privacy: true,
      blog: [],
      autor: false
    };
  },

  methods: {
    checkBlog() {
      this.$Progress.start();
      axios
        .get("/blog-interno/get/" + this.blogId)
        .then(response => {
          this.blog = response.data.blog;
          this.autor = response.data.autor;

          this.$Progress.finish();
        })
        .catch(error => {
          console.log(error);
          this.$Progress.finish();
          toastr.error("Oops!", "Something goes wrong");
        });
    },

    borrarBlog() {
      Swal.fire({
        title: "Estas seguro(a)?",
        text: "No será posible deshacer esta acción.",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#ccc",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Si, borrar blog."
      }).then(result => {
        if (result.value) {
          this.$Progress.start();

          let formData = new FormData();

          formData.append("id", this.blogId);

          this.$Progress.start();
          axios
            .post("/blog-interno/delete", formData)
            .then(response => {
               toastr.info('Listo','Blog borrado.'); 
              this.$router.push({ name: "blog" });

              this.$Progress.finish();
            })
            .catch(error => {
              console.log(error);
              this.$Progress.finish();
              toastr.error("Oops!", "Something goes wrong");
            });
        }
      });
    }
  },

  mounted() {
    this.checkBlog();
  }
};
</script>

<style>
</style>