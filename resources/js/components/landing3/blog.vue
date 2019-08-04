<template>
    
    <div class="hole">
        Estamos en blog
    </div>

</template>

<style>

</style>


<script>
export default {




    mounted() {
        document.getElementById('home').style.display = "none";
        document.getElementById("inicioLink").classList.remove("active");
    }
    
}
</script>
