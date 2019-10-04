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
            },
            placeholder:{
                type:String,
                default:'Aquí va el contenido del editor de texto.'
            }
        },
        mounted() {

            






            let config = {
                height: this.height,
                placeholder:this.placeholder
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