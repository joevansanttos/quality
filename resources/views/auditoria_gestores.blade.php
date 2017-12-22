@extends('principal')

@section("cabecalho")
<h3>Auditorias</h3>
@stop



@section("titulo")
<div class="x_title">
  <h2>Adicionar Gestor à Auditoria</h2>
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
  <div class="item form-group ">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="razao">Gestores<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <select multiple="multiple" id="gestores" name="gestores[]" class="form-control col-md-7 col-xs-12"> 
        @foreach ($gs as $g)

          @php ($cont = 0)
          @foreach ($selects as $s) 
            @if($g->id == $s->user_id)
               @php ($cont++)
            @endif
          @endforeach

          @if($cont == 0)
          <option value="{{$g->id}}">
            {{$g->name}} {{$g->sobrenome}}                             
          </option>
          @else
          <option value="{{$g->id}}" selected>
            {{$g->name}} {{$g->sobrenome}}                                 
          </option>
          @endif

        @endforeach
      </select>
    </div>
  </div>       
  <div class="ln_solid"></div>
  <div class=" form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
      <button type="reset" name="reset" class="btn btn-primary">Resetar</button>
      <button id="send" type="submit" name="enviar" class="btn btn-success">Adicionar</button>
      <input type="hidden" name="auditoria_id" value="{{$a->id}}">
    </div>
  </div>
</form>



@stop


@section("script")

<script src="../../vendors/lou-multi-select/js/jquery.multi-select.js" type="text/javascript"></script>

<script type="text/javascript">
    $('#gestores').multiSelect();
</script>

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


