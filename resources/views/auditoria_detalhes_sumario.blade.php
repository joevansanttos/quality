<!-- PANEL CONCLUSÕES DA AUDITORIA-->
<div class="panel-group">
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#auditoria-conclusoes">5.1 CONCLUSÕES DA AUDITORIA</a>
         @if ($a->conclusoes != null)
          <a href="{{$a->conclusoes->id}}/sumario/conclusoes/encontrar"><button data-toggle="tooltip" data-placement="top" title="Alterar Contato" class="btn btn-warning btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> </a> 
         @else
           <a href="{{$a->id}}/sumario/conclusoes/novo"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
         @endif
                              
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="auditoria-conclusoes" class="panel-collapse collapse">
      <div class="panel-body"> 
        <table class="table table-bordered">
          <tr>
            <td>Conclusão: {{$a->conclusoes->conclusao}}</td>
          </tr>
        </table>                          
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