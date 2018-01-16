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
    <link rel="stylesheet" href="{{ URL::asset('css/auditoria.css') }}" />
  </head>
  <body>
  	<page size="A4" class="break">
      <div>
        <img src="{{ URL::asset('imagens/logo.png') }}">
      </div>
  		<div>
        <br>
        <br>
        <br>
  			<h1 id="titulo" class="capa">RELATÓRIO DE AUDITORIA</h1>
        <h2 class="capa">{{$a->cliente->nome}}</h2>
        <h2 class="capa">{{$a->cod}}</h2>
        <h2 class="capa">PROJEK</h2>
        <h2 class="capa">Auditoria Principal/</h2>
  		</div>
  	</page>

    <page size="A4" class="break">
      <h2 id="title">ÍNDICE</h2>
      <hr>
      <br>
      <p><strong>1. INFORMAÇÕES GERAIS</strong></p>
      <p>1.1 INFORMAÇÕES DA ORGANIZAÇÃO</p>
      <p>1.2 INFORMAÇÕES DO CONTRATO</p>
      <br>
      <p><strong>2. INFORMAÇÕES DA AUDITORIA</strong></p>
      <p>2.1 NORMAS DA AUDITORIA</p>
      <p>2.2 ESCOPO DE CERTIFICAÇÃO</p>
      <p>2.3 INFORMAÇÕES DO AUDITOR</p>
      <p>2.4 ESCOPO DE AUDITORIA
      </p>
      <br>
      <p><strong>3. PROCESSO DA AUDITORIA</strong></p>
      <p>3.1 NOTAS DE AUDITORIA</p>
      <p>3.2 REVISÃO DOCUMENTAL (AUDITORIA INICIAL)</p>
      <p>3.3 RELATÓRIO SUMÁRIO POR NORMA</p>
      <p>3.4 RELATÓRIO DE NÃO CONFORMIDADE</p>
      <br>
      <p><strong>4. DESEMPENHO</strong></p>
      <br>
      <p><strong>5. SUMÁRIO EXECUTIVO</strong></p>
      <p>5.1 CONCLUSÕES DA AUDITORIA</p>
      <p>5.2 SUMÁRIO DAS NÃO-CONFORMIDADES</p>
      <p>5.3 EFICÁCIA DO SISTEMA DE GESTÃO</p>
      <p>5.4 OBSERVAÇÕES</p>
      <br>
      <p><strong>6. RECOMENDAÇÃO DO AUDITOR LÍDER</strong></p>
      <br>
      <p><strong>7. PROGRAMA DE AUDITORIAS</strong></p>
    </page>

    <page size="A4">
      <h2 id="title">1. INFORMAÇÕES GERAIS</h2>
      <hr>
      <br>
      <div>
        <h3 id="title">1.1 INFORMAÇÕES DA ORGANIZAÇÃO</h3>
        <table class="table table-bordered">
          <tr>
            <td>Organização</td>
            <td>{{$a->cliente->nome}}</td>
          </tr>
          <tr>
            <td>Endereço</td>
            <td>{{$a->cliente->endereco}}</td>
          </tr>
          <tr>
            <td>Cidade</td>
            <td>{{$a->cliente->cidades->CT_NOME }}</td>
          </tr>
          <tr>
            <td>Cep</td>
            <td>{{$a->cliente->cep}}</td>
          </tr>
          <tr>
            <td>Estado</td>
            <td>{{$a->cliente->estado}}</td>
          </tr>
          <tr>
            <td>País</td> 
            <td>Brazil</td>
          </tr> 
          <tr>
            <td>Telefone</td> 
            <td>{{$a->cliente->tel}}</td>
          </tr> 
          <tr>
            <td>Fax</td> 
            <td>{{$a->cliente->fax}}</td>
          </tr> 
          <tr>
            <td>Contrato</td> 
            <td>{{$a->cliente->contrato}}</td>
          </tr>           
        </table>
        <br>
        <h3 id="title">1.2 INFORMAÇÕES DO CONTATO</h3>
        <table class="table table-bordered">

          <tr>
          @foreach ($a->contatos as $contato)
            <tr>
              <td>Nome do Contato</td>
              <td>{{$contato->nome}}</td>
            </tr>
            <tr>
              <td>Email do Contato</td>
              <td>{{$contato->email}}</td>
            </tr>
            <tr>
              <td>Telefone do Contato</td>
              <td>{{$contato->telefone}}</td>
            </tr>
          @endforeach
          </tr>
        </table>
      </div>
    </page> 

    <page size="A4">
      <h2 id="title">2. INFORMAÇÕES DA AUDITORIA</h2>
      <hr>
      <br>
      <div>
        <h3 id="title">2.1 NORMAS DA AUDITORIA</h3>
        <table class="table table-bordered">
          @foreach ($a->normas as $norma)
          <tr>
            <td>Normas da Auditoria</td>
            <td>{{$norma->norma}}</td>
          </tr>
          @endforeach
        </table>
        <br>
        <h3 id="title">2.2 ESCOPO DE CERTIFICAÇÃO</h3>
        <table class="table table-bordered">
          <tr>
            <td>Inglês</td>
            @if($a->certificacao != null)
              <td>{{$a->certificacao->ingles}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>
            <td>Português (Brazil)</td>
          @if($a->certificacao != null)
            <td>{{$a->certificacao->portugues}}</td>
          @else
            <td></td>
          @endif
          </tr>
          <tr>
            <td>Nº de Sites</td>
          @if($a->certificacao != null)
            <td>{{$a->certificacao->sites}}</td>
          @else
            <td></td>
          @endif
          </tr>
          <tr>
            <td>Nº de Funcionários</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->funcionarios}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>
            <td>Escritório Central</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->escritorio}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>
            <td>Tipo de Auditoria</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->tipo}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>
            <td>Ínicio</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->inicio}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>           
            <td>Término</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->termino}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>           
            <td>Duração</td>
            @if($a->certificacao != null)
            <td>{{$a->certificacao->duracao}}</td>
            @else
              <td></td>
            @endif
          </tr>
        </table>
        <br>
        <h3 id="title">2.3 INFORMAÇÕES DO AUDITOR</h3>
        <table class="table table-bordered">
          <tr>
            <td>Líder da Equipe</td>
            @if($a->auditorinfo != null)
            <td>{{$a->auditorinfo->auditor}}</td>
            @else
              <td></td>
            @endif
          </tr>
          <tr>
            <td>Membros da Equipe</td>
            @if($a->auditorinfo != null)
            <td>{{$a->auditorinfo->membros}}</td>
            @else
              <td></td>
            @endif
          </tr>
        </table>
      </div>
    </page> 

    <page size="A4">
      <br>
      <h3 id="title">2.4 ESCOPO DA AUDITORIA</h3>
      <table class="table table-bordered">
        <tr>
          <td>Objetivos da Auditoria</td>
        </tr>
        @if($a->escopo != null)
        <tr class="data">
          <td>
              {{$a->escopo->objetivos}}
          </td>
        </tr>
        @endif
      </table>
      <br>
      <table class="table table-bordered">
        <tr>
          <td style="width: 10%;">Data</td>
          <td style="width: 8%;">Horário</td>
          <td>Atividade</td>
          <td style="width: 15%;">Nome do Site</td>
          <td>Processo</td>
          <td>Auditor</td>
          <td>Cláusula</td>
        </tr>
        @foreach ($a->planos as $plano)
          <tr style="font-size: 7pt;">
            <td>{{$plano->data}}</td>
            <td>{{$plano->horario}}</td>
            <td>{{$plano->atividade}}</td>
            <td>{{$plano->site}}</td>
            <td>{{$plano->processo}}</td>
            <td>{{$plano->auditor}}</td>
            <td>{{$plano->clausula}}</td
          </tr>
        @endforeach
      </table>
    </page> 

    <page size="A4">
      <h2 id="title">3. PROCESSO DA AUDITORIA</h2>
      <hr>
      <br>
      <div>
        <h3 id="title">3.1 NOTAS DA AUDITORIA</h3>
        <table class="table table-bordered">
          @foreach ($a->notas as $nota)
          <tr>
            <td>Auditor</td>
            <td>{{$nota->auditor}}</td>
          </tr>
          <tr>
            <td>Data</td>
            <td>{{$nota->data}}</td>
          </tr>
          <tr>
            <td>Processo</td>
            <td>{{$nota->processo}}</td>
          </tr>
          <tr>
            <td>Pessoal Auditado</td>
            <td>{{$nota->pessoal}}</td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: center;">
              Notas
            </td>
          </tr>
          <tr class="data">
            <td colspan="2">
              {{$nota->notas}}
            </td>
          </tr>
          @endforeach
        </table>
      </div>
      <div>
        <h3 id="title">3.2 REVISÃO DOCUMENTAL (AUDITORIA INICIAL)</h3>
        <table class="table table-bordered">
          <thead>
            <tr>
            <th>Item de Revisão Documental</th>
            <th>Verificado</th>
            <th>Comentários</th>
          </tr>
          </thead>
          <tbody>
            @foreach ($a->revisoes as $revisao)
              <tr>
                <td>{{$revisao->item}}</td>
                <td>x</td>
                <td>{{$revisao->comentarios}}</td>
              </tr>
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

