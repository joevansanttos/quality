<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaCertificacaoRequest;
use App\Http\Requests\AuditoriaPlanoRequest;
use App\Http\Requests\AuditoriaNormaRequest;
use App\Http\Requests\AuditoriaAuditorInfoRequest;
use App\Auditoria;
use App\AuditoriaCertificacao;
use App\AuditoriaPlano;
use App\AuditoriaNorma;
use App\AuditoriaAuditorInfo;


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

  public function novo_auditorinfo($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_auditorinfo_form')->with('a', $auditoria);
  }

  public function adiciona_auditorinfo(AuditoriaAuditorInfoRequest $request){
    AuditoriaAuditorInfo::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_norma($id){
    $auditoriaNorma = AuditoriaNorma::find($id);
    return view ('auditoria_norma_alterar')->with('a', $auditoriaNorma);
  }

  public function alterar_norma(AuditoriaNormaRequest $request){
    $auditoriaNorma = AuditoriaNorma::find($request->auditoria_norma_id);
    $auditoriaNorma->update($request->all());
    $auditoria = Auditoria::find($auditoriaNorma->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_certificacao($id){
    $auditoriaCertificacao = AuditoriaCertificacao::find($id);
    return view ('auditoria_certificacao_alterar')->with('a', $auditoriaCertificacao);
  }

  public function alterar_certificacao(AuditoriaCertificacaoRequest $request){
    $auditoriaCertificacao = AuditoriaCertificacao::find($request->auditoria_certificacao_id);
    $auditoriaCertificacao->update($request->all());
    $auditoria = Auditoria::find($auditoriaCertificacao->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_auditorinfo($id){
    $auditoriaAuditorInfo = AuditoriaAuditorInfo::find($id);
    return view ('auditoria_auditorinfo_alterar')->with('a', $auditoriaAuditorInfo);
  }

  public function alterar_auditorinfo(AuditoriaAuditorInfoRequest $request){
    $auditoriaAuditorInfo = AuditoriaAuditorInfo::find($request->auditoria_auditorinfo_id);
    $auditoriaAuditorInfo->update($request->all());
    $auditoria = Auditoria::find($auditoriaAuditorInfo->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_plano($id){
    $auditoriaPlano = AuditoriaPlano::find($id);
    return view ('auditoria_plano_alterar')->with('a', $auditoriaPlano);
  }

  public function alterar_plano(AuditoriaPlanoRequest $request){
    $auditoriaPlano = AuditoriaPlano::find($request->auditoria_plano_id);
    $auditoriaPlano->update($request->all());
    $auditoria = Auditoria::find($auditoriaPlano->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }
}
