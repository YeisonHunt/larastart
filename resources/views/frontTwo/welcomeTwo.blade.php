<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Asakaa - Project Management</title>
    <meta name="description" content="Project Management and Time tracking tool with Gantt, kanban, timesheets and so much more." />
      <meta name="keywords" content="Gantt chart,asakaa,gantt,chart,project, management, project management, online, free, timesheets, kanban, task list, human resources, time management, cuadro gantt, manejo de tiempo, proyectos">


    <!-- Favicon-->
    <link rel="icon" href="{{ asset('newDesign/images/favicon2.png') }}" type="image/x-icon">
    <link rel="stylesheet" href="{{ asset('newDesign/main.css') }}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
     integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

     <link rel="stylesheet" href="{{ asset('newDesign/css/modal-video.min.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('newDesign/font/flaticon.css') }}">
     <!--<link rel="stylesheet" type="text/css" href="{{ asset('newDesign/semanticui/semantic.min.css') }}">-->

     <link rel="stylesheet" type="text/css" 
     href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">


     <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-127158191-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-127158191-1');
    </script>

    <style type="text/css">
      

      .shadowBottom {
         -webkit-box-shadow: 0 8px 6px -6px #DCDCDC;
         -moz-box-shadow: 0 8px 6px -6px #DCDCDC;
          box-shadow: 0 8px 6px -6px #DCDCDC;
          height: 18vh;
      }

     
    </style>


     
</head>
<body id="navbarP">


@if (Auth::check())
  @if (Auth::user()->email=='guest@mail.com')
         
         <?php 

         Auth::logout();
         ?>       
@endif
@endif


    
    <header>
        <nav class="shadowBottom " >
            
            @if (Route::has('login'))
                @auth

                
                    <a  href="{{route('raiz')}}"><img src="{{ asset('newDesign/images/logo2.png') }}" class="logoImage" alt="Asakaa"></a>



                    <a href="#" class="js-video-button hider noOculta" data-video-id='eLmKCMhqIbsww' style="visibility: hidden;">TOUR<i class="flaticon-boton-de-reproduccion"></i> </a>
                        <a class="hider"  href="#" id="contactModal" style="visibility: hidden;">CONTACT<i class="flaticon-carta"></i>  </i></a>
                        <a class=" logIn hider noOculta"  href="{{ route('projects.index') }}" style="text-decoration: white underline;"> GO DASHBOARD<i class="flaticon-registrarse"></i> 

                @else

                  <a  href="{{route('raiz')}}"><img src="{{ asset('newDesign/images/logo2.png') }}" class="logoImage"  alt="Asakaa"></a>

                        <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RXWVWV43L5U5E" class="noOculta" title="">DONATE 
                            <i class="fas fa-heart"></i></a>

                        <a href="https://trello.com/b/AP2iEOPN/asakaa-feedback-and-wishlistt-for" class="noOculta" title="Feedback">WISHLIST <i class="fas fa-check-double"></i></a>

                        <a href="#" class="js-video-button hider noOculta" data-video-id='eLmKCMhqIbs'>TOUR &nbsp;<i class="fas fa-play"></i> </a>
                        <a class="hider noOculta"  href="#" id="contactModal">CONTACT <i class="fas fa-envelope"></i> </i></a>
                        <a class=" logIn hider noOculta"  href="{{ route('login') }}" style="text-decoration: white underline;"> LOG IN <i class="fas fa-sign-in-alt"></i>
                </a>

                @endauth
            @endif

               
           
           
        </nav>


        <nav role='navigation' class="oculta">
        <div id="menuToggle" class="oculta">
          <!--
          A fake / hidden checkbox is used as click reciever,
          so you can use the :checked selector on it.
          -->
          <input type="checkbox" />
          
          <!--
          Some spans to act as a hamburger.
          
          They are acting like a real hamburger,
          not that McDonalds stuff.
          -->
          <span></span>
          <span></span>
          <span></span>
          
          <!--
          Too bad the menu has to be inside of the button
          but hey, it's pure CSS magic.
          -->
          <ul id="menu">
            <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RXWVWV43L5U5E" class="linksTo">Donate</a>
         
            <a href="#" class="js-video-button linksTo" data-video-id='eLmKCMhqIbs' class="linksTo">Tour</a>
            
            <a href="#" id="contactModal" class="linksTo">Contact</a>
           
            <a href="{{route('login')}}" class="linksTo">Login</a>

            <a href="{{route('register')}}" title="" class="linksTo">Register</a>
           
            
          </ul>
        </div>
      </nav>



        <h1><span style="color:#707070">Simplify</span> your project management <br>
            in a way never seen before.</h1>

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
        
        <div class="containerRegister">

<!-- -->


                  <a href="/register" id="registroLink" class="btnOutline" style="text-decoration: none;">Register Now</a>
                  <br>
                  <p style="margin-left:100px;">Or</p>

                   <a href="{{route('indexGuest')}}"  class="btnOutline" style="text-decoration: none; background-color: white;
                    color:#A24DDC">Try our live demo</a>

                <img src="{{ asset('newDesign/images/arrowUp.svg') }}" alt="" height="150px" width="150px" style="margin-top:1%; z-index:-1; margin-left:5%;">
        </div>
        
        
    </header>

    <div class="team">
        <h1 class="title">How we work?</h1>
        <p class="subtitle">We focus on improving teamwork through a collaborative platform.
             Having access to specific tasks for groups in projects, team chat,  real time update of changes  and much more!</p>
             <br>
             <br>

           <!-- <video class="videoAnimation" 
             data-src="https://d1gwm4cf8hecp4.cloudfront.net/videos/homepage/v4/Timeline.mp4"
              muted="true" poster="https://luna1.co/953a81.png" autoplay loop 
              src="https://d1gwm4cf8hecp4.cloudfront.net/videos/homepage/v4/Timeline.mp4"> -->

              <video class="videoAnimation" 
             data-src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4" height="90%" width="90%"
              muted="true" poster="https://res.cloudinary.com/asakaa/image/upload/v1549302947/asakaa_preview.jpg" autoplay loop 
              src="https://res.cloudinary.com/asakaa/video/upload/v1549302876/asakaa_main_functions.mp4">
  

             </video>

             <br>

    </div><!-- end team -->


    <div class="cards">
        
        <div class="ui container">
            
            <div style="text-align:center;"><h2>Special features</h2></div>
            <br>
            <br>

               <div class="ui special cards " >

<div class="ui three column grid">
    
    <div class="column">
         <div class="ui fluid card">    
            <div class="blurring dimmable image">
              <div class="ui inverted dimmer">
                <div class="content">
                  <div class="center">
                    <div class="ui primary button js-video-button" data-video-id='TJQ6ybzpLtM'>Watch video</div>
                  </div>
                </div>
              </div>
              <img src="{{asset('newDesign/images/real_time.svg')}}" >
            </div>
            <div class="content">
              <a class="header">Real time Gantt</a>
              <div class="meta">
                <span class="date">Users watch changes on real time without reloading.</span>
                <br/>
                <br>
                <span style="text-align:justify;">The product is designed to graphically display using Gantt changes in times or tasks during project execution, and at any time the project team can see the changes, who made the change, and what was the reason for the change.</span>
              </div>
            </div>
          </div>

    </div>
    <div class="column">
            <div class="ui fluid card ">
            <div class="blurring dimmable image">
              <div class="ui dimmer">
                <div class="content">
                  <div class="center">
                    <div class="ui inverted button js-video-button" data-video-id='XNVtj0WbQ2U'>Watch video</div>
                  </div>
                </div>
              </div>
              <img src="{{asset('newDesign/images/time_tracking.svg')}}" >
            </div>
            <div class="content">
              <a class="header">Timesheets</a>
              <div class="meta">
                <span class="date">Save your work time per task quickly.</span>

                <br/>
                <br>
                <span style="text-align:justify;">Asakaa let you save all worked hours per day, per week per month for all your projects and team members. Also, you can control the hours number per day for all your employess. </span>
              </div>
            </div>
            
          </div>

    </div>
    <div class="column">
        
         <div class="ui fluid card">
            <div class="blurring dimmable image">
              <div class="ui inverted dimmer">
                <div class="content">
                  <div class="center">
                    <div class="ui primary button js-video-button" data-video-id='fnfDBZyJTa8'>Watch video</div>
                  </div>
                </div>
              </div>
              <img src="{{asset('newDesign/images/team_chat.svg')}}" >
            </div>
            <div class="content">
              <a class="header">Team Chat</a>
              <div class="meta">
                <span class="date">Talk with project members per project.</span>
                <br/>
                <br>
                <span style="text-align:justify;">Asakaa.com let you chat with your partners easy, per project and adjunt some important files.</span>

              </div>
            </div>
            
          </div>
    </div>
</div>
         
           



      

        

         

      




        </div>


        </div><!-- end container-->

    </div>

    <div class="about">
        <h1>Main Features</h1>

        <div class="icons">
            
            
            
            <div class="features"><img  src="{{ asset('newDesign/images/navigation2.png') }}" alt="Easy function navigation"> </div>
            <div class="featuresText">Easy navigation</div>

            <div class="features"><img  src="{{ asset('newDesign/images/reports.png') }}" alt="Daily Reports"> </div>
            <div class="featuresText">Daily Reports</div>
            

            <div class="features"><img  src="{{ asset('newDesign/images/share.png') }}" alt="One step sharing"></div>
            <div class="featuresText">One step sharing</div>

            <div class="features"><img  src="{{ asset('newDesign/images/sync.png') }}" alt="Devices Syncronization"></div>
            <div class="featuresText">Multiplatform sync</div>

            <div class="features"><img  src="{{ asset('newDesign/images/time.png') }}" alt="Timetracking" ></div>
            <div class="featuresText">Timetracking</div>

            <div class="features"><img  src="{{ asset('newDesign/images/gantt.png') }}" alt="Gantt Chart"></div>
            <div class="featuresText">Gantt Chart</div>

            <div class="features"><img  src="{{ asset('newDesign/images/task_list.png') }}" alt="Task List"></div>
            <div class="featuresText">Task List</div>

            <div class="features"><img  src="{{ asset('newDesign/images/kanban.png') }}" alt="Kanban View" height="62" width="62"></div>
            
            <div class="featuresText">Kanban View</div>

        </div>





    </div><!-- end about -->

    <div class="callToAction">

        <h2>Join us and make easy your administrative life </h2>
        <br>
       
             
                <a href="/register" class="btnOutline">Register Now</a>

        


    </div><!-- end callToAction -->





    <footer>
        <p>2018 - Asakaa Project Management, Switzerland</p>
        <div class="footerPages">
           <!-- <a href="{{route('raiz')}}">Home</a>
            <a href="https://www.youtube.com/channel/UCIB5D8ZLOcmnPzEoAKYVo6w">Tutorials</a>
            <a href="{{route('terms')}}">Terms & Privacy</a> -->
    
        </div>
    </footer>

     <!-- Contaact Modal -->
    <div class="ui modal">

     

            
       
            <i class="close icon"></i>
            <div class="header">
              Send us a mail
            </div>


            <div class="image content">
              <div class="ui medium image">
                <img src="{{ asset('newDesign/images/contact.svg') }}">
              </div>

              
                 <div class="ui form" style="font-size:1.2em; ">
                        <form action="{{route('contactMail')}}" method="POST">


                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                          
                            
                            {{ csrf_field() }}
                            {{ method_field('POST') }}

                      <div class="field" style="width:300px; margin-left:30px;">
                        <label>Email</label>
                        <input type="email" placeholder="awesomeuser@mail.com" 
                        required style="border-radius:10px;" name="email" autofocus>
                        
                      </div>
                      <div class="field" style="width:300px; margin-left:30px;">
                        <label>Subject</label>
                        <input type="text" placeholder="Subject" required style="border-radius:10px;" name="subject" required>
                      </div>
                     
                    <div class="field" style="width:80vh; margin-left:30px;">
                            <label>Your message</label>
                            <textarea rows="2" required style="border-radius:10px;" placeholder="e,g. Where can I find personalized information about Asakaa timetracking?" name="message" required></textarea>
                     </div>
                     
                    <div class="actions" style="margin-left:30px; text-align:right;">
                            <button class="ui grey basic button">
                            Cancel
                            </button>
                            <button class="ui primary button" type="submit">
                            Send now &nbsp;
                            <i class="checkmark icon"></i>
                            </button>
                        </div>
            
                    </form>

                  </div>

                  

            </div>


            
    </div><!-- end modal -->

     <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <script src="{{ asset('newDesign/js/jquery-modal-video.min.js') }}"></script>
    <script src="{{ asset('newDesign/semanticui/semantic.min.js') }}"></script>
     <script>

        $(document).ready(function(){


            $('.special.cards .image').dimmer({
              on: 'hover'
            });


            $("#contactModal").click(function(){

                $('.ui.modal').modal('show');
                

            });

            $(window).scrollTop($('#navbarP').offset().top);

            //document.getElementById('registroLink').click();
           


            $(".js-video-button").modalVideo({
            channel: 'youtube',
            youtube: {
                autoplay: 1,
                cc_load_policy: 1,
                color: null,
                controls: 1,
                disablekb: 0,
                enablejsapi: 0,
                end: null,
                fs: 1,
                h1: null,
                iv_load_policy: 1,
                list: null,
                listType: null,
                loop: 0,
                modestbranding: null,
                origin: null,
                playlist: null,
                playsinline: null,
                rel: 0,
                showinfo: 1,
                start: 0,
                wmode: 'transparent',
                theme: 'dark'
            },
            ratio: '16:9',
            vimeo: {
                api: false,
                autopause: true,
                autoplay: true,
                byline: true,
                callback: null,
                color: null,
                height: null,
                loop: false,
                maxheight: null,
                maxwidth: null,
                player_id: null,
                portrait: true,
                title: true,
                width: null,
                xhtml: false
            },
            });


        });

       
    </script>

    <!-- WhatsHelp.io widget -->
<script type="text/javascript">
   /* (function () {
        var options = {
            whatsapp: "+573126665895", // WhatsApp number
            email: "soporte@guardproject.com", // Email
            call_to_action: "Message us", // Call to action
            button_color: "#129BF4", // Color of button
            position: "right", // Position may be 'right' or 'left'
            order: "whatsapp,email", // Order of buttons
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();*/
</script>
<!-- /WhatsHelp.io widget -->

<!--Start of Tawk.to Script-->
		<!--<script type="text/javascript">
		var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
		(function(){
		var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
		s1.async=true;
		s1.src='https://embed.tawk.to/5c5883b37cf662208c940731/default';
		s1.charset='UTF-8';
		s1.setAttribute('crossorigin','*');
		s0.parentNode.insertBefore(s1,s0);
		})();
		</script>-->
<!--End of Tawk.to Script-->

<script src="//instant.page/1.2.0" type="module" 
integrity="sha384-0xWpXpkOUkAVETH+RMYJlSFIDNGlnPHgmqv2rP3uZS1BM48EMcxAZGW09n4pTGV4"></script>
</body>
</html>