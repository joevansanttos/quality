@extends('principal')

@section("cabecalho")
<h3>Alterar Não Conformidades</h3>
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
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="analise">Análise<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea  name="analise" class="form-control col-md-12 col-xs-12" rows="6"></textarea>
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="correcao">Correção<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea  name="correcao" class="form-control col-md-12 col-xs-12" rows="6"></textarea>
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data_implementacao">Data da Implementação<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="data_implementacao" name="data_implementacao" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="responsavel">Reponsável da Organização</label>
   <div class="col-sm-2 col-xs-12 col-md-3">
     <input type="text" id="responsavel" name="responsavel" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
    <input type="hidden" name="auditoria_naoconformidade_id" value="{{$a->id}}">
  </div>
</div>
</form>


@stop

@section("script")
  

@stop