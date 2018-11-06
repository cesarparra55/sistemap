<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/multiple-select.css') }}" rel="stylesheet">

    {{-- Multiselect --}}

    @yield('multiselect')
    
    <!--Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    <style type="text/css">
        
        .panel{
            margin-bottom:22px;
            background-color:#fff;
            border:1px solid transparent;
            border-radius:4px;
            -webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);
           box-shadow: 5px 6px #dadada;
        }
    </style>

</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Poa') }}
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        
                        <li><a href="{{url('/home')}}"><i class="fas fa-home"></i> Inicio</a></li>

                        @can('entities.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('entities.index') }}"><i class="fas fa-building"></i> Entes</a>
                        </li>
                        @endcan
                        @can('users.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('users.index') }}"><i class="fas fa-users"></i> Usuarios</a>
                        </li>
                        @endcan
                        @can('roles.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('roles.index') }}"><i class="fas fa-user-lock"></i></i> Roles</a>
                        </li>
                        @endcan
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">Entrar</a></li>
                            {{-- <li><a href="{{ route('register') }}">Register</a></li> --}}
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Cerrar sesión
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
        
        @if (session('info'))
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="alert alert-success">
                        {{ session('info') }}
                    </div>
                </div>
            </div>
        </div>
        @endif

        @yield('content')
    </div>

    <!-- Scripts -->
    @yield('scripts')
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/multiple-select.js') }}"></script>

</script>
</body>
</html>
