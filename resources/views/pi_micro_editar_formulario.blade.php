@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Alterar Subprocesso</small></h2>
  <ul class="nav navbar-right panel_toolbox">
    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Settings 1</a>
        </li>
        <li><a href="#">Settings 2</a>
        </li>
      </ul>
    </li>
    <li><a class="close-link"><i class="fa fa-close"></i></a>
    </li>
  </ul>
  <div class="clearfix"></div>
</div>
@stop

@section("conteudo")

<form action="alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nº do Processo<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input  data-inputmask="'mask' : '9{1,2}'" type="text" value="{{$m->numero}}" id="numero" name="numero" required="required" class="form-control col-md-6 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Título do Processo<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text"  id="t_processo" name="titulo"  value="{{$m->titulo}}" required="required" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="item form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qPessoas">Nº de Pessoas<span class="required">*</span>
    </label>
    <div class="col-md-3 col-sm-6 col-xs-12">
      <input type="text" data-inputmask="'mask' : '9{1,5}'"  value="{{$m->pessoas}}" id="pessoas" name="pessoas" required="required" class="form-control">
    </div> 
    <label for="horas" class="control-label col-md-1">Horas <span class="required">*</span>
    </label>
    <div class="col-md-2 col-sm-6 col-xs-12">
      <input type="number"  data-parsley-type="number" step=".01" value="{{$m->horas}}" id="horas" name="horas" required="required" class="form-control">
    </div>                                        
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_classificacao">Classificação<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select class="form-control col-md-3"  id="classificacao_id" name="classificacao_id" required="required" >
          @foreach ($classificacoes as $cl)
          <option value="{{$cl->id}}">{{$cl->descricao}}</option>
          @endforeach
      </select>  
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_periodicidade">Periodicidade<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select class="form-control col-md-3"  id="periodicidade_id" name="periodicidade_id" required="required" >
        @foreach ($periodicidade as $pe)
        <option value="{{$pe->id}}">{{$pe->descricao}}</option>
        @endforeach
      </select>  
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_periodicidade">Maturidade<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select class="form-control col-md-3"  id="maturidade_id" name="maturidade_id" required="required" >
        @foreach ($maturidade as $ma)
        <option value="{{$ma->id}}">{{$ma->descricao}}</option>
        @endforeach
      </select>  
    </div>
  </div> 
  <div class="form-group">
    <label for="socio" class="control-label col-md-3 col-sm-3 col-xs-12">Responsável pelo Processo <span class="required">*</span></label>                      
    <div class=" col-sm-6 col-xs-12 col-md-6">
      <div class="form-group">
        <input type="text" placeholder="Nome" name="nome" value="{{$g->nome}}" required="required" class="form-control">
      </div>                       
      <div class="form-group">
        <input type="text" placeholder="Cargo" id="cargo" value="{{$g->cargo}}" name="cargo" required="required" class="form-control col-md-7 col-xs-12">
      </div>
      <div class="form-group">
        <input type="email" placeholder="Email" id="email" name="email" value="{{$g->email}}" required="required" class="form-control col-md-7 col-xs-12">
      </div>
      <div class="form-group">
        <input data-inputmask="'mask' : '(99) 9999[9]-9999'" type="text" value="{{$g->tel}}" placeholder="Telefone" id="tel" name="tel" required="required" class="form-control col-md-7 col-xs-12">
      </div>                      
    </div>
  </div>   
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Descrição
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea  name="descricao" class="form-control col-md-12 col-xs-12" rows="6">{{$m->descricao}}</textarea> 
    </div>
  </div>                       
  <div class="ln_solid"></div>
  <div class=" form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
      <button type="reset" name="reset" class="btn btn-primary">Resetar</button>
      <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
      <input type="hidden" name="id" value="{{$m->id}}">
      <input type="hidden" name="gestor_micro_id" value="{{$g->id}}">
    </div>
  </div>
</form>

@stop

@section("script")

<script type="text/javascript">
  document.getElementById('classificacao_id').value = '{{$m->classificacao_id}}';
</script>

<script type="text/javascript">
  document.getElementById('periodicidade_id').value = '{{$m->periodicidade_id}}';
</script>

<script type="text/javascript">
  document.getElementById('maturidade_id').value = '{{$m->maturidade_id}}';
</script>

@stop