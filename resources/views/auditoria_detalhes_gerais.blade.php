
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