<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\SubRequest;
use App\Http\Requests\StakeholderRequest;
use App\Pi;
use App\Macroprocesso;
use App\Subprocesso;
use App\Classificacao;
use App\Periodicidade;
use App\Maturidade;
use App\GestorSub;
use App\StakeholderSub;

class SubController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function adiciona_subprocesso(SubRequest $request){
    	$subprocesso = Subprocesso::create($request->all());
    	$subprocesso_id = $subprocesso->id;
    	$input = $request->except('macroprocesso_id', 'data_ultima', 'data_proxima', 'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periocidade_id', 'horas', 'descricao', 'maturidade_id');
    	$gestorSub = GestorSub::create($input + ['subprocesso_id' => $subprocesso_id]);
    	$id = $request->input('macroprocesso_id');
        $macroprocesso = Macroprocesso::find($id);
        $pi = $macroprocesso->pi;
        return redirect()->action('PiController@mostra', ['id' => $pi->id ]);
    }

    public function subprocesso($id){
    	$macroprocesso = Macroprocesso::find($id);
    	return view ('subprocesso-formulario')->with('m', $macroprocesso)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());
    }

    public function mostra($id){
        $s = Subprocesso::find($id);
        $g = $s->gestor;
        $ks = $s->stakeholders;
        return view ('subprocesso-detalhes')->with('s', $s)->with('c', Classificacao::find($s->classificacao_id))->with('p', Periodicidade::find($s->periodicidade_id))->with('t', Maturidade::find($s->maturidade_id))->with('g',($g))->with('ks',($ks));
    }

    public function stakeholder($id){
      $s = Subprocesso::find($id);
      return view ('stakeholder-sub-formulario')->with('s', $s);
    }

    public function adiciona_stakeholder(StakeholderRequest $request){
      $stakeholder = StakeholderSub::create($request->all());
      $subprocesso_id = $request->input('subprocesso_id'); 
      $subprocesso =  Subprocesso::find($subprocesso_id);
      $macroprocesso = $subprocesso->macroprocesso;
      $pi = $macroprocesso->pi;
      $id = $pi->id;      
      return redirect()->action('PiController@mostra', ['id' => $id ]);
     }
}
