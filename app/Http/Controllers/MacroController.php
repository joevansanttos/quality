<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\MacroprocessoRequest;
use App\Http\Requests\StakeholderRequest;
use App\Macroprocesso;
use App\Classificacao;
use App\Periodicidade;
use App\Maturidade;
use App\GestorMacro;
use App\Pi;
use App\StakeholderMacro;

class MacroController extends Controller
{
   public function __construct()
   {
     $this->middleware('auth');
   }

   public function mostra($id){
    $m = Macroprocesso::find($id);
    $g = $m->gestor;
    $ks = $m->stakeholders;
    return view ('pi_macroprocesso_detalhes')->with('m', $m)->with('c', Classificacao::find($m->classificacao_id))->with('p', Periodicidade::find($m->periodicidade_id))->with('t', Maturidade::find($m->maturidade_id))->with('g',($g))->with('ks',($ks));
  }

  public function adiciona_macroprocesso(MacroprocessoRequest $request){
    $macroprocesso = Macroprocesso::create($request->all());
    $macroprocesso_id = $macroprocesso->id;
    $input = $request->except('pi_id', 'data_ultima', 'data_proxima', 'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periocidade_id', 'horas', 'descricao', 'maturidade_id');
    $gestorMacro = GestorMacro::create($input + ['macroprocesso_id' => $macroprocesso_id]);
    $id = $request->input('pi_id');
    return redirect()->action('PiController@mostra', ['id' => $id ]);
  }

  public function macroprocesso($id){
    $pi = Pi::find($id);
    return view ('pi_macroprocesso_formulario')->with('p', $pi)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());
  }

  public function stakeholder($id){
    $m = Macroprocesso::find($id);
    return view ('pi_stakeholder_macro_formulario')->with('m', $m);
  }

  public function adiciona_stakeholder(StakeholderRequest $request){
    $stakeholder = StakeholderMacro::create($request->all());
    $macroprocesso_id = $request->input('macroprocesso_id'); 
    $macroprocesso =  Macroprocesso::find($macroprocesso_id);
    $pi = $macroprocesso->pi;
    $id = $pi->id;      
    return redirect()->action('PiController@mostra', ['id' => $id ]);
  }

  public function remover($id){
    $macroprocesso = Macroprocesso::find($id);
    $gestor = $macroprocesso->gestor;
    if(!empty($gestor)){
      $gestor->delete();
    }
    $stakeholders = $macroprocesso->stakeholders;
    if(!empty($stakeholders)){        
      foreach ($stakeholders as $stakeholder) {
        $stakeholder->delete(); 
      }     
    }    
    $pi = $macroprocesso->pi;
    $id = $pi->id;
    $macroprocesso->delete();      
    return redirect()->action('PiController@mostra', ['id' => $id ]);
  }

  public function encontrar($id){
   $m = Macroprocesso::find($id);
   $g = $m->gestor;
   return view ('pi_macro_editar_formulario')->with('m', $m)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all())->with('g',($g));
  }

  public function alterar(MacroprocessoRequest $request){
    $macroprocesso = Macroprocesso::find($request->id);
    $macroprocesso->update($request->all());
    $gestorMacro = GestorMacro::find($request->gestor_macro_id);
    $input = $request->except('numero', 'id', 'titulo', 'pessoas', 'horas', 'classificacao_id', 'periodicidade_id', 'maturidade_id', 'descricao', 'gestor_macro_id');
    $gestorMacro->update($input);
    $pi = $macroprocesso->pi;
    return redirect()->action('PiController@mostra', ['id' => $pi->id ]);
  }
}
