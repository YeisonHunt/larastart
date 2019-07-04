
@extends('frontTwo.layoutTwo')

@section('titulo')
Register - Asakaa Innovation Tool
@endsection

@section('content')

	<div class="row clearfix">
            <div class="col-lg-6 col-md-12">
                <div class="company_detail">
                    <a href="{{route('raiz')}}"><h4 class="logo"><img src="{{ asset('newDesign/images/asakaa_logo_white.png') }}" alt="Logo" width="60" height="35"> Asakaa | Innova</h4></a> 
                    <h3>Registration steps 1 of <strong>2</strong></h3>
                    <p>Please <strong>check your email</strong> and follow the link to complete your registration.</p>                        
                   
                </div>
            </div>                        
            <div class="col-lg-5 col-md-12 offset-lg-1">
                <div class="card-plain">
                    <div class="header">
                        <h5>Almost done</h5>
                        
                    </div>

                    <img src="{{asset('newDesign/registerStep1.png')}}" alt="Almost Done">
                    
                </div>
            </div>
        </div>


       





@endsection

