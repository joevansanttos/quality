
<!-- Panel Objetivo -->
<div class="panel-group" id="panelobjetivo " >
  <div class="panel panel-info " >
      <div class="panel-heading primary ">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#objetivo">1. Objetivo</a>
          @if (empty($p->objetivo))
            <a href="objetivo/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Objetivo" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
          @else      
            <a href="objetivo/encontrar/{{$p->objetivo->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          @endif 
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="objetivo" class="panel-collapse collapse">
        @if (empty($p->objetivo))
        <div class="panel-body"></div>
        @else
        <div class="panel-body">{{$p->objetivo->descricao}}</div>
        @endif
      </div>
    </div>   
</div>
<!-- End Panel Objetivo -->

<!-- Panel Aplicacao -->
<div class="panel-group" id="panelaplicacao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#aplicacao">2. Aplicação</a>
          @if (empty($p->aplicacao))
          <a href="aplicacao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Aplicação" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
          @else
          <a href="aplicacao/encontrar/{{$p->aplicacao->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          @endif
          <div class="clearfix"></div>
        </h4>
      </div>      
      <div id="aplicacao" class="panel-collapse collapse">
        @if (empty($p->aplicacao))
          <div class="panel-body"></div>
        @else
          <div class="panel-body">{{$p->aplicacao->descricao}}</div>
        @endif
      </div>
    </div>   
</div>
<!-- End Panel Aplicacao -->

<!-- Panel Definicao-->
<div class="panel-group" id="paneldefinicao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#definicao">3. Definições</a>
          @if (empty($p->definicao))                              
          <a href="definicao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Definições" class="btn btn-info btn-xs pull-right"><i class="fa fa-plus"></i></button></a> </a>
          @else
          <a href="definicao/encontrar/{{$p->definicao->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          @endif
          <div class="clearfix"></div>
        </h4>
      </div>                          
      <div id="definicao" class="panel-collapse collapse">
        @if (empty($p->definicao)) 
          <div class="panel-body"></div>
        @else
          <div class="panel-body">{{$p->definicao->descricao}}</div>
        @endif
        
      </div>                     
    </div>   
</div>
<!-- End Panel Definicao -->

<!-- Panel Informacao -->
<div class="panel-group" id="panelinformacao">
  <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#informacao">4. Informações Gerais</a>
          @if (empty($p->informacao))
            <a href="informacao/{{$p->id}}"><button data-toggle="tooltip" data-placement="top" title="Adicionar Informações" class="btn btn-info btn-xs  pull-right"><i class="fa fa-plus"></i></button></a> </a>
          @else
            <a href="informacao/encontrar/{{$p->informacao->id}}"><button data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-info btn-xs pull-right"><i class="fa fa-pencil"></i></button></a>
          @endif  
          <div class="clearfix"></div>
        </h4>
      </div>
      <div id="informacao" class="panel-collapse collapse">
      @if (empty($p->informacao))
        <div class="panel-body"></div>
      @else
        <div class="panel-body">{{$p->informacao->descricao}}</div>
      @endif
      </div>
    </div>   
</div>
<!-- End Panel Informacao --> 