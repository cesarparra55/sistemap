<div class="modal fade" id="eliminar{{$entity->id}}">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header" style="background: linear-gradient(to right, #0188ff , #4708ff);color: #f5f5f5;border-radius: 5px 5px 0px 0px;">
        <button type="button" class="close" data-dismiss="modal">
          <span style="color: #f5f5f5;">X</span>
        </button>
        <h4>Ente</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            {{-- <form role='form' action="{!! action('EntitiesController@destroy', [$entity->id]) !!}" method="post" enctype='multipart/form-data'> --}}
                      <div class="row"> {{-- 1ra LINEA --}}
                        <div class="col-md-10 col-md-offset-1">
                          
                          <div class="alert alert-info">Desea eliminar el ente seleccionado?</div>
                        </div>
                      </div>

                        @if(!empty($users['id']))
                          <input type="hidden" name="_method" value="PUT">
                        @endif
                      {{-- </div> --}}
                      <div class="text-center">
                        <a href="{{url('entities.index')}}" class="btn btn-danger">No</a>
                        &nbsp;

                        {!! Form::open(['route' => ['entities.destroy', $entity->id], 'method' => 'DELETE']) !!}
                                            <button class="btn btn-sm btn-danger" title="Eliminar"><i class="fas fa-trash-alt"></i></button>
                                        {!! Form::close() !!}

                        {{-- <button type="submit" class="btn btn-success" value="SI" name="SI">Si</button> --}}
                      </div>
    
                      {{-- Token --}}
                      {{csrf_field()}}
                    {{-- </form>       
                     --}}
          </div>

        </div>
    </div>
  </div>
</div>