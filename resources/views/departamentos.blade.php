@extends('principal')

@section("cabecalho")
<h3>Departamentos</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Departamento</th>
    <th>Responsável</th>
    <th class="col-md-1" align="center">Remover</th>
    <th class="col-md-1">Ver</th>
    <th class="col-md-2">Manual de Processos</th>    
  </tr>
  @foreach ($departamentos as $d)
    
    <tr>
      <td>{{$d->nome}}</td>
      <td>{{$d->stakeholder[0]->responsavel}}  </td>
          
      <td align="center">
        <a href="produtos/remove/{{$d->id}}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="produtos/remove/{{$d->id}}"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
      </td>
      <td align="center">
        <a href="pis/novo/{{$d->id}}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
      </td>
    </tr>
  @endforeach
</table>
@stop