@extends('principal')

@section("cabecalho")
<h3>Alterar Norma da Auditoria</h3>
@stop

@section("conteudo")

<form action="alterar" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
  <input type="hidden" name="_token" value="{{csrf_token()}}">
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Código da Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input readonly="readonly" value="{{$a->auditoria->cod}}"  data-inputmask="'mask' : '*****[*]'" type="text"  id="cod" name="cod" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="norma">Norma da Auditoria<span class="required">*</span>
   </label>
   <div class="col-md-6 col-sm-6 col-xs-12">
     <input  type="text"  id="norma" name="norma" value="{{$a->norma}}" required="required" class="form-control col-md-6 col-xs-12">
   </div>
 </div>
 <div class="ln_solid"></div>
 <div class=" form-group">
  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
    <button type="submit" name="cancelar" class="btn btn-primary">Cancelar</button>
    <button id="send" type="submit" name="enviar" class="btn btn-success">Alterar</button>
    <input type="hidden" name="auditoria_norma_id" value="{{$a->id}}">
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