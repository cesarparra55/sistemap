<div class="form-group">
	{{ Form::label('name', 'Nombre del Ente') }}
	{{ Form::text('name', null, ['class' => 'form-control', 'id' => 'name']) }}
</div>
<div class="form-group">
	{{ Form::label('rif', 'Rif') }}
	{{ Form::number('rif', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>