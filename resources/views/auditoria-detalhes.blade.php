@extends('principal')

@section("cabecalho")
<h3>{{$a->cod}}</h3>
@stop

@section("conteudo")


<!-- PANEL INFORMAÇÕES GERAIS -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-gerais">1. INFORMAÇÕES GERAIS</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-gerais" class="panel-collapse collapse">
        <div class="panel-body">          
          <!-- PANEL INFORMAÇÕES DA ORGANIZAÇÃO-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-organizacao">1.1 INFORMAÇÕES DA ORGANIZAÇÃO</a>             
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-organizacao" class="panel-collapse collapse">
                <div class="panel-body">      
                  {{$a->cliente->nome}}                                             
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL INFORMAÇÕES DA ORGANIZAÇÃO-->

          <!-- PANEL INFORMAÇÕES DO CONTATO-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-contato">1.2 INFORMAÇÕES DO CONTATO</a>
                  <a href="{{$a->id}}/gerais/contato/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Contato" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                      
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-contato" class="panel-collapse collapse">
                <div class="panel-body">      
                  {{$a->contato->nome}}                                           
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL INFORMAÇÕES DO CONTATO-->
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL INFORMAÇÕES GERAIS -->


<!-- INFORMACOES DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-info">2. INFORMAÇÕES DA AUDITORIA</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-info" class="panel-collapse collapse">
        <div class="panel-body"> 

          <!-- PANEL NORMAS DA AUDITORIA-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-normas">2.1 NORMAS DA AUDITORIA</a>
                  <a href="{{$a->id}}/informacoes/normas/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-normas" class="panel-collapse collapse">
                <div class="panel-body">      
                                                              
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL NORMAS DA AUDITORIA-->

          <!-- ESCOPO DA CERTIFICAÇÃO-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#certificacao-escopo">2.2 ESCOPO DA CERTIFICAÇÃO</a>
                  <a href="{{$a->id}}/informacoes/certificacao/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="certificacao-escopo" class="panel-collapse collapse">
                <div class="panel-body">

                  <p>Inglês: {{$a->certificacao->ingles}}</p>  
                  <p>Português: {{$a->certificacao->portugues}}</p>
                  <p>Nº de Sites: {{$a->certificacao->sites}}</p> 
                  <p>Nº de Funcionários: {{$a->certificacao->funcionarios}}</p> 
                  <p>Escritório Central: {{$a->certificacao->escritorio}}</p> 
                  <p>Tipo de Auditoria: {{$a->certificacao->tipo}}</p>
                  <p>Data de Inicio: {{$a->certificacao->inicio}}</p> 
                  <p>Data de Término: {{$a->certificacao->termino}}</p>                                           
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM ESCOPO DA CERTIFICAÇÃO-->

          <!-- INFORMAÇÕES DO AUDITOR-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditor-info">2.3 INFORMAÇÕES DO AUDITOR</a>
                  <a href="/informacoes/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditor-info" class="panel-collapse collapse">
                <div class="panel-body">      
                                                              
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM INFORMAÇÕES DO AUDITOR-->

          <!-- ESCOPO DA AUDITORIA-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-escopo">2.4 ESCOPO DE AUDITORIA</a>
                  <a href="/informacoes/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-escopo" class="panel-collapse collapse">
                <div class="panel-body">      
                                                              
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM ESCOPO DA AUDITORIA-->

        </div>
      </div>
    </div>   
</div>
<!-- FIM DAS INFORMACOES DA AUDITORIA -->

<!-- PANEL PROCESSO DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-processo">3. PROCESSO DA AUDITORIA</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-processo" class="panel-collapse collapse">
        <div class="panel-body">           
          <!-- PANEL NOTAS DE AUDITORIA-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-notas">3.1 NOTAS DE AUDITORIA</a>
                  <a href="{{$a->id}}/processo/notas/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-notas" class="panel-collapse collapse">
                <div class="panel-body">  
                  @php($i = 1)    
                  @foreach ($a->notas as $n)
                    @php($iString = (string)$i)
                    @php($nota = 'auditoria-notas-' . $iString)
                    @php($notaId = '#' . $nota)
                    <div class="panel-group">
                      <div class="panel panel-danger">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a data-toggle="collapse" href="{{$notaId}}">3.1{{'.' . $iString}} NOTAS DO AUDITOR</a>                
                            <div class="clearfix"></div>
                          </h4>
                        </div>
                        <div id="{{$nota}}" class="panel-collapse collapse">
                          <div class="panel-body">      
                            {{$n->notas}}                                       
                          </div>
                        </div>
                      </div>   
                    </div> 
                    @php($i++)
                  @endforeach                                           
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL NOTAS DE AUDITORIA-->

          <!-- PANEL REVISÃO DOCUMENTAL-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-revisao">3.2 REVISÃO DOCUMENTAL</a>
                  <a href="{{$a->id}}/processo/revisao/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Revisão" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-revisao" class="panel-collapse collapse">
                <div class="panel-body">  
                  @foreach ($a->revisoes as $r)
                    {{$r->numero}} {{$r->item}}
                  @endforeach                             
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL REVISÃO DOCUMENTAL--> 

          <!-- PANEL RELATÓRIO DE NÃO CONFORMIDADE-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-naoconformidade">3.4 RELATÓRIO DE NÃO CONFORMIDADE</a>
                  <a href="{{$a->id}}/processo/naoconformidade/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Revisão" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-naoconformidade" class="panel-collapse collapse">
                <div class="panel-body">  
                  @foreach ($a->naoconformidades as $n)
                    {{$n->processo}} 
                    {{$n->descricao}}
                  @endforeach                       
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL RELATÓRIO DE NÃO CONFORMIDADE-->        
        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL PROCESSO DA AUDITORIA -->

<!-- PANEL DESEMPENHO DA AUDITORIA -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-desempenho">4. DESEMPENHO</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-desempenho" class="panel-collapse collapse">
        <div class="panel-body"> 

          <!-- PANEL RELATÓRIOS DE AUDITORIA-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-relatorios">4.1 RELATÓRIOS</a>
                  <a href="{{$a->id}}/desempenho/relatorios/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-relatorios" class="panel-collapse collapse">
                <div class="panel-body">  
                  @php($j = 1)    
                  @foreach ($a->notas as $r)
                    @php($jString = (string)$j)
                    @php($relatorio = 'auditoria-relatorios-' . $jString)
                    @php($relatorioId = '#' . $relatorio)
                    <div class="panel-group">
                      <div class="panel panel-danger">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a data-toggle="collapse" href="{{$relatorioId}}">RELATÓRIO</a>                
                            <div class="clearfix"></div>
                          </h4>
                        </div>
                        <div id="{{$relatorio}}" class="panel-collapse collapse">
                          <div class="panel-body">      
                                                                  
                          </div>
                        </div>
                      </div>   
                    </div> 
                    @php($i++)
                  @endforeach                                           
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL RELATÓRIOS DE AUDITORIA-->
         

        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL DESEMPENHO DA AUDITORIA -->

<!-- PANEL SUMÁRIO EXECUTIVO -->
<div class="panel-group">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#auditoria-sumario">5. SUMÁRIO EXECUTIVO</a>                              
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="auditoria-sumario" class="panel-collapse collapse">
        <div class="panel-body"> 

          <!-- PANEL CONCLUSÕES DA AUDITORIA-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-conclusoes">5.1 CONCLUSÕES DA AUDITORIA</a>
                  <a href="{{$a->id}}/sumario/conclusoes/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-conclusoes" class="panel-collapse collapse">
                <div class="panel-body">  
                   {{$a->conclusoes->conclusao}}                         
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL CONCLUSÕES DA AUDITORIA-->
         
          <!-- PANEL SUMÁRIO DAS NÃO-CONFORMIDADES-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-sumarionc">5.2 SUMÁRIO DAS NÃO-CONFORMIDADES</a>
                  <a href="{{$a->id}}/sumario/sumarionc/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-sumarionc" class="panel-collapse collapse">
                <div class="panel-body">  
                  Maior:{{$a->sumarionc->maior}}
                  Menor:{{$a->sumarionc->menor}}
                  Follow Up é necessário: {{$a->sumarionc->followup}}                    
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL SUMÁRIO DAS NÃO-CONFORMIDADES-->

          <!-- PANEL EFICÁCIA DO SISTEMA DE GESTÃO-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-eficacia">5.3 EFICÁCIA DO SISTEMA DE GESTÃO</a>
                  <a href="{{$a->id}}/sumario/eficacia/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-eficacia" class="panel-collapse collapse">
                <div class="panel-body">  
                  {{$a->eficacia->eficacia}}               
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL EFICÁCIA DO SISTEMA DE GESTÃO-->

          <!-- PANEL OBSERVAÇÕES-->
          <div class="panel-group">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#auditoria-observacoes">5.4 OBSERVAÇÕES</a>
                  <a href="{{$a->id}}/sumario/observacoes/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="auditoria-observacoes" class="panel-collapse collapse">
                <div class="panel-body">  
                 {{$a->observacoes->observacoes}}  
                </div>
              </div>
            </div>   
          </div> 
          <!-- FiM PANEL OBSERVAÇÕES-->

        </div>
      </div>
    </div>   
</div>
<!-- FIM DO PANEL SUMÁRIO EXECUTIVO -->

@stop


@section("script")

@stop


