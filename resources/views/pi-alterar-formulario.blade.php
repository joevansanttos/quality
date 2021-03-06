@extends('principal')

@section("cabecalho")
<h3>Mapeamento</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Alterar Manual</h2>
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
  <div class="item form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="profissao_id">Elaborado por<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select name="user_id" class="form-control col-md-7 col-xs-12">
       @foreach ($users as $u)
          <option value="{{$u->id}}">{{$u->name. ' ' .$u->sobrenome}}</option>
       @endforeach   
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="gestor">Aprovado por
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" name="gestor" value="{{$p->gestor}}" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="unidade">Unidade
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" name="unidade" value="{{$p->unidade}}" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="area">Área
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <input type="text" name="area" value="{{$p->area}}" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="item form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cod">Código do Manual de Processos<span class="required">*</span></label>
    <div class="col-sm-2 col-xs-12 col-md-2">
      <input data-inputmask="'mask' : '*****[*]'" type="text"  id="cod" value="{{$p->cod}}" name="cod" required="required" class="form-control col-md-7 col-xs-12">
    </div>
    <label class="control-label col-md-1 col-sm-3 col-xs-12" for="data_revisado">Data de Revisão</label>
    <div class="col-sm-2 col-xs-12 col-md-3">
      <input type="date" id="data_revisado" name="data_revisado"  value="{{$p->data_revisado}}" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
    </div>
  </div>
  <div class="item form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status_pi_id">Status<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select name="status_pi_id" class="form-control col-md-7 col-xs-12">
       @foreach ($status as $s)
          <option value="{{$s->id}}">{{$s->descricao}}</option>
       @endforeach   
      </select>
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