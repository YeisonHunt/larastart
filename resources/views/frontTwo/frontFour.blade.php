<!DOCTYPE html>
<html lang="en">
<head>


    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-TZ83M8X');</script>
        <!-- End Google Tag Manager -->


<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
<meta name="description" content="Free chronogram with Gantt & Project Management Time tracking tool with  kanban, timesheets and so much more." />
<meta name="keywords" content="free chronogram, chronogram, chart gantt excel, gantt gratis, Gantt free,asakaa,gantt,chart,project, management, project management, online, free, timesheets, 
kanban, task list, human resources, time management, cuadro gantt, manejo de tiempo, proyectos">
<meta name="author" content="Asakaa team">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta property="og:title" content="Free chronogram with Gantt and Project Management">
<meta property="og:description" content="Asakaa is a clean &amp; modern project management tool.">
<meta property="og:image"
content="{{asset('newDesignFour/landing/asakaa2C.JPG')}}">

<meta property="og:url" content="https://asakaa.com">
<meta name="twitter:title" content="Modern chronogram with Gantt and Project Management tools &mdash; Asakaa">
<meta name="twitter:description" content="Asakaa is a clean &amp; modern project management tool with free gantt">
<meta name="twitter:image" content="{{asset('newDesignFour/landing/asakaa2C.JPG')}}">
<meta name="twitter:card" content="summary_large_image">
<title>Asakaa - Free Gantt with Project Management tools</title>
<link rel="shortcut icon" href="{{asset('newDesignFour/favicon2.png')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/modules/prism/prism.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/modules/bootstrap/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/modules/fontawesome/css/all.min.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/modules/chocolat/dist/css/chocolat.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/css/style.min.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/dist/css/custom.css')}}">
<link rel="stylesheet" href="{{asset('newDesignFour/landing/style.min.css')}}">

<link rel="stylesheet" href="https://cdn.plyr.io/3.4.8/plyr.css">

 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

 <!-- Hotjar Tracking Code for asakaa.com -->
<script>
    (function(h,o,t,j,a,r){
        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
        h._hjSettings={hjid:1242816,hjsv:6};
        a=o.getElementsByTagName('head')[0];
        r=o.createElement('script');r.async=1;
        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
        a.appendChild(r);
    })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
</script>


 <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127158191-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-127158191-1');
</script>

<style>
    
    .navbar-toggler {
        color:#333333 ;
    }

    .hideOnBig {
        display: none;
    }

    @media only screen and (max-width : 480px) {

    #imgLogo {
    display: none !important;
    
        }

    #btnLiveDemo {
        display: none !important;
    }

    #string {
        color:#333333 ;
    }


    .hideOnBig {
        display: block;
    }
    

    .text-sm {
        font-size:0.6rem !important ;
    }

    #textVersion {
        text-align: center !important;
        
    }

    #btnGetStarted {
        margin-left:20px;
    }

    }

    @media only screen and (min-width : 480px) {

    #string {
    display: none !important;
        }

    #btnLiveDemo {
        display: inline !important;
    }

} 

.blackFont {
    color:#333333  !important;

}

.hero {
    background-color: #f9fbff;
    
}

.morado {

    background-color: #6562DE !important;
}

.whiteFont {
    color:white !important;
}



.shadow {
   -webkit-box-shadow: 0px 4px 32px -7px rgba(245,235,245,1);
    -moz-box-shadow: 0px 4px 32px -7px rgba(245,235,245,1);
    box-shadow: 0px 4px 32px -7px rgba(245,235,245,1) !important;
}

.topFix {
    overflow: hidden !important;
    position: fixed !important;
    background-color: white !important;


}

.btnAction {
    background-color: #6562DE !important;
    border-color: #6562DE !important;
    border-radius: 40px !important;

}

.btnAction:hover {
    background-color: #635ac7 !important;
}

.mouseLink:hover {
    cursor:pointer !important;
}

.ws {
    border:none;
    background-color: white;
    float: right;

}

</style>


</head>
<body class="">

    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZ83M8X"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

 @if(Session::has('status'))

            <script >
                
                  swal({
            title: "Mail sent!",
            text: "Asakaa will answer around 24 hours. Thanks for your pacience.",
            icon: "success",
            button: "Sure!",
            });
            </script>    
    @endif



<!-- Modal -->
<div class="modal fade" id="contactModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Mail Us</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="modal-body">
    

        <form action="{{route('contactMail')}}" method="POST">


                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                      
                        
                        {{ csrf_field() }}
                        {{ method_field('POST') }}
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" name="email" autofocus="true" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="your@mail.com" required>
            
          </div>
          <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" class="form-control" id="subject" name="subject" required placeholder="Subject">
          </div>
          <div class="form-group">
            <label class="form-check-label" for="tArea">Your message</label>
            <textarea rows="2" required class="form-control" placeholder="e,g. Where can I find personalized information about Asakaa timetracking?" name="message" id="tArea" required></textarea>
            
          </div>

          <button type="submit" class="btn btn-primary">Send mail</button>

          <a href="https://web.whatsapp.com/send?phone=573126665895" class="ws"><img src="{{asset('newDesignFour/whatsapp.svg')}}" width="40px" height="40px" alt=""></a>


        </form>
  </div>
  
</div>
</div>
</div>


@if (Auth::check())
@if (Auth::user()->email=='guest@mail.com')
     
     <?php 

     Auth::logout();
     ?>       
@endif
@endif


<nav class="navbar navbar-reverse navbar-expand-lg shadow topFix">
    <div class="container">
        <a class="navbar-brand smooth" href="#"><img id="imgLogo" src="{{asset('newDesignFour/img/logoBlack.png')}}" class="hideOnSmall" 
            alt="Asakaa" width="30%" height="10%">
        
            <div id="string">Asakaa</div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ml-lg-3 align-items-lg-center ">

                 @if (Route::has('login'))
                     @auth
                
                
                <li class="nav-item"><a href="{{ route('projects.index') }}" class="nav-link blackFont hideOnBig">Go dashboard</a></li>

                    @else

                <!-- donation link https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RXWVWV43L5U5E --> 
                <li class="nav-item"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=S46CNQRHR57AS&source=url" class="nav-link blackFont"  data-toggle="tooltip" data-placement="bottom" title="Become a sponsor on Patreon, help us making the best project management tool free for ever!" style="color: #FC544B !important">Donate</a></li>
                <li class="nav-item"><a href="#features" class="nav-link blackFont">Features</a></li>
                <li class="nav-item"><btn class="nav-link blackFont mouseLink" data-toggle="modal" data-target="#contactModal2"
                 >Contact</btn></li>
                <li class="nav-item"><a href="https://trello.com/b/AP2iEOPN/asakaa-feedback-and-wishlistt-for" class="nav-link blackFont" >Wishlist</a></li>
                <li class="nav-item"><a href="{{ route('register') }}" class="nav-link blackFont" >Register</a></li>


                    @endauth
                 @endif



               
            </ul>
            <ul class="navbar-nav ml-auto align-items-lg-center d-none d-lg-block">

                @if (Route::has('login'))
                @auth
           
                <li class="ml-lg-3 nav-item">
                    <a href="{{ route('login') }}" class="btn btn-round smooth btn-icon icon-left morado whiteFont" >
                        Go dashboard
                    </a>
                </li>

                @else
                
                <li class="ml-lg-3 nav-item">
                    <a href="{{ route('login') }}" class="btn btn-round smooth btn-icon icon-left morado whiteFont" >
                        <i class="fas fa-sign-in-alt"></i> &nbsp; Log In
                    </a>
                </li>
                @endauth
                @endif

            </ul>
        </div><!-- Navigation bar end -->


    </div>
</nav>
    <div class="hero-wrapper" id="top" style="margin-top:0px !important;"> 
    <div class="hero">
        <div class="container">
            <div class="text text-center text-lg-left">
                <a href="" class="headline  morado">
                    <div class="badge badge-danger">New</div>
                    Asakaa is now 100% free to use &nbsp; <i class="fas fa-chevron-right"></i>
                </a>
                <h1 class="blackFont">Modern Gantt packed with project management tools  </h1>
                <p class="lead blackFont">
                       
                        Gantt chart as chronogram with tasks and subtasks, team chat, timetracking with timesheets,
                         real time updates and so much more!.
                </p>
                <div class="cta">

                <form id="userForm" action="{{route('registerAwesomeUser')}}">
                                <div class="form-group">
                                  
                                  <input type="email" class="form-control mailInput" name="inputUser" id="inputUser" 
                                  aria-describedby="emailHelp" placeholder="name@business.com" required autofocus>
                                  
                                </div>
                               
                                
                              
                    <button class="btn btn-lg btn-danger btn-icon icon-right btnAction" type="submit" id="btnGetStarted">Create account
                        <i class="fas fa-chevron-right"></i></button>  &nbsp; &nbsp; &nbsp;
                        <a class="btn btn-lg btn-warning btn-icon icon-right" href="{{route('indexGuest')}}" id="btnLiveDemo">Live demo
                                <i class="fas fa-chevron-right"></i></a> 
                            </form>
                        

                    <div class="mt-3 text-job blackFont" id="textVersion">
                        &bull;&nbsp;&nbsp; Current Version: 1.9.0
                    </div>
                </div>
            </div>
            <div class="image d-none d-lg-block">
                <img src="{{asset('newDesignFour/landing/ill.svg')}}" alt="free gantt">
              
            </div>
        </div>
    </div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="callout container grayBackground" >
    <div class="row">
        <div class="col-md-6 col-12 mb-4 mb-lg-0 col-sm-12">
            <div class="text-job text-muted text-14">not a reason to use Asakaa</div>
            
            <div class="h1 mb-0 font-weight-bold"><span class="font-weight-500">just a </span>statistic</div>
        </div>
        <div class="col-4 col-md-2 col-sm-12 text-center">
            <div class="h3 font-weight-bold">9322+</div>
            <div class="text-uppercase font-weight-bold ls-2 text-primary text-sm">Users</div>
        </div>
        <div class="col-4 col-md-2 col-sm-12 text-center">
            <div class="h3 font-weight-bold">29+</div>
            <div class="text-uppercase font-weight-bold ls-2 text-primary text-sm">Countries</div>
        </div>
        <div class="col-4 col-md-2  col-sm-12 text-center">
            <div class="h3 font-weight-bold">400+</div>
            <div class="text-uppercase font-weight-bold ls-2 text-primary text-sm">Daily Sessions</div>
        </div>
    </div>
</div>
<section id="features">
    <div class="container">
        <div class="row mb-5 text-center">
            <div class="col-lg-10 offset-lg-1">
                <h2>Asakaa is <span class="text-primary">designed for you</span> and your teammates</h2>
                <p class="lead">Integrated with 6+ project management features, you will easily to manage your team and stakeholders.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="features">

                    <div class="feature">
                        <div class="feature-icon">
                                <div class="card-img">
                                        <img src="{{asset('newDesignFour/assets/icons/gantt.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                                      </div>
                        </div>
                        <h5>Modern Gantt Chart</h5>
                        <p>Deliver the best Gantt chart in order to make your chronograms
                            in the simpliest and professional way.</p>
                    </div>

                    <div class="feature">
                        <div class="feature-icon">
                            <div class="card-img">
                                <img src="{{asset('newDesignFour/assets/icons/list.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                              </div>
                        </div>
                        <h5>Task List and Kanban View</h5>
                        <p>>Doesn't like Gantt? Okay, We have a List and a Kanban view to fullfill all the operations with tasks.</p>
                    </div>
                    <div class="feature">
                        <div class="feature-icon">
                            <div class="card-img">
                                <img src="{{asset('newDesignFour/assets/icons/reports.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                              </div>
                        </div>
                        <h5>Weekly summary reports</h5>
                        <p>Our reports are designed to recommend you what to follow and keep you informed about day, week or month progress.</p>
                    </div>
                    <div class="feature">
                        <div class="feature-icon">
                            <div class="card-img">
                                <img src="{{asset('newDesignFour/assets/icons/calendartime2.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                              </div>
                        </div>
                        <h5>Timesheets</h5>
                        <p>Designed to record the worked hours per project or task.</p>
                    </div>
                    <div class="feature">
                        <div class="feature-icon">
                            <div class="card-img">
                                <img src="{{asset('newDesignFour/assets/icons/realtime.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                              </div>
                        </div>
                        <h5>Real time experience</h5>
                        <p>See multiple changes on the same project without making a click.</p>
                    </div>
                    <div class="feature">
                        <div class="feature-icon">
                            <div class="card-img">
                                <img src="{{asset('newDesignFour/assets/icons/changetracking.png')}}" width="35" height="35" style="margin-bottom:10px;" alt="Feature">
                              </div>
                        </div>
                        <h5> Change Tracking</h5>
                        <p>We can track every change for future budget calculations and delays.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="design" class="section-design">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 d-none d-lg-block">
                <img src="{{asset('newDesignFour/landing/undraw_processing_qj6a.svg')}}" alt="user flow" class="img-fluid">
            </div>
            <div class="col-lg-7 pl-lg-5 col-md-12">
                <div class="badge badge-primary mb-3">30+ people involved in improving Asakaa everyday.</div>
                <h2>Save your time for other <span class="text-primary">important things</span>, not <span class="text-primary">reporting </span> completed tasks</h2>
                <p class="lead">Your idea has other things that need to be prioritized, don't waste your time only on timetracking.
                     Asakaa will speed up your project management all in one (Gantt, Kanban, Timesheets...).</p>
                <div class="mt-4">
                    <a href="" class="link-icon">
                        Getting Started with Asakaa <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="dashboard" class="section-skew">
    <div class="container">
        <div class="row mb-5 text-center">
            <div class="col-lg-10 offset-lg-1">
                <h2>Video  <span class="text-primary">lessons</span> & pro customer service.</h2>
                <p class="lead">If you are wasting too much time on project management. Come here, we make it simple for you.</p>
            </div>
        </div>
        
        <div class="row">

                <div class="container">
                        
           
                        <video class="videoAnimation" id="player"
                        data-src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4" height="100%" width="100%"
                         muted="true" poster="{{asset('newDesignFour/preview.jpg')}}" autoplay loop
                         src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4">
           
           
                        </video>
           
           
                      </div>

        </div>


        
    </div>
</section>
<section id="components" class="section-design section-design-right">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 pr-lg-5 pr-0">
                <div class="badge badge-primary mb-3">Working on over 10 language translations </div>
                <h2>Asakaa is over the <span class="text-primary">world</span>, let <span class="text-primary">us</span> help you  
                    <span class="text-primary">managing your </span> tasks and important work time.</h2>
                <p class="lead">We increase  time efficiency of thousands of people all around the world. Come here and try it out too.</p>
                <div class="mt-4">
                    <a href="" class="link-icon">
                        Go discover Asakaa now <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-5 d-none d-lg-block">
                <div class="abs-images">
                    <img src="{{asset('newDesignFour/landing/components/countries.png')}}" alt="user flow" class="img-fluid rounded dark-shadow">
                    <img src="{{asset('newDesignFour/landing/components/ticket.png')}}" alt="user flow" class="img-fluid rounded dark-shadow">
                    <img src="{{asset('newDesignFour/landing/components/user.png')}}" alt="user flow" class="img-fluid rounded dark-shadow">
                </div>
            </div>
        </div>
    </div>
</section>
<section id="try" class="section-dark">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <h2>Want to try it first?</h2>
                <p class="lead">We are happy if you want to see a demo of this project first, find what you are looking for,
                     we really want to save your management time.</p>
                <div class="mt-4">
                    <a href="{{route('indexGuest')}}" class="btn">Go to the Demo Page</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="support-us" class="support-us">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 d-none d-lg-block pr-lg-5 pr-sm-0">
                <div class="d-flex align-items-center h-100 justify-content-center abs-images-2">
                    <img src="{{asset('newDesignFour/landing/asakaa2C.jpg')}}" alt="image" class="img-fluid rounded dark-shadow">
                    <img src="{{asset('newDesignFour/landing/asakaa1C.jpg')}}" alt="image" class="img-fluid rounded dark-shadow">
                    <img src="{{asset('newDesignFour/landing/asakaa2C.jpg')}}" alt="image" class="img-fluid rounded dark-shadow">
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <h2>Asakaa is free for anyone <span class="text-primary">Yes, including you!</span></h2>
                <p class="lead">Asakaa improves everyday and every week has updates and new features.</p>
                <ul class="list-icons">
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-box-open"></i>
                        </span>
                        <span>The many components and full features, speed up your project.</span>
                    </li>
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-fire"></i>
                        </span>
                        <span>Get all the Asakaa features and 6+ integrated modules.</span>
                    </li>
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-stopwatch"></i>
                        </span>
                        <span>Spend time on something valuable for your idea, not timetracking or task reporting.</span>
                    </li>
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-heart"></i>
                        </span>
                        <span>You support and save us to continue to keep this project alive.</span>
                    </li>
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-rocket"></i>
                        </span>
                        <span>Allowed to create a multi-team project management in <strong> Business Account</strong>   </span>
                    </li>
                    <li>
                        <span class="card-icon bg-primary text-white">
                            <i class="fas fa-clock"></i>
                        </span>
                        <span>Get lifetime updates and support as long as you use Asakaa.</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>


<section class="download-section" class="bg-white">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-7">
                <h2>Start your Awesome project with modern Gantt now</h2>
                <p class="lead">Start your amazing project with Asakaa, give life to your ideas.</p>
            </div>
            <div class="col-md-5 text-right">
                <a href="{{route('register')}}" class="btn btn-primary btn-lg">Create account</a>
            </div>
        </div>
    </div>
</section>
<section class="before-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card long-shadow">
                    <div class="card-body d-flex p-45">
                        <div class="card-icon bg-primary text-white">
                            <i class="far fa-file"></i>
                        </div>
                        <div>
                            <h5>Explore The Lessons</h5>
                            <p class="lh-sm">Find out how to use Asakaa, just two or three 2 minutes videos and you are good to go!.</p>
                            <div class="mt-4 text-right">
                                <a href="https://youtu.be/eLmKCMhqIbs" class="link-icon">Documentation <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card long-shadow">
                    <div class="card-body p-45 d-flex">
                        <div class="card-icon bg-primary text-white">
                            <i class="far fa-life-ring"></i>
                        </div>
                        <div>
                            <h5>Support</h5>
                            <p class="lh-sm">
                                 Get support for Asakaa bugs or request features through the Trello board.</p>
                            <div class="mt-4 text-right">
                                <a href="mailto:support@asakaa.com" class="link-icon">Support <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h3 class="text-capitalize">Asakaa</h3>
                <div class="pr-lg-5">
                    <p>Asakaa was created to help people from contratits, project managers, developers, and all the people who want give life to a project.                 </p>
                    <p>&copy; Asakaa. Made with <i class="fas fa-heart text-danger"></i> from Switzerland</p>
                    <div class="mt-4 social-links">
                        <a href="/facebook"><i class="fab fa-facebook"></i></a>
                        <a href="/twitter"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="row">
                  <div class="col-md-4">
                    <h4>Core</h4>
                      <ul>
                        <li><a href="">Modern Gantt </a></li>
                        <li><a href="">Timetracking</a></li>
                        <li><a href="">Business Account</a></li>
                        <li><a href="">Tutorials</a></li>
                        <li><a href="">Future features</a></li>
                        <li><a href="{{route('indexGuest')}}">Demo page</a></li>
                       
                      </ul>
                  </div>
                  <div class="col-md-4">
                    <h4>Users</h4>
                    <ul>
                      <li><a href="{{route('register')}}">Get Started</a></li>
                      <li><a href="{{route('register')}}" target="_blank">Register now</a></li>
                      <li><a href="#">Documentation</a></li>
                      <li><a href="#">Support</a></li>
                    </ul>
                  </div>
                  <div class="col-md-4">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">Blog</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Team</a></li>
                    </ul>
                  </div>
                </div>
            </div>
        </div>
    </div>

<script src="{{asset('newDesignFour/dist/modules/jquery.min.js')}}"></script>
<script src="{{asset('newDesignFour/dist/modules/popper.js')}}"></script>
<script src="{{asset('newDesignFour/dist/modules/tooltip.js')}}"></script>
<script src="{{asset('newDesignFour/dist/modules/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{asset('newDesignFour/dist/modules/prism/prism.js')}}"></script>
<script src="{{asset('newDesignFour/dist/js/stisla.js')}}"></script>
<script src="{{asset('newDesignFour/landing/script.js')}}"></script>
<!--End mc_embed_signup-->

<script src="https://cdn.plyr.io/3.4.8/plyr.polyfilled.js" async></script>
<script>const player = new Plyr('#player');</script>

<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+573126665895", // WhatsApp number
            call_to_action: "Have a question? Contact us now", // Call to action
            position: "right", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>







</body>
</html>
