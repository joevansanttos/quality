@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Clientes com Relatórios Cadastrados</h2>
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

<table id="tabela" class="table table-bordered">
  <thead>
    <tr>
      <th>Nome</th>
      <th class="col-md-1">Dept.</th> 
      <th class="col-md-1">Manuais</th>
      <th class="col-md-1">Processos</th>
      <th class="col-md-1">Stakeholders</th>
      <th style="width: 13%;">Ações</th>
    </tr>
  </thead>
  
  @foreach ($clientes as $c)
    <tr>
      <td>{{$c->nome}}</td>
      <td>{{count($c->departamentos)}}</td>
      <td>{{count($c->departamentos)}}</td>
      <td>{{$c->size}}</td> 
      <td>0</td>
      <td align="center">
        <a href="/relatorios/ver/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Ver Relatório" class="btn btn-success btn-xs"><i class="fa fa-search"></i></button></a>
        <a href="/relatorios/imprime/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Imprime Relatório" class="btn btn-info btn-xs"><i class="fa fa-print"></i></button></a>         
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="clientes/novo"><i class="fa fa-plus"></i></a>
@stop

@section ("script")

<!-- Datatables -->

<script type="text/javascript" src="{{URL::asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>

<script type="text/javascript" src="{{URL::asset('vendors/datatable/datatable.js')}}"></script>
@stop