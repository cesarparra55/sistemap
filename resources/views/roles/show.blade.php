<div class="modal fade" id="ver{{$role->id}}">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background: linear-gradient(to right, #0188ff , #4708ff);color: #f5f5f5;border-radius: 5px 5px 0px 0px;">
        <button type="button" class="close" data-dismiss="modal">
          <span style="color: #f5f5f5;">X</span>
        </button>
        <h4>Rol</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" class="form-control" value="{{$role->name}}" disabled>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label for="slug">Slug:</label>
              <input type="text" id="slug" name="slug" class="form-control" value="{{$role->slug}}" disabled>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label for="description">Descripción:</label>
                <input type="text" id="description" name="description" class="form-control" value="{{$role->description}}" disabled>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>