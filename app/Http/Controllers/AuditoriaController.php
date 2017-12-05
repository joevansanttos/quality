<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaRequest;
use App\Http\Requests\AuditoriaNaoConformidadeRequest;
use App\Auditoria;
use App\Cliente;
use App\AuditoriaNaoConformidade;



class AuditoriaController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth');
  }

  public function lista(){
    $auditorias = Auditoria::all();
    return view('auditorias')->with('auditorias', $auditorias);
  }	

  public function mostra($id){
  	$auditoria = Auditoria::find($id);
  	return view ('auditoria_detalhes')->with('a', $auditoria);
  }

  public function novo(){
  	$clientes = Cliente::all();
    return view('auditoria-formulario')->with('clientes', $clientes);
  }

  public function adiciona(AuditoriaRequest $request){
    Auditoria::create($request->all());
    return redirect()->action('AuditoriaController@lista');
  }

  public function encontrar($id){
    $auditoria = Auditoria::find($id);
    $clientes = Cliente::all();
    return view ('auditoria_alterar_form')->with('a', $auditoria)->with('clientes', $clientes);
  }

  public function alterar(AuditoriaRequest $request){
    $auditoria = Auditoria::find($request->auditoria_id);
    $auditoria->update($request->all());
    return redirect('/auditorias')->withInput();
  }

  public function naoconformidades($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_naoconformidades')->with('a', $auditoria);
  }

  public function encontrar_naoconformidade($id){
    $auditoriaNaoConformidade = AuditoriaNaoConformidade::find($id);
    return view ('auditoria_naoconformidade_organizacao')->with('a', $auditoriaNaoConformidade);
  }

  public function alterar_naoconformidade(AuditoriaNaoConformidadeRequest $request){
    $auditoriaNaoConformidade = AuditoriaNaoConformidade::find($request->auditoria_naoconformidade_id);
    $auditoriaNaoConformidade->update($request->all());
    $auditoria = Auditoria::find($auditoriaNaoConformidade->auditoria->id);
    return redirect()->action('AuditoriaController@naoconformidades', ['id' => $auditoria->id ]);
  }

  
}
