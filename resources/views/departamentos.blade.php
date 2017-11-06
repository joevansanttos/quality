@extends('principal')

@section("cabecalho")
<h3>Departamentos</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Empresa</th>
    <th>Departamento</th>
    <th>Nome do Responsável</th>
    <th>Telefone do Responsável</th>
    <th>Cargo</th>    
    <th class="col-md-2">Ações</th>    
  </tr>
  @foreach ($departamentos as $d)
    
    <tr>
      <td>{{$d->cliente->nome}}</td>
      <td>{{$d->nome}}</td>
      <td>{{$d->gestor->responsavel}}  </td>          
      <td>{{$d->gestor->telefone}}  </td>  
      <td>{{$d->gestor->cargo}}  </td>  
      <td align="center">
        <a href="pis/novo/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Manual de Processos" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="departamentos/encontrar/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href="departamentos/remover/{{$d->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>    
      </td>
    </tr>
  @endforeach
</table>
@stop