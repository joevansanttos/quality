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

@php ($departamentos = [])

@foreach ($c->departamentos as $d)
  @php (array_push($departamentos, $d->nome))
@endforeach

@php ($totalProcessos = 0)
@php ($processos = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @php ($size++)
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @php ($size++)
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @php ($size++)
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($processos, $size))
  @php ($totalProcessos = $totalProcessos + $size)
@endforeach

@php ($operacoes = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->classificacao_id == 1)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->classificacao_id == 1)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->classificacao_id == 1)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($operacoes, $size))  
@endforeach

@php ($gestoes = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->classificacao_id == 2)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->classificacao_id == 2)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->classificacao_id == 2)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($gestoes, $size))  
@endforeach

@php ($horas = 0)
@php ($pessoas = 0)
@foreach ($c->departamentos as $d)
  @foreach($d->pi->macroprocessos as $macro)
    @php ($horas = $horas + $macro->horas)
    @php ($pessoas = $pessoas + $macro->pessoas)
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @php ($horas = $horas + $sub->horas)
      @php ($pessoas = $pessoas + $sub->pessoas)
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @php ($horas = $horas + $micro->horas)
        @php ($pessoas = $pessoas + $micro->pessoas)
      @endforeach
    @endforeach
  @endforeach
@endforeach

<div class="col-md-9 col-sm-9 col-xs-12">

  <ul class="stats-overview">
    <li>
      <span class="name"> Nº de Processos </span>
      <span class="value text-success"> {{$totalProcessos}} </span>
    </li>
    <li>
      <span class="name"> Nº de Pessoas </span>
      <span class="value text-success"> {{$pessoas}} </span>
    </li>
    <li class="hidden-phone">
      <span class="name"> Horas </span>
      <span class="value text-success"> {{$horas}} </span>
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
          <canvas id="myChart" style="height:350px;" >  </canvas>
        </div>

        <div class="item">
          <canvas id="myChart2" style="height:350px;" >  </canvas>
        </div>
      
        <div class="item">
          <canvas id="myChart3" style="height:350px;" >  </canvas>
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
<!-- end project-detail sidebar -->



@stop


@section("script")

<!-- Chart.js -->
<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: <?=json_encode($departamentos)?>,
        datasets: [{
            label: 'Nª DE PROCESSOS POR DEPARTAMENTO',
            data: <?=json_encode($processos)?>,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>


<!-- Chart.js -->
<script>
var ctx2 = document.getElementById("myChart2").getContext('2d');
var myChart2 = new Chart(ctx2, {
    type: 'bar',
    data: {
        labels: <?=json_encode($departamentos)?>,
        datasets: [{
            label: 'CLASSIFICAÇÃO DE PROCESSOS POR DEPARTAMENTO',
            data: <?=json_encode($operacoes)?>,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

<script>
var ctx3 = document.getElementById("myChart3").getContext('2d');
var myChart3 = new Chart(ctx3, {
    type: 'bar',
    data: {
        labels: <?=json_encode($departamentos)?>,
        datasets: [{
            label: 'CLASSIFICAÇÃO DE PROCESSOS POR DEPARTAMENTO',
            data: <?=json_encode($gestoes)?>,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

@stop