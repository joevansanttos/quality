@extends('principal')

@section("cabecalho")
<h3>Alterar Não Conformidade</h3>
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
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Organização<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input readonly="readonly" value="{{$a->auditoria->cliente->nome}}"   type="text"  required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="analise">Análise<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea readonly="readonly" name="analise" class="form-control col-md-12 col-xs-12" rows="6">{{$a->analise}}</textarea>
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="correcao">Correção<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea readonly="readonly" name="correcao" class="form-control col-md-12 col-xs-12" rows="6">{{$a->correcao}}</textarea>
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data">Data<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="data" name="data" value="{{$a->data}}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="n_contrato">Nº do Contrato</label>
   <div class="col-sm-2 col-xs-12 col-md-3">
     <input type="text" id="n_contrato" name="n_contrato" value="{{$a->n_contrato}}" required="required" data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="n_relatorio">Nº Relatório<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="n_relatorio" name="n_relatorio" value="{{$a->n_relatorio}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditoria_tipo">Não Conformidades Observadas Durante<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="auditoria_tipo" name="auditoria_tipo" value="{{$a->auditoria_tipo}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="processo">Processo<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="processo" name="processo" value="{{$a->processo}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="norma">Norma<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="norma" name="norma" value="{{$a->norma}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="clausula">Cláusula<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="clausula" name="clausula" value="{{$a->clausula}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="descricao">Descrição das Provas Objetivas<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="descricao" name="descricao" value="{{$a->descricao}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data_completado">Completado Antes de<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="data_completado" name="data_completado" value="{{$a->data_completado}}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="grau">Grau</label>
   <div class="col-sm-2 col-xs-12 col-md-3">
     <input type="text" id="grau" name="grau" required="required" value="{{$a->grau}}" data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditor_lider">Auditor Líder<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-4">
     <input type="text" id="auditor_lider" name="auditor_lider" value="{{$a->auditor_lider}}" required="required"  class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="auditor_lider_jbc">JBC</label>
   <div class="col-sm-2 col-xs-12 col-md-1">
     <input type="text" id="auditor_lider_jbc" name="auditor_lider_jbc" value="{{$a->auditor_lider_jbc}}" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditor">Auditor<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-4">
     <input type="text" id="auditor" name="auditor" required="required" value="{{$a->auditor}}" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="auditor_jbc">JBC</label>
   <div class="col-sm-2 col-xs-12 col-md-1">
     <input type="text" id="auditor_jbc" name="auditor_jbc" required="required" value="{{$a->auditor_jbc}}" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="representante">Representante da Organização<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="representante" name="representante" value="{{$a->representante}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data_verificacao">Data de Verificação<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="data_verificacao" name="data_verificacao" value="{{$a->data_completado}}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-1 col-sm-3 col-xs-12" for="status_verificacao">Status</label>
   <div class="col-sm-2 col-xs-12 col-md-3">
     <input type="text" id="status_verificacao" name="status_verificacao" required="required" value="{{$a->status_verificacao}}" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditor_verificacao">Auditor da Verificação<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="auditor_verificacao" name="auditor_verificacao" value="{{$a->auditor_verificacao}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="comentarios">Comentários<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <textarea  name="comentarios" class="form-control col-md-12 col-xs-12" rows="6">{{$a->comentarios}}</textarea>
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