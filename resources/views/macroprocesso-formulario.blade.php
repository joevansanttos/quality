@extends('principal')

@section("cabecalho")
<h3>Novo Processo</h3>
@stop

@section("conteudo")


<form action="adiciona" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
	<input type="hidden" name="_token" value="{{csrf_token()}}">
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nº do Processo<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<input  data-inputmask="'mask' : '9{1,2}'" type="text"  id="n_processo" name="numero" required="required" class="form-control col-md-6 col-xs-12">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Título do Processo<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<input type="text"  id="t_processo" name="titulo" required="required" class="form-control col-md-7 col-xs-12">
		</div>
	</div>
	<div class="item form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="qPessoas">Nº de Pessoas<span class="required">*</span>
		</label>
		<div class="col-md-3 col-sm-6 col-xs-12">
			<input type="text" data-inputmask="'mask' : '9{1,5}'" id="qPessoas" name="pessoas" required="required" class="form-control">
		</div>         
		<label for="horas" class="control-label col-md-1">Horas <span class="required">*</span>
		</label>
		<div class="col-md-2 col-sm-6 col-xs-12">
			<input type="text" data-inputmask="'mask' : '9{1,5}'" id="horas" name="horas" required="required" class="form-control">
		</div>		            	  	  
	</div>
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_classificacao">Classificação<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<select class="form-control col-md-3"  id="id_classificacao" name="classificacao_id" required="required" >
					@foreach ($classificacoes as $c)
					<option value="{{$c->id}}">{{$c->descricao}}</option>
					@endforeach
			</select>  
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_periodicidade">Periodicidade<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<select class="form-control col-md-3"  id="periodicidade_Id" name="periodicidade_id" required="required" >
				@foreach ($periodicidade as $e)
				<option value="{{$e->id}}">{{$e->descricao}}</option>
				@endforeach
			</select>  
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_periodicidade">Maturidade<span class="required">*</span>
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<select class="form-control col-md-3"  id="id_periodicidade" name="maturidade_id" required="required" >
				@foreach ($maturidade as $m)
				<option value="{{$m->id}}">{{$m->descricao}}</option>
				@endforeach
			</select>  
		</div>
	</div> 
	<div class="form-group">
		<label for="socio" class="control-label col-md-3 col-sm-3 col-xs-12">Responsável pelo Processo <span class="required">*</span></label>                      
		<div class=" col-sm-6 col-xs-12 col-md-6">
			<div class="form-group">
				<input type="text" placeholder="Nome" name="nome" required="required" class="form-control">
			</div>            	  	     
			<div class="form-group">
				<input type="text" placeholder="Cargo" id="profissao" name="cargo" required="required" class="form-control col-md-7 col-xs-12">
			</div>
			<div class="form-group">
				<input type="email" placeholder="Email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
			</div>
			<div class="form-group">
				<input data-inputmask="'mask' : '(99) 9999[9]-9999'" type="text" placeholder="Telefone" id="tel" name="tel" required="required" class="form-control col-md-7 col-xs-12">
			</div>                      
		</div>
	</div>   
	<div class="form-group">
		<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Descrição
		</label>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<textarea  name="descricao" class="form-control col-md-12 col-xs-12" rows="6"></textarea> 
		</div>
	</div>  		  	             
	<div class="ln_solid"></div>
	<div class=" form-group">
		<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
			<button type="reset" name="reset" class="btn btn-primary">Resetar</button>
			<button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
			<input type="hidden" name="pi_id" value="{{$p->id}}">
		</div>
	</div>
</form>

@stop

@section("script")


@stop