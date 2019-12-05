<template>
  <div class style="min-height:80vh;">

    <div class="row">
      <div class="col-12">
         <v-btn :to="{name:'blog'}"  color="indigo" dark>
                    <v-icon>arrow_left</v-icon>
                    Atras</v-btn>
      </div>
    </div>

    <br>

    <div class="row" v-if="userType=='admin'">
      <div class="col-md-6 col-sm-12">
        <div style="background-color:#fff">
          <br />

          <h2 class="ml-2">Editando blog</h2>
          <br />

          <form method="POST"   enctype="multipart/form-data" @submit.prevent="createBlog" @keydown="form.onKeydown($event)">
            <div class="row">
              <div class="col-12">
                <label for="title" class="ml-2 subheading">Título del blog</label>
                <v-text-field
                  v-model="form.title"
                  :counter="maxTitle"
                  class="mr-2 ml-2"
                  label="Título"
                  clearable
                  id="title"
                  solo
                  required
                  placeholder="Por qué es importante la Innovación en América Latina?"
                ></v-text-field>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-12">
                <label for="des" class="ml-2 subheading">Resumen corto</label>
                <v-textarea
                  solo
                  auto-grow
                  class="mr-2 ml-2"
                  id="des"
                  label="Resumen corto"
                  placeholder="Hoy en día la innovación es demasiado importante como para descartarla en nuestros planes, se habla en casi todas las empresas y en perfiles profesionales de muchas personas. "
                  clearable
                  required
                  v-model="form.des"
                  :counter="maxDes"
                ></v-textarea>
                <span class="ml-2 caption">*El resumen corto no hace parte del artículo.</span>
              </div>
            </div>

            <br />

            <div class="form-group row">
              <div class="col-11 ml-2 mb-2">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="flaticon-photo-camera"></i>
                    </span>
                  </div>
                  <input
                    type="file"
                    accept="image/x-png, image/jpeg"
                    @change="onFilePicked"
                    name="img"
                    :id="'imagenBlog'"
                    class="form-control"
                    :class="{'is-invalid': form.errors.has('img')}"
                    
                    placeholder="https://wwwmyawesomeideaimg.com/myimage.jpg"
                    aria-describedby="basic-addon1"
                  />

                  <has-error :form="form" field="img"></has-error>
                </div>
             
                 <span class=" caption">*Imágen alusiva al blog (Tamaño menor a 3M).</span>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-12">
                <div class="ml-2 mr-2 mb-2">
                  <label for="contenido" class="subheading">Contenido del blog</label>
                  <div class="shadowBox">
                    <html-editor
                      id="contenido"
                      class="summernote richtext"
                      height="600"
                      required
                      :placeholder="placeholder"
                      :model.sync="form.content"
                    ></html-editor>
                  </div>
                </div>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-12">
                <label for="author" class="ml-2 subheading">Autor(es) del artículo</label>
                <v-text-field
                  v-model="form.autores"
                  class="mr-2 ml-2"
                  label="Autor(es)"
                  clearable
                  id="author"
                  solo
                  required
                  :counter="maxGeneral"
                  placeholder="J.K Rowling, Ernest Hemingway, Edgar Allan Poe"
                ></v-text-field>
                <span class="ml-2 caption">*Si tiene más de un autor, separar con coma.</span>
              </div>
            </div>

            <br />

            <div class="row">
              <div class="col-12">
                <label for="tags" class="ml-2 subheading">Tags</label>
                <v-text-field
                  v-model="form.tags"
                  class="mr-2 ml-2"
                  label="Tags"
                  clearable
                  id="tags"
                  solo
                  required
                  :counter="maxGeneral"
                  placeholder="Innovación, Emprendimiento, Negocios, Cultura, Energía Renovable, etc...."
                ></v-text-field>
                <span class="ml-2 caption">*Si tiene más de una tag, separar con coma.</span>
              </div>
            </div>

            <br />

            <div class="row">
                <div class="col-1"></div>
              <div class="col-10 mr-2 ml-2">
                <v-btn
                  block
                  color="#3379C7"
                  type="submit"
                  :disabled="form.busy"
                  dark
                >Actualizar artículo</v-btn>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6 col-sm-12" style="background-color:#fff">
        <br />
        <h2 class="text-center">Pre-visualización</h2>

        <h3 class="headline text-center">{{form.title | uppercaseFirst | titleEmpty}}</h3>

            <div class="images "  v-viewer >
                <img :src="form.img" class="imgFit">
                 </div>

        <br />

        <div class="row">
          <div class="col-12">
            <div class="text-center">
              <v-icon :color="'#3BCBFF'">calendar_today</v-icon>
              {{form.fecha | fechaAqui}} &nbsp;&nbsp;
              <v-icon :color="'#3BCBFF'">account_circle</v-icon>
              {{form.autores | autoresAqui}} &nbsp;&nbsp;
              <v-icon :color="'#3BCBFF'">label</v-icon>
              {{form.tags | tagsAqui}} &nbsp;&nbsp;
            </div>
          </div>
        </div>

        <br />
        

        <div
          class="tiptap-vuetify-editor__content"
          style="font-size:1.1rem; text-align:justify; text-justify: inter-word;"
          v-html="form.content "
        ></div>
      </div>
    </div>

    <div class="row">
      <div class="col-12">
        <div class="text-center" v-if="userType!='admin'">
          <h4>Solo el administrador tiene acceso a Blog.</h4>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import htmlEditor from "./../html-editor.vue";

export default {
  components: {
    htmlEditor
  },
  data() {
    return {

        blogId: this.$route.params.id,
                privacy:true,
                blog:[],
                autor:false,
            
         fotos: [
        "1.svg",
        "2.svg",
        "3.svg",
        "4.svg",
        "5.svg",
        "6.svg",
        "7.svg",
        "8.jpg",
        "9.jpg",
        "10.jpg",
        "11.svg",
        "12.svg",
        "13.jpg",
        "14.svg",
        "15.svg",
        "16.svg",
        "17.svg",
        "18.svg",
        "19.svg",
        "20.svg",
        "21.svg",
        "22.svg",
        "23.svg",
        "24.svg",
        "25.svg",
        "26.svg",
        "27.svg"
      ],
      image:'',
      userType: "",
      url: "https://guardproject.com/blog/como-va-latinoamerica-en-innovacion",
      maxTitle: 60,
      maxGeneral: 40,
      maxDes: 550,
      placeholder: `
              <br>
              <br>
              <p> *Este texto de prueba se borra apenas comiences a escribir* </p>
              <h1>Bienvenido al editor de texto Summernote!</h1>
              <br>
                <p>Este es un pequeño texto de demostración donde puedes ver las posibilidades que tienes para escribir y darle estilo a tu blog.</p>
                <p>Puedes escribir todo tipo de texto aquí, desde títulos, subtítulos, párrafos, listas, tablas, imágenes, videos y todo lo que quieras para poder expresarte con palabras de la manera idónea..</p>

                <p><strong>Para aprender más, puedes experimentar con las funciones en la  </strong><a href="#" title="documentation"><strong>barra de tareas</strong></a><strong></strong>.</p>

                <blockquote>
                    <p>Es extremadamente fácil y rápido construir un blog que se visualize correctamente y que normalmente tardaría muchas horas en construirse a base de código.</p>
                </blockquote>

                <p style="text-align: right; margin-right:20px;"><a href="#" title="Equipo de Asakaa Innova"><strong>- Equipo de Asakaa Innova</strong></a></p>`,
      form: new Form({
        title: "",
        des: "",
        content: "",
        fecha: "",
        autores: "",
        tags: "",
        img: ""
      })
    };
  },

  methods: {
    isFileImage(file) {
      const acceptedImageTypes = ["image/gif", "image/jpeg", "image/png"];

      if (acceptedImageTypes.includes(file["type"])) {
        return true;
      } else {
        return false;
      }
    },

    onFilePicked(event) {
      const files = event.target.files;
      let filename = files[0].name;

      let imagenTemporal = event.target.files[0];
      let mbSize = imagenTemporal.size / 1024 / 1024;
      mbSize = mbSize.toFixed(2);

      if (filename.lastIndexOf(".") <= 0) {
        alert("Añadir un archivo válido!");

        
      }

      const fileReader = new FileReader();

      fileReader.addEventListener("load", () => {
    
        this.form.img = fileReader.result;
      });
      
       fileReader.readAsDataURL(files[0]);


      this.image = event.target.files[0];
    

      if (mbSize > 3) {
        alert("La imágen no puede ser mayor a 3 megas");

        document.getElementById("imagenInnova").value = null;
        //window.fileInputForm.reset();
      }
    },
    createBlog() {

      const config = {
        headers: { "content-type": "multipart/form-data" }
      };

      let formData = new FormData();
       

      let random = Math.floor(Math.random() * 1000) + 1;

      formData.append("id", this.blogId)

      if (this.image == "") {

        var host = window.location.origin;

        let random = Math.floor(Math.random() * 26);
        //this.form.img = host + "/images/" + this.fotos[random];

		formData.append("img", this.form.img);
        formData.append("title", this.form.title);
        formData.append("des", this.form.des);
        formData.append("content", this.form.content);
        formData.append("autores", this.form.autores);
        formData.append("tags", this.form.tags);
      

      } else {


		formData.append("img", this.image);
        formData.append("title", this.form.title);
        formData.append("des", this.form.des);
        formData.append("content", this.form.content);
        formData.append("autores", this.form.autores);
        formData.append("tags", this.form.tags);
      

      }


      this.$Progress.start();

      axios
        .post("/blog-interno/update/"+this.blogId, formData, config)
        .then(({ data }) => {
          toastr.success("Genial!", "Blog empresarial publicado correctamente");
          this.form.reset();
          this.$Progress.finish();
          this.$router.push({ name: "blog" });
        })
        .catch(error => {
          console.log(error);
          toastr.error("Oops!", "Algo anda mal.");
          this.$Progress.finish();
        });
    },
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
      checkBlog() {

                this.$Progress.start();       
                axios.get('/blog-interno/get/'+this.blogId).then(response => {

                this.form.title = response.data.blog.title
                this.form.des = response.data.blog.des
                this.form.content = response.data.blog.content
                this.form.autores = response.data.blog.autores
                this.form.tags = response.data.blog.tags
                this.form.img = response.data.blog.img

                $("#contenido").summernote("code", response.data.blog.content);



                this.autor = response.data.autor
                                    
                this.$Progress.finish();
                
                })
                .catch(error => {
                console.log(error);
                this.$Progress.finish();
                toastr.error("Oops!", "Something goes wrong");
                });

         

                  
            }
  },
  mounted() {
    this.getUser();
    this.checkBlog()
  }
};
</script>

<style>
</style>