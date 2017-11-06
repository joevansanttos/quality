@extends('principal')

@section("cabecalho")
<h3>Alterar Manual de Processos</h3>
@stop

@section("conteudo")

<form action="alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
   <div class="form-group">
     <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Cliente<span class="required">*</span>
     </label>
     <div class="col-md-6 col-sm-6 col-xs-12">
       <input type="text" readonly="readonly" value="{{$p->departamento->cliente->nome}}" id="cliente" name="cliente" required="required" class="form-control col-md-7 col-xs-12">
     </div>
   </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Departamento<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" placeholder="{{$p->departamento->nome}}" readonly="readonly" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Código do PI<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  data-inputmask="'mask' : '*****'" type="text"  id="codigo" name="cod" value="{{$p->cod}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>                 
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
    <input type="hidden" name="pi_id" value="{{$p->id}}">
  </div>
</div>
</form>


@stop

@section("script")


@stop