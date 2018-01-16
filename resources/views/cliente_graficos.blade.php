@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Gráficos do Cliente por Departamento</h2>
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

  <ul class="stats-overview">
    <li>
      <span class="name"> Nº de Processos </span>
      <span class="value text-success"> </span>
    </li>
    <li>
      <span class="name"> Nº de Pessoas </span>
      <span class="value text-success"> </span>
    </li>
    <li class="hidden-phone">
      <span class="name"> Horas </span>
      <span class="value text-success"> </span>
    </li>
  </ul>
  <br />

  <div id="myCarousel" class="carousel slide" data-interval="false" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <canvas id="processos" style="height:350px;"></canvas>
      </div>

      <div class="item">
        <canvas id="operacoes" style="height:350px;"></canvas>
      </div>
      
      <div class="item">
        <canvas id="gestoes" style="height:350px;"></canvas>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  

</div>

<!-- start project-detail sidebar -->
<div class="col-md-3 col-sm-3 col-xs-12">

  <section class="panel">

    <div class="x_title">
      <h2>Descrição do Relatório</h2>
      <div class="clearfix"></div>
    </div>
    <div class="panel-body">
      <h3 class="green">Projek</h3>
      <br />
      <div class="project_detail">
        <p class="title">Cliente</p>
        <p>{{$c->nome}}</p>
        <p class="title">Líder do Projeto</p>
        <p>Fábio Martins</p>
      </div>
      <br />
    </div>
  </section>
</div>

@stop

@section("script")

<script type="text/javascript" src="{{URL::asset('vendors/graficos/cliente_pdf.js')}}"></script>  
<script type="text/javascript">
  var departamentos = <?= json_encode($departamentos) ?>;

  var processos = <?= json_encode($processos) ?>;
  grafico_processos(departamentos, processos);

  var operacoes = <?= json_encode($operacoes) ?>;
  grafico_operacoes(departamentos, operacoes);

  var gestoes = <?= json_encode($gestoes) ?>;
  grafico_gestoes(departamentos, gestoes);

  var suportes = <?= json_encode($suportes) ?>;
  grafico_suportes(departamentos, suportes);

  var inicial = <?= json_encode($inicial) ?>;
  grafico_inicial(departamentos, inicial);

  var repetitivo = <?= json_encode($repetitivo) ?>;
  grafico_repetitivo(departamentos, repetitivo);

  var definido = <?= json_encode($definido) ?>;
  grafico_definido(departamentos, definido);

  var gerenciado = <?= json_encode($gerenciado) ?>;
  grafico_gerenciado(departamentos, gerenciado);

  var otimizado = <?= json_encode($otimizado) ?>;
  grafico_otimizado(departamentos, otimizado);
</script> 

@stop