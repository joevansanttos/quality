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
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$normaHref}}" class="panel-collapse collapse">
                <div class="panel-body">      
                  {{$norma->norma}}                                       
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