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
          <a data-toggle="collapse" href="#objetivo">1. Objetivo</a>
            <a href="/pis/objetivo/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Objetivo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>      
            <a  href="../forms/form-altera-objetivo"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> 
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (!empty($p->objetivo))
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body">{{$p->objetivo->descricao}}</div>
      </div>
      @else
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Objetivo -->

<!-- Panel Aplicacao -->
<div class="panel-group" id="panelaplicacao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#aplicacao">2. Aplicação</a>
            <a href="/pis/aplicacao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Aplicação" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>   
          <a href="../forms/form-altera-aplicacao.php?cod_pi?>"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (!empty($p->aplicacao))
      <div id="aplicacao" class="panel-collapse collapse">
        <div class="panel-body">{{$p->aplicacao->descricao}}</div>
      </div>
      @else
      <div id="aplicacao" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Aplicacao -->

<!-- Panel Definicao-->
<div class="panel-group" id="paneldefinicao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#definicao">3. Definições</a>                              
          <a href="/pis/definicao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Definições" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
          <a href="../profiles/pi-profile.php?cod_pi"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          <div class="clearfix"></div>
        </h4>
      </div>                          
      @if (!empty($p->definicao))
      <div id="definicao" class="panel-collapse collapse">
        <div class="panel-body">{{$p->definicao->descricao}}</div>
      </div>
      @else
      <div id="definicao" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif                       
    </div>   
</div>
<!-- End Panel Definicao -->

<!-- Panel MacroProcessos -->
<div class="panel-group" id="panelprocesso">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#processo">5. Processos</a>
          <a href="/pis/macroprocesso/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="processo" class="panel-collapse collapse">
        <div class="panel-body">
        @foreach ($p->macroprocessos as $macroprocesso) 
          $string = (string)$m;
          $panel = 'panel_' . $string;
          $idpanel = '#'.$panel;
          $m = $m + 1;
          $panel_s = 'panel_s_' . $string;
          $idpanel_s = '#'.$panel_s;
          $panel_d = 'panel_d_' . $string;
          $idpanel_d = '#'.$panel_d;
          $panel_c = 'panel_c_' . $string;
          $idpanel_c = '#'.$panel_c;
          $panel_g = 'panel_g_' . $string;
          $idpanel_g = '#'.$panel_g;
          $accordion = 'accordion_'. $panel;
          $idaccordion = '#'. $accordion;         
          <div class="panel-group" id="accordion">                                    
            <div class="panel panel-success">
              <div class="panel-heading">
                <h4 class="panel-title">                               
                  <a data-toggle="collapse" data-parent="#accordion" href="{{$idpanel}}">
                  {{$macroprocesso->numero}}</a>
                  <a href="">
                    <button data-toggle="tooltip" data-placement="top" title="Adicionar Subprocesso" class="btn btn-success btn-xs pull-right"><i class="fa fa-plus"></i>
                    </button>
                  </a>                                                                   
                  <a href="">
                    <button data-toggle="tooltip" data-placement="top" title="Editar Processo" class="btn btn-success btn-xs pull-right"><i class="fa fa-pencil"></i></button>
                  </a> 
                  <div class="clearfix"></div>
                </h4>
              </div>              
            </div>
          </div>
          @endforeach                                                  
        </div>
      </div>
    </div>   
</div>
<!-- Panel MacroProcessos -->


@stop