
<!DOCTYPE html>

<html lang="en">

	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>Innovation | Login</title>
		<meta name="description" content="Login page example">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!--begin::Fonts -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
			WebFont.load({
                google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
                active: function() {
                    sessionStorage.fonts = true;
                }
            });
        </script>

		<!--end::Fonts -->

		<!--begin::Page Custom Styles(used by this page) -->
		<link href="{{asset('assets/app/custom/login/login-v1.default.css')}}" rel="stylesheet" type="text/css" />

		<!--end::Page Custom Styles -->

		<!--begin::Global Theme Styles(used by all pages) -->
		<link href="{{asset('assets/vendors/base/vendors.bundle.css')}}" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="../../assets/vendors/base/vendors.bundle.rtl.css" rel="stylesheet" type="text/css" />-->
		<link href="{{asset('assets/demo/default/base/style.bundle.css')}}" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="../../assets/demo/default/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Global Theme Styles -->

		<!--begin::Layout Skins(used by all pages) -->
		<link href="{{asset('assets/demo/default/skins/header/base/light.css')}}" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="../../assets/demo/default/skins/header/base/light.rtl.css" rel="stylesheet" type="text/css" />-->
		<link href="{{asset('assets/demo/default/skins/header/menu/light.css')}}" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="../../assets/demo/default/skins/header/menu/light.rtl.css" rel="stylesheet" type="text/css" />-->
		<link href="{{asset('assets/demo/default/skins/brand/dark.css')}}" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="../../assets/demo/default/skins/brand/dark.rtl.css" rel="stylesheet" type="text/css" />-->
		<link href="{{asset('assets/demo/default/skins/aside/dark.css" rel="stylesheet')}}" type="text/css" />

		<!--RTL version:<link href="../../assets/demo/default/skins/aside/dark.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Layout Skins -->
		<link rel="icon" type="image/svg+xml" href="{{asset('landing/html/content/agency3/images/fav.png')}}" sizes="any">
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

		<!-- begin:: Page -->
		<div class="kt-grid kt-grid--ver kt-grid--root">
			<div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v1" id="kt_login">
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--desktop kt-grid--ver-desktop kt-grid--hor-tablet-and-mobile">

					<!--begin::Aside-->
					<div class="kt-grid__item kt-grid__item--order-tablet-and-mobile-2 kt-grid kt-grid--hor kt-login__aside" style="background-image: url(../../assets/media//bg/bg-4.jpg);">
						<div class="kt-grid__item">
							<a href="{{route('raiz')}}" class="kt-login__logo">
								<img src="{{asset('landing/html/content/agency3/images/white_name.png')}}" width="40%" height="40%">
							</a>
						</div>
						<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver">
							<div class="kt-grid__item kt-grid__item--middle">
								<h3 class="kt-login__title">Welcome to Asakaa | Innovation</h3>
                                <h4 class="kt-login__subtitle">The ultimate innovation tool for next generation companies.<br>
                                    <br>

                                        Keep going with those amazing ideas!
                                </h4>
                                
							</div>
						</div>
						<div class="kt-grid__item">
							<div class="kt-login__info">
								<div class="kt-login__copyright">
									&copy 2019 Asakaa
								</div>
								<div class="kt-login__menu">
									<a href="#" class="kt-link">Privacy</a>
									<a href="#" class="kt-link">Legal</a>
									<a href="#" class="kt-link">Contact</a>
								</div>
							</div>
						</div>
					</div>

					<!--begin::Aside-->

					<!--begin::Content-->
					<div class="kt-grid__item kt-grid__item--fluid  kt-grid__item--order-tablet-and-mobile-1  kt-login__wrapper">

						<!--begin::Head-->
						<div class="kt-login__head">
							<span class="kt-login__signup-label">Don't have an account yet?</span>&nbsp;&nbsp;
                        <a href="{{route('register')}}" class="kt-link kt-login__signup-link">Sign Up!</a>
						</div>

						<!--end::Head-->

						<!--begin::Body-->
						<div class="kt-login__body">

							<!--begin::Signin-->
							<div class="kt-login__form">
								<div class="kt-login__title">
									<h3>Log In</h3>
								</div>

								<!--begin::Form-->
                                <form class="kt-form" action="{{ route('login') }}" method="POST" >
                                    
									<input type="hidden" name="_token" value="{{ csrf_token() }}">

									<div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email" name="email" >
                                        
                                        @if ($errors->has('email'))
														<span class="" style="font-size:90%; color:#e2445c; margin-top:10px; margin-left: 15px; ">
															<strong>{{ $errors->first('email') }}</strong>
														</span>
														@endif
									</div>
									<div class="form-group">
                                        <input class="form-control" type="password" placeholder="Password" name="password">
                                        
                                        @if ($errors->has('password'))
														<span class="" style="font-size:90%; color:#e2445c; margin-top:10px; margin-left: 15px; ">
															<strong>{{ $errors->first('password') }}</strong>
														</span>
														@endif
									</div>

									<!--begin::Action-->
									<div class="kt-login__actions">
										<a href="#" class="kt-link kt-login__link-forgot">
											Forgot Password ?
										</a>
										<button id="kt_login_signin_submit" type="submit" class="btn btn-primary btn-elevate kt-login__btn-primary">Log In Now</button>
									</div>

									<!--end::Action-->
								</form>

								<!--end::Form-->

								<!--begin::Divider-->
								<div class="kt-login__divider" >
										<div class="kt-divider">
											<span></span>
											<span>OR Login with</span>
											<span></span>
										</div>
	
										
									</div>
	
									<!--end::Divider-->
	
									<!--begin::Options-->
									<div class="kt-login__options" >
										<a href="login/github" class="btn btn-dark kt-btn">
											<i class="fab fa-github"></i>
											GitHub
										</a>
										<a href="login/linkedin" class="btn btn-info kt-btn">
											<i class="fab fa-linkedin"></i>
											LinkedIn
										</a>
										<a href="/login/google" class="btn btn-danger kt-btn">
											<i class="fab fa-google"></i>
											Google
										</a>
									</div>

								<!--end::Options-->
							</div>

							<!--end::Signin-->
						</div>

						<!--end::Body-->
					</div>

					<!--end::Content-->
				</div>
			</div>
		</div>

		<!-- end:: Page -->

		<!-- begin::Global Config(global config for global JS sciprts) -->
		<script>
			var KTAppOptions = {
				"colors": {
					"state": {
						"brand": "#5d78ff",
						"dark": "#282a3c",
						"light": "#ffffff",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995"
					},
					"base": {
						"label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
						"shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
					}
				}
			};
		</script>

		<!-- end::Global Config -->

		<!--begin::Global Theme Bundle(used by all pages) -->
		<script src="{{asset('assets/vendors/base/vendors.bundle.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/demo/default/base/scripts.bundle.js')}}" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Scripts(used by this page) -->
		
		<!--end::Page Scripts -->

		<!--begin::Global App Bundle(used by all pages) -->
		<script src="{{asset('assets/app/bundle/app.bundle.js')}}" type="text/javascript"></script>

		<!--end::Global App Bundle -->
	</body>

	<!-- end::Body -->
</html>