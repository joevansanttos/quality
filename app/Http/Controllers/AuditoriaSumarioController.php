<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaConclusoesRequest;
use App\Http\Requests\AuditoriaSumarioNCRequest;
use App\Http\Requests\AuditoriaEficaciaRequest;
use App\Http\Requests\AuditoriaObservacoesRequest;
use App\Auditoria;
use App\AuditoriaConclusoes;
use App\AuditoriaSumarioNC;
use App\AuditoriaEficacia;
use App\AuditoriaObservacoes;

class AuditoriaSumarioController extends Controller
{
  	public function __construct()
  	{
  	    $this->middleware('auth');
  	}

    public function novas_conclusoes($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_conclusoes_form')->with('a', $auditoria);
    }

    public function adiciona_conclusoes(AuditoriaConclusoesRequest $request){
      AuditoriaConclusoes::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }

    public function novo_sumarionc($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_sumarionc_form')->with('a', $auditoria);
    }

    public function adiciona_sumarionc(AuditoriaSumarioNCRequest $request){
      AuditoriaSumarioNC::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }

    public function nova_eficacia($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_eficacia_form')->with('a', $auditoria);
    }

    public function adiciona_eficacia(AuditoriaEficaciaRequest $request){
      AuditoriaEficacia::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }

    public function novas_observacoes($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_observacoes_form')->with('a', $auditoria);
    }

    public function adiciona_observacoes(AuditoriaObservacoesRequest $request){
      AuditoriaObservacoes::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }
}
