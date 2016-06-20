<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="{{ URL::to('src/css/main.css') }}">
        <title>@yield('title')</title>
        @yield('styles')
    </head>
    <body>

        @include('includes.header')

        <div class="main">
            @yield('content')
        </div>

    </body>
</html>