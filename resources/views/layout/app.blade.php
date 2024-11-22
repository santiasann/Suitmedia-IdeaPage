<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    @include('custom.bootstrap')
</head>
<body>
    @include('layout.header')
    @yield('content')
    
    @include('custom.javascript')
</body>
</html>