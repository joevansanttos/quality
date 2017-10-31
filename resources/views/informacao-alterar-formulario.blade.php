
@extends('principal')

@section("cabecalho")
<h3>Alterar Informação</h3>
@stop

@section("conteudo")
<form action="/pis/informacao/alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
	<input type="hidden" name="_token" value="{{csrf_token()}}">
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Código PI<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<input type="text" placeholder="{{$p->cod}}" readonly="readonly" class="form-control col-md-7 col-xs-12">
		</div>
	</div>		            	  	
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Informação<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<textarea  name="descricao" class="form-control col-md-12 col-xs-12" rows="6">{{$i->descricao}}</textarea> 
		</div>
	</div>  	             
	<div class="ln_solid"></div>
	<div class=" form-group">
		<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
			<button type="reset" name="reset" class="btn btn-primary">Resetar</button>
			<button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
			<input type="hidden" name="informacao_id" value="{{$i->id}}">
		</div>
	</div>
</form>


@stop

@section("script")


@stop






