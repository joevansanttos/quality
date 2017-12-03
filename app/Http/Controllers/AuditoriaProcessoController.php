<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaNotasRequest;
use App\Http\Requests\AuditoriaRevisaoRequest;
use App\Http\Requests\AuditoriaSumarioNormaRequest;
use App\Http\Requests\AuditoriaNaoConformidadeRequest;
use App\Auditoria;
use App\AuditoriaNotas;
use App\AuditoriaRevisao;
use App\AuditoriaSumarioNorma;
use App\AuditoriaNaoConformidade;


class AuditoriaProcessoController extends Controller
{
	public function __construct()
	{
	    $this->middleware('auth');
	}

  public function novas_notas($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_notas_form')->with('a', $auditoria);
  }

  public function adiciona_notas(AuditoriaNotasRequest $request){
    AuditoriaNotas::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function nova_revisao($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_revisao_form')->with('a', $auditoria);
  }

  public function adiciona_revisao(AuditoriaRevisaoRequest $request){
    AuditoriaRevisao::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function novo_sumarionorma($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_sumarionorma_form')->with('a', $auditoria);
  }

  public function adiciona_sumarionorma(AuditoriaSumarioNormaRequest $request){
    AuditoriaSumarioNorma::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function nova_naoconformidade($id){
    $auditoria = Auditoria::find($id);
    return view ('auditoria_naoconformidade_form')->with('a', $auditoria);
  }

  public function adiciona_naoconformidade(AuditoriaNaoConformidadeRequest $request){
    AuditoriaNaoConformidade::create($request->all());
    $auditoria = Auditoria::find($request->auditoria_id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }
}
