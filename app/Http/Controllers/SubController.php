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
    	return view ('pi_subprocesso_formulario')->with('m', $macroprocesso)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());
    }

    public function mostra($id){
        $s = Subprocesso::find($id);
        $g = $s->gestor;
        $ks = $s->stakeholders;
        return view ('pi_subprocesso_detalhes')->with('s', $s)->with('c', Classificacao::find($s->classificacao_id))->with('p', Periodicidade::find($s->periodicidade_id))->with('t', Maturidade::find($s->maturidade_id))->with('g',($g))->with('ks',($ks));
    }

    public function stakeholder($id){
      $s = Subprocesso::find($id);
      return view ('pi_stakeholder_sub_formulario')->with('s', $s);
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

     public function remover($id){
      $subprocesso = Subprocesso::find($id);
      $gestor = $subprocesso->gestor;
      if(!empty($gestor)){
        $gestor->delete();
      }
      $stakeholders = $subprocesso->stakeholders;
      if(!empty($stakeholders)){        
        foreach ($stakeholders as $stakeholder) {
          $stakeholder->delete(); 
        }     
      }    
      $macroprocesso = $subprocesso->macroprocesso;
      $pi = $macroprocesso->pi;
      $id = $pi->id;
      $subprocesso->delete();      
      return redirect()->action('PiController@mostra', ['id' => $id ]);
     }

     public function encontrar($id){
      $s = Subprocesso::find($id);
      $g = $s->gestor;
      return view ('pi_sub_editar_formulario')->with('s', $s)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all())->with('g',($g));
     }

     public function alterar(SubRequest $request){
       $subprocesso = Subprocesso::find($request->id);
       $subprocesso->update($request->all());
       $gestorSub = GestorSub::find($request->gestor_sub_id);
       $input = $request->except('numero', 'id', 'titulo', 'pessoas', 'horas', 'classificacao_id', 'periodicidade_id', 'maturidade_id', 'descricao', 'gestor_sub_id');
       $gestorSub->update($input);
       $macroprocesso = $subprocesso->macroprocesso;
       $pi = $macroprocesso->pi;
       return redirect()->action('PiController@mostra', ['id' => $pi->id ]);
     }
}
