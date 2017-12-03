<!-- PANEL RECOMENDAÇÕES-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-recomendacoes">6.1 RECOMENDAÇÕES</a>
        <a href="{{$a->id}}/recomendacoes/recomendacao/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-recomendacoes" class="panel-collapse collapse">
      <div class="panel-body">  
        @php($rc = 1)    
        @foreach ($a->recomendacao as $recomendacao)
          @php($recomendacaoString = (string)$rc)
          @php($notaRecomendacao = 'auditoria-recomendacao-' . $recomendacaoString)
          @php($notaRecomendacaoId = '#' . $notaRecomendacao)
          <div class="panel-group">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="{{$notaRecomendacaoId}}">6{{'.' . $recomendacaoString}} RECOMENDAÇÃO DO AUDITOR</a>                
                  <div class="clearfix"></div>
                </h4>
              </div>
              <div id="{{$notaRecomendacao}}" class="panel-collapse collapse">
                <div class="panel-body">      
                  {{$recomendacao->norma}}                                       
                </div>
              </div>
            </div>   
          </div> 
          @php($rc++)
        @endforeach         
      </div>
    </div>
  </div>   
</div> 
<!-- FiM PANEL RECOMENDAÇÕES-->