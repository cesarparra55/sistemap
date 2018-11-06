<div class="modal fade" id="ver{{$entity->id}}">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header" style="background: linear-gradient(to right, #0188ff , #4708ff);color: #f5f5f5;border-radius: 5px 5px 0px 0px;">
        <button type="button" class="close" data-dismiss="modal">
          <span style="color: #f5f5f5;">X</span>
        </button>
        <h4>Ente</h4> 
      </div>
      <div class="modal-body"> 
        <div class="row"> {{-- 1ra fila --}}
          <div class="col-md-4">
            <div class="form-group">
              <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" class="form-control" value="{{$entity->name}}" disabled>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="rif">Rif:</label>
              <input type="text" id="rif" name="rif" class="form-control" value="{{$entity->rif}}" disabled> 
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="tipo">Tipo:</label>
              <input type="text" id="tipo" name="tipo" class="form-control" value="{{$entity->tipo}}" disabled> 
            </div>
          </div>
        </div>
        <div class="row"> {{-- 2da fila --}}
          <div class="col-md-4">
            <div class="form-group">
              <label for="funcion">Función:</label>
                <input type="text" id="funcion" name="funcion" class="form-control" value="{{$entity->funcion}}" disabled>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="codigo_presupuestario">Código Presupuestario:</label>
              <input type="text" id="codigo_presupuestario" name="codigo_presupuestario" class="form-control" value="{{$entity->codigo_presupuestario}}" disabled> 
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="identificacion_financiera">Identificación Financieraa:</label>
              <input type="text" id="identificacion_financiera" name="identificacion_financiera" class="form-control" value="{{$entity->identificacion_financiera}}" disabled> 
            </div>
          </div>
        </div>


        <div class="row"> {{-- 3ra fila --}}
          <div class="col-md-4">
            <div class="form-group">
              <label for="dependencia_presupuestaria">Dependencia Presupuestaria:</label>
                <input type="text" id="dependencia_presupuestaria" name="dependencia_presupuestaria" class="form-control" value="{{$entity->dependencia_presupuestaria}}" disabled>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="mision">Misión:</label>
              <input type="text" id="mision" name="mision" class="form-control" value="{{$entity->mision}}" disabled> 
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="vision">visión:</label>
              <input type="text" id="vision" name="vision" class="form-control" value="{{$entity->vision}}" disabled> 
            </div>
          </div>
        </div>


        <div class="row">{{-- 4ta fila --}}
          <div class="col-md-12">
            <div class="form-group">
              <label for="description">Descripción:</label>
              <textarea id="description" name="description" class="form-control" style="resize: none;" disabled>{{$entity->description}}</textarea>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>