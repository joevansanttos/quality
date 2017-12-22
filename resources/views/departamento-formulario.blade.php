@extends('principal')

@section("cabecalho")
<h3>Clientes</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Adicionar novo Departamento</h2>
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

<form action="adiciona" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Cliente<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" readonly="readonly" value="{{$c->nome}}" id="cliente" name="cliente" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Departamento<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="nome" name="nome" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="item form-group ">
   <div class="form-group">
     <label for="socio" class="control-label col-md-3 col-sm-3 col-xs-12">Responsável pelo Processo <span class="required">*</span></label>                      
     <div class=" col-sm-6 col-xs-12 col-md-6">
       <div class="form-group">
         <input type="text" placeholder="Nome" name="responsavel" required="required" class="form-control">
       </div>                      
       <div class="form-group">
         <input type="text" placeholder="Cargo" id="profissao" name="cargo" required="required" class="form-control col-md-7 col-xs-12">
       </div>
       <div class="form-group">
         <input type="email" placeholder="Email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
       </div>
       <div class="form-group">
         <input data-inputmask="'mask' : '(99) 99999-9999'" type="text" placeholder="Telefone" id="tel" name="telefone" required="required" class="form-control col-md-7 col-xs-12">
       </div>                      
     </div>
   </div>
 </div>                              
 <div class="ln_solid"></div>
 <div class=" form-group">
   <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
     <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
     <button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
     <input type="hidden" name="cliente_id" value="{{$c->id}}">
   </div>
 </div>
</form>


@stop

@section("script")


@stop