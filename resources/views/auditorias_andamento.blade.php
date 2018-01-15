@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Todas as Auditorias Cadastradas em Andamento</h2>
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
      <th>Cliente</th>
      <th style="width: 12%;">Código</th> 
      <th style="width: 12%;">Data</th>    
      <th style="width: 20%;">Ações</th>    
    </tr>
  </thead>
  
  @foreach ($auditorias as $a)
    
    <tr>
      <td>{{$a->cliente->nome}}</td>
      <td>{{$a->cod}}</td> 

      <td>{{ date("d/m/Y", strtotime($a->data))}}</td>        
      <td align="center">        
    @if(Auth::user()->profissao_id == 4)
        <a href="/auditorias/naoconformidades/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Não Conformidades pela Organização" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
    @endif

    @if(Auth::user()->profissao_id != 4)
        <a href="/auditorias/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar na Auditoria" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="/auditorias/gestores/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Gestor" class="btn btn-info btn-xs"><i class="fa fa-users"></i></button></a>
        <a href="/auditorias/imprimir/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Imprimir Auditoria" class="btn btn-success btn-xs"><i class="fa fa-print"></i></button></a>
        <a href="/auditorias/encontrar/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Auditoria" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href=""><button data-toggle="tooltip" data-placement="top" title="Remover Manual" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
    @endif
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Nova Auditoria" href="/auditorias/novo"><i class="fa fa-plus"></i></a>
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