@extends('principal')

@section("cabecalho")
<h3>Adicionar Relatório Sumário por Norma</h3>
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
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="numero">Número<span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-1">
     <input type="text" id="numero" name="numero" data-inputmask="'mask' : '9[.99]'" required="required"  class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="clausula">Cláusula <span class="required">*</span>
   </label>
   <div class="col-sm-6 col-xs-12 col-md-4">
     <input type="text" id="clausula" name="clausula"  required="required" class="form-control col-md-7 col-xs-12">
   </div> 
 </div> 
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="departamento">Departamento / Atividade / Processo<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="departamento" name="departamento" required="required" class="form-control col-md-6 col-xs-12">
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
 
<script type="text/javascript" src="{{URL::asset('vendors/switchery/dist/switchery.min.js')}}"></script> 

@stop