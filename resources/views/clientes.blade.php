@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Clientes Cadastrados</h2>
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
    <th>Nome</th>
    <th>Telefone</th> 
    <th>Estado</th>
    <th>Endereço</th>
    <th class="col-md-2">Ações</th>
  </tr>
  @foreach ($clientes as $c)
    <tr>
      <td>{{$c->nome}}</td>
      <td>{{$c->tel}}</td>
      <td>{{$c->estado}}</td>
      <td>{{$c->endereco}}</td> 
      <td align="center">
        <a href="departamentos/novo/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="clientes/relatorio/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Ver Relatório" class="btn btn-success btn-xs"><i class="fa fa-search"></i></button></a>
        <a href="clientes/encontrar/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar Cliente" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>    
        <a href="clientes/remover/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Remove Cliente" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>            
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="clientes/novo"><i class="fa fa-plus"></i></a>
@stop