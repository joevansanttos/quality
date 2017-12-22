@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Departamentos Cadastrados</h2>
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
    <th>Nome do Resp.</th>
    <th>Telefone do Resp.</th>
    <th>Cargo</th>    
    <th style="width: 11%;">Ações</th>    
  </tr>
  @foreach ($departamentos as $d)
    
    <tr>
      <td>{{$d->cliente->nome}}</td>
      <td>{{$d->nome}}</td>
      <td>{{$d->gestor->responsavel}}  </td>          
      <td>{{$d->gestor->telefone}}  </td>  
      <td>{{$d->gestor->cargo}}  </td>  
      <td align="center">
        <a href="pis/novo/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Manual de Processos" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="departamentos/encontrar/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href="departamentos/remover/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>    
      </td>
    </tr>
  @endforeach
</table>
@stop