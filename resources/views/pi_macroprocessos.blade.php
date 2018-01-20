<!-- Panel MacroProcessos -->
<div class="panel-group" id="panelprocesso">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#processo">5. Processos</a>
          <a href="macroprocesso/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adiciona Processo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>                       
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="processo" class="panel-collapse collapse">
        <div class="panel-body">
      <?php 
        $m = 1;  
        foreach ($p->macroprocessos as $macroprocesso){ 
          $string = (string)$m;
          $panel = 'panel_' . $string;
          $idpanel = '#'.$panel;
          $m = $m + 1;
          $panel_s = 'panel_s_' . $string;
          $idpanel_s = '#'.$panel_s;
          $panel_d = 'panel_d_' . $string;
          $idpanel_d = '#'.$panel_d;
          $panel_c = 'panel_c_' . $string;
          $idpanel_c = '#'.$panel_c;
          $panel_g = 'panel_g_' . $string;
          $idpanel_g = '#'.$panel_g;
          $accordion = 'accordion_'. $panel;
          $idaccordion = '#'. $accordion; 
      ?>        
          <div class="panel-group" id="accordion">                                    
            <div class="panel panel-success">
              <div class="panel-heading">
                <h4 class="panel-title">                               
                  <a data-toggle="collapse" data-parent="#accordion" href="<?=$idpanel?>">
                    {{$macroprocesso->numero . '.'}}  {{$macroprocesso->titulo}}
                  </a>
                  <a href="macroprocessos/remover/{{$macroprocesso->id}}">
                    <button data-toggle="tooltip" data-placement="top" title="Remover Processo" class="btn btn-success btn-xs pull-right"><i class="fa fa-trash"></i></button>
                  </a>                                                         
                  <a href="macroprocessos/{{$macroprocesso->id}}">
                    <button data-toggle="tooltip" data-placement="top" title="Detalhes do Processo" class="btn btn-success btn-xs pull-right"><i class="fa fa-search"></i></button>
                  </a>
                  <a href="macroprocessos/stakeholder/{{$macroprocesso->id}}">
                    <button data-toggle="tooltip" data-placement="top" title="Adiciona Stakeholder" class="btn btn-success btn-xs pull-right"><i class="fa fa-users"></i></button>
                  </a>
                  <a href="subprocesso/{{$macroprocesso->id}}">
                    <button data-toggle="tooltip" data-placement="top" title="Adicionar Subprocesso" class="btn btn-success btn-xs pull-right"><i class="fa fa-plus"></i>
                    </button>
                  </a>    
                  <div class="clearfix"></div>
                </h4>
              </div>
             
                
                @include('pi_subprocessos')  
                 
                      
            </div>
          </div>
          <?php
            }
          ?>                                                  
        </div>
      </div>
    </div>   
</div>
<!-- Panel MacroProcessos -->