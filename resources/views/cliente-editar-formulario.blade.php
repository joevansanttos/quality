@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Alterar Cliente</h2>
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

<form action="/clientes/alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" enctype="multipart/form-data">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="nome" name="nome" value="{{$c->nome}}" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="endereco">Endereço <span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="endereco" name="endereco" value="{{$c->endereco}}" required="required"  class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="estado1">Estado <span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-6">
     <select id="estado" name="estado" class="optional form-control col-md-7 col-xs-12"></select>
   </div>
 </div>
 <div class="form-group">
   <label for="cidade" class="control-label col-md-3 col-sm-3 col-xs-12">Cidade <span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-6">
     <select id="cidade" name="cidade" class="form-control col-md-6 col-xs-12" required></select>
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cep">CEP <span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="cep" name="cep" value="{{$c->cep}}" required="required" data-inputmask="'mask' : '99999-999'" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tel">Telefone<span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-2">
     <input type="text" id="tel" name="tel" data-inputmask="'mask' : '(99) 9999[9]-9999'" required="required" data-validate-length-range="8,20" value="{{$c->tel}}" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="fax">Fax <span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-2">
     <input type="text" id="fax" name="fax" value="{{$c->fax}}" data-inputmask="'mask' : '(99) 9999[9]-9999'" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div> 
 </div> 
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="n_contrato">Nº do Contrato<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="n_contrato" value="{{$c->n_contrato}}" name="n_contrato" required="required"  class="form-control col-md-7 col-xs-12">
   </div>
 </div>                                         
 <div class="ln_solid"></div>
 <div class=" form-group">
   <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
     <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
     <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
     <input type="hidden" name="cliente_id" value="{{$c->id}}">
   </div>
 </div>
</form>




@stop

@section("script")



<script language="JavaScript" type="text/javascript" charset="utf-8">
  new dgCidadesEstados({
    cidade: document.getElementById('cidade'),
    estado: document.getElementById('estado'),
    estadoVal: '{{$c->estado}}',
    cidadeVal: '{{$c->cidade}}'
   
  })
</script>

<script type="text/javascript">
  document.getElementById('segmento').value = '{{$c->segmento}}';
</script>
@stop