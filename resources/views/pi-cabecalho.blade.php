
<!-- Panel Objetivo -->
<div class="panel-group" id="panelobjetivo " >
  <div class="panel panel-info " >
      <div class="panel-heading primary ">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#objetivo">1. Objetivo</a>
            <a href="/pis/objetivo/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Objetivo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>      
            <a  href="../forms/form-altera-objetivo"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a> 
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (!empty($p->objetivo))
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body">{{$p->objetivo->descricao}}</div>
      </div>
      @else
      <div id="objetivo" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Objetivo -->

<!-- Panel Aplicacao -->
<div class="panel-group" id="panelaplicacao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#aplicacao">2. Aplicação</a>
            <a href="/pis/aplicacao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Aplicação" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>   
          <a href="../forms/form-altera-aplicacao.php?cod_pi?>"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (!empty($p->aplicacao))
      <div id="aplicacao" class="panel-collapse collapse">
        <div class="panel-body">{{$p->aplicacao->descricao}}</div>
      </div>
      @else
      <div id="aplicacao" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Aplicacao -->

<!-- Panel Definicao-->
<div class="panel-group" id="paneldefinicao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#definicao">3. Definições</a>                              
          <a href="/pis/definicao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Definições" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
          <a href="../profiles/pi-profile.php?cod_pi"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          <div class="clearfix"></div>
        </h4>
      </div>                          
      @if (!empty($p->definicao))
      <div id="definicao" class="panel-collapse collapse">
        <div class="panel-body">{{$p->definicao->descricao}}</div>
      </div>
      @else
      <div id="definicao" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif                       
    </div>   
</div>
<!-- End Panel Definicao -->

<!-- Panel Informacao -->
<div class="panel-group" id="panelinformacao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#informacao">4. Informações Gerais</a>
            <a href="/pis/informacao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Informações" class="btn btn-info btn-xs  pull-right"><i class="fa fa-plus"></i></button></a> </a>  
          <div class="clearfix"></div>
        </h4>
      </div>
      @if (!empty($p->informacao))
      <div id="informacao" class="panel-collapse collapse">
        <div class="panel-body">{{$p->informacao->descricao}}</div>
      </div>
      @else
      <div id="informacao" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
      @endif
    </div>   
</div>
<!-- End Panel Informacao --> 