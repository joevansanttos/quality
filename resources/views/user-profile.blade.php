@extends('principal')

@section("cabecalho")
<h3>Perfil do Usuário</h3>
@stop

@section("conteudo")

  <div class="profile_img">
    <div id="crop-avatar">
      <!-- Current avatar -->
      <img class="img-responsive avatar-view" src="{{URL::asset('imagens/user.png')}}" alt="Avatar" title="Change the avatar">
    </div>
  </div>
  <h3>{{$u->name}} {{$u->sobrenome}}</h3>

  <ul class="list-unstyled user_data">
    <li><i class="fa fa-map-marker user-profile-icon"></i> {{$u->estado}}
    </li>

    <li>
      <i class="fa fa-briefcase user-profile-icon"></i> Consultor
    </li>

    <li class="m-top-xs">
      <i class="fa fa-external-link user-profile-icon"></i>
      <a href="http://www.kimlabs.com/profile/" target="_blank">{{$u->email}}</a>
    </li>
  </ul>

  <a href="/users/encontrar/{{$u->id}}" class="btn btn-success"><i class="fa fa-edit m-right-xs"></i> Editar Perfil</a>
  <br />


@stop