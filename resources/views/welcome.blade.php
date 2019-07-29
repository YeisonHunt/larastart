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
    <title>Asakaa | Innova</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Favicons -->
    <link rel="icon" type="image/png" href="{{asset('images/icon.png')}}">

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




</head>
<body class="color-custom style-default button-default layout-full-width no-content-padding header-classic minimalist-header-no sticky-header sticky-tb-color ab-hide subheader-both-center menu-link-color menuo-right menuo-no-borders mobile-tb-center mobile-side-slide mobile-mini-mr-ll tablet-sticky mobile-header-mini mobile-sticky tr-header tr-menu tr-content be-reg-20971">
    <div id="Wrapper">
        <div id="Header_wrapper">
            <header id="Header">
                <div id="Top_bar" style="background-color:#FAFAFA !important;">
                    <div class="container">
                        <div class="column one">
                            <div class="top_bar_left clearfix">
                                <div class="logo">
                                    <a id="logo" href="{{route('raiz')}}" title="Asakaa | Innova" style="height: 60px !important;"   data-height="60" data-padding="10"><img class="logo-main scale-with-grid"   src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">


                                        <img class="logo-sticky scale-with-grid"   src="{{asset('landing/html/content/agency3/images/horizontal.png')}}" data-retina="{{asset('landing/html/content/agency3/images/gradient_logo.png')}}" data-height="60" alt="Asakaa | Innova" style="padding-bottom:32px; max-height: 40px" >

                                        <img class="logo-mobile scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="agency3">

                                        <img class="logo-mobile-sticky scale-with-grid" src="{{asset('landing/html/content/agency3/images/innova.png')}}" data-retina="{{asset('landing/html/content/agency3/images/innova.png')}}" data-height="50" alt="Asakaa | Innova"></a>
                                </div>
                                <div class="menu_wrapper">
                                    <nav id="menu">
                                        <ul id="menu-main-menu" class="menu menu-main">
                                            <li class="current-menu-item">
                                                <a href="javascript:;"><span>Inicio</span></a>
                                            </li>

                                            <li>
                                                <a href="{{route('publicIdeas') }}"><span>Explorar Ideas</span></a>
                                            </li>
                                            <li>
                                                <a href="https://asakaa.com" target="_blank"><span>Asakaa Project </span></a>
                                            </li>

                                            <li >
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
            <div class="content_wrapper clearfix">
                <div class="sections_group">
                    <div class="entry-content">
                        <div class="section mcb-section" style="padding-top:170px; padding-bottom:40px">
                            <div class="section_wrapper mcb-section-inner">
                                <div class="wrap mcb-wrap one valign-top clearfix">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column two-third column_column">
                                            <div class="column_attr clearfix">
                                                <h2 style="font-size:1.9rem;">Transformamos ideas positivas <br/> en oportunidades de innovación <br/> para tu empresa.</h2>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_divider ">
                                            <hr class="no_line" style="margin:0 auto 30px">
                                        </div>
                                        <div class="column mcb-column one-second column_button">
                                            <a class="button button_right button_size_2 button_theme button_js" href="{{ route('register') }}"><span class="button_icon"><i class="icon-right-open-mini"></i></span><span class="button_label">Comenzar ahora</span></a>
                                        </div>
                                        <div class="column mcb-column one-second column_image ">
                                            <div class="image_frame image_item no_link scale-with-grid alignright no_border">
                                                <div class="image_wrapper">
                                                    <img class="scale-with-grid" src="{{asset('landing/html/content/agency3/images/home_agency3_pic1.png')}}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one valign-top move-up clearfix" style="margin-top:-55px" data-mobile="no-up">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_image">
                                            <div class="image_frame image_item no_link scale-with-grid aligncenter no_border">
                                                <div class="image_wrapper">
                                                    <img class="scale-with-grid" src="{{asset('landing/html/content/agency3/images/home_agency3_pic2.png')}}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one valign-top move-up clearfix" style="margin-top:-250px" data-mobile="no-up">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one-second column_placeholder">
                                            <div class="placeholder">
                                                &nbsp;
                                            </div>
                                        </div>
                                        <div class="column mcb-column two-fifth column_column">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic3.png')}}'); background-repeat:no-repeat; background-position:left top; padding:120px 40px 40px;">
                                                <h4 style="font-weight: 400; font-style: italic;">Con Asakaa | Innova hemos podido organizar nuestras ideas tranformando las mejores en verdaderos proyectos de innovación ".</h4>
                                                <h6>-PhD. Oscar Caicedo, Investigador Universidad del Cauca.</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section mcb-section" style="padding-top:0px; padding-bottom:60px">
                            <div class="section_wrapper mcb-section-inner">
                                <div class="wrap mcb-wrap one valign-top clearfix">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <h4 class="themecolor">Nuestros servicios</h4>
                                                <h3>Ayudamos a que tu compañía innove y crezca.</h3>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_divider ">
                                            <hr class="no_line" style="margin:0 auto 30px">
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one-second valign-top clearfix" style="padding:0 4% 0 0">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column  column-margin-10px">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic4.png')}}'); background-repeat:no-repeat; background-position:left top; padding:0 0 10px 80px;">
                                                <h4>Retroalimentación
                                                    <br> Interna
                                                </h4>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <p>
                                                    Asakaa | Innova agrupa y coordina las ideas que tengan los empleados de una empresa para que estas pasen a evaluación y revisión por parte del equipo de innovación.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one-second valign-top clearfix" style="padding:0 4% 0 0">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column  column-margin-10px">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic5.png')}}'); background-repeat:no-repeat; background-position:left top; padding:0 0 10px 80px;">
                                                <h4>Retos
                                                    <br> para empleados</h4>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <p>
                                                    Asakaa | Innova permite la creación de desafíos para los miembros de una empresa con el fin de solucionar un problema específico.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap divider valign-top clearfix">
                                    <div class="mcb-wrap-inner"></div>
                                </div>
                                <div class="wrap mcb-wrap one-second valign-top clearfix" style="padding:0 4% 0 0">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column  column-margin-10px">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic6.png')}}'); background-repeat:no-repeat; background-position:left top; padding:0 0 10px 80px;">
                                                <h4>Retroalimentación
                                                    <br> Externa
                                                </h4>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <p>
                                                    Asakaa | Innova permite hacer públicas las ideas o retos de una empresa para que todo aquel ajeno a la compañía aporte una solución o ayude a mejorar un sector.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one-second valign-top clearfix" style="padding:0 4% 0 0">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column  column-margin-10px">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic7.png')}}'); background-repeat:no-repeat; background-position:left top; padding:0 0 10px 80px;">
                                                <h4>Manejo
                                                    <br> de recursos humanos</h4>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <p>
                                                    Asakaa | Innova permite la creación de grupos de trabajo a los que se les puede asignar un reto de innovación o simplemente para manejar retroalimentación.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one valign-top clearfix">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_divider ">
                                            <hr class="no_line" style="margin:0 auto 30px">
                                        </div>
                                        <div class="column mcb-column one column_button">
                                            <a class="button button_right button_size_2 button_theme button_js" href="{{ route('register') }}"><span class="button_icon"><i class="icon-right-open-mini"></i></span><span class="button_label">Comenzar ahora</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section mcb-section equal-height-wrap" style="margin-top:50px; padding-bottom:100px">
                            <div class="section_wrapper mcb-section-inner">
                                <div class="wrap mcb-wrap one-second valign-middle clearfix" style="padding:180px 11% 140px; background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic8.jpg')}}'); background-repeat:no-repeat; background-position:center">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix" style=" background-image:url('{{asset('landing/html/content/agency3/images/home_agency3_pic9.png')}}'); background-repeat:no-repeat; background-position:left top; padding:120px 40px 40px;">
                                                <h4 style="font-weight: 400;">Confiamos en la innovación latinoamericana desde 1999.</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap mcb-wrap one-second valign-middle clearfix" style="padding:20px 0 0 6%">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix">
                                                <h4 class="themecolor">Por qué Asakaa | Innova ?</h4>
                                                <h3>Para mejorar los ingresos de las empresas latinoamericanas.</h3>
                                                <hr class="no_line" style="margin:0 auto 10px">
                                                <p>
                                                    Creemos que las herramientas de innovación necesitan ser de fácil uso y acceso para los gerentes y empleados de una empresa. Al mismo tiempo, esta herramienta debe ayudar a organizar y en un futuro a evaluar la calidad de las ideas antes de que se transformen en proyectos serios de innovación.
                                                </p>

                                                <hr class="no_line" style="margin:0 auto 30px">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section mcb-section" style="padding-top:0px; padding-bottom:60px">
                            <div class="section_wrapper mcb-section-inner">
                                <div class="wrap mcb-wrap one valign-top clearfix">
                                    <div class="mcb-wrap-inner">
                                        <div class="column mcb-column one column_column">
                                            <div class="column_attr clearfix align_center">
                                                <h4 class="themecolor">Nuestros Clientes</h4>
                                                <h3>Confía en nuestros usuarios</h3>
                                            </div>
                                        </div>
                                        <div class="column mcb-column one column_testimonials ">
                                            <div class="testimonials_slider single-photo">
                                                <ul class="testimonials_slider_ul">
                                                    <li>
                                                        <div class="single-photo-img">
                                                            <img src="{{asset('landing/html/content/agency3/images/carlos.jpg')}}" class="scale-with-grid wp-post-image" style="height:90px;">
                                                        </div>
                                                        <div class="bq_wrapper">
                                                            <blockquote>
                                                                Me parece una herramienta fácil y al punto. Nuestros empleados mediante la interfaz han ayudado bastante en los diferentes aspectos de innovación dentro de la empresa.
                                                            </blockquote>
                                                        </div>
                                                        <div class="hr_dots">
                                                            <span></span><span></span><span></span>
                                                        </div>
                                                        <div class="author">
                                                            <h5>Carlos Mendez - Gerente Soluciones Integrales de Ingeniería</h5><span class="company"></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="single-photo-img">
                                                            <img src="{{asset('landing/html/content/agency3/images/javier2.JPG')}}" class="scale-with-grid wp-post-image">
                                                        </div>
                                                        <div class="bq_wrapper">
                                                            <blockquote>
                                                               En el grupo de telemática hemos organizado nuestras ideas y hemos recibido retroalimentación masiva de nuestros estudiantes. Es una excelente herramienta.
                                                            </blockquote>
                                                        </div>
                                                        <div class="hr_dots">
                                                            <span></span><span></span><span></span>
                                                        </div>
                                                        <div class="author">
                                                            <h5>PhD. Javier Hurtado - Gerente SoMoS Software & Mobile Solutions</h5><span class="company"></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="single-photo-img">
                                                            <img src="{{asset('landing/html/content/agency3/images/james.jpg')}}" class="scale-with-grid wp-post-image">
                                                        </div>
                                                        <div class="bq_wrapper">
                                                            <blockquote>
                                                                Hemos mejorado notablemente la evaluación de las ideas por parte de todos los miembros de la empresa. Antes lo hacíamos en herramientas separadas y no es muy aconsejable.
                                                            </blockquote>
                                                        </div>
                                                        <div class="hr_dots">
                                                            <span></span><span></span><span></span>
                                                        </div>
                                                        <div class="author">
                                                            <h5>Edwing James - Gerente Dagalec Ltda</h5><span class="company"></span>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <div class="slider_pager slider_pagination"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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



</body>
</html>
