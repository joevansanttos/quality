@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Nome</th>
    <th class="col-md-1" align="center">Remover</th>
    <th class="col-md-1">Ver</th>
    <th class="col-md-1">Departamento</th>
  </tr>
  @foreach ($clientes as $c)
    <tr>
      <td>{{$c->nome}}</td>
      <td align="center">
        <a href="produtos/remove/{{$c->id}}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="produtos/remove/{{$c->id}}"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="departamentos/mostra/{{$c->id}}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
      </td>
    </tr>
  @endforeach
</table>
@stop