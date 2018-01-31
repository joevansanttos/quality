
<!-- PANEL PROGRAMA DA AUDITORIA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-programa">7.1 PROGRAMA</a>
      @if ($a->programa != null)
        <a href="{{$a->programa->id}}/programa/programa/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Programa" class="btn btn-warning btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a> 
      @else
        <a href="{{$a->id}}/programa/programa/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Programa" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a> 
      @endif                     
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-programa" class="panel-collapse collapse">
      <div class="panel-body">
        @if ($a->programa != null) 
        <table class="table table-bordered">
          <tr>
            <td>Preparado por: {{$a->programa->auditor}}</td>
          </tr>
          <tr>
            <td>Data: {{$a->programa->data}}</td>
          </tr>
          <tr>
            <td>Comentários: {{$a->programa->comentarios}}</td>
          </tr>
        </table> 
        @endif         
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL PROGRAMA DA AUDITORIA-->