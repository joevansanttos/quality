@extends('principal')

@section("cabecalho")
<h3>Adicionar Nova Data de Verificação</h3>
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
 <div class="form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditorias_naoconformidade_id">Não Conformidade<span class="required">*</span>
  </label>
  <div class="col-md-6 col-sm-6 col-xs-12">
    <select class="form-control col-md-3"  id="auditorias_naoconformidade_id" name="auditorias_naoconformidade_id" required="required" >
        @foreach ($naoconformidades as $n)
        <option value="{{$n->id}}">{{$n->descricao}}</option>
        @endforeach
    </select>  
  </div>
 </div> 
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data">Data<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-6">
     <input type="date" id="data" name="data" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
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