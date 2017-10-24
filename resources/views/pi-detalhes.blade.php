@extends('principal')

@section("cabecalho")
<h3>{{$p->codigo}}</h3>
@stop

@section("conteudo")

<!-- Panel Objetivo -->
<div class="panel-group" id="panelobjetivo " >
  <div class="panel panel-info " >
      <div class="panel-heading primary ">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#objetivo">1 Objetivo</a>
            <a href="../pis/objetivo-formulario.php/{{$p->codigo}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Objetivo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>      
            <a  href="../forms/form-altera-objetivo"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> 
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (count($objetivo) > 0)
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body">{{$pi->objetivo->descricao}}</div>
      </div>
      @else
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Objetivo -->




@stop