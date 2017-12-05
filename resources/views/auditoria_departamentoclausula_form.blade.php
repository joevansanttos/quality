@extends('principal')

@section("cabecalho")
<h3>Adicionar Cláusula a Departamento</h3>
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
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditorias_clausula_id">Clausula<span class="required">*</span>
  </label>
  <div class="col-md-6 col-sm-6 col-xs-12">
    <select class="form-control col-md-3"  id="auditorias_clausula_id" name="auditorias_clausula_id" required="required" >
        @foreach ($clausulas as $c)
        <option value="{{$c->id}}">{{$c->clausula}}</option>
        @endforeach
    </select>  
  </div>
 </div> 
 <div class="form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="auditorias_departamento_id">Departamento<span class="required">*</span>
  </label>
  <div class="col-md-6 col-sm-6 col-xs-12">
    <select class="form-control col-md-3"  id="auditorias_departamento_id" name="auditorias_departamento_id" required="required" >
        @foreach ($departamentos as $d)
        <option value="{{$d->id}}">{{$d->departamento}}</option>
        @endforeach
    </select>  
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