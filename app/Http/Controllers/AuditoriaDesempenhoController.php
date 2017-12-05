<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AuditoriaRelatorioRequest;
use App\Auditoria;
use App\AuditoriaRelatorio;
use App\AuditoriaNaoConformidade;

class AuditoriaDesempenhoController extends Controller
{
	public function __construct()
	{
	    $this->middleware('auth');
	}

   	public function novo_relatorio($id){
      $auditoria = Auditoria::find($id);
      return view ('auditoria_relatorio_form')->with('a', $auditoria)->with('naoconformidades', AuditoriaNaoConformidade::all());
    }

    public function adiciona_relatorio(AuditoriaRelatorioRequest $request){
      AuditoriaRelatorio::create($request->all());
      $auditoria = Auditoria::find($request->auditoria_id);
      return redirect()->action('AuditoriaController@mostra', ['id' => $auditoria->id ]);
    }
}
