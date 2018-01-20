@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>{{$m->titulo}}</h2>
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

<a class="btn btn-success" style="float: right;"  href="encontrar/{{$m->id}}">Editar</a>

<div>
  <h2>Título</h2>
  <div class="clearfix"></div>
</div>
<p>{{$m->numero . '.'}} {{$m->titulo}}</p>
<br>

<div>
  <h2>Descrição do Processo</h2>
  <div class="clearfix"></div>
</div>

<p>{{$m->descricao}}</p>
<br>

<div>
  <h2>Detalhes do Processo</h2>
  <div class="clearfix"></div>
</div>
<p>Classificação: {{$c->descricao}}</p>
<p>Quantidade de Pessoas: {{$m->pessoas}}</p>
<p>Periodicidade: {{$p->descricao}}</p>
<p>Nº Horas: {{$m->horas}}</p>
<p>Maturidade: {{$t->descricao}}</p>
<br>

<div>
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

@if(count($ks) > 0)

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
        <a href="pis/novo/{{$m->id}}"><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
        <a href=""><button data-toggle="tooltip" data-placement="top" title="Novo Departamento" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>
      </td>
    </tr>
  @endforeach
</table>

@endif

@stop

