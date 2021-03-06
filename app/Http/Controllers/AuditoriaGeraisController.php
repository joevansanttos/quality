<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaContatoRequest;
use App\Auditoria;
use App\AuditoriaContato;

class AuditoriaGeraisController extends Controller
{
	public function __construct()
	{
	    $this->middleware('auth');
	}

 	public function novo_contato($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_contato_form')->with('a', $auditoria);
  }

  public function adiciona_contato(AuditoriaContatoRequest $request){
    AuditoriaContato::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_contato($id){
    $auditoriaContato = AuditoriaContato::find($id);
    return view ('auditoria_contato_alterar')->with('a', $auditoriaContato);
  }

  public function alterar_contato(AuditoriaContatoRequest $request){
    $auditoriaContato = AuditoriaContato::find($request->auditoria_contato_id);
    $auditoriaContato->update($request->all());
    $auditoria = Auditoria::find($auditoriaContato->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }
}
