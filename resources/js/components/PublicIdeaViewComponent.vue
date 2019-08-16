<template>
  <div :class="{'container-fluid':mobile, 'container-fluid':large}">
    <div class="row"  style="min-height:80vh;">
      <div class="col-lg-12 col-sm-12 col-md-12">
        <div class="kt-portlet mobilePortlet">
          <div class="kt-portlet__head">
            <div class="kt-portlet__head-label">
              <router-link to="/innovations" class="btn btn-clean kt-margin-r-10">
                <i style="padding-bottom:8px;" class="la la-arrow-left"></i>
                <span class="kt-hidden-mobile">Back</span>
              </router-link>

              <span class="kt-portlet__head-icon">
                <i class="flaticon2-calendar-2"></i>
              </span>

              <h3 class="kt-portlet__head-title">{{idea.title}}</h3>
            </div>
            <div class="kt-portlet__head-toolbar">
              <div class="kt-portlet__head-actions">

                 <button  v-if="!alreadyLiked1(idea)"   @click="likeIdea('like')"  class="btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">
                  <i class="flaticon2-arrow-up" ></i>
                  &nbsp; {{voteText}}
                </button>


                 <button  v-if="alreadyLiked1(idea)"  @click="likeIdea('unlike')" class="btn btn-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">
                  <i class="flaticon2-arrow-up"  ></i>
                  &nbsp; {{likedText}}
                 </button>

                 <button  v-if="!alreadyLiked2(idea)"   @click="likeIdea('dislike')"  class="btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">
                  <i class="flaticon2-arrow-down "  ></i>
                  &nbsp; {{voteTextN}}
                </button>


                 <button  v-if="alreadyLiked2(idea)"  @click="likeIdea('undislike')" class="btn btn-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">
                  <i class="flaticon2-arrow-down"  ></i>
                  &nbsp; {{likedTextN}}
                 </button>

                  <button  v-if="!alreadyLiked3(idea)"   @click="likeIdea('action')"  class="btn btn-outline-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">
                 <div style="padding:2px; font-size:0.8rem; "> Acción de mejora</div>
                </button>


                 <button  v-if="alreadyLiked3(idea)"  @click="likeIdea('unaction')" class="btn btn-primary btn-sm btn-icon pulse btn-icon-md " :class="{'largeBtn':large}">

                 <div style="padding:2px; font-size:0.8rem; "> Acción de mejora</div>

                 </button>




              </div>
            </div>
          </div>
          <!-- end portlet head-->

          
          <v-img :src="idea.img" aspect-ratio="4"></v-img>

          <div class="kt-portlet__body wrapText" id="ideaBody"  v-html="idea.body"></div>

          <br>

          <div class="user-section">
            <div class="row">
              <div class="col-12">
                <!--begin:: Widgets/New Users-->
                <div class="kt-portlet kt-portlet--tabs kt-portlet--height-fluid">
                  <div class="kt-portlet__body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="kt_widget4_tab1_content">
                        <div class="kt-widget4">
                          <div class="kt-widget4__item">
                            <div class="kt-widget4__pic kt-widget4__pic--pic">
                              <img
                                src="https://microhealth.com/assets/images/illustrations/personal-user-illustration-@2x.png"
                                height="40"
                                width="130"
                                alt
                              >
                            </div>

                            <div class="kt-widget4__info" v-if="idea.author=='showme'">
                              <a href="#" class="kt-widget4__username">{{userIdea.name}}</a>
                              <p class="kt-widget4__text">{{userIdea.email}}</p>
                            </div>

                            <a
                              href="#"
                              class="btn btn-sm btn-label-brand"
                              v-if="idea.author=='showme'"
                            >Contact user</a>

                            <div class="kt-widget4__info" v-if="idea.author=='anonymous'">
                              <a href="#" class="kt-widget4__username">Anonymous User</a>
                              <p class="kt-widget4__text">Visual Designer, Google Inc</p>
                            </div>

                            <a
                              href="#"
                              class="btn btn-sm btn-label-brand"
                              v-if="idea.author=='anonymous'"
                            >Contact user</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <br>
                    <!-- Start comments-section -->
                    <div class="comments-section">
                      <div class="row bootstrap snippets">
                        <div class="col-12">
                          <div class="comment-wrapper">
                            <div class="panel panel-info">
                              <div class="panel-body">
                                <h5 class="ml-3 mt-5">Comments Section</h5>

                                <form
                                  @submit.prevent="goLastComment"
                                  @keydown="form.onKeydown($event)"
                                  class="form-inline"
                                >
                                  <div class="form-group">
                                    <textarea
                                      v-model="form.body"
                                      class="form-control fit-width-input"
                                      style=" margin:10px; overflow:hidden;  "
                                      placeholder="Write a comment..."
                                      rows="2"
                                      required
                                    ></textarea>
                                  </div>

                                  <div class="form-group">
                                    <button
                                      type="submit"
                                      class="btn btn-primary form-control"
                                      :disabled="form.busy"
                                    >
                                      Comment
                                      <i class="flaticon-paper-plane"></i>
                                    </button>
                                  </div>
                                </form>

                                <br>
                                <ul class="media-list">
                                  <li
                                    class="media"
                                    v-for="d in discussionsFinal"
                                    :key="discussionsFinal.id"
                                    v-bind:id="'padre'+d.discussions.id"
                                  >
                                    <a href="#" class="pull-left">
                                      <img
                                        :src=" 'https://picsum.photos/100?random=' + d.discussions.id"
                                        alt
                                        class="imgCircle"
                                      >
                                    </a>
                                    <div class="media-body">
                                      <span class="text-muted pull-right mr-5">
                                        <h6
                                          class="text-muted"
                                        >{{d.discussions.created_at |humanDate2}}</h6>
                                      </span>
                                      <strong class="text-success">&nbsp;{{d.discussions.name}}</strong>
                                      <p class="biggerFont">{{d.discussions.body}}</p>

                                      <div class="icons">
                                        <a
                                          @click="likeComment(d.discussions.id)"
                                          class="animated bounce"
                                        >
                                          <i
                                            class="normalFont links biggerIcons"
                                            style="display:inline;"
                                          >



                                            <vue-star
                                              v-if="checkLiked(d.discussions.likes)"
                                              animate="animated  normalFont links"
                                              color="#ccc"
                                            >
                                              <a
                                                slot="icon"
                                                class="fas fa-thumbs-up"
                                                style="color:#4285F4;"
                                              ></a>
                                            </vue-star>

                                            <vue-star
                                              v-else
                                              animate="animated bounce normalFont links"
                                              color="#4285F4"
                                            >
                                              <a
                                                slot="icon"
                                                class="fas fa-thumbs-up"
                                                style="color:gray;"
                                              ></a>
                                            </vue-star>




                                          </i>
                                          &nbsp; &nbsp; &nbsp; &nbsp;
    
                                          {{ ' '+ d.discussions.likes.length  }} {{likesText}}
                                        </a>
                                        &nbsp; &nbsp;
                                        <a
                                          @click="addChild(d.discussions.id)"
                                        >
                                          <span>
                                            <i
                                              class="flaticon-reply normalFont links"
                                            >&nbsp; {{d.childs.length}}  comments</i>
                                          </span>
                                        </a>
                                      </div>
                                    </div>

                                    <br>
                                    <br>
                                    <div class="media sub" v-for="sub in d.childs" :key="sub.id">
                                      <a class="pull-left">
                                        <!--v-bind:src="baseUrl +'/'+ sub.avatar" -->
                                        <img
                                          :src=" 'https://picsum.photos/110?random=' + sub.id"
                                          alt
                                          class="imgCircle"
                                        >
                                      </a>
                                      <div class="media-body">
                                        <span class="text-muted pull-right mr-5">
                                          <h6 class="text-muted">{{sub.created_at |humanDate2}}</h6>
                                        </span>
                                        <strong class="text-success">&nbsp;{{sub.name}}</strong>
                                        <p class="biggerFont">{{sub.body}}</p>

                                        <div class="icons">
                                          <a @click="likeComment(sub.id)" class="animated bounce">
                                            <i
                                              class="normalFont links biggerIcons"
                                              style="display:inline;"
                                            >
                                              <vue-star
                                                v-if="checkLiked(sub.likes)"
                                                animate="animated  normalFont links"
                                                color="#ccc"
                                              >
                                                <a
                                                  slot="icon"
                                                  class="fas fa-thumbs-up"
                                                  style="color:#4285F4;"
                                                ></a>
                                              </vue-star>

                                              <vue-star
                                                v-else
                                                animate="animated bounce normalFont links"
                                                color="#4285F4"
                                              >
                                                <a
                                                  slot="icon"
                                                  class="fas fa-thumbs-up"
                                                  style="color:gray;"
                                                ></a>
                                              </vue-star>
                                            </i>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            {{ ' '+sub.likes.length}} {{likesText}}
                                          </a>
                                          &nbsp; &nbsp;
                                          <a
                                            @click="addChild(d.discussions.id)"
                                          >
                                            <span>
                                              <i class="flaticon-reply normalFont links"></i>
                                            </span>
                                          </a>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="childComment" v-if="checkChilds(d) && 1==2">
                                      <form
                                        @submit.prevent="sendChildComment(d.discussions.id)"
                                        @keydown="formChild.onKeydown($event)"
                                        class="form"
                                      >
                                        <div class="form-group">
                                          <input
                                            type="text"
                                            class="form-control child-response-input"
                                            v-model="formChild.body"
                                            placeholder="Write a reply... Enter key to send"
                                          >
                                        </div>
                                      </form>
                                    </div>

                                    <div
                                      class="childComment"
                                      style="display:none;"
                                      :id="d.discussions.id"
                                    >
                                      <form
                                        @submit.prevent="sendChild2Comment(d.discussions.id)"
                                        @keydown="formChild2.onKeydown($event)"
                                        class="form"
                                      >
                                        <div class="form-group">
                                          <input
                                            type="text"
                                            :id="'texto'+d.discussions.id"
                                            class="form-control child-response-input"
                                            v-model="formChild2.body"
                                            placeholder="Write a reply... Enter key to send"
                                          >
                                        </div>
                                      </form>
                                    </div>
                                  </li>

                                  <br>
                                  <br>
                                  <br>
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end comments-section -->
                  </div>
                </div>

                <!--end:: Widgets/New Users-->
              </div>
            </div>
          </div>
          <!-- end user section -->
        </div>
      </div>
    </div>



    <!-- end row -->
  </div>
  <!-- end container -->
</template>

<style type="text/css">

.toast-title {
  color:white !important;
}


.fadeImg {
  
    -webkit-animation: fadein 2s; /* Safari, Chrome and Opera > 12.1 */
       -moz-animation: fadein 2s; /* Firefox < 16 */
        -ms-animation: fadein 2s; /* Internet Explorer */
         -o-animation: fadein 2s; /* Opera < 12.1 */
            animation: fadein 2s;
}

@keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Firefox < 16 */
@-moz-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Safari, Chrome and Opera > 12.1 */
@-webkit-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Internet Explorer */
@-ms-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Opera < 12.1 */
@-o-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

.noEscondido {
  display:block !important;
}

.escondido {
  display:none;
}

.largeBtn {
  width:100px !important;
}

.pulse {
  --color: #1164c5;
  --hover: #1164c5;
}


.pulse:hover,
.pulse:focus {
  -webkit-animation: pulse 3s infinite;
          animation: pulse 3s infinite;
  box-shadow: 0 0 0 2em rgba(255, 255, 255, 0);
}

@-webkit-keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 var(--hover);
  }
}

@keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 var(--hover);
  }
}

.wrapText {
  word-wrap: break-word !important;
}

.VueStar__decoration {
  width: 50px;
  height: 50px;
  position: absolute;
}

.biggerIcons {
  font-size: 1.5em !important;
}

.VueStar__icon {
  position: static !important;
  z-index: 0;
  height: 30px;
  width: 20px;
}

.VueStar__ground {
  width: 1px;
  height: 1px;
  margin-left: 60px;
  margin-top: 10px;
}

@media (max-width: 600px) {
      .VueStar__ground {
      
      margin-left: 10px;
      margin-top: 10px;
    }
}


.auxiliarVueStar {
   margin-left: 5px;
}
.icons {
  margin-left: 10px;
}

.media-list {
  padding-left: 0;
}

.links {
  cursor: pointer;
}

.center {
  margin-right: 10px !important;
}

.fit-width-input {
  width: 30vw !important;
}

.child-response-input {
  margin-left: 70px;
  position: relative;
  width: 70% !important;
}

.biggerFont {
  font-size: 1.1em;
  padding-left: 30px !important;
  margin-left: 40px !important;
}

.biggerFont2 {
  font-size: 1.1em;
}

.normalFont {
  font-style: normal !important;
  font-size: 1.05em;
  color: grey;
}

.normalFont:hover {
  color: #4286f4;
}

.sub {
  padding-left: 70px;
}

.imgCircle {
  border-radius: 30px;
}

.media {
  display: block;
}

.allHeight {
  height: 100vh !important;
}

.comment-wrapper .media-list .media img {
  width: 64px;
  height: 64px;
  border: 2px solid #e5e7e8;
}

.comment-wrapper .media-list .media {
  border-bottom: 1px dashed #efefef;
  margin-bottom: 25px;
}
</style>

<script>

toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": true,
  "positionClass": "toast-top-center",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "4000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}


export default {
  data() {
    return {
      canIseeVar:false,
      permissions:{},
      id: this.$route.params.id,
      idea: {},
      editMode: false,
      ideas: {},
      user:window.User,
      userIdea: {},
      liked: "",
      user: window.user,
      discussionsFinal: {},
      like: {},
      containter: "",
      containerFluid: "",
      likesPerIdea:{},
      foundLiked:false,
      baseUrl: window.baseUrl,
      randomNumber: Math.floor(Math.random() * 100),
      lastCommentId: "",
      id_idea_general: this.$route.params.id,

      form: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        body: "",
        discussion_parent_id: 0
      }),

      formChild: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        body: "",
        discussion_parent_id: ""
      }),

      formChild2: new Form({
        user_id: window.user.id,
        idea_id: this.$route.params.id,
        body: "",
        discussion_parent_id: ""
      }),

      formLike: new Form({
        user_id: window.user.id,
        comment_id: "",
        idea_id: this.$route.params.id
      }),

      formDesired:new Form({
        innovation_id: this.$route.params.id,
        user_id: window.user.id
      })

    };
  },

  computed: {



    updatedLastIdComment: function() {
      //console.log('Termino de enviar comentario. Ir a padre'+this.lastCommentId);
      //document.getElementById('padre'+this.lastCommentId).focus();
      //console.log('Se marmat');
    },

    randomNumber2: function() {
      return Math.floor(Math.random() * 100);
    },

    mobile: function() {
      if (this.$mq == "sm") {
        return true;
      } else {
        return false;
      }
    },

    large: function() {
      if (this.$mq == "md" || this.$mq == "lg") {
        return true;
      } else {
        return false;
      }
    },

     voteText: function(){
      if(this.$mq=='sm'){
        return '';
      }else if(this.$mq=='md' || this.$mq=='lg'){
        return 'Me gusta'
      }else {
        return 'Me gusta'
      }

    },

    likedText: function(){
      if(this.$mq=='sm'){
        return '';
      }else if(this.$mq=='md' || this.$mq=='lg'){
        return 'Me gusta'
      }else {
        return 'Me gusta'
      }

    },

     voteTextN: function(){
      if(this.$mq=='sm'){
        return '';
      }else if(this.$mq=='md' || this.$mq=='lg'){
        return 'Pulir +'
      }else {
        return 'Pulir +'
      }

    },

    likedTextN: function(){
      if(this.$mq=='sm'){
        return '';
      }else if(this.$mq=='md' || this.$mq=='lg'){
        return 'Pulir +'
      }else {
        return 'Pulir +'
      }

    },
  },

  methods: {

   
    
    

    alreadyLiked1(idea){



        if (this.likesPerIdea.length != 0) {


        let foundLiked2 = false;
        try {
          this.likesPerIdea.forEach(function(el) {
            if (el.user_id == window.user.id && el.type=='like') {

              foundLiked2 = true;

            }
          });
        } catch (e) {}

        this.foundLiked = foundLiked2;
        return foundLiked2;
      } else {

        this.foundLiked=false;

        return false;
      }




    }, // end alreadyLike(idea)
		alreadyLiked2(idea){



        if (this.likesPerIdea.length != 0) {


        let foundLiked2 = false;
        try {
          this.likesPerIdea.forEach(function(el) {
            if (el.user_id == window.user.id && el.type=='dislike') {

              foundLiked2 = true;

            }
          });
        } catch (e) {}

        this.foundLiked = foundLiked2;
        return foundLiked2;
      } else {

        this.foundLiked=false;

        return false;
      }




    }, // end alreadyLike(idea)2

		alreadyLiked3(idea){



        if (this.likesPerIdea.length != 0) {


        let foundLiked2 = false;
        try {
          this.likesPerIdea.forEach(function(el) {
            if (el.user_id == window.user.id && el.type=='action') {

              foundLiked2 = true;

            }
          });
        } catch (e) {}

        this.foundLiked = foundLiked2;
        return foundLiked2;
      } else {

        this.foundLiked=false;

        return false;
      }




    }, // end alreadyLike(idea)3



    likeIdea(type){

   

      this.$Progress.start();
      // Submit the form via a POST request

      this.formDesired.type = type;

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');
      this.formDesired
        .post("/saveDesired")
        .then(response => {
          toastr.success("Gracias por la valoración.", "Sigue puntuando tus ideas favoritas.");
         
          this.likesPerIdea = response.data.desired;
        })
        .catch(error => {
          console.log(error);
        
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    checkLiked(likeObject) {
      //if(likeObject.)

      if (likeObject.length != 0) {
        var scoped = this;

        let found = false;
        try {
          likeObject.forEach(function(elements) {
            if (elements.user_id == window.user.id) {
            
              found = true;
            }
          });
        } catch (e) {}

        return found;
      } else {
        this.liked = false;
        return false;
      }
    },

    likeComment(idComment) {
    

      this.formLike.comment_id = idComment;
      this.formLike.idea_id = this.id_idea_general;

      this.$Progress.start();
      // Submit the form via a POST request

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');
      this.formLike
        .post("/saveLike")
        .then(response => {
          toastr.success("Keep innovating", "Thanks for the feedback.");
          this.formLike.comment_id = "";
          this.formLike.idea_id = "";
          this.discussionsFinal = response.data.discussions;
        })
        .catch(error => {
          console.log(error);
          this.formLike.comment_id = "";
          this.formLike.idea_id = "";
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();

      //this.discussionsFinal.discussions.push();
    },

    addChild(idPadre) {
      $("#" + idPadre).attr("style", "display:block");
      document.getElementById("texto" + idPadre).focus();
    },

    checkChilds(padre) {
      if (padre.childs.length > 0) {
        return true;
      } else {
        return false;
      }
    },

    loadUsers() {
      // podemos usar this.form.get but we are gonna use axios

      axios
        .get("/getInnovation/" + this.id)
        .then(response => {
          this.idea = response.data.idea;
          this.userIdea = response.data.user;
          this.discussionsFinal = response.data.discussions;
          this.likesPerIdea = response.data.desired;
          this.permissions = response.data.permissions;

          //console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
    },

    sendComment() {
      this.$Progress.start();
      // Submit the form via a POST request

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');
      this.form
        .post("/addComment")
        .then(response => {
          toastr.success("Awesome!", "Comment added successfully.");
          this.form.reset();

          this.discussionsFinal = response.data.discussions;

          //this.lastCommentId = response.data.lastCommentId;
          this.likesPerIdea = response.data.desired;
        })
        .catch(error => {
          console.log(error);
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },

    goLastComment() {
      this.sendComment();
    },

    sendChildComment(idComment) {
      this.$Progress.start();
      // Submit the form via a POST request

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild.discussion_parent_id = idComment;

      this.formChild
        .post("/addComment")
        .then(response => {
          toastr.success("Awesome!", "Comment added successfully.");
          this.formChild.reset();

          this.discussionsFinal = response.data.discussions;
          this.likesPerIdea = response.data.desired;
        })
        .catch(() => {
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    },
    sendChild2Comment(idComment) {
      this.$Progress.start();
      // Submit the form via a POST request

      //this.form.editordata =  $('#kt_summernote_1').summernote('code');

      this.formChild2.discussion_parent_id = idComment;

      this.formChild2
        .post("/addComment")
        .then(response => {
          toastr.success("Awesome!", "Comment added successfully.");
          this.formChild2.reset();

          $("#" + idComment).attr("style", "display:none");

          this.discussionsFinal = response.data.discussions;
          this.likesPerIdea = response.data.desired;

          // document.getElementById('padre'+response.data.lastCommentId).focus();
        })
        .catch(error => {
          console.log(error);
          toastr.error("Oops!", "Something goes wrong");
        });

      //$('#userCreationModal').modal('hide');

      this.$Progress.finish();
    }
  },
  created() {
    
    
    
  },

  mounted() {
    
    this.loadUsers();

  }
};
</script>


