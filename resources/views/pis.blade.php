@extends('principal')

@section("cabecalho")
<h3>Manual de Processos</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Código</th>
    <th class="col-md-1" align="center">Remover</th>
    <th class="col-md-1">Ver</th>
    <th class="col-md-2">Manual de Processos</th>    
  </tr>
  @foreach ($pis as $p)
    
    <tr>
      <td>{{$p->id}}</td>
          
      <td align="center">
        <a href="produtos/remove/{{$p->id}}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="pis/mostra/{{$p->id}}"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="pis/novo/{{$p->id}}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
      </td>
    </tr>
  @endforeach
</table>
@stop