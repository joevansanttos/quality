@extends('principal')

@section("cabecalho")
<h3>Usuários</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <thead style="text-align:center">
      <th>Nome</th>
      <th>Email</th>
      <th class="col-md-1" align="center">Remover</th>
      <th class="col-md-1" align="center">Ver</th>
    </thead>
    
  </tr>
  @foreach ($usuarios as $u)
    <tr>
      <td>{{$u->nome}}</td>
      <td>{{$u->email}}</td>
      <td align="center">
        <a href="produtos/remove/{{$u->id}}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="produtos/remove/{{$u->id}}"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="usuarios/novo"><i class="fa fa-plus"></i></a>
@stop