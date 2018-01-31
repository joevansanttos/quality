<!-- PANEL RELATÓRIOS DE AUDITORIA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-relatorios">4.1 RELATÓRIOS</a>
        <a href="{{$a->id}}/desempenho/relatorio/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Relatório" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-relatorios" class="panel-collapse collapse">
      <div class="panel-body">  
        @php($relatorioInt = 1)    
        @foreach ($a->relatorios as $relatorio)
          @php($relatorioString = (string)$relatorioInt)
          @php($relatorioHref = 'auditoria-relatorio-' . $relatorioString)
          @php($relatorioId = '#' . $relatorioHref)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$relatorioId}}">4.1{{'.' . $relatorioString}} VERIFICAÇÃO DAS AÇÕES CORRETIVAS</a>
                   <a href="{{$relatorio->id}}/desempenho/relatorio/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Relatório" class="btn btn-danger btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a>                 
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$relatorioHref}}" class="panel-collapse collapse">
                <div class="panel-body"> 
                  <table class="table table-bordered">
                    <tr>
                      <td>{{$relatorio->data}}</td>
                      <td>{{$relatorio->naoconformidade->descricao}}</td>
                    </tr>
                  </table>     
                                                         
                </div>
              </div>
            </div>   
          </div> 
          @php($relatorioInt++)
        @endforeach                                                
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RELATÓRIOS DE AUDITORIA-->