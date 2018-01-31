@extends('principal')

@section("cabecalho")
<h3>Perfil do Cliente</h3>
@stop

@section("conteudo")

<div class="x_title">
  <h2>{{$c->nome}}</h2>
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
<div class="x_content">     
  <div class="profile_img">
    <div id="crop-avatar">
      @php($exists = Storage::disk('public')->exists($c->image))
      @if($exists == false )
       <img class="img-responsive avatar-view" src="{{asset('storage/user.png')}}" alt="...." title="Change the avatar">
      @else
        <img src="{{asset('storage/' . $c->image )}}" alt="..." class="img-responsive avatar-view" >
      @endif
      
    </div>
  </div>
  <ul class="list-unstyled user_data">
    <li><i class="fa fa-map-marker user-profile-icon"></i> {{$c->endereco}}</li>
    <li><i class="fa fa-phone user-profile-icon"></i> {{$c->tel}}</li>
    <li><i class="fa fa-phone user-profile-icon"></i> {{$c->fax}}</li>
    <li class="m-top-xs"> <i class="fa fa-external-link user-profile-icon"></i> {{$c->cep}}</li>
    <li class="m-top-xs">
      <i class="fa fa-map user-profile-icon"></i> {{$c->cidades->CT_NOME}} , {{$c->estado}}
    </li>
    <li><i class="fa fa-phone user-profile-icon"></i> {{$c->n_contrato}}</li>
  </ul>
</div>

@stop