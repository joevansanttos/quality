@extends('principal')

@section("cabecalho")
<h3>Detalhes do Manual de Processos</h3>
@stop

@section("conteudo")

<div class="col-md-9 col-sm-9 col-xs-12">

  <ul class="stats-overview">
    <li>
      <span class="name"> Stakeholders </span>
      <span class="value text-success"> 2300 </span>
    </li>
    <li>
      <span class="name"> Horas </span>
      <span class="value text-success"> 2000 </span>
    </li>
    <li class="hidden-phone">
      <span class="name"> Estimated project duration </span>
      <span class="value text-success"> 20 </span>
    </li>
  </ul>
  <br />

  <div id="mainb" style="height:350px;"></div>

  


</div>

<!-- start project-detail sidebar -->
<div class="col-md-3 col-sm-3 col-xs-12">

  <section class="panel">

    <div class="x_title">
      <h2>Manual de Processo</h2>
      <div class="clearfix"></div>
    </div>
    <div class="panel-body">
      <h3 class="green"><i class="fa fa-paint-brush"></i> {{$p->cod}}</h3>

     
      <br />

      <div class="project_detail">

        <p class="title">Cliente</p>
        <p>{{$p->departamento->cliente->nome}}</p>
        <p class="title">Departamento</p>
        <p>{{$p->departamento->nome}}</p>
      </div>

      <br />
      <h5>Processos</h5>
      <ul class="list-unstyled project_files">
      	@foreach ($p->macroprocessos as $m)
        <li><a href=""><i class="fa fa-flag"></i> {{$m->titulo}}</a>
        </li>
        @endforeach
      </ul>
      <br />

      <div class="text-center mtop20">
        <a href="#" class="btn btn-sm btn-primary">Add files</a>
        <a href="#" class="btn btn-sm btn-warning">Report contact</a>
      </div>
    </div>

  </section>

</div>
<!-- end project-detail sidebar -->



@stop
