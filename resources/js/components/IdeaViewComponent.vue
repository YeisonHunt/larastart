<template>
  <div class="row">
    <div class="col-12">
      <div class="kt-portlet mobilePortlet">
        <div class="kt-portlet__head">
          <div class="kt-portlet__head-label">
            <router-link to="/innovations" class="btn btn-clean kt-margin-r-10">
              <i class="la la-arrow-left"></i>
              <span class="kt-hidden-mobile">Back</span>
            </router-link>

            <span class="kt-portlet__head-icon">
              <i class="flaticon2-calendar-2"></i>
            </span>

            <h3 class="kt-portlet__head-title">{{idea.title}}</h3>
          </div>
          <div class="kt-portlet__head-toolbar">
            <div class="kt-portlet__head-actions">
              <a href="#" class="btn btn-outline-success btn-sm btn-icon btn-icon-md">
                <i class="flaticon2-search-1"></i>
              </a>
              <router-link
                v-bind:to="'/innovationsEdit/'+this.id"
                class="btn btn-outline-danger btn-sm btn-icon btn-icon-md"
              >
                <i class="flaticon2-gear"></i>
              </router-link>
              <a href="#" class="btn btn-outline-brand btn-sm btn-icon btn-icon-md">
                <i class="flaticon2-calendar-5"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="kt-portlet__body" id="ideaBody" v-html="idea.body"></div>

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
                          <div class="kt-widget4__info">
                            <a href="#" class="kt-widget4__username">Dave Strong</a>
                            <p class="kt-widget4__text">Visual Designer, Google Inc</p>
                          </div>

                          <a href="#" class="btn btn-sm btn-label-brand btn-bold">Contact user</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!--end:: Widgets/New Users-->

              <div class="comments-section">
                <div class="row bootstrap snippets">
                  <div class="col-12">
                    <div class="comment-wrapper">
                      <div class="panel panel-info">
                        <div class="panel-body">
                          <form>
                            <div class="form-group">
                              <textarea
                                class="form-control"
                                style="width:85vw; margin:10px;"
                                placeholder="Write a comment..."
                                rows="2"
                              ></textarea>
                              <br>
                              <button type="button" class="btn btn-info pull-right" style="margin-right:10px;">Post</button>
                            </div>
                          </form>

                          <div class="clearfix"></div>
                          <hr>
                          <ul class="media-list">
                            <li class="media">
                              <a href="#" class="pull-left">
                                <img
                                  src="https://bootdey.com/img/Content/user_1.jpg"
                                  alt
                                  class="img-circle"
                                >
                              </a>
                              <div class="media-body">
                                <span class="text-muted pull-right">
                                  <small class="text-muted">30 min ago</small>
                                </span>
                                <strong class="text-success">&nbsp;@MartinoMont</strong>
                                <p>
                                  &nbsp;
                                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                  Lorem ipsum dolor sit amet,
                                  <a href="#">&nbsp;#consecteturadipiscing</a>.
                                </p>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#" class="pull-left">
                                <img
                                  src="https://bootdey.com/img/Content/user_2.jpg"
                                  alt
                                  class="img-circle"
                                >
                              </a>
                              <div class="media-body">
                                <span class="text-muted pull-right">
                                  <small class="text-muted">30 min ago</small>
                                </span>
                                <strong class="text-success">&nbsp;@LaurenceCorreil</strong>
                                <p>
                                  &nbsp;
                                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                  Lorem ipsum dolor
                                  <a href="#">&nbsp;#ipsumdolor</a>adipiscing/
                                </p>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#" class="pull-left">
                                <img
                                  src="https://bootdey.com/img/Content/user_3.jpg"
                                  alt
                                  class="img-circle"
                                >
                              </a>
                              <div class="media-body">
                                <span class="text-muted pull-right">
                                  <small class="text-muted">30 min ago</small>
                                </span>
                                <strong class="text-success">&nbsp;@JohnNida</strong>
                                <p>
                                  &nbsp;
                                  Lorem ipsum dolor
                                  <a href="#">&nbsp;#sitamet</a> sit amet, consectetur adipiscing elit.
                                </p>
                              </div>
                            </li>
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
        </div>
        <!-- end user section -->
      </div>
    </div>
  </div>
  <!-- end row -->
</template>

<style type="text/css">
.allHeight {
  height: 100vh !important;
}

.comment-wrapper .panel-body {
  max-height: 650px;
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
export default {
  data() {
    return {
      id: this.$route.params.id,
      idea: {},
      editMode: false,
      ideas: {},

      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: "",
        img: ""
      })
    };
  },

  methods: {
    loadUsers() {
      // podemos usar this.form.get but we are gonna use axios

      axios
        .get("/getInnovation/" + this.id)
        .then(({ data }) => (this.idea = data));
    }
  },
  created() {
    console.log("Visor de ideas individuales mounted");
    this.loadUsers();
  },

  mounted() {
    document.getElementById("ideaBody").innerHTML = this.idea.body;
  }
};
</script>


