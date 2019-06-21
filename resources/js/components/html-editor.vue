<template>
    <textarea id="mySummer" class="form-control summernote" required></textarea>
</template>

<style>

.summernote {
	display: fixed !important;
}
</style>


<script>
    export default{
        props : {
            model: {
                required: true
            },
            height: {
                type: String,
                default: '300'
            }
        },
        mounted() {

            






            let config = {
                height: this.height
            };
            let vm = this;
            config.callbacks = {
                onInit: function () {
                    $(vm.$el).summernote("code", vm.model);
                    $(".dropdown-toggle").dropdown(); //wow
                },
                onChange: function () {
                    vm.$emit('update:model', $(vm.$el).summernote('code'));
                },
            };
            $(this.$el).summernote(config);
        }
    }
</script>