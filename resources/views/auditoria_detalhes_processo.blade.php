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
        @foreach ($a->naoconformidades as $n)
          {{$n->processo}} 
          {{$n->descricao}}
        @endforeach                       
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIO DE NÃO CONFORMIDADE--> 