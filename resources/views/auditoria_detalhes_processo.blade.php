<!-- PANEL NOTAS DE AUDITORIA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-notas">3.1 NOTAS DE AUDITORIA</a>
        <a href="{{$a->id}}/processo/notas/novo"><button data-toggle="tooltip" data-placement="top" title="Adicionar Nota da Auditoria" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-notas" class="panel-collapse collapse">
      <div class="panel-body">  
        @php($notasInt = 1)    
        @foreach ($a->notas as $nota)
          @php($notaString = (string)$notasInt)
          @php($notaHref = 'auditoria-nota-' . $notaString)
          @php($notaId = '#' . $notaHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$notaId}}">{{$notaString}}. {{$nota->processo}}</a>
                  <a href="{{$nota->id}}/processo/notas/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Nota da Auditoria" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$notaHref}}" class="panel-collapse collapse">
                <div class="panel-body"> 
                  <table class="table table-bordered">
                    <tr>
                      <td>Auditor: {{$nota->auditor}} </td>
                    </tr>
                    <tr>
                      <td>Data: {{$nota->data}} </td>
                    </tr>
                    <tr>
                      <td>Processo: {{$nota->processo}} </td>
                    </tr>
                    <tr>
                      <td>Pessoal: {{$nota->pessoal}} </td>
                    </tr>
                    <tr>
                      <td>Nota: {{$nota->notas}} </td>
                    </tr>
                  </table>     
                                                       
                </div>
              </div>
            </div>   
          </div> 
          @php($notasInt++)
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
        @php($revisoesInt = 1)    
        @foreach ($a->revisoes as $revisao)
          @php($revisoesString = (string)$revisoesInt)
          @php($revisoesHref = 'auditoria-revisao-' . $revisoesString)
          @php($revisoesId = '#' . $revisoesHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$revisoesId}}">{{$revisoesString}}. ITEM DA REVISÃO</a>
                  <a href="{{$revisao->id}}/processo/revisao/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Revisão da Auditoria" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$revisoesHref}}" class="panel-collapse collapse">
                <div class="panel-body"> 
                  <table class="table table-bordered">
                    <tr>
                      <td>Item: {{$revisao->item}}</td>
                    </tr>
                    <tr>
                      <td>Verificado: {{$revisao->verificado}}</td>
                    </tr>
                    <tr>
                      <td>Comentários: {{$revisao->comentarios}}</td>
                    </tr>
                  </table>
                                                       
                </div>
              </div>
            </div>   
          </div> 
          @php($revisoesInt++)
        @endforeach                         
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL REVISÃO DOCUMENTAL--> 


<!-- PANEL RELATÓRIO SUMÁRIO POR NORMA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-sumarionorma">3.3 RELATÓRIO SUMÁRIO POR NORMA</a>
        <a href="{{$a->id}}/processo/sumarionorma/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Revisão" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                        
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-sumarionorma" class="panel-collapse collapse">
      <div class="panel-body">  
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#departamentos">DEPARTAMENTOS</a>
                  <a href="{{$a->id}}/processo/departamento/novo"><button data-toggle="tooltip" data-placement="top" title="Adicionar Departamento" class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="departamentos" class="panel-collapse collapse">
                <div class="panel-body">  
                  @php($departamentoInt = 1)    
                  @foreach ($a->departamentos as $departamento)
                    @php($departamentoString = (string)$departamentoInt)
                    @php($departamentoHref = 'auditoria-departamento-' . $departamentoString)
                    @php($departamentoId = '#' . $departamentoHref)
                    <div class="panel-group">
                      <div class="panel panel-success">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a data-toggle="collapse" href="{{$departamentoId}}">{{$departamentoString}}. DEPARTAMENTO</a>
                            <a href="{{$departamento->id}}/processo/departamento/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Departamento" class="btn btn-success btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                            <div class="clearfix"></div>
                          </h4>
                        </div>
                        <div id="{{$departamentoHref}}" class="panel-collapse collapse">
                          <div class="panel-body"> 
                            <table class="table table-bordered">
                              <tr>
                                <td>Departamento: {{$departamento->departamento}}</td>                                
                              </tr>
                            </table>
                                                                 
                          </div>
                        </div>
                      </div>   
                    </div> 
                    @php($departamentoInt++)
                  @endforeach             
                </div>
              </div>
            </div>   
          </div>

          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#clausulas">CLÁUSULAS</a>
                  <a href="{{$a->id}}/processo/clausula/novo"><button data-toggle="tooltip" data-placement="top" title="Adicionar Cláusula" class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="clausulas" class="panel-collapse collapse">
                <div class="panel-body">  
                  @php($clausulaInt = 1)    
                  @foreach ($a->clausulas as $clausula)
                    @php($clausulaString = (string)$clausulaInt)
                    @php($clausulaHref = 'auditoria-clausula-' . $clausulaString)
                    @php($clausulaId = '#' . $clausulaHref)
                    @php($clausulaFloat = floatval($clausula->numero))
                    <div class="panel-group">
                      <div class="panel panel-success">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a data-toggle="collapse" href="{{$clausulaId}}">CLÁUSULA Nº {{$clausulaFloat}}</a>
                            <a href="{{$clausula->id}}/processo/clausula/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Cláusula" class="btn btn-success btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                            <div class="clearfix"></div>
                          </h4>
                        </div>
                        <div id="{{$clausulaHref}}" class="panel-collapse collapse">
                          <div class="panel-body"> 
                            <table class="table table-bordered">
                              <tr>
                                <td>Cláusula: {{$clausula->clausula}}</td>
                              </tr>
                            </table>
                                                                 
                          </div>
                        </div>
                      </div>   
                    </div> 
                    @php($clausulaInt++)
                  @endforeach             
                </div>
              </div>
            </div>   
          </div>

          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#departamentosclausulas">CLÁUSULAS COM DEPARTAMENTOS</a>
                  <a href="{{$a->id}}/processo/departamentoclausula/novo"><button data-toggle="tooltip" data-placement="top" title="Adicionar Cláusula a Departamento" class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="departamentosclausulas" class="panel-collapse collapse">
                <div class="panel-body">  
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>Nº</th>
                        <th>Cláusula</th>
                        <th>Departamento</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach ($a->departamentosclausulas as $departamentoclausula)  
                      <tr>
                        <td>{{$departamentoclausula->clausula->numero}}</td>
                        <td>{{$departamentoclausula->clausula->clausula}}</td>
                        <td>{{$departamentoclausula->departamento->departamento}}</td>
                      </tr>
                    @endforeach  
                    </tbody>
                  </table>               
                </div>
              </div>
            </div>   
          </div>          
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIO SUMÁRIO POR NORMA--> 

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

        <!-- PANEL NÃO CONFORMIDADES-->
        <div class="panel-group">
          <div class="panel panel-danger">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#naoconformidades">NÃO CONFORMIDADES</a>
                <a href="{{$a->id}}/processo/naoconformidade/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Revisão" class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
                <div class="clearfix"></div>
              </h4>
            </div>
            <div id="naoconformidades" class="panel-collapse collapse">
              <div class="panel-body">  
                @php($naoconformidadeInt = 1)    
                @foreach ($a->naoconformidades as $naoconformidade)
                  @php($naoconformidadeString = (string)$naoconformidadeInt)
                  @php($naoconformidadeHref = 'auditoria-naoconformidade-' . $naoconformidadeString)
                  @php($naoconformidadeId = '#' . $naoconformidadeHref)
                  <div class="panel-group">
                    <div class="panel panel-success">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" href="{{$naoconformidadeId}}">{{$naoconformidadeString}}. NÃO CONFORMIDADE</a>
                          <a href="{{$naoconformidade->id}}/processo/naoconformidade/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Revisão da Auditoria" class="btn btn-success btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                                
                          <div class="clearfix"></div>
                        </h4>
                      </div>
                      <div id="{{$naoconformidadeHref}}" class="panel-collapse collapse">
                        <div class="panel-body"> 

                          <table class="table table-bordered">
                            <tr >
                              <td class="bg-info" align="center">COMPLETADO PELA PROJEK</td>
                            </tr>
                            <tr>
                              <td>Nº Contrato: {{$naoconformidade->n_contrato}}</td>
                            </tr>
                            <tr>
                              <td>Nº Relatório: {{$naoconformidade->n_relatorio}}</td>
                            </tr>
                            <tr>
                              <td>Tipo de Auditoria: {{$naoconformidade->tipo}}</td>
                            </tr>
                            <tr>
                              <td>Processo: {{$naoconformidade->processo}}</td>
                            </tr>
                            <tr>
                              <td>Norma: {{$naoconformidade->norma}}</td>
                            </tr>
                            <tr>
                              <td>Cláusula: {{$naoconformidade->clausula}}</td>
                            </tr>
                            <tr>
                              <td>Descrição: {{$naoconformidade->descricao}}</td>
                            </tr>
                             <tr>
                              <td>Grau: {{$naoconformidade->grau}}</td>
                            </tr>
                             <tr>
                              <td>Análise: {{$naoconformidade->analise}}</td>
                            </tr>
                             <tr>
                              <td>Correção: {{$naoconformidade->correcao}}</td>
                            </tr>
                             <tr>
                              <td>Data de Implementação: {{$naoconformidade->data_implementacao}}</td>
                            </tr>
                             <tr>
                              <td>Responsável : {{$naoconformidade->responsavel}}</td>
                            </tr>
                             <tr>
                              <td>Análise : {{$naoconformidade->analise}}</td>
                            </tr>
                             <tr>
                              <td>Correção : {{$naoconformidade->correcao}}</td>
                            </tr>
                             <tr>
                              <td>Status : {{$naoconformidade->status_verificacao}}</td>
                            </tr>
                          </table>
                          <br>

                          <table class="table table-bordered">
                            <tr>
                              <td class="bg-info" align="center" style="text-transform: uppercase;">COMPLETADO POR {{$a->cliente->nome}}</td>
                            </tr>
                            <tr>
                              <td>Análise: {{$naoconformidade->analise}}</td>
                            </tr>
                            <tr>
                              <td>Correção: {{$naoconformidade->correcao}}</td>
                            </tr>
                            <tr>
                              <td>Data de Implementação: {{$naoconformidade->data_implementacao}}</td>
                            </tr>
                            <tr>
                              <td>Responsável : {{$naoconformidade->responsavel}}</td>
                            </tr>
                          </table>
                          <br>

                          <table class="table table-bordered">
                            <tr>
                              <td class="bg-info" align="center" >SERÁ COMPLETADO PELA PROJEK</td>
                            </tr>
                            <tr>
                              <td>Status : {{$naoconformidade->status_verificacao}}</td>
                            </tr>
                          </table>
                                                               
                        </div>
                      </div>
                    </div>   
                  </div> 
                  @php($naoconformidadeInt++)
                @endforeach              
              </div>
            </div>
          </div>   
        </div> 
        <!-- FiM NÃO CONFORMIDADES--> 
                
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIO DE NÃO CONFORMIDADE--> 