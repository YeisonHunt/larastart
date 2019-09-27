<!DOCTYPE html>
<html  lang="es" class="new-home">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Asakaa Innova - Una herramienta para que lleves a tu empresa a una nueva era.</title>
  
  <link rel="icon" type="image/png" sizes="192x192" href="{{asset('modern-innova/images/features/faviconInnova-min.png')}}">
 
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="language" content="es" />
  <meta name="title" content="Asakaa | Innova - Herramienta de administración y validación de ideas.">
  <meta name="keywords" content="herramienta de innovación, asakaa, innovar, herramienta online, emprender, validar, innovación profesional" />
  <meta name="description"
    content="Asakaa | Innova - Herramienta de administración y validación de ideas." />
  <meta name="author" content="asakaa.com" />
  <meta name="copyright" content="asakaa.com" />
  <meta name="distribution" content="global" />
  <meta name="robots" content="all" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="canonical" href="{{route('raiz')}}" />

 
  <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "url": "https://www.guardproject.com",
            "logo": "https://www.guardproject.com/modern-innova/faviconInnova-min.png"
        }
    </script>
  <meta property="og:title" content="Asakaa | Innova - Herramienta de administración y validación de ideas." />
  <meta property="og:description" 
    content="Asakaa | Innova - Herramienta de administración y validación de ideas." />
  <meta property="og:image" content="https://www.guardproject.com/modern-innova/faviconInnova-min.png" />
  <style>
    .async-hide {
      opacity: 0 !important
    }
  </style>
  <link  href="{{asset('modern-innova/css/new_home.5db11bb9710cb72ec455a4f37baf3e2e.min.css')}}" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">

  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124651178-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-124651178-3');
</script>




  
<meta name="csrf-token" content="{{ csrf_token() }}">

<script>
  window.Laravel = {!! json_encode([
  'csrfToken' => csrf_token(),
  
   ]) !!};
  
   window.baseUrl = "<?php echo (env('APP_URL')); ?>";
  </script>


  <style>


    

    @media (min-width: 1000px) {
      .container {
        max-width: 80% !important;
      }
    }

    .active {
      color: #586DFF !important;
    }

    

    
    
  </style>

  <style>
    .spinner {
  margin: 100px auto;
  width: 40px;
  height: 40px;
  position: relative;
}

.cube1, .cube2 {
  background-color: #333;
  width: 15px;
  height: 15px;
  position: absolute;
  top: 0;
  left: 0;
  
  -webkit-animation: sk-cubemove 1.8s infinite ease-in-out;
  animation: sk-cubemove 1.8s infinite ease-in-out;
}

.cube2 {
  -webkit-animation-delay: -0.9s;
  animation-delay: -0.9s;
}

@-webkit-keyframes sk-cubemove {
  25% { -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5) }
  50% { -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg) }
  75% { -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5) }
  100% { -webkit-transform: rotate(-360deg) }
}

@keyframes sk-cubemove {
  25% { 
    transform: translateX(42px) rotate(-90deg) scale(0.5);
    -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
  } 50% { 
    transform: translateX(42px) translateY(42px) rotate(-179deg);
    -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
  } 50.1% { 
    transform: translateX(42px) translateY(42px) rotate(-180deg);
    -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
  } 75% { 
    transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
    -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
  } 100% { 
    transform: rotate(-360deg);
    -webkit-transform: rotate(-360deg);
  }
}

.hideUntilLoad {
  display:none !important;
}
  </style>


  
</head>



<body>
 
  <div id="innova-app">

      <div id="spinner">

    
      <div class="spinner">
          <div class="cube1"></div>
          <div class="cube2"></div>
          
        </div>
        <p style="text-align:center; ">Cargando Innova...</p>
      </div>

        
    
<header class="hideUntilLoad" id="header">
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed pull-right"  data-toggle="collapse"
            data-target="#mobile-navbar" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>





          <a href="/" id="navlogo" class="navbar-brand">
            <img src="{{asset('modern-innova/images/features/LogoInnova-min.png')}}" alt="logo" />
          </a>
        </div>
        <div class="collapse navbar-collapse" id="mobile-navbar">
          <ul class="nav navbar-nav navbar-right" id="navRight">

                <li><router-link :to="{name:'home'}" id="inicioLink" >Inicio</router-link></li>

              <li><router-link to="/global-ideas" active-class="active" >Ideas Globales</router-link></li>
         
            <li class="dropdown">
              <router-link to="/products" active-class="active" aria-haspopup="true"
              
                aria-expanded="false">Productos</router-link>
              
            </li>
            <li><router-link to="/pricing" active-class="active">Precios</router-link></li>
            <li><router-link to="/blog" active-class="active">Blog</router-link></li>
            <li><router-link href="/blog">Blog</router-link></li>

            
          @if (Route::has('login'))
          @auth
          <li class="register">
          <a id="register-header" class="register btn" href="{{route('innovations')}}">
              Ir al panel de innovación
            </a>
          </li>

          
         @else
         <li class="register">
          <a id="register-header" class="register btn" href="/register">
            Registrarme
          </a>
        </li>

        
        <li class="login">
            <a href="{{route('login')}}">
              Iniciar sesión
            </a>
          </li>


          @endauth
        @endif

            





          </ul>
        </div>
      </div>
    </nav>
  </header>




  <router-view :key="$route.fullPath"></router-view>





  <div id="home" class="hideUntilLoad">
    
  <section id="headerBanner" class="container animated fadeIn">
    <div class="banner-text content">
      <h1 id="firstHeadline">
        Transforma ideas positivas en oportunidades de innovación para tu empresa.
        <br>
      </h1>
      <p>
        Innova  aumenta las oportunidades de crecer mediante un sistema de gestión, retroalimentación y validación de ideas.
         A nivel local  y a nivel mundial.

        
      </p>
      <div class="banner-cta">
      <a class="btn btn-lg" href="{{route('login')}}">
          <span>Comienza Gratis Ahora</span>
        </a>
      </div>
    </div>
    <div class="banner-img">
      <img src="{{asset('modern-innova/images/innovation_meeting-min.png')}}"
        title="Asakaa Innova para profesinales." alt="Asakaa Innova para profesinales." />
    </div>
  </section>
  <section id="whatPeopleWant">
    <div class="container scroll-animations">
      <div class="row">
        <div class="col-xs-12 content">
          <h2 class="animated" data-animation="fadeIn">Mejora y valida las ideas que tengas para mejorar tu empresa y el mundo entero.</h2>
          <div class="animated" data-animation="fadeIn">
            <p>
              Si llevas ideas a tu empresa, sabes la importancia de convertirlas en proyectos de innovación.

              <br>
              Asakaa <strong>Innova</strong> permite a usuarios y generadores de ideas recibir retroalimentación, votar y compartir diferentes opiniones sobre futuros proyectos. 
            </p>
            <div class="video-container header" id="videoButton1" data-embed="HzaL5A6I1yk">
              <div class="play-button" ></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="productsCliengo" class="scroll-animations">
    <div class="container">
      <div class="content">
        <h2>Dale más poder a tu equipo de trabajo</h2>
        <p>Con una <strong>plataforma de control de ideas</strong> pensada para mejorar la calidad de los proyectos de innovación. Los usuarios se sentirán aún más parte de la empresa y cada opinión servirá para guiarla a la modernización.</p>
      </div>
      <div class="block-container">
        <div class="block-chatbot animated" data-animation="slideInLeft">
          <div class="block-description">
            <img class="img-fluid lozad jc" src="{{asset('modern-innova/images/global2-min.png')}}"  
              title="Chatbot" alt="Chatbot">
            <h3>Ideas Globales</h3>
            
            <p>Asakaa Innova es una plataforma  mundial donde muchas de las mejores ideas son compartidas cada día, puedes ayudar a puntuar y mejorarla para que una empresa o el mundo sean cada vez mejores.</p>
            <br>
            <div style="height: 5px;"></div>
            <a href='chatbot.html'  >Descubre las ideas globales</a>
          </div>
        </div>
        <div class="block-live animated" data-animation="fadeIn">
          <div class="block-description">
            <img class="img-fluid lozad jc" src="{{asset('modern-innova/images/feedback2-min.png')}}"  
              title="Live Chat" alt="Live Chat">
             
            <h3>Retroalimentación local y mundial</h3>
            <p>Aumenta el potencial de tu equipo convirtiendo el chatbot en un live chat cuando un asesor se encuentre disponible.</p>
            <a href='live-chat.html'  >Descubre una potente retroalimentación</a>
          </div>
        </div>
        <div class="block-crm animated" data-animation="slideInRight">
          <div class="block-description">
            <img class="img-fluid lozad jc"
              src="{{asset('modern-innova/images/management2-min.png')}}" title="CRM Gratuito" 
              alt="CRM Gratuito">
            <h3>Administración centralizada</h3>
            <p>El jefe de innovación puede estar pendiente de todas las ideas que generan los diferentes grupos en una empresa con solo hacer 1 click.</p>
            <br>
            <div style="height: 5px;"></div>
            <a href=''>Descubre administración centralizada</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="companyTestimonial" class="scroll-animations">
    <div class="container animated" data-animation="fadeIn">
      <h2>¿Por qué apostar a la innovación para transformar América Latina?</h2>
      <div class="content">
        <div class="clg-1">
          <img class="lozad" alt="Asakaa Innova para profesinales."
            title="Mira como Asakaa | Innova es apreciada inclusive por gerentes de bancos. "
            src="{{asset('images/comillas.png')}}">
          <p>
            "En América Latina se ha disminuido la pobreza y ha aumentado considerablemente la clase media en los últimos años. Sin embargo, necesitamos crecer en escala 
            y para eso necesitamos fortalecer el conocimiento y sobre todo la innovación."
            <br /><br />
            <span class="author">
              <span class="name">Luis Alberto Moreno<br /></span>
              <span class="rol">Gerente Banco Interamericano de Desarrollo<br /></span>
            </span>
          </p>
        </div>
        <div class="clg-2 video-container" id="videoButton2" data-embed="IR3vbSpnlOY">
          <div class="play-button" ></div>
        </div>
      </div>
    </div>
  </section>
  <section id="demoAndExplanation">

    <section id="demo">
      <div class="container scroll-animations">
        <div class="row">
          <div class="col-xs-12 content">
            <h3 class="animated" data-animation="fadeIn">Prueba como quedarían tus grupos de trabajo manejados en Asakaa | Innova</h3>
            <form id="preview-now" class="animated" data-animation="slideInUp">
              <div class="form-group">
                <label for="websiteInputPreview">Ingresa tu correo electrónico de trabajo</label>
                <input type="text" id="websiteInputPreview" class="form-control" name="website"
                  placeholder="micorreoprofesinoal@mail.com" />
                <p id="demo-input-error">Por favor ingrese su sitio web</p>
                <button type="submit" class="btn btn-lg">Probar ahora</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>



    <section id="chatbotWhatIsChatbot">
      <div class="container scroll-animations">
        <div class="row">
          <div class="col-xs-12 content">
            <h2 class="animated" data-animation="slideInUp">¿Cómo funciona la plataforma de Asakaa | Innova?</h2>
            <div class="animated" data-animation="slideInUp">
              <p>
                Utilizar una herramienta de innovación incrementa considerablemente la madurez y la objetividad de las ideas mientras son convertidas en proyectos reales.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="chatbotExplanation">
      <div class="container scroll-animations">
        <div class="row">
          <div class="col-xs-12 content">
            <div class="text animated" data-animation="slideInLeft">
              <h3>Retroalimentación 
                Interna</h3>
              <p>Asakaa | Innova agrupa y coordina las ideas que tengan los empleados de una empresa para que estas pasen a evaluación y revisión por parte del equipo de innovación.</p>
            </div>
            <div class="img animated" data-animation="slideInRight">
              <img class="lozad" alt="Optimizado para aumentar tus oportunidades de vender"
                title="Optimizado para aumentar tus oportunidades de vender"
                src="{{asset('modern-innova/images/features/internal_feedback-min.png')}}" height="300px">
            </div>
            <div class="text visible-xs animated" data-animation="fadeIn">
              <h3>Retos empresariales</h3>
              <p>Asakaa | Innova permite la creación de desafíos para los miembros de una empresa con el fin de solucionar un problema específico.</p>
            </div>
            <div class="img animated" data-animation="fadeIn delay-400ms">
              <img class="lozad" alt="Mejora la experiencia de tus usuarios en tiempo real" 
                title="Mejora la experiencia de tus usuarios en tiempo real"
                src="{{asset('modern-innova/images/features/retos-min.png')}}" height="300px">
            </div>
            <div class="text hidden-xs animated" data-animation="fadeIn">
              <h3>Retos empresariales</h3>
              <p>Asakaa | Innova permite la creación de desafíos para los miembros de una empresa con el fin de solucionar un problema específico.</p>
            </div>
            <div class="text animated" data-animation="slideInLeft">
              <h3>Retroalimentación 
                Externa</h3>
              <p>Asakaa | Innova permite hacer públicas las ideas o retos de una empresa para que todo aquel ajeno a la compañía aporte una solución o ayude a mejorar un sector.</p>
            </div>
            <div class="img animated" data-animation="slideInRight">
              <img
                src="{{asset('modern-innova/images/features/external_feedback-min.png')}}" height="300px"
                alt="ARTIFICIAL_INTELLIGENCE" title="Inteligencia artificial al servicio de tu negocio" class="lozad">
            </div>
            <div class="text visible-xs animated" data-animation="slideInLeft">
              <h3>Manejo 
                de equipos de innovación</h3>
              <p>Asakaa | Innova permite la creación de grupos de trabajo a los que se les puede asignar un reto de innovación o simplemente para manejar retroalimentación.</p>
            </div>
            <div class="img animated" data-animation="fadeIn">
              <img src="{{asset('modern-innova/images/features/equipos-min.png')}}" height="300px"
                alt="Instalable y configurable en pocos minutos" title="Instalable y configurable en pocos minutos"
                class="lozad">
            </div>
            <div class="text hidden-xs animated" data-animation="fadeIn delay-400ms">
              <h3>Manejo 
                de equipos de innovación</h3>
              <p>Asakaa | Innova permite la creación de grupos de trabajo a los que se les puede asignar un reto de innovación o simplemente para manejar retroalimentación.</p>
            </div>
          
          </div>
        </div>
      </div>
    </section>
  </section>

  <section id="companiesUseCliengo" class="scroll-animations">
    <div class="container animated" data-animation="fadeIn">
      <div class="row">
        <div class="col-xs-12 content">
          <h3>
            Qué dicen nuestros clientes...
          </h3>
          <div id="testimonial-icons-carousel">
            <div class="slide">
              <a href="" target="_blank">
              <img class="lozad" src="{{asset('modern-innova/images/somos.png')}}" />
                SoMoS
              </a>
            </div>
            <div class="slide">
              <a href="" target="_blank">
                <img class="lozad" src="{{asset('modern-innova/images/dagalec.png')}}" />
                Dagalec Ltda
              </a>
            </div>
            <div class="slide">
              <a href="" target="_blank">
                <img class="lozad" src="{{asset('modern-innova/images/esatic.png')}}" />
               Esatic
              </a>
            </div>
            
          </div>
          <div id="testimonials-carousel">
              <div class="slide">
                  <p>"Testimonios de nuestras primeras 3 empresas"</p>
                  <img class="lozad" data-src="" />
                  <p class="name"></p>
                  <p class="title">En este momento contamos con 37 empresas latinoaméricanas.</p>
                </div>
            <div class="slide">
              <p>" Hemos mejorado notablemente la evaluación de las ideas por parte de todos los miembros de la empresa. Antes lo hacíamos en herramientas separadas y no es muy aconsejable."</p>
              <img class="lozad" src="{{asset('modern-innova/images/somos.png')}}" />
              <p class="name">PhD. Javier Hurtado</p>
              <p class="title">Gerente de SoMoS Software & Mobile Solutions, Colombia</p>
            </div>
            
           

            <div class="slide">
                <p>" En el grupo de telemática hemos organizado nuestras ideas y hemos recibido retroalimentación masiva de nuestros estudiantes. Es una excelente herramienta."</p>
                <img class="lozad" height="60" src="{{asset('modern-innova/images/dagalec.png')}}" />
                <p class="name">José Luis Fernández</p>
                  <p class="title">Gerente Dagalec Ltda, Colombia.</p>
              </div>

              <div class="slide">
                  <p>"Me parece una herramienta fácil y al punto. Nuestros empleados mediante la interfaz han ayudado bastante en los diferentes aspectos de innovación dentro de la empresa."</p>
                  <img class="lozad" height="40" src="{{asset('modern-innova/images/esatic.png')}}" />
                 

                  <p class="name">Carlos Mendez</p>
                  <p class="title">Esatic, Colombia</p>
                </div>
            
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="live-end white-bg">
    <div class="container register-landing scroll-animations">
      <div class="row animated" data-animation="fadeIn">
        <div class="col-xs-12 text-center">
          <h2>¿Estás listo para innovar?</h2>
          <p>Prueba Asakaa | Innova  gratis por 60 días. Sin necesidad de tarjeta de crédito.</p>
        </div>
        <div class="col-xs-12 text-center">
        <a href="{{route('register')}}" class="btn btn-lg">Regístrate ahora
            gratis</a>
        </div>
      </div>
    </div>
  </section>
  </div>

  
  </div>




  <footer class="hideUntilLoad" id="footer">
    <div id="copyright">
      <img class="lozad" src="{{asset('modern-innova/images/features/LogoInnova.png')}}" alt="logo" />
      <p>&copy; 2019 asakaa.com. <br>Todos los derechos reservados.</p>
    </div>
    <div id="product" class="links">
      <h5>Producto</h5>
      <ul>
        <li><a href="pricing.html">Precios</a></li>
        <li><a id=demoLink href="">Demo en vivo</a></li>
        <li><a href="" target="_blank">Inteligencia Artificial</a></li>
        <li>
          <a href="" target="_blank">
            Google Ads
          </a>
        </li>
        <li><a href="" target="_blank">Casos de éxito</a></li>
      </ul>
    </div>
    <div id="company" class="links">
      <h5>Compañía</h5>
      <ul>
        <li><a href="" target="_blank">Innova Corporate</a></li>
        <li><a target="_blank" href="index.html">Trabaja con nosotros</a></li>
        <li><a href="index.html">Términos y condiciones del servicio</a></li>
        <li><a href="index.html">Política de privacidad</a></li>
      </ul>
    </div>
    <div id="useful-resources" class="links">
      <h5>Útiles</h5>
      <ul>
        <li><a target="_blank" href="#">Agencias & partners</a></li>
        <li><a target="_blank" href="index.html">Desarrolladores</a>
        </li>
        <li><a target="_blank" href="index.html">Comunidad</a>
        </li>
        <li><a target="_blank" href="">Blog</a></li>
        <li><a href="">Centro de ayuda</a></li>
      </ul>
    </div>


    <div id="social-networks" class="links" style="">
      <h5>Síguenos en</h5>
      <div class="social">
        <a href="" target="_blank">
          <i class="icon-facebook ic-2x"></i>
        </a>
        <a href="" target="_blank">
          <i class="icon-linkedin ic-2x"></i>
        </a>
        <a href="" target="_blank">
          <i class="icon-twitter ic-2x"></i>
        </a>
        <a href="" target="_blank">
          <i class="icon-youtube-play ic-2x"></i>
        </a>
      </div>
    </div>

  </footer>
  <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
 
  <link rel="stylesheet" href="{{asset('modern-innova/public/2f34c7d7b1/iconos/style.css')}}">

  

  <script src="{{asset('modern-innova/ajax/libs/jquery/3-2-1/jquery.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('modern-innova/npm/slick-carousel_1-8-1/slick/slick.min.js')}}"></script>
  <script type="text/javascript">
   
    //Reescribir el headline si viene el userName con algun valor.
    if ("") {
      //Para agarrar la primer letra del headline y hacerla mayuscula.
      var firstHeadline = "Asakaa Innova para profesinales.";
      var hlWithoutFirstLetter = firstHeadline.split(firstHeadline[0]);
      //Agarro la primer letra del nombre y la hago mayuscula.
      var userNameToUpperCase = "";
      var finalUserName = userNameToUpperCase.split(userNameToUpperCase[0]);
      var newHeadline = "<h1>" + userNameToUpperCase[0].toUpperCase() + finalUserName[1] + ", " +
        firstHeadline[0].toLowerCase() + hlWithoutFirstLetter[1] + "</h1>";
      $("#firstHeadline").replaceWith(newHeadline);
    }
    else if (getCookie('websiteUrl')) {
      // Tomo la URL de la website
      const websiteUrl = getCookie('websiteUrl');
      newHeadline =
        "<h1 style='font-size: 42px;'>" + "El sitio <b>" + websiteUrl +
        "</b> "
        + "usa Asakaa Innova para innovar con más rapidez y calidad en tu empresa." + "</h1>";
      $("#firstHeadline").replaceWith(newHeadline);
    }
    function getCookie(sKey) {
      if (!sKey) {
        return null;
      }
      return decodeURIComponent(document.cookie.replace(new RegExp(
        "(?:(?:^|.*;)\\s*" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"),
        "$1")) || null;
    }
    animateOnScroll();
    // PATCH RESPONSIVE
    if ($(window).width() < 380) {
      $('#headerBanner .banner-cta a').text('Comienza Gratis');
    }
    function animateOnScroll() {
      // Check if element is scrolled into view
      function isScrolledIntoView(elem) {
        var docViewTop = $(window).scrollTop();
        var docViewBottom = docViewTop + $(window).height();
        var elemTop = $(elem).offset().top;
        return elemTop <= (docViewBottom - 150); // 150 offset
      }
      // If element is scrolled into view, fade it in
      $(document).scroll(function () {
        animateIfOnViewport();
      });
      animateIfOnViewport();
      function animateIfOnViewport() {
        $('.scroll-animations .animated').each(function () {
          if (isScrolledIntoView(this)) {
            $(this).addClass($(this).data('animation') + ' visible');
          }
        });
      }
    }
    function initializeCarousel() {
      $(document).ready(function () {
        $('#testimonials-carousel').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          autoplay: true,
          arrow: true,
          asNavFor: '#testimonial-icons-carousel',
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false,
              }
            },
          ],
        });
        $('#testimonial-icons-carousel').slick({
          slidesToShow: 4,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 10 * 1000,
          dots: false,
          centerMode: true,
          focusOnSelect: true,
          // focusOnSelect: true, // If true, remove <a>'s from slides
          arrows: false,
          asNavFor: '#testimonials-carousel',
          mobileFirst: false,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 1,
                arrows: true,
              }
            },
          ]
        });
      });
    }
    initializeCarousel();
  </script>

  <script>
  
  $(document).ready(function(){

    $("#header").removeClass("hideUntilLoad");
        $("#home").removeClass("hideUntilLoad");
        $("#footer").removeClass("hideUntilLoad");
         $("#spinner").addClass("hideUntilLoad");
  });
  </script>

  <script>
        function animateOnScroll() {
          // Check if element is scrolled into view
          function isScrolledIntoView(elem) {
            var docViewTop = $(window).scrollTop();
            var docViewBottom = docViewTop + $(window).height();
            var elemTop = $(elem).offset().top;
            return elemTop <= (docViewBottom - 150); // 150 offset
          }
          // If element is scrolled into view, fade it in
          $(document).scroll(function () {
            animateIfOnViewport();
          });
          animateIfOnViewport();
          function animateIfOnViewport() {
            $('.scroll-animations .animated').each(function () {
              if (isScrolledIntoView(this)) {
                $(this).addClass($(this).data('animation') + ' visible');
              }
            });
          }
        }
        function initializeCarousel() {
          $(document).ready(function () {
            $('#testimonials-carousel').slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              autoplay: true,
              arrow: true,
              asNavFor: '#testimonial-icons-carousel',
              responsive: [
                {
                  breakpoint: 768,
                  settings: {
                    arrows: false,
                  }
                },
              ],
            });
            $('#testimonial-icons-carousel').slick({
              slidesToShow: 4,
              slidesToScroll: 1,
              autoplay: true,
              autoplaySpeed: 10 * 1000,
              dots: false,
              centerMode: true,
              focusOnSelect: true,
              // focusOnSelect: true, // If true, remove <a>'s from slides
              arrows: false,
              asNavFor: '#testimonials-carousel',
              mobileFirst: false,
              responsive: [
                {
                  breakpoint: 768,
                  settings: {
                    slidesToShow: 1,
                    arrows: true,
                  }
                },
              ]
            });
          });
        }
      </script>
    
     
      <script type="text/javascript" src="{{asset('modern-innova/home.js')}}" async></script>


    
      <script src="{{asset('js/appLanding.js')}}"></script>

      <script>
      window.onload = function(){

        document.getElementById('videoButton1').click();
        document.getElementById('videoButton2').click();
        const el = document.createElement('div')
        el.setAttribute('data-app', true)
        document.body.appendChild(el)
                

      }

      
      </script>

  
</body>

</html>