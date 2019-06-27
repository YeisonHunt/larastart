<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7 "> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]><html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head><meta http-equiv="Content-Type" content="charset=UTF-8" />
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>Asakaa | Ideas Públicas</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Favicons -->
    <link rel="icon" type="image/svg+xml" href="{{asset('landing/html/content/agency3/images/fav.png')}}" sizes="any">

    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons" rel="stylesheet">

    <!-- FONTS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:100,300,400,400italic,700'>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Patua+One:100,300,400,400italic,700'>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic,900'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli:100,300,400,400italic,500,600,700,700italic'>
    <!-- CSS -->
    <link rel='stylesheet' href='{{asset('landing/html/css/global.css')}}'>
    <link rel='stylesheet' href='{{asset('landing/html/content/agency3/css/structure.css')}}'>
    <link rel='stylesheet' href='{{asset('landing/html/content/agency3/css/agency3.css')}}'>

     <link rel='stylesheet' href='{{asset('landing/html/css/style-demo.css')}}'>
     <link rel="stylesheet" href="{{asset('landing/main.css')}}">

         <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
         
         <link href="https://fonts.googleapis.com/css?family=Satisfy&display=swap" rel="stylesheet">




</head>
<body class="color-custom style-default button-default layout-full-width no-content-padding header-classic minimalist-header-no sticky-header sticky-tb-color ab-hide subheader-both-center menu-link-color menuo-right menuo-no-borders mobile-tb-center mobile-side-slide mobile-mini-mr-ll tablet-sticky mobile-header-mini mobile-sticky tr-header tr-menu tr-content be-reg-20971">
    <div id="Wrapper">
        <div id="Header_wrapper">
            <header id="Header">
                <div id="Top_bar" style="min-height:80px; background-color:white !important;">
                    <div class="container">
                        <div class="column one">
                            <div class="top_bar_left clearfix">
                                <div class="logo">
                                    <a id="logo" href="{{route('raiz')}}" title="Asakaa | Innova" style="height: 100px !important;"   data-height="60" data-padding="10"><img class="logo-main scale-with-grid"   src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">


                                        <img class="logo-sticky scale-with-grid"   src="{{asset('landing/html/content/agency3/images/horizontal.png')}}" data-retina="{{asset('landing/html/content/agency3/images/gradient_logo.png')}}" data-height="60" alt="Asakaa | Innova" style="padding-top:10px; margin-top:20px; max-height: 40px " >

                                        <img class="logo-mobile scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">

                                        <img class="logo-mobile-sticky scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="Asakaa | Innova"></a>
                                </div>
                                <div class="menu_wrapper">
                                    <nav id="menu">
                                        <ul id="menu-main-menu" class="menu menu-main">
                                            <li >
                                                <a href="{{ route('raiz') }}"><span>Inicio</span></a>
                                            </li>

                                            <li class="current-menu-item">
                                                <a href="{{route('publicIdeas') }}"><span>Explorar Ideas</span></a>
                                            </li>
                                            <li>
                                                <a href="https://asakaa.com" target="_blank"><span>Asakaa Partnership </span></a>
                                            </li>
                                            <li>
                                                <a href="{{ route('login') }}"><span>Entrar</span></a>
                                            </li>
                                            <li>
                                                    <a href="{{ route('register') }}" class=""><span class="myBtn">Registrarme</span></a>

                                            </li>
                                        </ul>
                                    </nav>
                                    <a class="responsive-menu-toggle" href="#"><i class="icon-menu-fine"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>




    <div id="Container" class="container" style="margin-top:140px; 
    background-image: url('{{asset('landing/html/content/agency3/css/img/home_agency3_bg.png')}}')
   
    
    ">

                <div class="row">
                    <div class="col-3">
                        <h3  class="mt-4" style="font-family: 'Satisfy', cursive;">Ideas Públicas</h3>
                        
                    </div>

                    <div class="col-6">
                            <div class="input-group " style="margin-top:27px">
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                                    <div class="input-group-append">
                                      <span class="input-group-text ">Buscar</span>
                                      
                                    </div>
                                  </div>
                    </div>

                    <div class="col-3">
                          
                                    <label for="exampleSelect1" class="bmd-label-floating">Filtrar por tipo</label>
                                    <select class="form-control" id="exampleSelect1">
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                    </select>
                                 
                    </div>

                </div>
                <br>

                <div class="row">


                        <div class="col-6">

                          <div class="card ">
                                <img class="card-img-top" src="https://images.pexels.com/photos/1260309/pexels-photo-1260309.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Card image cap">
                            <div class="card-body">
                              <h5 class="card-title">Special title treatment</h5>
                              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                              <a href="javacript:;" class="btn  btn-primary " style="text-style:capitalize;">Ver idea completa</a>
                            </div>
                          </div>


                        </div>
                        <div class="col-6">
                          <div class="card">
                                <img class="card-img-top" src="https://images.pexels.com/photos/315658/pexels-photo-315658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Card image cap">
                            <div class="card-body">
                              <h5 class="card-title">Special title treatment</h5>
                              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                              <a href="javacript:;" class="btn  btn-primary " style="text-style:capitalize;">Ver idea completa</a>
                            </div>
                          </div>
                        </div>
                      </div>

                      <br>

                      <div class="row">
                            <div class="col-6">
                                    
                              <div class="card">
                                    <img class="card-img-top" src="https://images.pexels.com/photos/450279/pexels-photo-450279.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Card image cap">
                                <div class="card-body">
                                  <h5 class="card-title">Special title treatment</h5>
                                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                  <a href="javacript:;" class="btn  btn-primary " style="text-style:capitalize;">Ver idea completa</a>
                                </div>
                              </div>
                            </div>
                            <div class="col-6">
                              <div class="card">
                                    <img class="card-img-top" src="https://images.pexels.com/photos/1181310/pexels-photo-1181310.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Card image cap">
                                <div class="card-body">
                                  <h5 class="card-title">Special title treatment</h5>
                                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                  <a href="javacript:;" class="btn  btn-primary " style="text-style:capitalize;">Ver idea completa</a>
                                </div>
                              </div>
                            </div>
                          </div>

                          <br>
              
          

        </div>











        <footer id="Footer" class="clearfix">
                <div class="widgets_wrapper" style="padding:70px 0 20px;">
                    <div class="container">
                        <div class="column one-second">
                            <aside class="widget_text widget widget_custom_html">
                                <div class="textwidget custom-html-widget">
                                    <div class="image_frame image_item no_link scale-with-grid alignnone no_border">
                                        <div class="image_wrapper">
                                            <img class="scale-with-grid" src="{{asset('landing/html/content/agency3/images/horizontal.png')}}" width="50%">
                                        </div>
                                    </div>
                                    <hr class="no_line" style="margin: 0 auto 80px">
                                    <p style="font-size: 30px; line-height: 30px">
                                        <a style="color: #4767aa;" href="{{ route('facebook') }}" target="_blank"><i class="icon-facebook-circled"></i></a>
    
                                                                            <a style="color: #1da1f2;" href="{{ route('twitter') }}" target="_blank"><i class="icon-twitter-circled"></i></a>
    
                                                                            <a style="color: #1da1f2;" href="{{ route('linkedin') }}" target="_blank"><i class="icon-linkedin-circled"></i></a>
                                    </p>
                                </div>
                            </aside>
                        </div>
                        <div class="column one-fourth">
                            <aside class="widget_text widget widget_custom_html">
                                <h4>Contáctanos</h4>
                                <div class="textwidget custom-html-widget">
                                    <p>
                                        Comunícate al Whatsapp y te responderemos en el menor tiempo posible.
                                    </p>
                                    <h4>+57 312 6665895</h4>
                                    <p>
                                        o si prefieres por correo electrónico
                                        <a href="mailto:support@asakaa.com">support@asakaa.com</a>
                                    </p>
                                </div>
                            </aside>
                        </div>
                        <div class="column one-fourth">
                            <aside class="widget_text widget widget_custom_html">
                                <h4>Localización</h4>
                                <div class="textwidget custom-html-widget">
                                    <p>
                                        Bogotá,
    
                                        <br> Colombia
                                    </p>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
                <div class="footer_copy">
                    <div class="container">
                        <div class="column one">
                            <a id="back_to_top" class="button button_js" href="#"><i class="icon-up-open-big"></i></a>
                            <div class="copyright">
                                &copy; 2019 Asakaa Project Management <a target="_blank" rel="nofollow" href="https://asakaa.com"> -> Visitar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
    </div>

    
				
                
    <!-- side menu -->
    <div id="Side_slide" class="right dark" data-width="250">
        <div class="close-wrapper">
            <a href="#" class="close"><i class="icon-cancel-fine"></i></a>
        </div>
        <div class="menu_wrapper"></div>
    </div>
    <div id="body_overlay"></div>
    <!-- JS -->
    <script src="{{ asset('landing/html/js/jquery-2.1.4.min.js')}}"></script>
    <script src="{{ asset('landing/html/js/mfn.menu.js')}}"></script>
    <script src="{{ asset('landing/html/js/jquery.plugins.js')}}"></script>
    <script src="{{ asset('landing/html/js/animations/animations.js')}}"></script>
    <script src="{{ asset('landing/html/js/translate3d.js')}}"></script>
    <script src="{{ asset('landing/html/js/scripts.js')}}"></script>

    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
    <script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

    <script src="{{ asset('landing/app.js')  }}" >
    
    </script>



</body>
</html>
