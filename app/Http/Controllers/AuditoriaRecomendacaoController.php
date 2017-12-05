<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaRecomendacaoRequest;
use App\Http\Requests\AuditoriaProgramaRequest;

use App\Auditoria;
use App\AuditoriaRecomendacao;
use App\AuditoriaPrograma;


class AuditoriaRecomendacaoController extends Controller
{
  	public function __construct()
  	{
  	    $this->middleware('auth');
  	}

    public function nova_recomendacao($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_recomendacao_form')->with('a', $auditoria);
    }

    public function adiciona_recomendacao(AuditoriaRecomendacaoRequest $request){
      AuditoriaRecomendacao::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }

    public function novo_programa($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_programa_form')->with('a', $auditoria);
    }

    public function adiciona_programa(AuditoriaProgramaRequest $request){
      AuditoriaPrograma::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }

    public function encontrar_recomendacao($id){
      $auditoriaRecomendacao = AuditoriaRecomendacao::find($id);
      return view ('auditoria_recomendacao_alterar')->with('a', $auditoriaRecomendacao);
    }

    public function alterar_recomendacao(AuditoriaRecomendacaoRequest $request){
      $auditoriaRecomendacao = AuditoriaRecomendacao::find($request->auditoria_recomendacao_id);
      $auditoriaRecomendacao->update($request->all());
      $auditoria = Auditoria::find($auditoriaRecomendacao->auditoria->id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }
}
