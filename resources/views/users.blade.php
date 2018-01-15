@extends('principal')

@section("cabecalho")
<h3>Usuários</h3>
@stop


@section("titulo")
<div class="x_title">
  <h2>Lista de Usuários</h2>
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

<table id="tabela" class="table table-bordered">
  <thead>
    <tr>
        <th>Nome</th>
        <th>Email</th>
        <th>Profissão</th>
        <th>Telefone</th>
        <th>Estado</th>
        <th>Ações</th>    
    </tr>
  </thead>
  
  @foreach ($users as $u)
  <tr>
    <td>{{$u->name}} {{$u->sobrenome}}</td>
    <td>{{$u->email}}</td>
    <td>{{$u->profissao->descricao}}</td>
    <td>{{$u->telefone}}</td>
    <td>{{$u->estado}}</td>
    <td style="width:11%; " align="center"> 
      <a href="users/encontrar/{{$u->id}}"><button data-toggle="tooltip" data-placement="top" title="Alterar Usuário" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
      <a href="users/remover/{{$u->id}}"><button data-toggle="tooltip" data-placement="top" title="Remover Usuário" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></a>            
    </td>
  </tr>
  @endforeach
</table>
<div class="ln_solid"></div> 
<a class="btn btn-default"  href="/users/novo"><i class="fa fa-plus"></i></a>
@stop

@section ("script")

<!-- Datatables -->

<script type="text/javascript" src="{{URL::asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>

<script type="text/javascript" src="{{URL::asset('vendors/datatable/datatable.js')}}"></script>
@stop