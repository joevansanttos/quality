@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Manuais de Processos Cadastrados Finalizados</h2>
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
      <th>Empresa</th>
      <th style="width: 20%;">Departamento</th>  
      <th style="width: 10%;">Código</th>  
      <th style="width: 10%;">Data</th>  
      <th style="width: 15%;">Ações</th>    
    </tr>
  </thead>
  
  @foreach ($pis as $p)
    
    <tr>
      <td>{{$p->departamento->cliente->nome}}</td>
      <td>{{$p->departamento->nome}}</td>
      <td>{{$p->cod}}</td>   
      <td>{{ date("d/m/Y", strtotime($p->data_revisado))}}</td> 
      <td align="center">
        <a href="/pis/ver/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Ver Manual" class="btn btn-success btn-xs"><i class="fa fa-search"></i></button></a>
        <a href="/pis/encontrar/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Manual" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href="/pis/imprimir/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Imprimir Manual" class="btn btn-info btn-xs"><i class="fa fa-print"></i></button></a>
        <a href="/pis/remover/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Manual" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>
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