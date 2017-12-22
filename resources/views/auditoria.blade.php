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
  			<h2>RELATÓRIO DE AUDITORIA</h2>

            <h3>{{$a->cliente->nome}}</h3>
  		</div>
  	</page>
    <page size="A4">
        <hr>
        <h3 id="title">1. Informações Gerais</h3>
      <br>
      <div>
        <h4 id="title">1.1 Informações da Organização</h4>
        <table class="table table-bordered">
            <td>Organização</td>
            <td>Endereço</td>
            <td>Cidade</td>
            <td>Cep</td>
            <td>Estado</td>
            <td>País</td>
        </table>
      </div>
    </page>
    <script type="text/javascript" src="{{URL::asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('vendors/echarts/dist/echarts.min.js')}}"></script>

    
  </body>
</html>

