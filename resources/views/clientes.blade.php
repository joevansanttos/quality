@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Nome</th>    
    <th class="col-md-2">Ações</th>
  </tr>
  @foreach ($clientes as $c)
    <tr>
      <td>{{$c->nome}}</td>      
      <td align="center">
        <a href="departamentos/novo/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="departamentos/novo/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>    
        <a href="departamentos/novo/{{$c->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>            
      </td>
    </tr>
  @endforeach
</table>
@stop