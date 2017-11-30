<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaCertificacaoRequest;
use App\Auditoria;
use App\AuditoriaCertificacao;

class AuditoriaInformacaoController extends Controller
{
	public function __construct()
	{
	    $this->middleware('auth');
	}

  public function informacoes_certificacao_novo($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria-informacao-certificacao-form')->with('a', $auditoria);
  }

  public function adiciona_certificacao(AuditoriaCertificacaoRequest $request){
    AuditoriaCertificacao::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function informacoes_normas_novo($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria-informacao-normas-form')->with('a', $auditoria);
  }

  public function adiciona_normas(AuditoriaNormasRequest $request){
    AuditoriaNormas::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }
}
