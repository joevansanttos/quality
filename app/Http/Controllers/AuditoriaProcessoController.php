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

  public function encontrar_nota($id){
    $auditoriaNota = AuditoriaNotas::find($id);
    return view ('auditoria_nota_alterar')->with('a', $auditoriaNota);
  }

  public function alterar_nota(AuditoriaNotasRequest $request){
    $auditoriaNota = AuditoriaNotas::find($request->auditoria_nota_id);
    $auditoriaNota->update($request->all());
    $auditoria = Auditoria::find($auditoriaNota->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_revisao($id){
    $auditoriaRevisao = AuditoriaRevisao::find($id);
    return view ('auditoria_revisao_alterar')->with('a', $auditoriaRevisao);
  }

  public function alterar_revisao(AuditoriaRevisaoRequest $request){
    $auditoriaRevisao = AuditoriaRevisao::find($request->auditoria_revisao_id);
    $auditoriaRevisao->update($request->all());
    $auditoria = Auditoria::find($auditoriaRevisao->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }

  public function encontrar_naoconformidade($id){
    $auditoriaNaoConformidade = AuditoriaNaoConformidade::find($id);
    return view ('auditoria_naoconformidade_alterar')->with('a', $auditoriaNaoConformidade);
  }

  public function alterar_naoconformidade(AuditoriaNaoConformidadeRequest $request){
    $auditoriaNaoConformidade = AuditoriaNaoConformidade::find($request->auditoria_naoconformidade_id);
    $auditoriaNaoConformidade->update($request->all());
    $auditoria = Auditoria::find($auditoriaNaoConformidade->auditoria->id);
    return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
  }
}
