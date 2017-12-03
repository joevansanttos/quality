<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaCertificacaoRequest;
use App\Http\Requests\AuditoriaPlanoRequest;
use App\Http\Requests\AuditoriaNormaRequest;
use App\Auditoria;
use App\AuditoriaCertificacao;
use App\AuditoriaPlano;
use App\AuditoriaNorma;


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

  public function nova_norma($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_norma_form')->with('a', $auditoria);
  }

  public function adiciona_norma(AuditoriaNormaRequest $request){
    AuditoriaNorma::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function novo_plano($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_plano_form')->with('a', $auditoria);
  }

  public function adiciona_plano(AuditoriaPlanoRequest $request){
    AuditoriaPlano::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

}
