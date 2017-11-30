@extends('principal')

@section("cabecalho")
<h3>Adicionar Não Conformidades do Sumário</h3>
@stop

@section("conteudo")

<form action="adiciona" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Código da Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input readonly="readonly" value="{{$a->cod}}"  data-inputmask="'mask' : '*****[*]'" type="text"  id="cod" name="cod" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="maior">Maior<span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-2">
     <input type="text" id="maior" name="maior"  required="required" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="menor">Menor <span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-2">
     <input type="text" id="menor" name="menor"  required="required"  class="form-control col-md-7 col-xs-12">
   </div> 
 </div>
 <div class="item form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="followup">Follow Up é necessário<span class="required">*</span></label>
  <div class="col-sm-2 col-xs-12 col-md-3">
    <input type="text" id="followup" name="followup" required="required" class="form-control col-md-7 col-xs-12">
  </div>
  <label class="control-label col-md-1 col-sm-3 col-xs-12" for="data_followup">Data</label>
  <div class="col-sm-2 col-xs-12 col-md-2">
    <input type="date" id="data_followup" name="data_followup"  data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
  </div>
 </div>
 <div class="item form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="duracao">Duração (Dias)<span class="required">*</span></label>
  <div class="col-sm-2 col-xs-12 col-md-3">
    <input type="text" id="duracao" name="duracao" class="form-control col-md-7 col-xs-12">
  </div>
  <label class="control-label col-md-1 col-sm-3 col-xs-12" for="atual_followup">Data de Follow Up atual</label>
  <div class="col-sm-2 col-xs-12 col-md-2">
    <input type="date" id="atual_followup" name="atual_followup"  data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
  </div>
 </div>  
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
    <input type="hidden" name="auditoria_id" value="{{$a->id}}">
  </div>
</div>
</form>


@stop

@section("script")
  

@stop