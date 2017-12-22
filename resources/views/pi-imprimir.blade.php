@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de  Processos Cadastrados</h2>
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

<div class="col-md-9 col-sm-9 col-xs-12">

  @php($numProcessos = 0)
  @php($numPessoas = 0)
  @php($numHoras = 0)
  @foreach ($p->macroprocessos as $macroprocesso)

    @foreach ($macroprocesso->subprocessos as $subprocesso)

      @foreach ($subprocesso->microprocessos as $microprocesso)
        @php($numProcessos++)
        @php($numPessoas = $numPessoas + $microprocesso->pessoas)
        @php($numHoras = $numHoras + $microprocesso->horas)
      @endforeach

      @php($numProcessos++)
      @php($numPessoas = $numPessoas + $subprocesso->pessoas)
      @php($numHoras = $numHoras + $subprocesso->horas)
    @endforeach

    @php($numProcessos++)
    @php($numPessoas = $numPessoas + $macroprocesso->pessoas)
    @php($numHoras = $numHoras + $macroprocesso->horas)
  @endforeach

  <ul class="stats-overview">
    <li>
      <span class="name"> Nº de Processos </span>
      <span class="value text-success"> {{$numProcessos}} </span>
    </li>
    <li>
      <span class="name"> Horas </span>
      <span class="value text-success"> {{$numHoras}} </span>
    </li>
    <li class="hidden-phone">
      <span class="name"> Pessoas </span>
      <span class="value text-success"> {{$numPessoas}} </span>
    </li>
  </ul>
  <br />
  <div id="example" class="accordion-group">
    @php($cont = 0)
    @foreach ($p->macroprocessos as $macro)
      @php($macroId = (string)$macro->id)
      @if($cont == 0)
      <div id="{{$macroId}}"  class="collapse in" style="height:350px;" role="tabpanel" >
        <p style="text-align: center; font-weight: bold;">{{$macro->titulo}}</p>
        <hr></hr>
        <p>{{$macro->descricao}}</p>

        @if($macro->classificacao != null)
        <p>Classificação: {{$macro->classificacao->descricao}}</p>
        @endif

        <p>Nº de Pessoa(s): {{$macro->pessoas}}</p>

        @if($macro->periodicidade != null)
        <p>Periodicidade: {{$macro->periodicidade->descricao}}</p>
        @endif

        <p>Nº Hora(s): {{$macro->horas}} </p>

         @if($macro->maturidade != null)
        <p>Maturidade : {{$macro->maturidade->descricao}}</p>
        @endif
      </div>
      @else
      <div id="{{$macroId}}"  class="collapse" role="tabpanel">
        <p style="text-align: center; font-weight: bold;">{{$macro->titulo}}</p>
        <hr></hr>
        <p>{{$macro->descricao}}</p>

        @if($macro->classificacao != null)
        <p>Classificação: {{$macro->classificacao->descricao}}</p>
        @endif

        <p>Nº de Pessoa(s): {{$macro->pessoas}}</p>

        @if($macro->periodicidade != null)
        <p>Periodicidade: {{$macro->periodicidade->descricao}}</p>
        @endif

        <p>Nº Hora(s): {{$macro->horas}} </p>

         @if($macro->maturidade != null)
        <p>Maturidade : {{$macro->maturidade->descricao}}</p>
        @endif
      </div>
      @endif
      @php($cont++)
    @endforeach
  </div>
</div>

<!-- start project-detail sidebar -->
<div class="col-md-3 col-sm-3 col-xs-12">

  <section class="panel">

    <div class="x_title">
      <h2>Manual de Processos</h2>
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
        @php($mId =(string)$m->id)
        @php($mId = '#'.$mId)
        <li>
          <a href="#" data-toggle="collapse" data-parent="#example"  data-target="{{$mId}}" ><i class="fa fa-flag"></i> {{$m->titulo}}</a>
        </li>
        @endforeach

      </ul>
      <br />
    </div>

  </section>
</div>
<!-- end project-detail sidebar -->



@stop


<script type="text/javascript">
  $(document).ready(function() {
    $(".inbox-title").click(function(event) {
     alert(event.target.id);
    });
  });

</script>