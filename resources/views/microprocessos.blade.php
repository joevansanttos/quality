<div class="panel-body">                                         
  <?php
      $j = 1;
      $microprocessos= $sub->microprocessos;
      foreach ($microprocessos as $micro) {
       $string3 = (string)$j;
        $panel3 = 'panel3_' . $string2. '_' . $string3;
        $idpanel3 = '#'.$panel3;
        $panel3_d = 'panel3_d_' . $string2. '_'. $string3;
        $idpanel3_d = '#'.$panel3_d;                                            
        $j = $j + 1;
        $accordion3 = 'accordion3_'. $panel3;
        $idaccordion3 = '#'. $accordion3;                                   
  ?>
  <!-- Microprocessos Panel -->
  <div class="panel-group" id="<?=$accordion3?>">                                 
    <div class="panel panel-danger">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" href="<?=$idpanel3?>">
              {{$micro->numero}} {{$micro->titulo}}                           
            </a>
            <a href="/pis/macroprocessos/subprocessos/microprocessos/remover/{{$micro->id}}">
              <button data-toggle="tooltip" data-placement="top" title="Remover Processo" class="btn btn-danger btn-xs pull-right"><i class="fa fa-trash"></i></button>
            </a>      
            <a href="/pis/macroprocessos/subprocessos/microprocessos/{{$micro->id}}">
              <button data-toggle="tooltip" data-placement="top" title="Detalhes do Subprocesso" class="btn btn-danger btn-xs pull-right"><i class="fa fa-search"></i></button>
            </a>
            <a href="/pis/macroprocessos/subprocessos/microprocessos/stakeholder/{{$micro->id}}">
              <button data-toggle="tooltip" data-placement="top" title="Adiciona Stakeholder" class="btn btn-danger btn-xs pull-right"><i class="fa fa-users"></i></button>
            </a>
            <a href="../forms/form-altera-microprocesso.php?id_microprocesso"><button class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i></button></a> 
            <div class="clearfix"></div>
          </h4>
        </div>
        <div id="<?=$panel3?>" class="panel-collapse collapse">        
          <div class="panel-body">
            
              
          </div>
        </div>
    </div>   
  </div>
   <!-- End Microprocessos Panel -->      
  <?php
   }
  ?>                                                                                                             
</div>