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
    <link rel="stylesheet" href="{{ URL::asset('css/cliente.css') }}" />
  </head>
  <body>
  	<page size="A4">
      <div>
        <img src="{{ URL::asset('imagens/logo.png') }}">
      </div>
      <br>
      <br>
  		<div>
  			<h2 class="title">RELATÓRIO DO CLIENTE</h2>
        <h2 class="title">{{$c->nome}}</h2>
  		</div>
  	</page>
  	<page size="A4">
      <div class="grafico">
        <canvas id="processos" ></canvas>
      </div>
      <br>
      <div class="grafico">
        <canvas id="operacoes" >  </canvas>
      </div>
  	</page>
    <page size="A4">
      <div class="grafico">
        <canvas id="gestoes" >  </canvas>
      </div>
      <br>
    	<div class="grafico">
    		<canvas id="suportes" > </canvas>
    	</div> 
    </page>
    <page size="A4">
      <div class="grafico">
        <canvas id="inicial" >  </canvas>
      </div>
      <br> 
      <div class="grafico">
        <canvas id="repetitivo" >  </canvas>
      </div>
    </page>
    <page size="A4">
      <div class="grafico">
        <canvas id="definido" >  </canvas>
      </div>
      <br> 
      <div class="grafico">
        <canvas id="gerenciado" >  </canvas>
      </div>
    </page>
    <page size="A4">
      <div class="grafico">
        <canvas id="otimizado" >  </canvas>
      </div>
      <br> 
    </page>
    <page size="A4">
      @foreach ($c->departamentos as $d)
        <h3 style="text-align: center">{{$d->nome}}</h3>
        <br>
        <table class=" table table-bordered">
          <thead>
            <th>Titulo</th>
          </thead>
          <tbody>
            @foreach ($d->pi->macroprocessos as $m)
              <tr>
                <td>
                  {{$m->titulo}}
                  @foreach ($m->subprocessos as $s)
                    <br>
                    <span style="text-indent: 5px;">{{$s->titulo}}</span>
                  @endforeach
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
        <br>
      @endforeach
    </page>

    <script type="text/javascript" src="{{URL::asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/echarts/dist/echarts.min.js')}}"></script>
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
  </body>
</html>











