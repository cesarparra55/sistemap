{{-- @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Entes</div>

                <div class="panel-body">                    
                    {{ Form::open(['route' => 'entities.store']) }}

                        @include('entities.partials.form')
                        
                    {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection --}}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar Ente</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
    <!-- Styles -->
    <style>
         .panel1
         {
            background-color: #39af3b;
            color: #f5f5f5;
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-right-radius: 3px;
            border-top-left-radius: 3px;
            font-weight: bold;               
        }
    </style>
  </head>
<body>

  @extends('layouts.appform')
  
  @section('content')
    <div class="container">
      <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
              <div class="panel1"><i class="fas fa-plus"></i> Registro de Ente/Órgano</div>
              <div class="panel-body">
                <form role='form' action="{!! action('EntitiesController@store') !!}" method="post" enctype='multipart/form-data'>
                      <hr>  
                      <div class="row"> {{-- 1ra LINEA --}}
                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="name" name="name" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="name">Nombre</label>
                            @if($errors->has('name'))
                              <span style="color:red">{{$errors->first('name')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="rif" name="rif" value="J-" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="rif">Rif</label>
                            @if($errors->has('rif'))
                              <span style="color:red">{{$errors->first('rif')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="tipo" name="tipo" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="tipo">Tipo</label>
                            @if($errors->has('tipo'))
                              <span style="color:red">{{$errors->first('tipo')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>


                      <div class="row"> {{-- 2da LINEA --}}
                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="funcion" name="funcion" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="funcion">Función</label>

                            @if($errors->has('funcion'))
                              <span style="color:red">{{$errors->first('funcion')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="codigo_presupuestario" name="codigo_presupuestario" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="codigo_presupuestario">Código Presupuestario</label>

                            @if($errors->has('codigo_presupuestario'))
                              <span style="color:red">{{$errors->first('codigo_presupuestario')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="identificacion_financiera" name="identificacion_financiera" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="identificacion_financiera">Identificacion Financiera</label>

                            @if($errors->has('identificacion_financiera'))
                              <span style="color:red">{{$errors->first('identificacion_financiera')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>

                      <div class="row"> {{-- 3ra LINEA --}}
                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="dependencia_presupuestaria" name="dependencia_presupuestaria" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="dependencia_presupuestaria">Dependencia Presup.</label>

                            @if($errors->has('dependencia_presupuestaria'))
                              <span style="color:red">{{$errors->first('dependencia_presupuestaria')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="mision" name="mision" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="mision">Misión</label>

                            @if($errors->has('mision'))
                              <span style="color:red">{{$errors->first('mision')}}</span>
                            @endif
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="group">
                            <input type="text" id="vision" name="vision" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="vision">visión</label>

                            @if($errors->has('vision'))
                              <span style="color:red">{{$errors->first('vision')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>


                      <div class="row"> {{-- 4ta LINEA --}}
                        <div class="col-md-12">
                          <div class="group">
                            <input type="text" id="description" name="description" value="" required>
                            <span class="highlight"></span> 
                            <span class="bar"></span> 
                            <label for="description">Descripción</label>

                            @if($errors->has('description'))
                              <span style="color:red">{{$errors->first('description')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>

                      @if(!empty($entity['id']))
                      <input type="hidden" name="_method" value="PUT">
                    @endif
                  {{-- </div> --}}
                  <div class="text-center">
                    <a href="{{ route('entities.index') }}" class="btn btn-danger">Atras</a>
                    <button type="submit" class="btn btn-success">Guardar</button>
                  </div>

                  {{-- Token --}}
                  {{csrf_field()}}
                </form>
                </div>
            </div>
        </div>
      </div>
    </div>
  @endsection
</body>
</html>