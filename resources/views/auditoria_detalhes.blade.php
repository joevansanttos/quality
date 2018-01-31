@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Detalhes da Auditoria</h2>
  <ul class="nav navbar-right panel_toolbox">
    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Settings 1</a>
        </li>
        <li><a href="#">Settings 2</a>
        </li>
      </ul>
    </li>
    <li><a class="close-link"><i class="fa fa-close"></i></a>
    </li>
  </ul>
  <div class="clearfix"></div>
</div>
@stop


@section("titulo")
<div class="x_title">
  <h2>Auditoria - {{$a->cod}}<small>Auditoria realizada na organização {{$a->cliente->nome}}</small></h2>
  <ul class="nav navbar-right panel_toolbox">
    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Settings 1</a>
        </li>
        <li><a href="#">Settings 2</a>
        </li>
      </ul>
    </li>
    <li><a class="close-link"><i class="fa fa-close"></i></a>
    </li>
  </ul>
  <div class="clearfix"></div>
</div>
@stop


@section("conteudo")


<!-- PANEL INFORMAÇÕES GERAIS -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-gerais">1. INFORMAÇÕES GERAIS</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-gerais" class="panel-collapse collapse">
        <div class="panel-body">  
          @include('auditoria_gerais')
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL INFORMAÇÕES GERAIS -->


<!-- INFORMACOES DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-info">2. INFORMAÇÕES DA AUDITORIA</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-info" class="panel-collapse collapse">
        <div class="panel-body"> 
          @include('auditoria_info')
        </div>
      </div>
    </div>   
</div>
<!-- FIM DAS INFORMACOES DA AUDITORIA -->

<!-- PANEL PROCESSO DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-processo">3. PROCESSO DA AUDITORIA</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-processo" class="panel-collapse collapse">
        <div class="panel-body">  
           @include('auditoria_processo') 
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL PROCESSO DA AUDITORIA -->

<!-- PANEL DESEMPENHO DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-desempenho">4. DESEMPENHO</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-desempenho" class="panel-collapse collapse">
        <div class="panel-body">        
          @include('auditoria_desempenho') 
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL DESEMPENHO DA AUDITORIA -->

<!-- PANEL SUMÁRIO EXECUTIVO -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-sumario">5. SUMÁRIO EXECUTIVO</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-sumario" class="panel-collapse collapse">
        <div class="panel-body"> 
          @include('auditoria_sumario') 
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL SUMÁRIO EXECUTIVO -->

<!-- PANEL RECOMENDAÇÃO DO AUDITOR LÍDER -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-recomendacao">6. RECOMENDAÇÃO DO AUDITOR LÍDER</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-recomendacao" class="panel-collapse collapse">
        <div class="panel-body"> 
          @include('auditoria_recomendacao') 
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL RECOMENDAÇÃO DO AUDITOR LÍDER -->

<!-- PANEL PROGRAMA DE AUDITORIAS -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-programas">7. PROGRAMA DE AUDITORIAS</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-programas" class="panel-collapse collapse">
        <div class="panel-body"> 
          @include('auditoria_programa')
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL PROGRAMA DE AUDITORIAS -->

@stop


@section("script")

@stop


