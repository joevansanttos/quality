@php ($departamentos = [])

@foreach ($c->departamentos as $d)
  @php (array_push($departamentos, $d->nome))
@endforeach

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

@php ($suportes = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->classificacao_id == 3)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->classificacao_id == 3)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->classificacao_id == 3)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($suportes, $size))  
@endforeach

@php ($inicial = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->maturidade_id == 1)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->maturidade_id == 1)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->maturidade_id == 1)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($inicial, $size))  
@endforeach

@php ($repetitivo = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->maturidade_id == 2)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->maturidade_id == 2)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->maturidade_id == 2)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($repetitivo, $size))  
@endforeach

@php ($definido = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->maturidade_id == 3)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->maturidade_id == 3)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->maturidade_id == 3)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($definido, $size))  
@endforeach

@php ($gerenciado = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->maturidade_id == 4)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->maturidade_id == 4)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->maturidade_id == 4)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($gerenciado, $size))  
@endforeach

@php ($otimizado = [])
@foreach ($c->departamentos as $d)
  @php ($size = 0)
  @foreach($d->pi->macroprocessos as $macro)
    @if ($macro->maturidade_id == 5)
      @php ($size++)
    @endif
    @php ($subprocessos = $macro->subprocessos)
    @foreach($subprocessos as $sub) 
      @if ($sub->maturidade_id == 5)
        @php ($size++)
      @endif
      @php ($microprocessos = $sub->microprocessos)
      @foreach($microprocessos as $micro)
        @if ($micro->maturidade_id == 5)
          @php ($size++)
        @endif
      @endforeach
    @endforeach
  @endforeach
  @php (array_push($otimizado, $size))  
@endforeach


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Projek - Quality</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ URL::asset('imagens/favicon.ico') }}"/>
    <link rel="stylesheet" href="{{ URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ URL::asset('css/imprime.css') }}" />
  </head>
  <body>
  	<page size="A4">
      <div>
        <img src="{{ URL::asset('imagens/logo.png') }}">
      </div>
      <br>
      <br>
  		<div>
  			<h2>RELATÓRIO DO CLIENTE {{$c->nome}}</h2>
  		</div>
  	</page>
  	<page size="A4">
  		<hr>
  		<h3 id="title">Nº de Processos por Departamento</h3>
      <br>
      <br>
      <div class="grafico">
        <canvas id="myChart" >  </canvas>
      </div>
  	</page>
    <page size="A4">
    	<hr>
    	<h3 id="title">Classificação de Processos por Departamento</h3>
    	<br>
      <br>
    	<div class="grafico">
    		<canvas id="myChart2" >  </canvas>
    	</div>
    	<div class="grafico">
    		<canvas id="myChart3" >  </canvas>
    	</div> 
    </page>
    <page size="A4">
    	<div class="grafico">
    		<canvas id="myChart4" >  </canvas>
    	</div> 
    </page>
    <page size="A4">
    	<hr>
    	<h3 id="title">Maturidade dos Processos por Departamento</h3>
      <br>
      <br>
    	<div class="grafico">
    		<canvas id="myChart5" >  </canvas>
    	</div> 
    	<div class="grafico">
    		<canvas id="myChart6" >  </canvas>
    	</div>
    </page>
    <page size="A4">
      <div class="grafico">
        <canvas id="myChart7" >  </canvas>
      </div> 
      <div class="grafico">
        <canvas id="myChart8" >  </canvas>
      </div> 
    </page>

    <page size="A4">
      <div class="grafico">
        <canvas id="myChart9" >  </canvas>
      </div> 
    </page>

    <script type="text/javascript" src="{{URL::asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/echarts/dist/echarts.min.js')}}"></script>

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
                label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO OPERAÇÃO',
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
                label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO GESTÃO',
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

    <script>
    var ctx4 = document.getElementById("myChart4").getContext('2d');
    var myChart4 = new Chart(ctx4, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM CLASSIFICAÇÃO SUPORTE',
                data: <?=json_encode($suportes)?>,
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
    var ctx5 = document.getElementById("myChart5").getContext('2d');
    var myChart5 = new Chart(ctx5, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM MATURIDADE EM ESTADO INICIAL',
                data: <?=json_encode($inicial)?>,
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
    var ctx6 = document.getElementById("myChart6").getContext('2d');
    var myChart6 = new Chart(ctx6, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM MATURIDADE EM ESTADO REPETITIVO',
                data: <?=json_encode($repetitivo)?>,
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
    var ctx7 = document.getElementById("myChart7").getContext('2d');
    var myChart7 = new Chart(ctx7, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM MATURIDADE EM ESTADO DEFINIDO',
                data: <?=json_encode($definido)?>,
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
    var ctx8 = document.getElementById("myChart8").getContext('2d');
    var myChart8 = new Chart(ctx8, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM MATURIDADE EM ESTADO GERENCIADO',
                data: <?=json_encode($gerenciado)?>,
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
    var ctx9 = document.getElementById("myChart9").getContext('2d');
    var myChart9 = new Chart(ctx9, {
        type: 'bar',
        data: {
            labels: <?=json_encode($departamentos)?>,
            datasets: [{
                label: 'Nª DE PROCESSOS COM MATURIDADE EM ESTADO OTIMIZADO',
                data: <?=json_encode($otimizado)?>,
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
    
  </body>
</html>









