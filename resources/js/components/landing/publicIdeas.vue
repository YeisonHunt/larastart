<template>
  <div class="hole">

     <v-snackbar
      v-model="snackbar"
      :bottom="y === 'bottom'"
      :left="x === 'left'"
      :multi-line="mode === 'multi-line'"
      :right="x === 'right'"
      :timeout="timeout"
      :top="y === 'top'"
      :vertical="mode === 'vertical'"
    >
      {{ text }}
      <v-btn
        color="blue"
        flat
        @click="snackbar = false"
      >
        Cerrar
      </v-btn>
    </v-snackbar>


     <v-dialog
      v-model="dialog"
      max-width="400"
          >
      <v-card :hover="true" 
      
      >
          <v-img
          :src="ideaImg"
          aspect-ratio="2.75"
        ></v-img> 
        <v-card-title class="headline">Aquí tienes un link para compartir esta genial idea.</v-card-title>

        <v-card-text>
          

          <input type="hidden" style="visibility:hidden;" id="linkTo" :value="linkToIdea" >

          <a  style="text-decoration:none;" :href="linkToIdea">{{linkToIdea}}</a>
          
        </v-card-text>

        <v-card-actions>
          <v-spacer></v-spacer>

          <v-btn
            color="grey lighteen-1"
            flat="flat"
            @click="dialog = false"
          >
            Cancelar
          </v-btn>

          <v-spacer></v-spacer>

          <v-btn
            color="blue darken-1"
            dark
            @click="copyPorta(linkToIdea)"
          >
            Copiar al portapapeles
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
    

      <v-layout>
        <v-flex lg3>
          <h3 class="mt-4" style="font-family: 'Satisfy', cursive;">Ideas Globales</h3>
        </v-flex>

        <v-flex lg5 >
    
          <!--
         <div style="margin-top:15px;">
            <label class="pure-material-textfield-outlined">
              <input placeholder="" style="width:500px;"  v-model="busqueda">
              <span>Búscar por título</span>
            </label>
         </div> -->

      <form action="">
        <input type="search" class="fuente" placeholder="Buscar por titulo...">
        <i class="fa fa-search" style="color:#ccc;"></i>
      </form>
                
                    
        </v-flex>

        <v-spacer></v-spacer>
        <v-flex lg3  >

            <!--
            <label for="selector">Filtrar por tipo</label>
             <el-select id="selector" v-model="value" placeholder="Todas">
              <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>

            -->
              <!-- <label for="selector">Filtrar por tipo</label>  
                <div include="form-input-select()">
            
                <select id="selector" required>
               
                  <option value=""
                          hidden
                  >Todas</option>

                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                  <option value="4">Option 4</option>
                  <option value="5">Option 5</option>
                </select>-->
                <label for="selector">Filtrar por tipo</label>
                 <select class="select-css" id="selector" v-model="tipo">
                    <option value="all">Todas</option>
                    <option value="sustainability">Sustainability</option>
                    <option value="lifeandhealth">Life & Health</option>
                    <option value="artandculture">Art & Culture</option>
                    <option value="beautyandfaashion">Beauty & Fashion</option>
                    <option value="homeandpets">Home & Pets</option>
                    <option value="scienceandtechnology">Science & Technology</option>
                    <option value="tourismandtravel">Tourism & Travel</option>
                    <option value="transport">Transport</option>
                    <option value="food">Food</option>
                    <option value="politicsandsociety">Politics & Society</option>
                    <option value="sportsandentertainment">Sports & Entertainment</option>
                    <option value="businessandconsumer">Business & Consumer</option>
                    <option value="improvethis">Mejorar Asakaa Project</option>
                   
                </select>
                  



        </v-flex>

      </v-layout>
    
      <v-layout row wrap>
       <v-flex  xs12 sm12 pa-3  md4 lg4  v-for="idea in publicIdeas" :key="idea.id" >
            <v-card :hover="true" ripple  >
                <v-img
                :src=" idea.img"
                height="230px"
                
                >
                </v-img>

                <v-card-title primary-title>
                <div style="width:100%;">

                    <v-layout row>


                        <v-flex lg-7>
                             <div class="headline">{{idea.title | uppercaseFirst}}
                             
                         </div>
                        </v-flex>

                        <v-flex lg5  text-xs-right>
                              <v-btn icon >
                            <v-icon >favorite</v-icon>
                        </v-btn>
                        <v-btn icon>
                            <v-icon>bookmark</v-icon>
                        </v-btn>
                        <v-btn icon  @click.stop="showDialog(idea)" >
                            <v-icon>share</v-icon>
                        </v-btn>
                        
                        </v-flex>
                    
                       
                    </v-layout>
   
                    <span class="grey--text">{{idea.description | largeText }}</span>
                </div>
                </v-card-title>

                <v-card-actions style="margin-left:10px;">
                    
                <v-btn flat class="text-capitalize noUnderline" :to="{name:'view-idea',params:{id:idea.id}}" color="teal">Leer completa</v-btn>
                <v-btn flat class="text-capitalize noUnderline" color="light-blue ">Votar</v-btn>
                <!--
                <v-spacer></v-spacer>
                <v-btn icon @click="showMore(idea)">
                    <v-icon>{{ show ? 'keyboard_arrow_down' : 'keyboard_arrow_up' }}</v-icon>
                </v-btn> -->
                </v-card-actions>

                <v-slide-y-transition>
                <v-card-text v-show="show">
                   <div v-html="idea.body">

                   </div>
                </v-card-text>
                </v-slide-y-transition> 


            </v-card>
            </v-flex>

           

             

            
            
            
        
      </v-layout>


   
    <br>

    <br>

    <div class="row">
      <div class="col-12">
        <div class="text-xs-center">
          <v-pagination v-model="page" :length="6" color="blue"></v-pagination>
        </div>
      </div>
    </div>
    <!-- end row pagination -->
  </div>
</template>


<style>

.noUnderline {
  text-decoration: none !important;
}
input[type="date"], input[type="email"], input[type="number"], input[type="password"], input[type="search"], input[type="tel"], input[type="text"], input[type="url"], select, textarea, .woocommerce .quantity input.qty {
     box-shadow: none !important;
}

input[type="date"], input[type="email"], input[type="number"], input[type="password"], input[type="search"], input[type="tel"], input[type="text"], input[type="url"], select, textarea {
	border-style: none !important;
}

.v-input input {
    max-height: 42px !important;
    height:50px;
    font-size:1.7rem !important;
}


.pure-material-textfield-outlined {
    --pure-material-safari-helper1: rgb(var(--pure-material-primary-rgb, 33, 150, 243));
    position: relative;
    display: inline-block;
    padding-top: 6px;
    font-family: var(--pure-material-font, "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui, -apple-system);
    font-size: 16px;
    line-height: 1.5;
    overflow: hidden;
}

/* Input, Textarea */
.pure-material-textfield-outlined > input,
.pure-material-textfield-outlined > textarea {
    box-sizing: border-box;
    margin: 0;
    border: solid 1px; /* Safari */
    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.2);
    border-top-color: transparent;
    border-radius: 4px;
    padding: 15px 13px 15px;
    width: 100%;
    height: inherit;
    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);
    background-color: transparent;
    box-shadow: none; /* Firefox */
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
    caret-color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));
    transition: border 0.2s, box-shadow 0.2s;
}

/* Span */
.pure-material-textfield-outlined > input + span,
.pure-material-textfield-outlined > textarea + span {
    position: absolute;
    top: 0;
    left: 0;
    display: flex;
    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);
    width: 100%;
    max-height: 100%;
    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);
    font-size: 75%;
    line-height: 15px;
    cursor: text;
    transition: color 0.2s, font-size 0.2s, line-height 0.2s;
}

/* Corners */
.pure-material-textfield-outlined > input + span::before,
.pure-material-textfield-outlined > input + span::after,
.pure-material-textfield-outlined > textarea + span::before,
.pure-material-textfield-outlined > textarea + span::after {
    content: "";
    display: block;
    box-sizing: border-box;
    margin-top: 6px;
    border-top: solid 1px;
    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.2);
    min-width: 10px;
    height: 8px;
    pointer-events: none;
    box-shadow: inset 0 1px transparent;
    transition: border-color 0.2s, box-shadow 0.2s;
}

.pure-material-textfield-outlined > input + span::before,
.pure-material-textfield-outlined > textarea + span::before {
    margin-right: 4px;
    border-left: solid 1px transparent;
    border-radius: 4px 0;
}

.pure-material-textfield-outlined > input + span::after,
.pure-material-textfield-outlined > textarea + span::after {
    flex-grow: 1;
    margin-left: 4px;
    border-right: solid 1px transparent;
    border-radius: 0 4px;
}

/* Hover */
.pure-material-textfield-outlined:hover > input,
.pure-material-textfield-outlined:hover > textarea {
    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);
    border-top-color: transparent;
}

.pure-material-textfield-outlined:hover > input + span::before,
.pure-material-textfield-outlined:hover > textarea + span::before,
.pure-material-textfield-outlined:hover > input + span::after,
.pure-material-textfield-outlined:hover > textarea + span::after {
    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);
}

.pure-material-textfield-outlined:hover > input:not(:focus):placeholder-shown,
.pure-material-textfield-outlined:hover > textarea:not(:focus):placeholder-shown {
    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.87);
}

/* Placeholder-shown */
.pure-material-textfield-outlined > input:not(:focus):placeholder-shown,
.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown {
    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.6);
}

.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span,
.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span {
    font-size: inherit;
    line-height: 68px;
}

.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span::before,
.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span::before,
.pure-material-textfield-outlined > input:not(:focus):placeholder-shown + span::after,
.pure-material-textfield-outlined > textarea:not(:focus):placeholder-shown + span::after {
    border-top-color: transparent;
}

/* Focus */
.pure-material-textfield-outlined > input:focus,
.pure-material-textfield-outlined > textarea:focus {
    border-color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));
    border-top-color: transparent;
    box-shadow: inset 1px 0 var(--pure-material-safari-helper1), inset -1px 0 var(--pure-material-safari-helper1), inset 0 -1px var(--pure-material-safari-helper1);
    outline: none;
}

.pure-material-textfield-outlined > input:focus + span,
.pure-material-textfield-outlined > textarea:focus + span {
    color: rgb(var(--pure-material-primary-rgb, 33, 150, 243));
}

.pure-material-textfield-outlined > input:focus + span::before,
.pure-material-textfield-outlined > input:focus + span::after,
.pure-material-textfield-outlined > textarea:focus + span::before,
.pure-material-textfield-outlined > textarea:focus + span::after {
    border-top-color: var(--pure-material-safari-helper1) !important;
    box-shadow: inset 0 1px var(--pure-material-safari-helper1);
}

/* Disabled */
.pure-material-textfield-outlined > input:disabled,
.pure-material-textfield-outlined > input:disabled + span,
.pure-material-textfield-outlined > textarea:disabled,
.pure-material-textfield-outlined > textarea:disabled + span {
    border-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;
    border-top-color: transparent !important;
    color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38);
    pointer-events: none;
}

.pure-material-textfield-outlined > input:disabled + span::before,
.pure-material-textfield-outlined > input:disabled + span::after,
.pure-material-textfield-outlined > textarea:disabled + span::before,
.pure-material-textfield-outlined > textarea:disabled + span::after {
    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;
}

.pure-material-textfield-outlined > input:disabled:placeholder-shown,
.pure-material-textfield-outlined > input:disabled:placeholder-shown + span,
.pure-material-textfield-outlined > textarea:disabled:placeholder-shown,
.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span {
    border-top-color: rgba(var(--pure-material-onsurface-rgb, 0, 0, 0), 0.38) !important;
}

.pure-material-textfield-outlined > input:disabled:placeholder-shown + span::before,
.pure-material-textfield-outlined > input:disabled:placeholder-shown + span::after,
.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span::before,
.pure-material-textfield-outlined > textarea:disabled:placeholder-shown + span::after {
    border-top-color: transparent !important;
}

/* Faster transition in Safari for less noticable fractional font-size issue */
@media not all and (min-resolution:.001dpcm) {
    @supports (-webkit-appearance:none) {
        .pure-material-textfield-outlined > input,
        .pure-material-textfield-outlined > input + span,
        .pure-material-textfield-outlined > textarea,
        .pure-material-textfield-outlined > textarea + span,
        .pure-material-textfield-outlined > input + span::before,
        .pure-material-textfield-outlined > input + span::after,
        .pure-material-textfield-outlined > textarea + span::before,
        .pure-material-textfield-outlined > textarea + span::after {
            transition-duration: 0.1s;
        }
    }
}

[include*="form-input-select()"] {
  display: block;
  padding: 0;
  position: relative;
  /* Set options to normal weight */
  /* ------------------------------------  */
  /* START OF UGLY BROWSER-SPECIFIC HACKS */
  /* ----------------------------------  */
  /* FIREFOX won't let us hide the native select arrow, so we have to make it wider than needed and clip it via overflow on the parent container.
     The percentage width is a fallback since FF 4+ supports calc() so we can just add a fixed amount of extra width to push the native arrow out of view. We're applying this hack across all FF versions because all the previous hacks were too fragile and complex.
     You might want to consider not using this hack and using the native select arrow in FF. Note this makes the menus wider than the select button because they display at the specified width and aren't clipped. Targeting hack via http://browserhacks.com/#hack-758bff81c5c32351b02e10480b5ed48e */
  /* Show only the native arrow */
  color: #005BA6;
  display: block;
  border-radius: 0;
  box-shadow: none;
  font-size: 16px;
  margin-top: 9px;
  margin-bottom: 15px;
  width: 100%;
}

.select-css {
    display: block;
    font-size: 16px;
    font-family: sans-serif;
    font-weight: 700;
    color: #444;
    line-height: 1.3;
    padding: .6em 1.4em .5em .8em;
    width: 100%;
    max-width: 100%; 
    box-sizing: border-box;
    margin: 0;
    border: 1px solid #aaa;
    box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
    border-radius: .5em;
    -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
    background-color: #fff;
    background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),
      linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
    background-repeat: no-repeat, repeat;
    background-position: right .7em top 50%, 0 0;
    background-size: .65em auto, 100%;
}
.select-css::-ms-expand {
    display: none;
}
.select-css:hover {
    border-color: #888;
}
.select-css:focus {
    border-color: #aaa;
    box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
    box-shadow: 0 0 0 3px -moz-mac-focusring;
    color: #222; 
    outline: none;
}
.select-css option {
    font-weight:normal;
}

.fuente {
  color:#707070 !important;
  font-size:1.2em !important;
  height: 50px;
  padding-bottom:20px !important;
}

form{
    position: relative;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    transition: all 1s;
    width: 400px;
    height: 50px;
    background: white;
    box-sizing: border-box;
    border-radius: 25px;
    border: 4px solid #edeff0;
    padding: 0 0 10px 0;
    background-color: white;
}

input{
    position: absolute;
    top: 0;
    left: 0;

    width: 400px !important;
    line-height: 40px !important;
    color:white;
    display: none;
    font-size: 1em;
    border-radius: 20px;
    padding: 0 10px 10px 0;
    border: 1px solid black !important;
}

.fa{
    box-sizing: border-box;
    padding: 10px;
    width: 42.5px;
    height: 42.5px;
    position: absolute;
    top: 0;
    right: 0;
    border-radius: 50%;
    color: #07051a;
    text-align: center;
    font-size: 1.2em;
    transition: all 1s;
}

form:hover{
    width: 400px;
    cursor: pointer;
    border: 4px solid #ccc;
}

form:hover input{
    display: block;
}

form:hover .fa{
    background: #ccc;
    color: white !important;
}

</style>


<script>
export default {
  data() {
    return {
      page: 2,
      publicIdeas:{},
     
        show:false,
        mostradas:[],
        tipo:'all',
        busqueda:'',
        dialog:false,
        linkToIdea:'',
        baseUrl:window.baseUrl,
        ideaImg:'',
        snackbar: false,
        y: 'top',
        x: null,
        mode: '',
        timeout: 5000,
        text: 'Link copiado al portapapeles'

        
        
       
    }
    
  },

  methods: {


    copyPorta(link){

      this.dialog= false
       let testingCodeToCopy = document.querySelector('#linkTo')
          testingCodeToCopy.setAttribute('type', 'text')   
          testingCodeToCopy.select()

        var successful = document.execCommand('copy');

        this.snackbar=true



    },

    showDialog(idea){

      this.dialog=true
      this.linkToIdea= this.baseUrl+'public-ideas/view/'+idea.id
      this.ideaImg = idea.img


    },

    showMore(idea){


      //TODO: hacer que funcione para cada una
      
    },

    getPublicIdeas(){
      axios.get('/getPublicIdeas')
          .then((response) => {
          
            this.publicIdeas = response.data.publicIdeas
            
          })
          .catch(function (error) {
          console.log(error);
          });
    }

  },
  mounted() {

    this.getPublicIdeas();

   
  }
};
</script>

