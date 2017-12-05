@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Cliente</th>
    <th>Código</th>    
    <th class="col-md-2">Ações</th>    
  </tr>
  @foreach ($auditorias as $a)
    
    <tr>
      <td>{{$a->cliente->nome}}</td>
      <td>{{$a->cod}}</td>         
      <td align="center">
        <a href="auditorias/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar na Auditoria" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="auditorias/naoconformidades/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Não Conformidades pela Organização" class="btn btn-info btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="auditorias/imprimir/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Imprimir Auditoria" class="btn btn-success btn-xs"><i class="fa fa-print"></i></button></a>
        <a href="auditorias/encontrar/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Auditoria" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href=""><button data-toggle="tooltip" data-placement="top" title="Remover Manual" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Nova Auditoria" href="/auditorias/novo"><i class="fa fa-plus"></i></a>
@stop