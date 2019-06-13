<template>
  <div style="min-height:80vh;">
    <div class="row">
      <h4>Module under construction...</h4>
      <img
        v-bind:src="baseUrl +'img/reports_aside.svg'"
        alt
        style="width:auto;
                height:auto;
                max-width:100%;
                max-height:80vh;"
      >
    </div>

    <div class="row justify-content-center" v-if="1==2">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header">Timesheets Component</div>

          <div class="card-body">Timesheets Component</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      editMode: false,
      ideas: {},
      baseUrl: window.baseUrl,

      form: new Form({
        id: "",
        ideatxt: "",
        bugorfeaturetxt: ""
      })
    };
  }
};
</script>
