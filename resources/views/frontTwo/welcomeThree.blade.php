<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Asakaa - Project Management</title>
    <link rel="icon" href="{{ asset('newDesign2/assets/icons/icon.png') }}" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Project Management tool with gantt, kanban, timesheets and so much more." />
    <meta name="keywords" content="Gantt chart,asakaa,gantt,chart,project, management, project management, online, free, 
    timesheets, kanban, task list, human resources, time management, cuadro gantt, manejo de tiempo, proyectos">
    <link href="{{ asset('newDesign2/assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('newDesign2/assets/css/animate.css') }}"> <!-- Resource style -->
    <link rel="stylesheet" href="{{ asset('newDesign2/assets/css/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('newDesign2/assets/css/owl.theme.css') }}">
    <link rel="stylesheet" href="{{ asset('newDesign2/assets/css/ionicons.min.css') }}"> <!-- Resource style -->
    <link href="{{ asset('newDesign2/assets/css/style.css') }}" rel="stylesheet" type="text/css" media="all" />

    <link rel="stylesheet" href="https://cdn.plyr.io/3.4.8/plyr.css">
  </head>
  <body>
    <div class="wrapper">
      <!-- Navbar Section -->
      <nav class="navbar navbar-expand-md navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container container-s">
          <a class="navbar-brand" href="#"><img src="{{ asset('newDesign2/assets/images/logo.jpg') }}" class="hideOnSmall" alt="Asakaa" width="40%" height="10%"></a>
          <button class="navbar-toggler" type="button" 
          data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
           aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto navbar-right">
              <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Donate</a></li>
              <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#features">Features</a></li>
              <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact </a></li>
              <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#accounts">Accounts</a></li>
              <li class="nav-item"><a class="btn-cta nav-link js-scroll-trigger" href="#signup">Sign Up</a></li>
              <li class="nav-item"><a class="btn-cta nav-link js-scroll-trigger" href="#signup">Log In</a></li>
            </ul>
          </div>
        </div>
      </nav><!-- Navbar End -->


      <div id="main" class="main">
        <div class="home"><!-- Hero Section-->
          <div class="container-fluid">
            <div class="row text-center">
              <div class="col-md-12">
                <div class="hero-img wow fadeIn">
                  <img class="img-fluid" src="{{ asset('newDesign2/assets/images/smM.png') }}" alt="Home">
                </div>
              </div>
              <div class="col-md-12">
                <div class="hero-content wow fadeIn">
                  <h1>Simplify your project management 
                    in a way never seen before.</h1>
                  <p>We focus on improving teamwork through a collaborative platform. Gantt chart as chronogram with tasks and subtasks, team chat,
                     timetracking with timesheets,  real time updates and so much more!.</p>

                    <div style="text-align:center; display:grid | inline-grid !important;">
                        <a class="btn-action js-scroll-trigger" href="#signup">Register now</a>
                        <div style="font-family: 'Montserrat';">or</div>
                        <a class="btn-action js-scroll-trigger" href="#signup"> Live Demo </a>

                    </div>
                 
                </div>

                <div class="form-note" style="margin-top:0 !important;">
              
                  <p>Freemium trial, no credit card required.</p>
                </div>  
              </div>

             <!--- <div class="col-md-12">
                <div class="client-list wow fadeIn">
                  <ul>
                    <li><img class="img-fluid" src="assets/icons/axonLogo.png" alt="Client"> </li>
                    <li><img class="img-fluid" src="assets/icons/2.png" alt="Client"> </li>
                    <li><img class="img-fluid" src="assets/icons/3.png" alt="Client"> </li>
                    <li><img class="img-fluid" src="assets/icons/4.png" alt="Client"> </li>
                    <li><img class="img-fluid" src="assets/icons/5.png" alt="Client"> </li>
                  </ul>
                </div>
              </div> -->

            </div>
          </div>
        </div><!-- Hero End -->


        <div id="features" class="features wow fadeInDown" style="background-color:#6D48E5; color:white !important;">
          <div class="container-m">
            <div class="row text-center">
              <div class="col-md-12">
                <div class="features-intro">
                  <h2 style="color:#fff !important; font-weight: bold;">Welcome to Asakaa, where time matters.</h2>
                  <p style="color:white !important; font-weight: 200;">We’ll deliver the best desktop experience controlling resources in projects. Main features of Asakaa.com listed below: </p>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/gantt.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;">Gantt Chart</h3>
                    <br>
                    <p style="color:white !important; margin-top:5px; font-weight: 200;">Deliver the best Gantt chart in order to make your chronograms 
                      in the simpliest and professional way.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/list.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;">Task List and Kanban View</h3>
                    <p style="color:white !important; font-weight: 200;">Doesn't like Gantt? Okay, We have a List and a Kanban view to fullfill all the operations with tasks.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/calendartime2.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;">Timesheets</h3>
                    <br>
                    <p style="color:white !important;  margin-top:5px; font-weight: 200;">Designed to record the worked hours per project or task.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/realtime.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;">Real time experience</h3>
                    <p style="color:white !important; font-weight: 200;">See multiple changes on the same project without making a click.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/reports.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;"> Weekly summary reports</h3>
                    <p style="color:white !important; font-weight: 200;">Our reports are designed to recommend you what to follow and keep you informed about day, week or month progress.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-list">
                  <div class="card-icon">
                    <div class="card-img">
                      <img src="{{ asset('newDesign2/assets/icons/changetracking.png') }}" width="35" alt="Feature">
                    </div>
                  </div>
                  <div class="card-text">
                    <h3 style="color:#fff !important; font-weight: bold;">Change Tracking</h3>
                    <p style="color:white !important; font-weight: 200;"> We can track every change for future budget calculations and delays.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Features Section -->
        <div id="" class="flex-split">
           <div class="container">
             <div class="flex-intro align-center wow fadeIn">
               <h2 >Make easy your administrative life</h2>
               <p> If you are wasting too much time on project management. Come here, we make it simple for you.</p>

               <p>Features video below:</p>
             </div>
            
             <video class="videoAnimation" id="player"
             data-src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4" height="100%" width="100%"
              muted="true" poster="https://res.cloudinary.com/asakaa/image/upload/v1549302947/asakaa_preview.jpg" autoplay loop 
              src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4">
  

             </video>


           </div>
         </div>


         <!-- Counter Section -->
         <div class="yd-stats wow fadeIn">
           <div class="container-s">
             <div class="row text-center">
               <div class="col-sm-12">
                 <div class="intro">
                   <h2>Looking for specialized lessons on how to use Asakaa?</h2>
                   <p>Detail explanations  are waiting for you on our YouTube channel.</p>
                 </div>
               </div>
               
               <div class="col-md-12">
                 <div class="yd-link">
                   <a href="#">Go to Asakaa tutorials now</a>
                 </div>
               </div>

             </div>
           </div>
         </div><!-- Counter Section Ends -->

      



        <!-- Array Pricing Section -->
        <div id="accounts" class="pricing-section text-center">
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <div class="pricing-intro wow fadeInDown">
                  <h1>Account types</h1>
                  <p>
                    Our plans are designed to meet the requirements of both personal <br class="hidden-xs"> and business users.
                    Get the right plan that suits you.
                  </p>
                </div>
                <div class="row">
                  <div class="col-lg-4 offset-lg-2 col-md-6">
                   <div class="table-left wow fadeInDown">
                     <div class="pricing-details">
                       <h2>Personal [Freemium]</h2>
                       <img src="{{ asset('newDesign2/assets/icons/free.png') }}" width="60" alt="Icon">

                       <span>$0.00</span>
                          <ul>
                           <li>Unlimited Gantt Charts </li>
                           <li>Timetracking</li>
                           <li>Stakeholders share</li>
                           <li>Kanban and List Views</li>
                           </ul>
                         <button class="btn-action">Go now</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 col-md-6">
                    <div class="table-right wow fadeInDown">
                      <div class="pricing-details">
                         <h2>Business  [Freemium]</h2>
                         <img src="{{ asset('newDesign2/assets/icons/paid.png') }}" width="60" alt="Icon">
                         <span>$0.00</span>
                         <ul>
                           <li>Centralized information </li>
                           <li>Accounting management</li>
                           <li>Human resource management</li>
                           <li>+ Personal features</li>
                         </ul>
                         <button class="btn-action">Go Now</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Array Pricing Ends -->

        <!-- CTA Signup Section -->
        <div id="signup" class="cta-sm">
          <div class="container-m text-center">
            <div class="cta-content">
               <h4>Asakaa.com</h4>
               <h1>Start now and turn your  business into a profitable route.</h1>
               <div class="form wow fadeIn" data-wow-delay="0.2s">
                

                <a href="#" class="btn-action js-scroll-trigge">Try now for free</a>
                <div id="response"></div>
                <br>
              </div>
              <div class="form-note">
                <br>
                <p>Freemium trial, no credit card required.</p>
              </div>
            </div>
          </div>
        </div>


        <!-- Array Footer Section -->
        <div class="footer-sm">
          <div class="container">
            <div class="row">
              <div class="col-md-4">
                <a class="footer-logo" href="#">Asakaa</a>
              </div>
              <div class="col-md-4">
                <h6>&copy; Asakaa 2019 Rights Reserved</h6>
              </div>
              <div class="col-md-4">
                <ul>
                  <li><a href="#">Facebook</a></li>
                  <li><a href="#">Twitter</a></li>
                  <li><a href="#">Linkedin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>


       <!-- Scroll To Top -->
        <div id="back-top" class="bk-top">
          <div class="bk-top-txt">
             <a class="back-to-top js-scroll-trigger" href="#main">↑</a>
          </div>
        </div>
       <!-- Scroll To Top Ends-->

      </div> <!-- Main -->
    </div><!-- Wrapper -->


    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/jquery-2.1.1.js') }}"></script>
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/popper.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/bootstrap.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/jquery.validate.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/plugins.js') }}"></script>
    <script type="text/javascript" src="{{ asset('newDesign2/assets/js/custom.js') }}"></script>


    <script src="https://cdn.plyr.io/3.4.8/plyr.polyfilled.js"></script>
    <script>const player = new Plyr('#player');</script>
  </body>
</html>
