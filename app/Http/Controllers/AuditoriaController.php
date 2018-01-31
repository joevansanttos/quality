<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaRequest;
use App\Http\Requests\AuditoriaNaoConformidadeRequest;
use App\Http\Requests\AuditoriaGestorRequest;
use App\Auditoria;
use App\Cliente;
use App\StatusPi;
use App\AuditoriaGestor;
use App\User;
use App\AuditoriaNaoConformidade;




class AuditoriaController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
  }

  public function lista_todos(){
    $auditorias = Auditoria::orderBy('cod', 'asc')->get();
    return view('auditorias')->with('auditorias', $auditorias);
  }	

  public function lista_inicial(){
    $auditorias = Auditoria::orderBy('cod', 'asc')->where('status_pi_id', '1')->get();
    return view('auditorias_inicial')->with('auditorias', $auditorias);
  } 

  public function lista_andamento(){
    $auditorias = Auditoria::orderBy('cod', 'asc')->where('status_pi_id', '2')->get();
    return view('auditorias_andamento')->with('auditorias', $auditorias);
  } 

  public function lista_finalizado(){
    $auditorias = Auditoria::orderBy('cod', 'asc')->where('status_pi_id', '3')->get();
    return view('auditorias_finalizado')->with('auditorias', $auditorias);
  } 

  public function mostra($id){
  	$auditoria = Auditoria::find($id);
  	return view ('auditoria_detalhes')->with('a', $auditoria);
  }

  public function novo(){
  	$clientes = Cliente::all();
    $auditorias = Auditoria::all();
    $auditoria = Auditoria::orderBy('cod', 'desc')->first();
    $codigo =  $auditoria->cod + 1;
    return view('auditoria-formulario')->with('clientes', $clientes)->with('codigo', $codigo);
  }

  public function adiciona(AuditoriaRequest $request){
    Auditoria::create($request->all());
    return redirect()->action('AuditoriaController@lista_inicial');
  }

  public function encontrar($id){
    $auditoria = Auditoria::find($id);
    $status = StatusPi::all();
    $clientes = Cliente::all();
    return view ('auditoria_alterar_form')->with('a', $auditoria)->with('clientes', $clientes)->with('status', $status);
  }

  public function alterar(AuditoriaRequest $request){
    $auditoria = Auditoria::find($request->auditoria_id);
    $auditoria->update($request->all());
    return redirect('/auditorias/todos')->withInput();
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

  public function imprimir($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_pdf')->with('a', $auditoria);
  }

  public function gestores($id){
    $auditoria = Auditoria::find($id);
    $gestores = User::where('profissao_id', 4)->get();
    $selects = AuditoriaGestor::where('auditoria_id', $auditoria->id)->get();
    return view ('auditoria_gestores')->with('a', $auditoria)->with('gs', $gestores)->with('selects', $selects);
  }

  public function adiciona_gestor(AuditoriaGestorRequest $request){
    $gestores = $request->gestores;
    $auditoria_id = $request->auditoria_id;
    $selects = AuditoriaGestor::where('auditoria_id', $auditoria_id)->get();
    foreach ($selects as $s) {
     $s->delete();
    }
    foreach ($gestores as $g) {
      $array = [];
      $array['user_id'] = $g;
      $array['auditoria_id'] = $auditoria_id;
      AuditoriaGestor::create($array);
    }
      return redirect()->action('AuditoriaController@lista_todos');
  }

  
}
