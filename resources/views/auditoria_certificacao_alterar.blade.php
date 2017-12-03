@extends('principal')

@section("cabecalho")
<h3>Alterar Certificação da Auditoria</h3>
@stop

@section("conteudo")

<form action="alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Código da Auditoria<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input readonly="readonly" value="{{$a->auditoria->cod}}"  data-inputmask="'mask' : '*****[*]'" type="text"  id="cod" name="cod" required="required" class="form-control col-md-6 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ingles">Inglês<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input  type="text"  id="ingles" name="ingles" value="{{$a->ingles}}" required="required" class="form-control col-md-6 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="portugues">Português<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input  type="text"  id="portugues" name="portugues" value="{{$a->portugues}}" required="required" class="form-control col-md-6 col-xs-12">
    </div>
  </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sites">Nº de Sites<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="text" id="sites" name="sites" value="{{$a->sites}}" required="required" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="funcionarios">Nº de Funcionários</label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="text" id="funcionarios" name="funcionarios" value="{{$a->funcionarios}}" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="escritorio">Escritório Central<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="escritorio" name="escritorio" value="{{$a->escritorio}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div> 
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipo">Tipo de Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="tipo" name="tipo" value="{{$a->tipo}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="inicio">Data de Início da Auditoria<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="inicio" name="inicio" value="{{$a->inicio}}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="termino">Data de Término da Auditoria</label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="termino" name="termino" value="{{$a->termino}}" required="required" data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="duracao">Duração<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="duracao" name="duracao" value="{{$a->duracao}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>           
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
    <input type="hidden" name="auditoria_certificacao_id" value="{{$a->id}}">
  </div>
</div>
</form>


@stop

@section("script")
  

@stop