@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Cliente</th>
    <th>Código</th>    
    <th class="col-md-1">Ações</th>    
  </tr>
  @foreach ($auditorias as $a)
    
    <tr>
      <td>{{$a->cliente->nome}}</td>
      <td>{{$a->cod}}</td>         
      <td align="center">
        <a href="auditorias/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar na Auditoria" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="/auditorias/novo"><i class="fa fa-plus"></i></a>
@stop