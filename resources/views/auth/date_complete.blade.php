
@extends('frontTwo.layoutTwo')

@section('titulo')
Register - Asakaa Project Management
@endsection

@section('content')

	<div class="row clearfix">
            <div class="col-lg-6 col-md-12">
                <div class="company_detail">
                    <a href="{{route('raiz')}}"><h4 class="logo"><img src="{{ asset('newDesign/images/asakaa_logo_white.png') }}" alt="Logo" width="60" height="35"> Asakaa</h4></a> 
                    <h3>Registration steps 2 of <strong>2</strong></h3>
                                        
                    
                </div>
            </div>                        
            <div class="col-lg-5 col-md-12 offset-lg-1">
                <div class="card-plain">
                    <div class="header">
                        <h5>New Credentials</h5>
                    </div>
                    <form class="kt-form kt-form--label-right" action="{{ route('guardado',['id'=>$id]) }}"  method="POST" >
                        {{ csrf_field() }}

                      

                       

                         <div class="input-group">

                              
                                  <input autocomplete="off" type="text" class="form-control" placeholder="Nombres Completos" name="name" required >
                            <span class="input-group-addon"><i class="zmdi zmdi-mood"></i></span>
                            @if($errors->has('name'))
                                                <span class="" style="font-size:90%; color:#e2445c; margin-top:4px; ">
                                                    <strong>{{ $errors->first('name') }}</strong>
                                                </span>
                            
                            @endif
                            
                        </div>
                        <div class="input-group">

                              
                                  <input autocomplete="off" type="password" class="form-control" placeholder="Your new password" name="password" required>
                            <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>
                            @if($errors->has('password'))
                                                <span class="" style="font-size:90%; color:#e2445c; margin-top:4px; ">
                                                    <strong>{{ $errors->first('password') }}</strong>
                                                </span>
                            
                            @endif
                            
                        </div>
                        <div class="input-group">
                            <input type="password" name="password_confirmation" placeholder="Confirm passsword" class="form-control" required/>
                            <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>

                             @if($errors->has('password_confirmation'))
                                                <span class="" style="font-size:90%; color:#e2445c; margin-top:4px; ">
                                                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                                                </span>
                            @endif

                        </div>

                        
                        <input type="hidden" name="randString" value="{{$randString}}"> 
                                                   
                    

                            <button type="submit" class="btn btn-primary btn-round btn-block">Activate Account</button>
                                             
                   </form>
                    <div class="footer">
                        <a href="{{ route('login')}}" class="" style="float:left;">Log In</a>
                    <a href="{{ route('register')}}" class="" style="float:right;">Sign Up</a>
                    <br> 
                       
                    </div>
                    
                </div>
            </div>
        </div>


    





@endsection

