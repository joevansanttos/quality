@extends('principal')

@section("cabecalho")
<h3>{{$s->titulo}}</h3>
@stop

@section("conteudo")

<div class="x_title">
  <h2>Detalhes</h2>
  <div class="clearfix"></div>
</div>

<table class="table table-bordered">
  <tr>
    <thead style="text-align:center">
      <th>Classificação</th>
      <th>Pessoas</th>
      <th>Periodicidade</th>
      <th>Horas</th>
      <th>Maturidade</th>
      <th class="col-md-1" align="center">Editar</th>
    </thead>
  </tr>
    <tr>
      <td>{{$c->descricao}}</td>
      <td>{{$s->pessoas}}</td>
      <td>{{$p->descricao}}</td>
      <td>{{$s->horas}}</td>
      <td>{{$t->descricao}}</td>
      <td align="center">
        <a href="pis/novo/{{$s->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button></a>
      </td>
    </tr>
</table>

<div class="x_title">
  <h2>Gestor do Subprocesso</h2>
  <div class="clearfix"></div>
</div>

<table class="table table-bordered">
  <tr>
    <thead style="text-align:center">
      <th>Nome</th>
      <th>Telefone</th>
      <th>Email</th>
      <th>Cargo</th>
      <th class="col-md-1" align="center">Editar</th>
    </thead>
  </tr>
    <tr>
      <td>{{$g[0]->nome}}</td>
      <td>{{$g[0]->tel}}</td>
      <td>{{$g[0]->email}}</td>
      <td>{{$g[0]->cargo}}</td>
      <td align="center">
        <a href="pis/novo/{{$s->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button></a>
      </td>
    </tr>
</table>

<div class="x_title">
  <h2>Stakeholders</h2>
  <div class="clearfix"></div>
</div>

<table class="table table-bordered">
  <tr>
    <thead style="text-align:center">
      <th>Nome</th>
      <th>Departamento</th>
      <th>Email</th>
      <th>Cargo</th>
      <th class="col-md-1" align="center">Editar</th>
    </thead>
  </tr>
  @foreach($ks as $k)
    <tr>
      <td>{{$k->nome}}</td>
      <td>{{$k->departamento}}</td>
      <td>{{$k->email}}</td>
      <td>{{$k->cargo}}</td>
      <td align="center">
        <a href="pis/novo/{{$s->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>

@stop

