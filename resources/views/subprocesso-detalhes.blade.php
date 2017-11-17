@extends('principal')

@section("cabecalho")
<h3>Detalhes do Subprocesso</h3>
@stop

@section("conteudo")

<a class="btn btn-success" style="float: right;"  href="encontrar/{{$s->id}}">Editar</a>

<div class="x_title">
  <h2>Título</h2>
  <div class="clearfix"></div>
</div>
<p>{{$s->numero . '.'}} {{$s->titulo}}</p>
<br>

<div class="x_title">
  <h2>Descrição do Processo</h2>
  <div class="clearfix"></div>
</div>
<p>{{$s->descricao}}</p>
<br>

<div class="x_title">
  <h2>Detalhes do Processo</h2>
  <div class="clearfix"></div>
</div>
<p>Classificação: {{$c->descricao}}</p>
<p>Quantidade de Pessoas: {{$s->pessoas}}</p>
<p>Periodicidade: {{$p->descricao}}</p>
<p>Nº Horas: {{$s->horas}}</p>
<p>Maturidade: {{$t->descricao}}</p>
<br>

<div class="x_title">
  <h2>Gestor do Processo</h2>
  <div class="clearfix"></div>
</div>
<p>Nome: {{$g->nome}}</p>
<p>Telefone: {{$g->tel}}</p>
<p>Email: {{$g->email}}</p>
<p>Cargo: {{$g->cargo}}</p>
<br>


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
        <a href="pis/novo/{{$s->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href=""><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>

@stop


