@extends('principal')

@section("cabecalho")
<h3>{{$p->cod}}</h3>
@stop

@section("conteudo")

@include('pi-cabecalho')

@include('macroprocessos')



@stop