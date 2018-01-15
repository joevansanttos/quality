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
  <link rel="stylesheet" href="{{ URL::asset('css/pi.css') }}" />
</head>
<body>
  <page size="A4" class="page-break">
    <br>
    <br>
    <div>
      <div id="retangulo" class="row border-all">
        <div class="col-md-3">

        </div>
        <div id="meio" class="col-md-6 " >
          <h2 >Procedimento Interno</h2>
          @if($p->departamento != null)
          <h2 style="margin: 0;">{{$p->departamento->nome}}</h2>
          @endif
        </div>
        <div class="col-md-3">
          
        </div>
      </div>
      
      
      <br>

      <p><strong>1. Objetivo:</strong></p>
      @if($p->objetivo != null)
      <p>{{$p->objetivo->descricao}}</p>
      @endif
      <br>

      <p><strong>2. Aplicação:</strong></p>
      @if($p->aplicacao != null)
      <p>{{$p->aplicacao->descricao}}</p>
      @endif
      <br>

      <p><strong>3. Definicoes:</strong></p>
      @if($p->definicao != null)
      <p>{{$p->definicao->descricao}}</p>
      @endif
      <br>

      <p><strong>4. Informações Gerais:</strong></p>
      @if($p->informacao != null)
      <p>{{$p->informacao->descricao}}</p>
      @endif
      <br>
      <p><strong>5. Responsabilidade/Descrição das Etapas:</strong></p>
      <table class="table table-bordered">
        <thead>
          <th>Responsabilidade</th>
          <th>Etapa</th>
        </thead>
        <tbody>
          @php($macroCont = 1)
          @foreach ($p->macroprocessos as $m)
            <tr>
              <td>
                {{$m->gestor->cargo}}                
              </td>
              <td>
                <p>
                  {{"5." . $macroCont}}
                  {{$m->descricao}}
                </p>

                @php($subCont = 1)
                @foreach ($m->subprocessos as $s)
                  <p style="margin-left: 5%;">
                    {{"5." . $macroCont . "." . $subCont}}
                    {{$s->descricao}}
                  </p>
                  @php($microCont = 1)
                  @foreach ($s->microprocessos as $r)
                    <p style="margin-left: 10%;">
                      {{"5." . $macroCont . "." . $subCont . "." . $microCont}}
                      {{$r->descricao}}
                    </p>
                    @php($microCont++) 
                  @endforeach
                  @php($subCont++)
                @endforeach
              </td>
            </tr>
          @php($macroCont++)
          @endforeach
        </tbody>
      </table>
    </div>
  </page>
  <script type="text/javascript" src="{{URL::asset('vendors/jquery/dist/jquery.min.js')}}"></script>
  <script type="text/javascript" src="{{URL::asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
  <script type="text/javascript" src="{{URL::asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
  <script type="text/javascript" src="{{URL::asset('vendors/echarts/dist/echarts.min.js')}}"></script>

  
</body>
</html>

