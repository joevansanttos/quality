@extends('principal')

@section("cabecalho")
<h3>Alterar Eficácia do Sistema de Gestão</h3>
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
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="eficacia">Eficácia<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea  name="eficacia" class="form-control col-md-12 col-xs-12" rows="6">{{$a->eficacia}}</textarea>
   </div>
 </div>
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
    <input type="hidden" name="auditoria_eficacia_id" value="{{$a->id}}">
  </div>
</div>
</form>


@stop

@section("script")
  

@stop