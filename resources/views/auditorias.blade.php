@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Auditorias Cadastradas</h2>
  <ul class="nav navbar-right panel_toolbox">
    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Settings 1</a>
        </li>
        <li><a href="#">Settings 2</a>
        </li>
      </ul>
    </li>
    <li><a class="close-link"><i class="fa fa-close"></i></a>
    </li>
  </ul>
  <div class="clearfix"></div>
</div>
@stop

@section("conteudo")

<table class="table table-bordered">
  <tr>
    <th>Cliente</th>
    <th style="width: 12%;">Código</th> 
    <th style="width: 12%;">Data</th>    
    <th style="width: 18%;">Ações</th>    
  </tr>
  @foreach ($auditorias as $a)
    
    <tr>
      <td>{{$a->cliente->nome}}</td>
      <td>{{$a->cod}}</td> 

      <td>{{ date("d/m/Y", strtotime($a->data))}}</td>        
      <td align="center">        
    @if(Auth::user()->profissao_id == 4)
        <a href="auditorias/naoconformidades/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Não Conformidades pela Organização" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
    @endif

    @if(Auth::user()->profissao_id != 4)
        <a href="auditorias/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar na Auditoria" class="btn btn-warning btn-xs"><i class="fa fa-plus"></i></button></a>
        <a href="auditorias/gestores/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Gestor" class="btn btn-info btn-xs"><i class="fa fa-users"></i></button></a>
        <a href="auditorias/imprimir/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Imprimir Auditoria" class="btn btn-success btn-xs"><i class="fa fa-print"></i></button></a>
        <a href="auditorias/encontrar/{{$a->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Auditoria" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href=""><button data-toggle="tooltip" data-placement="top" title="Remover Manual" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
    @endif
      </td>
    </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Nova Auditoria" href="/auditorias/novo"><i class="fa fa-plus"></i></a>
@stop