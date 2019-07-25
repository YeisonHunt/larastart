<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<head><meta http-equiv="Content-Type" content="charset=UTF-8" />
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>A Innova | Pricing</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Favicons -->
    <link rel="icon" type="image/svg+xml" href="{{asset('landing/html/content/agency3/images/fav.png')}}" sizes="any">

    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons" rel="stylesheet">

    <!-- FONTS -->
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,400italic,700'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Patua+One:100,300,400,400italic,700'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic,900'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli:100,300,400,400italic,500,600,700,700italic'>
    <!-- CSS -->
    <link rel='stylesheet' href='{{asset('landing/html/css/global.css')}}'>
    <link rel='stylesheet' href='{{asset('landing/html/content/agency3/css/structure.css')}}'>
    <link rel='stylesheet' href='{{asset('landing/html/content/agency3/css/agency3.css')}}'>

     <link rel='stylesheet' href='{{asset('landing/html/css/style-demo.css')}}'>
     <link rel="stylesheet" href="{{asset('landing/main.css')}}">


    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/bootstrap/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/brands.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/fontawesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/jquery-ui.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/jquery.mCustomScrollbar.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/line-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/vendor_assets/css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('pricingA/style.css')}}">


    <style>
    
    .is-sticky{
        height: 100px !important;
    }

    .gradiente {
        background: -webkit-linear-gradient(#333, #eee);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    }

    .precio:hover {

        box-shadow: 0 0 1em lightgreen;

    }
    
    </style>

</head>
<body class="color-custom style-default button-default layout-full-width no-content-padding header-classic minimalist-header-no sticky-header sticky-tb-color ab-hide subheader-both-center menu-link-color menuo-right menuo-no-borders mobile-tb-center mobile-side-slide mobile-mini-mr-ll tablet-sticky mobile-header-mini mobile-sticky tr-header tr-menu tr-content be-reg-20971">
    <div id="Wrapper">
        <div id="Header_wrapper">
            <header id="Header">
                <div id="Top_bar" style="background-color:#FAFAFA !important;" >
                    <div class="container">
                        <div class="column one">
                            <div class="top_bar_left clearfix">
                                <div class="logo" style="display:block;">
                                    <a id="logo" href="{{route('raiz')}}" title="Asakaa | Innova" style="height: 60px !important;"   data-height="60" data-padding="10">
                                        
                                        <img class="logo-main scale-with-grid" style="max-height:60px;"  src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">


                                        <img class="logo-sticky scale-with-grid"   src="{{asset('landing/html/content/agency3/images/horizontal.png')}}" data-retina="{{asset('landing/html/content/agency3/images/gradient_logo.png')}}" data-height="60" alt="Asakaa | Innova" style="padding-bottom:32px; max-height: 60px !important;" >

                                        <img class="logo-mobile scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">

                                        <img class="logo-mobile-sticky scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="Asakaa | Innova"></a>
                                </div>
                                <div class="menu_wrapper">
                                    <nav id="menu">
                                        <ul id="menu-main-menu" class="menu menu-main">
                                            <li >
                                                <a href="{{route('raiz') }}"><span>Inicio</span></a>
                                            </li>

                                            <li>
                                                <a href="{{route('publicIdeas') }}"><span>Explorar Ideas</span></a>
                                            </li>
                                            <li>
                                                <a href="https://asakaa.com" target="_blank"><span>Asakaa Project </span></a>
                                            </li>

                                            <li  class="current-menu-item" >
                                                <a href="{{route('pricing')}}"><span>Pricing </span></a>
                                                    </li>




                                            @if (Route::has('login'))
                                            @auth
                                            <li>
                                                    <a href="{{ route('admin') }}" class=""><span class="myBtn">Go Dashboard</span></a>

                                            </li>
                                            @else
                                                 <li>
                                                    <a href="{{ route('login') }}"><span>Entrar</span></a>
                                                </li>
                                                <li>
                                                        <a href="{{ route('register') }}" class=""><span class="myBtn">Registrarme</span></a>
    
                                                </li>
    

                                            @endauth
                                            @endif




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
        <div id="Content">
            
            <div class="container-fluid">
                
                <section class="section-padding-1_7 section-bg">
                    <div class="container pt-4">
                            <center><h1 class="gradiente">Precios</h1></center>

                            <br>
                            <br>
                            <br>
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="pricing pricing--1 precio ">
                                    <div class="pricing__title">
                                        <h4>
                                            Plan Starter
                                            <span class="atbd_plan-active">Para comenzar</span>
                                        </h4>
                                    </div>
                                    <div class="pricing__price rounded">
                                        <p class="pricing_value">
                                            <sup>$</sup>Free<small> / Forever</small>
                                        </p>
                                        <p class="pricing_subtitle">Up to 50 Users</p>
                                        <!-- <p class="pricing_description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit, tempora!</p> -->
                                    </div>
                                    <div class="pricing__features">
                                        <ul class="list-unstyled">
                                            <li><span class="la la-check available"></span> Ideas <span class="atbd_color-success">Ilimitadas</span>
                                            </li>
                                            <li><span class="la la-check available"></span> Retos <span class="atbd_color-success">Ilimitados</span></li>

                                            <li><span class="la la-check available"></span>100 Price Limit Options</li>
                                            <li><span class="la la-check available"></span>150 Tags Limit</li>
                                            <li><span class="la la-check available"></span><span class="atbd_color-success">Unlimited</span> Listing Image</li>
                                            <li><span class="la la-times unavailable"> </span>Average Price Range</li>
                                            <li><span class="la la-times unavailable"> </span>Business Hours</li>
                                            <li><span class="la la-times unavailable"> </span>Image Gallery</li>
                                            <li><span class="la la-times unavailable"></span> Gallery Image Limit</li>
                                        </ul>
                                        <div class="price_action m-top-25">
                                            <a href="{{ route('register') }}" class="btn btn-block btn-outline-secondary price_action--btn">Continue</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="pricing pricing--1 atbd_pricing_special precio">
                                    <span class="atbd_popular_badge">Recommended</span>
                                    <div class="pricing__title">
                                        <h4>
                                            Advanced Plan
                                        </h4>
                                    </div>
                                    <div class="pricing__price rounded">
                                        <p class="pricing_value">
                                            <sup>$</sup>3<small> / mensual</small>
                                        </p>
                                        <p class="pricing_subtitle">Por  Usuario</p>
                                        <!-- <p class="pricing_description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit, tempora!</p> -->
                                    </div>
                                    <div class="pricing__features">
                                        <ul class="list-unstyled">
                                                <li><span class="la la-check available"></span> Ideas <span class="atbd_color-success">Ilimitadas</span>
                                            </li>
                                            <li><span class="la la-check available"></span> Retos <span class="atbd_color-success">Ilimitados</span></li>
                                            <li><span class="la la-check available"></span>100 Price Limit Options</li>
                                            <li><span class="la la-check available"></span>150 Tags Limit</li>
                                            <li><span class="la la-check available"></span><span class="atbd_color-success">Unlimited</span> Listing Image</li>
                                            <li><span class="la la-times unavailable"> </span>Average Price Range</li>
                                            <li><span class="la la-times unavailable"> </span>Business Hours</li>
                                            <li><span class="la la-times unavailable"> </span>Image Gallery</li>
                                            <li><span class="la la-times unavailable"></span> Gallery Image Limit</li>
                                        </ul>
                                        <div class="price_action m-top-25">
                                            <a href="{{ route('register') }}" class="btn btn-block btn-secondary price_action--btn">Working on it</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="pricing pricing--1 precio">
                                    <div class="pricing__title">
                                        <h4>
                                            Enterprise Plan
                                        </h4>
                                    </div>
                                    <div class="pricing__price rounded">
                                        <p class="pricing_value">
                                            <sup>$</sup>5<small> / mensual</small>
                                        </p>
                                        <p class="pricing_subtitle">Por usuario</p>
                                        <!-- <p class="pricing_description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit, tempora!</p> -->
                                    </div>
                                    <div class="pricing__features">
                                        <ul class="list-unstyled">
                                                <li><span class="la la-check available"></span> Ideas <span class="atbd_color-success">Ilimitadas</span>
                                                </li>
                                                <li><span class="la la-check available"></span> Retos <span class="atbd_color-success">Ilimitados</span></li>
                                            <li><span class="la la-check available"></span>100 Price Limit Options</li>
                                            <li><span class="la la-check available"></span>150 Tags Limit</li>
                                            <li><span class="la la-check available"></span><span class="atbd_color-success">Unlimited</span> Listing Image</li>
                                            <li><span class="la la-times unavailable"> </span>Average Price Range</li>
                                            <li><span class="la la-times unavailable"> </span>Business Hours</li>
                                            <li><span class="la la-times unavailable"> </span>Image Gallery</li>
                                            <li><span class="la la-times unavailable"></span> Gallery Image Limit</li>
                                        </ul>
                                        <div class="price_action m-top-25">
                                            <a href="{{ route('register') }}" class="btn btn-block btn-outline-secondary price_action--btn">Working on it</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section><!-- ends: section -->
            </div>
        </div>
        <footer id="Footer" class="clearfix ">
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



</body>
</html>
