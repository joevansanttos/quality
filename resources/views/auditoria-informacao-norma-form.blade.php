@extends('principal')

@section("cabecalho")
<h3>Informações da Auditoria</h3>
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
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Norma da Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="cod" name="cod" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sites">Nº de Sites<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="text" id="sites" name="sites" required="required" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="funcionarios">Nº de Funcionários</label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="text" id="funcionarios" name="funcionarios" required="required" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="escritorio">Escritório Central<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="escritorio" name="escritorio" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div> 
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipo">Tipo de Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="tipo" name="tipo" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="item form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="inicio">Data de Início da Auditoria<span class="required">*</span></label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="inicio" name="inicio" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
   </div>
   <label class="control-label col-md-2 col-sm-3 col-xs-12" for="termino">Data de Término da Auditoria</label>
   <div class="col-sm-2 col-xs-12 col-md-2">
     <input type="date" id="termino" name="termino" required="required" data-validate-length-range="6,20" class="form-control col-md-7 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="duracao">Duração<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="duracao" name="duracao" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lider">Líder da Equipe<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="lider" name="lider" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div> 
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="membros">Membros da Equipe<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="membros" name="membros" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Objetivos da Auditoria<span class="required">*</span>
  </label>
  <div class="col-md-6 col-sm-6 col-xs-12">
    <textarea  name="objetivos" class="form-control col-md-12 col-xs-12" rows="6"></textarea> 
  </div>
 </div>
 <div class="item form-group ">
   <div class="form-group">
     <label for="socio" class="control-label col-md-3 col-sm-3 col-xs-12">Plano da Auditoria <span>*</span></label>      
     <div class=" col-sm-6 col-xs-12 col-md-6">
       <div class="form-group">
         <input type="text" placeholder="Data"  name="datas[]" class="form-control">
       </div>
       <div class="form-group">
         <input id="cpf" placeholder="Horário" type="text" name="cpf[]" data-validate-linked="cpf" data-inputmask="'mask' : '***-***-***-**'"   class="form-control col-md-6 col-xs-12">
       </div>
       <div class="form-group">
         <input type="text" placeholder="Atividade" id="residencia" name="residencia[]"  class="form-control col-md-7 col-xs-12">
       </div>
       <div class="form-group">
         <input type="text" placeholder="Site" id="nacionalidade" name="nacionalidade[]"  class="form-control col-md-7 col-xs-12">
       </div>
       <div class="form-group">
         <input type="text" placeholder="Processo" id="profissao" name="profissao[]"  class="form-control col-md-7 col-xs-12">
       </div>
       <div class="form-group">
         <input type="text" placeholder="Auditor" id="civil" name="civil[]"  class="form-control col-md-7 col-xs-12">
       </div>  
       <div class="form-group">
         <textarea  name="clausulas" class="form-control col-md-12 col-xs-12" rows="3">Cláusulas</textarea> 
       </div>   
       <span class="input-group-btn "><button type="button" class=" btn btn-default btn-add">+
       </button></span>                       
     </div>
   </div>
 </div>                           
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Cadastrar</button>
  </div>
</div>
</form>


@stop

@section("script")
  
<script type="text/javascript">
  $(function () {
    var addFormGroup = function (event) {
      event.preventDefault();

      var $formGroup = $(this).closest('.form-group');
      var $multipleFormGroup = $formGroup.closest('.multiple-form-group');
      var $formGroupClone = $formGroup.clone();

      $(this)
      .toggleClass('btn-default btn-add btn-danger btn-remove')
      .html('–');

      $formGroupClone.find('input').val('');
      $formGroupClone.insertAfter($formGroup);

      var $lastFormGroupLast = $multipleFormGroup.find('.form-group:last');
      if ($multipleFormGroup.data('max') <= countFormGroup($multipleFormGroup)) {
        $lastFormGroupLast.find('.btn-add').attr('disabled', true);
      }
    };

    var removeFormGroup = function (event) {
      event.preventDefault();

      var $formGroup = $(this).closest('.form-group');
      var $multipleFormGroup = $formGroup.closest('.multiple-form-group');

      var $lastFormGroupLast = $multipleFormGroup.find('.form-group:last');
      if ($multipleFormGroup.data('max') >= countFormGroup($multipleFormGroup)) {
        $lastFormGroupLast.find('.btn-add').attr('disabled', false);
      }

      $formGroup.remove();
    };

    var countFormGroup = function ($form) {
      return $form.find('.form-group').length;
    };

    $(document).on('click', '.btn-add', addFormGroup);
    $(document).on('click', '.btn-remove', removeFormGroup);

  });
</script>

@stop