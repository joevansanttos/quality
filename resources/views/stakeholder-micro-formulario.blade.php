@extends('principal')

@section("cabecalho")
<h3>Novo Stakeholder</h3>
@stop

@section("conteudo")

<form action="/pis/macroprocessos/subprocessos/microprocessos/adiciona_stakeholder" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
	<input type="hidden" name="_token" value="{{csrf_token()}}">
	<div class="form-group">
	  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome <span class="required">*</span>
	  </label>
	  <div class="col-md-6 col-sm-6 col-xs-12">
	    <input type="text" id="nome" name="nome"  required="required" class="form-control col-md-7 col-xs-12">
	  </div>
	</div>
	<div class="form-group">
	  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email<span class="required">*</span></label>
	  <div class="col-md-6 col-sm-6 col-xs-12">
	    <input type="email" id="email" name="email" required="required" class="form-control col-md-8 col-xs-12">
	  </div>
	</div>
	<div class="form-group">
	  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Cargo <span class="required">*</span>
	  </label>
	  <div class="col-md-6 col-sm-6 col-xs-12">
	    <input type="text" id="nome" name="cargo"  required="required" class="form-control col-md-7 col-xs-12">
	  </div>
	</div>
	<div class="form-group">
	  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Departamento <span class="required">*</span>
	  </label>
	  <div class="col-md-6 col-sm-6 col-xs-12">
	    <input type="text" id="nome" name="departamento"  required="required" class="form-control col-md-7 col-xs-12">
	  </div>
	</div>             	  		             
	<div class="ln_solid"></div>
	<div class=" form-group">
		<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
			<button type="reset" name="reset" class="btn btn-primary">Resetar</button>
			<button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
			<input type="hidden" name="microprocesso_id" value="{{$m->id}}">
		</div>
	</div>
</form>


@stop

@section("script")


@stop