@extends('principal')

@section("cabecalho")
<h3>Novo Usuário</h3>
@stop

@section("titulo")
<div class="x_title">
  <h2>Adicionar Novo Usuário</h2>
  <ul class="nav navbar-right panel_toolbox">
    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Settings 1</a>
        </li>
        <li><a href="#">Settings 2</a>
        </li>
      </ul>
    </li>
    <li><a class="close-link"><i class="fa fa-close"></i></a>
    </li>
  </ul>
  <div class="clearfix"></div>
</div>
@stop

@section("conteudo")
<form id="form" action="adiciona" method="post"  enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" id="nome" name="name" data-parsley-maxlength="10" required="required" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sobrenome">Sobrenome <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" id="sobrenome" name="sobrenome" required="required" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email<span class="required">*</span></label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="email" id="email" name="email" required="required" class="form-control col-md-8 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="senha">Senha<span class="required">*</span></label>
    <div class="col-md-2 col-sm-6 col-xs-12">
      <input type="password" id="senha" name="password" required="required" class="form-control col-md-8 col-xs-12">
    </div>
    <label class="control-label col-md-1 col-sm-3 col-xs-12"  for="telefone">Telefone<span class="required">*</span></label>
    <div class="col-md-3 col-sm-6 col-xs-12">
      <input class="form-control col-md-8" type="text" id="telefone" data-inputmask="'mask' : '(99) 9999[9]-9999'" name="telefone" required="required">
    </div>
  </div>
  <div class="form-group">
    
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sexo">Sexo<span class="required">*</span>
    </label>
    <div class="col-md-2 col-sm-6 col-xs-12">
      <select class="form-control col-md-3"  id="sexo" name="sexo" required="required" >
        <option value="feminino">Feminino</option>
        <option value="masculino">Masculino</option>
      </select>
    </div>
    <label class="control-label col-md-1 col-sm-3 col-xs-12" for="profissao_id">Profissão<span class="required">*</span>
    </label>
    <div class="col-md-3 col-sm-6 col-xs-12">

      <select name="profissao_id" class="form-control col-md-7 col-xs-12">
        @foreach ($profissoes as $p)
        <option value="{{$p->id}}">{{$p->descricao}}</option>
        @endforeach
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="estado">Estado <span class="required">*</span>
    </label>
    <div class="col-sm-6 col-xs-12 col-md-6">
      <select id="estado" name="estado" class="optional form-control col-md-7 col-xs-12"></select>
    </div>
  </div>
  <div class="form-group">
    <label for="cidade" class="control-label col-md-3 col-sm-3 col-xs-12">Cidade <span class="required">*</span>
    </label>
    <div class="col-sm-6 col-xs-12 col-md-6">
      <select id="cidade" name="cidade" class="form-control col-md-7 col-xs-12" required>
      </select>
    </div>
  </div>   
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="telefone">Foto</label>
    <div class="col-md-3 col-sm-6 col-xs-12">
      <input type="file" name="image">
    </div>
  </div>
  <div class="ln_solid"></div>
  <div class=" form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
      <button type="reset" name="reset" class="btn btn-primary">Resetar</button>
      <button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
    </div>
  </div>
</form>


@stop

@section("script")


@stop