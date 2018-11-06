<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Listado de Usuarios</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
             /*.body
             {
                background-color: rgba(125, 167, 138, 0.08);
            }

            .boton
            {

                padding: 4px 2px;
                font-size: 12px;
                line-height: 2.5;
                border-radius: 3px
            }*/

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
                <div class="panel1">
                    <i class="fas fa-list"></i> Listado de Usuarios 
                    @can('entities.create')
                        <a href="{{ route('users.create') }}" class="btn btn-sm btn-primary pull-right"><i class="fas fa-plus"></i> Crear</a>
                    @endcan
                </div>

                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th><center>Nombre</center></th>
                                <th><center>Email</center></th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                @can('users.show')
                                <td width="10px">
                                    <a href="" class="btn btn-sm btn-success" data-toggle="modal" data-target="#ver{{$user->id}}" title="Ver Usuario"><i class="far fa-folder-open"></i></a>
                                </td>
                                @endcan
                                @can('users.edit')
                                <td width="10px"><a href="{{ route('users.edit', $user->id) }}" class="btn btn-sm btn-primary" title="Editar"><i class="fas fa-edit"></i></a>
                                </td>
                                @endcan
                                @can('users.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['users.destroy', $user->id], 'method' => 'DELETE']) !!}
                                        <button class="btn btn-sm btn-danger" title="Eliminar Usuario"><i class="fas fa-trash-alt"></i></button>
                                    {!! Form::close() !!}
                                </td>
                                @endcan
                            </tr>
                                @include('users.show')
                            @endforeach
                        </tbody>
                    </table>
                    {{ $users->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection