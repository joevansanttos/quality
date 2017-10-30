@extends('principal')

@section("cabecalho")
<h3>Manual de Processos</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Empresa</th>
    <th>Departamento</th>  
    <th>Código</th>    
    <th class="col-md-2">Ações</th>    
  </tr>
  @foreach ($pis as $p)
    
    <tr>
      <td>{{$p->departamento->cliente->nome}}</td>
      <td>{{$p->departamento->nome}}</td>
      <td>{{$p->cod}}</td>         
      <td align="center">
        <a href="pis/mostra/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Ver Manual" class="btn btn-success btn-xs"><i class="fa fa-search"></i></button></a>
        <a href="pis/novo/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href="pis/novo/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>
@stop