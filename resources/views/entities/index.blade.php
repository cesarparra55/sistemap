<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Listado de Entes</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>

            .panel1
             {
                background-color: #235b98;
                color: #f5f5f5;
                padding: 13px 15px;
                border-bottom: 1px solid transparent;
                border-top-right-radius: 3px;
                border-top-left-radius: 3px;
                font-weight: bold;               
            }

            td
            {
                text-align: center;
            }

            .col-md-12 
            {
                width: auto;
            }

        </style>
</head>
<body>
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        {{-- <div class="col-md-8 col-md-offset-2"> --}}
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel1"><i class="fas fa-list"></i> Listado de Entes
                    @can('entities.create')
                        <a href="{{ route('entities.create') }}" class="btn btn-sm btn-primary pull-right"><i class="fas fa-plus"></i> Crear</a>
                    @endcan
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th><center>Nombre</center></th>
                                <th><center>Tipo</center></th>
                                <th><center>RIF</center></th>
                                <th colspan="3"><center>Acciones</center></th>
                            </tr>
                        </thead>
                        <tbody>
                            @if((Auth::user()->role_id == '1'))
                                @foreach($entities as $entity)
                                    <tr>
                                        <td>{{ $entity->id }}</td>
                                        <td>{{ $entity->name }}</td>
                                        <td>{{ $entity->tipo }}</td>
                                        <td>{{ $entity->rif }}</td>
                                    @can('entities.show')
                                        <td width="10px">
                                            <a href="" class="btn btn-sm btn-success" data-toggle="modal" data-target="#ver{{$entity->id}}" title="Ver Ente"><i class="far fa-folder-open"></i></a>
                                        </td>
                                    @endcan
                                    @can('entities.edit')
                                        <td width="10px"><a href="{{ route('entities.edit', $entity->id) }}" class="btn btn-sm btn-primary" title="Editar"><i class="fas fa-edit"></i></a>
                                        </td>
                                    @endcan
                                    @can('entities.destroy')
                                        <td width="10px">
                                            {!! Form::open(['route' => ['entities.destroy', $entity->id], 'method' => 'DELETE']) !!}
                                                <button class="btn btn-sm btn-danger" title="Eliminar"><i class="fas fa-trash-alt"></i></button>
                                            {!! Form::close() !!}
                                        </td>
                                    @endcan
                                    </tr>
                                    @include('entities.show')
                            @endforeach
                        @else
                            @foreach($entities as $entity)
                                {{-- @if (($entity->id == Auth::user()->entity_id)) --}}
                                    <tr>
                                        <td>{{ $entity->id }}</td>
                                        <td>{{ $entity->name }}</td>
                                        <td>{{ $entity->tipo }}</td>
                                        <td>{{ $entity->rif }}</td>
                                    @can('entities.show')
                                        <td width="10px">
                                            <a href="" class="btn btn-sm btn-success" data-toggle="modal" data-target="#ver{{$entity->id}}" title="Ver Ente"><i class="far fa-folder-open"></i></a>
                                        </td>
                                    @endcan
                                    @can('entities.edit')
                                        <td width="10px"><a href="{{ route('entities.edit', $entity->id) }}" class="btn btn-sm btn-primary" title="Editar"><i class="fas fa-edit"></i></a>
                                        </td>
                                    @endcan
                                    @can('entities.destroy')
                                        <td width="10px">
                                            {!! Form::open(['route' => ['entities.destroy', $entity->id], 'method' => 'DELETE']) !!}
                                                <button class="btn btn-sm btn-danger" title="Eliminar"><i class="fas fa-trash-alt"></i></button>
                                            {!! Form::close() !!}
                                        </td>
                                    @endcan
                                    </tr>
                                    @include('entities.show')
                                {{-- @endif --}}
                            @endforeach
                        @endif
                        </tbody>
                    </table>
                    {{ $entities->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
</body>
</html>