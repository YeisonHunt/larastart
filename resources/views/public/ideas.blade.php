<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<title>Ideas Globales | Asakaa Innova</title>

<!-- Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">

<script>
window.Laravel = {!! json_encode([
'csrfToken' => csrf_token(),

 ]) !!};

 window.baseUrl = "<?php echo (env('APP_URL')); ?>";
</script>

</head>
<body>



<div id="Container">
    <router-view></router-view>
</div>

<script src="{{ asset('js/appLanding.js') }}"></script>
</body>
</html>
