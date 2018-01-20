@extends('principal')

@section("cabecalho")
<h3>Mapeamento {{$p->cod}}</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Detalhes do Manual de Processos<small>Processos e Subprocessos cadastrados</small></h2>
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

@include('pi_cabecalho')

@include('pi_macroprocessos')



@stop