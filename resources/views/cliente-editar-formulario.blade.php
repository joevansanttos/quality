@extends('principal')

@section("cabecalho")
<h3>Alterar Cliente</h3>
@stop


@section("conteudo")

<form action="/clientes/alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" enctype="multipart/form-data">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input type="text" id="nome" name="nome" value="{{$c->nome}}" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>     
 <div class="ln_solid"></div>
 <div class=" form-group">
   <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
     <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
     <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
     <input type="hidden" name="cliente_id" value="{{$c->id}}">
   </div>
 </div>
</form>


@stop

@section("script")
<script type="text/javascript" src="{{URL::asset('jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('parsleyjs/dist/parsley.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('cidade/cidades-estados-utf8.js')}}"></script>
<script language="JavaScript" type="text/javascript" charset="utf-8">
  new dgCidadesEstados({
    cidade: document.getElementById('cidade'),
    estado: document.getElementById('estado'),
    estadoVal: '{{$c->estado}}',
    cidadeVal: '{{$c->cidade}}'
   
  })
</script>
<script>
  document.getElementById('sexo').value = '{{$c->sexo}}';
</script>
@stop