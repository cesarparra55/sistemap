<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar Usuario</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
    <!-- Styles -->

    @section('multiselect')


  
    @endsection



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

  @extends('layouts.app')
  
  @section('content')
    <div class="container">
      <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
              <div class="panel1"><i class="fas fa-plus"></i> Registro Usuario</div>
              <div class="panel-body">
                <form role='form' action="{!! action('UserController@store') !!}" method="post" enctype='multipart/form-data'>
                      <hr>  
                      <div class="row"> {{-- 1ra LINEA --}}
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Nombre</label>
                            <input type="text" class="form-control" id="name" name="name" value="" required>

                            @if($errors->has('name'))
                              <span style="color:red">{{$errors->first('name')}}</span>
                            @endif
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="rif">Email</label>
                            <input id="email" class="form-control" type="email" name="email" value="{{ old('email') }}" required>

                            @if($errors->has('email'))
                              <span style="color:red">{{$errors->first('email')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>

                      <div class="row"> {{-- 2da LINEA --}}
                      <div class="col-md-6">
                          <div class="form-group">
                            <label for="entity_id">Asignar Entes</label>
                              <select id="entity_id" name="entity_id[]" multiple="multiple">
                                @foreach($entities as $e)  
                                  <option value="{{$e->id}}">{{$e->name}}</option>
                                @endforeach
                              </select>
                            
                            @if($errors->has('entity_id'))
                              <span style="color:red">{{$errors->first('entity_id')}}</span>
                            @endif
                          </div>
                        </div>  
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="role_id">Perfil de Usuario</label>
                            <select class="form-control" id="role_id" name="role_id" required>
                              @foreach($roles as $r)  
                                <option style="display: none;">Seleccione</option>
                                <option value="{{$r->id}}">{{$r->name}}</option>
                              @endforeach
                            </select>
                            
                            @if($errors->has('role_id'))
                              <span style="color:red">{{$errors->first('role_id')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>
                      <div class="row"> {{-- 3ra LINEA --}}  
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="password">Clave</label>
                            <input id="password" class="form-control" type="password" name="password" required>
                            @if($errors->has('email'))
                              <span style="color:red">{{$errors->first('email')}}</span>
                            @endif
                          </div>
                        </div>
                      </div>
                      @if(!empty($user['id']))
                      <input type="hidden" name="_method" value="PUT">
                    @endif
                  {{-- </div> --}}
                  <div class="text-center">
                    <a href="{{ route('users.index') }}" class="btn btn-danger">Atras</a>
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
  @section('scripts')

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
   
  <script>
    $(function() {
        $('#entity_id').change(function() {
            console.log($(this).val());
        }).multipleSelect({
            width: '100%'
        });
    });
</script>
   
  @endsection
</body>
</html>