<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\MicroRequest;
use App\Pi;
use App\Macroprocesso;
use App\Subprocesso;
use App\Microprocesso;
use App\Classificacao;
use App\Periodicidade;
use App\Maturidade;
use App\GestorMicro;

class MicroController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function adiciona_microprocesso(MicroRequest $request){
    	$microprocesso = Microprocesso::create($request->all());
    	$microprocesso_id = $microprocesso->id;
    	$input = $request->except('subprocesso_id', 'data_ultima', 'data_proxima', 'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periocidade_id', 'horas', 'descricao', 'maturidade_id');
    	$gestorMicro = GestorMicro::create($input + ['microprocesso_id' => $microprocesso_id]);
    	$subprocesso_id = $request->input('subprocesso_id');
    	$subprocesso = Subprocesso::find($subprocesso_id);
    	$macroprocesso = $subprocesso->macroprocesso;
        $pi = $macroprocesso->pi;
        return redirect()->action('PiController@mostra', ['id' => $pi->id ]);
    }

    public function microprocesso($id){
    	$subprocesso = Subprocesso::find($id);
    	return view ('microprocesso-formulario')->with('s', $subprocesso)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());
    }

    public function mostra($id){
        $m = Microprocesso::find($id);
        $g = $m->gestor;
        return view ('microprocesso-detalhes')->with('m', $m)->with('c', Classificacao::find($m->classificacao_id))->with('p', Periodicidade::find($m->periodicidade_id))->with('t', Maturidade::find($m->maturidade_id))->with('g',($g));
    }
}
