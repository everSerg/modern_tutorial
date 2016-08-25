<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="{{ URL::to('src/css/admin.css') }}">
        <title>Admin area</title>
        @yield('styles')
    </head>
    <body>

        @include('includes.admin-header')
        @yield('content')

        <script type="text/javascript">
            var baseUrl = "{{ URL::to('/') }}}";
        </script>

        @yield('scripts')
    </body>
</html>