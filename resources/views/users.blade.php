@extends('principal')

@section("cabecalho")
<h3>Usuários</h3>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <thead style="text-align:center">
      <th>Nome</th>
      <th>Sobrenome</th>
      <th>Email</th>
      <th>Telefone</th>
      <th>Estado</th>
      <th>Ações</th>
    </thead>
    
  </tr>
  @foreach ($users as $u)
    <tr>
      <td>{{$u->name}}</td>
      <td>{{$u->sobrenome}}</td>
      <td>{{$u->email}}</td>
      <td>{{$u->telefone}}</td>
      <td>{{$u->estado}}</td>
      <td align="center"> 
        <a href="users/remover/{{$u->id}}"><button data-toggle="tooltip" data-placement="top" title="Remove Cliente" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>            
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="users/novo"><i class="fa fa-plus"></i></a>
@stop