
<div id="<?=$panel?>" class="panel-collapse collapse">
  <div class="panel-body"> 
  <?php
    $i = 1;
    $subprocessos = $macroprocesso->subprocessos;
    foreach ( $subprocessos as  $sub) {                                  
      $string2 = (string)$i;
      $panel2 = 'panel2_' . $string. '_' . $string2;
      $idpanel2 = '#'.$panel2;
      $panel2_d = 'panel2_d_' . $string. '_'. $string2;
      $idpanel2_d = '#'.$panel2_d;                                                 
      $panel2_c = 'panel2_c_' . $string. '_'. $string2;
      $idpanel2_c = '#'.$panel2_c;                                     
      $i = $i + 1;
      $accordion2 = 'accordion2_'. $panel2;
      $idaccordion2 = '#'. $accordion2;  
  ?>                              
    <div class="panel-group" id="<?=$accordion?>">                                            
      <div class="panel panel-warning">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="<?=$idaccordion2?>" href="<?=$idpanel2?>"> 

              {{$sub->numero}} {{$sub->titulo}} 
              <a href="subprocessos/remover/{{$sub->id}}">
                <button data-toggle="tooltip" data-placement="top" title="Remover Subprocesso" class="btn btn-warning btn-xs pull-right"><i class="fa fa-trash"></i></button>
              </a>
              <a href="subprocessos/{{$sub->id}}">
                <button data-toggle="tooltip" data-placement="top" title="Detalhes do Subprocesso" class="btn btn-warning btn-xs pull-right"><i class="fa fa-search"></i></button>
              </a>
              <a href="subprocessos/stakeholder/{{$sub->id}}">
                    <button data-toggle="tooltip" data-placement="top" title="Adiciona Stakeholder" class="btn btn-warning btn-xs pull-right"><i class="fa fa-users"></i></button>
              </a>                           
              <a href="microprocesso/{{$sub->id}}">
                <button data-toggle="tooltip" data-placement="top" title="Adicionar Subprocesso" class="btn btn-warning btn-xs pull-right"><i class="fa fa-plus"></i>
                </button>
              </a>    
              <div class="clearfix"></div>
            </a>
          </h4>
        </div>
        <div id="<?=$panel2?>" class="panel-collapse collapse">
          <div class="panel-body">
            
              
          </div> 

           @include('microprocessos') 
                                                                       
        </div>
      </div>                                            
    </div> 
    <?php
      }
    ?>                             
  </div> 
</div>
