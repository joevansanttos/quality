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
          @php($j++)
        @endforeach                                           
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIOS DE AUDITORIA-->