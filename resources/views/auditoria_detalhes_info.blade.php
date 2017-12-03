<!-- PANEL NORMAS DA AUDITORIA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-normas">2.1 NORMAS DA AUDITORIA</a>
        <a href="{{$a->id}}/informacoes/norma/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-normas" class="panel-collapse collapse">
      <div class="panel-body">      
        @php($normaInt = 1)    
        @foreach ($a->normas as $norma)
          @php($normaString = (string)$normaInt)
          @php($normaHref = 'auditoria-notas-' . $normaString)
          @php($normaId = '#' . $normaHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$normaId}}">2.1{{'.' . $normaString}} NORMA</a>
                   <a href="{{$norma->id}}/informacoes/norma/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Norma" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                 
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$normaHref}}" class="panel-collapse collapse">
                <div class="panel-body"> 
                  <table class="table table-bordered">
                    <tr>
                      <td>Norma: {{$norma->norma}}</td>
                    </tr>
                  </table>     
                                                         
                </div>
              </div>
            </div>   
          </div> 
          @php($normaInt++)
        @endforeach                                            
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
        @if ($a->certificacao != null)
          <a href="{{$a->certificacao->id}}/informacoes/certificacao/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Certificação" class="btn btn-warning btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>
        @else
          <a href="{{$a->id}}/informacoes/certificacao/novo"><button data-toggle="tooltip" data-placement="top" title="Adicionar Certificação" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
        @endif
                               
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="certificacao-escopo" class="panel-collapse collapse">
      <div class="panel-body">
        <table class="table table-bordered">
          <tr>
            <td>Inglês: {{$a->certificacao->ingles}}</td>
          </tr>
          <tr>
            <td>Português: {{$a->certificacao->portugues}}</td>
          </tr>
          <tr>
            <td>Nº de Sites: {{$a->certificacao->sites}}</td>
          </tr>
          <tr>
            <td>Nº de Funcionários: {{$a->certificacao->funcionarios}}</td>
          </tr>
          <tr>
            <td>Escritório Central: {{$a->certificacao->escritorio}}</td>
          </tr>
          <tr>
            <td>Tipo de Auditoria: {{$a->certificacao->tipo}}</td>
          </tr>
          <tr>
            <td>Data de Inicio: {{$a->certificacao->inicio}}</td>
          </tr>
          <tr>
            <td>Data de Término: {{$a->certificacao->termino}}</td>
          </tr>
        </table>                                         
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
        <a data-toggle="collapse" href="#auditor-informacoes">2.3 INFORMAÇÕES DO AUDITOR</a>
        <a href="{{$a->id}}/informacoes/auditorinfo/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditor-informacoes" class="panel-collapse collapse">
      <div class="panel-body">      
          {{$a->auditorinfo->auditor}}                                          
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
        <a href="{{$a->id}}/informacoes/plano/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-escopo" class="panel-collapse collapse">
      <div class="panel-body">      
        @php($planoInt = 1)    
        @foreach ($a->planos as $plano)
          @php($planoString = (string)$planoInt)
          @php($planoHref = 'auditoria-plano-' . $planoString)
          @php($planoId = '#' . $planoHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$planoId}}">2.4{{'.' . $planoString}} NOTAS DO AUDITOR</a>                
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$planoHref}}" class="panel-collapse collapse">
                <div class="panel-body">      
                  {{$plano->clausula}}                                    
                </div>
              </div>
            </div>   
          </div> 
          @php($planoInt++)
        @endforeach                                              
      </div>
    </div>
  </div>   
</div> 
<!-- FiM ESCOPO DA AUDITORIA-->