@extends('principal')

@section("cabecalho")
<h3>Usuários</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Gestores de Clientes</h2>
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
    <thead style="text-align:center">
      <th>Nome</th>
      <th>Email</th>
      <th>Profissão</th>
      <th>Telefone</th>
      <th>Estado</th>
      <th>Ações</th>
    </thead>
    
  </tr>
  @foreach ($gestores as $g)
  <tr>
    <td>{{$g->name}} {{$g->sobrenome}}</td>
    <td>{{$g->email}}</td>
    <td>{{$g->profissao->descricao}}</td>
    <td>{{$g->telefone}}</td>
    <td>{{$g->estado}}</td>
    <td style="width:11%; " align="center"> 
      <a href="users/encontrar/{{$g->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Usuário" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
      <a href="users/remover/{{$g->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Usuário" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>            
    </td>
  </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="/users/novo"><i class="fa fa-plus"></i></a>
@stop