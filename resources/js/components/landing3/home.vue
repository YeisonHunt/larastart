<template>

<div class="hole">
    
</div>
</template>

<style>
</style>

<script>

export default {
  

  data: function () {
    return {
      baseUrl: window.baseUrl,
     
    }
  },

  
   mounted() {

     console.log('montado')
       var youtube = document.querySelectorAll(".video-container");
      for (var i = 0; i < youtube.length; i++) {
        var source = "https://img.youtube.com/vi/" + youtube[i].dataset.embed + "/mqdefault.jpg";
        var image = new Image();
        image.dataset.src = source;
        image.classList.add('lozad');
        image.style.filter = 'blur(5px)';
        image.addEventListener("load", function () {
          youtube[i].appendChild(image);
        }(i));
        youtube[i].addEventListener("click", function () {
          var iframe = document.createElement("iframe");
          iframe.setAttribute("frameborder", "0");
          iframe.setAttribute("allowfullscreen", "");
          iframe.setAttribute("src",
            "https://www.youtube.com/embed/" + this.dataset.embed + "?rel=0&showinfo=0&autoplay=0&start=0");
          this.innerHTML = "";
          this.appendChild(iframe);
        });
      }
      ;


      $(document).ready(function(){
        $("#header").removeClass("hideUntilLoad");
        $("#home").removeClass("hideUntilLoad");
        $("#footer").removeClass("hideUntilLoad");
         $("#spinner").addClass("hideUntilLoad");
         document.getElementById('home').style.display = "block";
      }

      );

     
      document.getElementById("inicioLink").classList.add("active");
  


      
  },


};
</script>

