<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!--Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <style type="text/css">

        .panel{
            margin-bottom:22px;
            background-color:#fff;
            border:1px solid transparent;
            border-radius:4px;
            -webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);
           box-shadow: 5px 6px #dadada;
        }
        
        .group        
        { 
          position:relative; 
          margin-bottom:45px; 
        }
        input         {
          font-size:18px;
          padding:10px 10px 10px 5px;
          display:block;
          width:100%;
          border:none;
          border-bottom:1px solid #757575;
        }
        input:focus     { outline:none; }
        
        /* LABEL ======================================= */
        label          {
          color:#999; 
          font-size:18px;
          font-weight:bold;
          position:absolute;
          pointer-events:none;
          left:5px;
          top:10px;
          transition:0.2s ease all; 
          -moz-transition:0.2s ease all; 
          -webkit-transition:0.2s ease all;
        }
        
        /* active state */
        input:focus ~ label, input:valid ~ label    {
          top:-20px;
          font-size:16px;
          color:#26ADDC;
        }
        
        /* BOTTOM BARS ================================= */
        .bar  { position:relative; display:block; width:100%; }
        .bar:before, .bar:after   {
          content:'';
          height:2px; 
          width:0;
          bottom:1px; 
          position:absolute;
          background:#26ADDC; 
          transition:0.2s ease all; 
          -moz-transition:0.2s ease all; 
          -webkit-transition:0.2s ease all;
        }
        .bar:before {
          left:50%;
        }
        .bar:after {
          right:50%; 
        }
        
        /* active state */
        input:focus ~ .bar:before, input:focus ~ .bar:after {
          width:50%;
        }
        
        /* HIGHLIGHTER ================================== */
        .highlight {
          position:absolute;
          height:60%; 
          width:100px; 
          top:25%; 
          left:0;
          pointer-events:none;
          opacity:0.5;
        }
        
        /* active state */
        input:focus ~ .highlight {
          -webkit-animation:inputHighlighter 0.3s ease;
          -moz-animation:inputHighlighter 0.3s ease;
          animation:inputHighlighter 0.3s ease;
        }
        
        /* ANIMATIONS ================ */
        @-webkit-keyframes inputHighlighter {
          from { background:#26ADDC; }
          to  { width:0; background:transparent; }
        }
        @-moz-keyframes inputHighlighter {
          from { background:#26ADDC; }
          to  { width:0; background:transparent; }
        }
        @keyframes inputHighlighter {
          from { background:#26ADDC; }
          to  { width:0; background:transparent; }
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
                       {{--  @can('products.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('products.index') }}">Productos</a>
                        </li>
                        @endcan --}}
                        @can('entities.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('entities.index') }}">Entes</a>
                        </li>
                        @endcan
                        @can('users.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('users.index') }}">Usuarios</a>
                        </li>
                        @endcan
                        @can('roles.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('roles.index') }}">Roles</a>
                        </li>
                        @endcan
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
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
                                            Logout
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
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
