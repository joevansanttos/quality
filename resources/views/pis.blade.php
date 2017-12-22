@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Manuais de Processos Cadastrados</h2>
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
<table class="table table-bordered">
  <tr>
    <th>Empresa</th>
    <th>Departamento</th>  
    <th>Código</th>    
    <th style="width: 15%;">Ações</th>    
  </tr>
  @foreach ($pis as $p)
    
    <tr>
      <td>{{$p->departamento->cliente->nome}}</td>
      <td>{{$p->departamento->nome}}</td>
      <td>{{$p->cod}}</td>         
      <td align="center">
        <a href="pis/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar no Manual" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="pis/imprimir/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Ver Manual" class="btn btn-success btn-xs"><i class="fa fa-search"></i></button></a>
        <a href="pis/encontrar/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Manual" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href="pis/remover/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Manual" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>
@stop