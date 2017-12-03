<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaRecomendacaoRequest;
use App\Auditoria;
use App\AuditoriaRecomendacao;

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
}
