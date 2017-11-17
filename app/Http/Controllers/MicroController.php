<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\MicroRequest;
use App\Http\Requests\StakeholderRequest;
use App\Pi;
use App\Macroprocesso;
use App\Subprocesso;
use App\Microprocesso;
use App\Classificacao;
use App\Periodicidade;
use App\Maturidade;
use App\GestorMicro;
use App\StakeholderMicro;

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
     return view ('microprocesso-formulario')->with('s', $subprocesso)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());;
   }

   public function mostra($id){
    $m = Microprocesso::find($id);
    $g = $m->gestor;
    $ks = $m->stakeholders;
    return view ('microprocesso-detalhes')->with('m', $m)->with('c', Classificacao::find($m->classificacao_id))->with('p', Periodicidade::find($m->periodicidade_id))->with('t', Maturidade::find($m->maturidade_id))->with('g',($g))->with('ks',($ks));
  }

  public function stakeholder($id){
    $m = Microprocesso::find($id);
    return view ('stakeholder-micro-formulario')->with('m', $m);
  }

  public function adiciona_stakeholder(StakeholderRequest $request){
    $stakeholder = StakeholderMicro::create($request->all());
    $microprocesso_id = $request->input('microprocesso_id'); 
    $microprocesso =  Microprocesso::find($microprocesso_id);
    $subprocesso = $microprocesso->subprocesso;
    $macroprocesso = $subprocesso->macroprocesso;
    $pi = $macroprocesso->pi;
    $id = $pi->id;      
    return redirect()->action('PiController@mostra', ['id' => $id ]);
  }

  public function remover($id){
    $microprocesso = Microprocesso::find($id);
    $gestor = $microprocesso->gestor;
    if(!empty($gestor)){
      $gestor->delete();
    }
    $stakeholders = $microprocesso->stakeholders;
    if(!empty($stakeholders)){        
      foreach ($stakeholders as $stakeholder) {
        $stakeholder->delete(); 
      }     
    }    
    $subprocesso = $microprocesso->subprocesso;
    $macroprocesso = $subprocesso->macroprocesso;
    $pi = $macroprocesso->pi;
    $id = $pi->id;
    $microprocesso->delete();      
    return redirect()->action('PiController@mostra', ['id' => $id ]);
  }

  public function encontrar($id){
    $m = Microprocesso::find($id);
    $g = $m->gestor;
    return view ('micro-editar-formulario')->with('m', $m)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all())->with('g',($g));
  }

  public function alterar(MicroRequest $request){
   $microprocesso = Microprocesso::find($request->id);
   $microprocesso->update($request->all());
   $gestorMicro = GestorMicro::find($request->gestor_micro_id);
   $input = $request->except('numero', 'id', 'titulo', 'pessoas', 'horas', 'classificacao_id', 'periodicidade_id', 'maturidade_id', 'descricao', 'gestor_micro_id');
   $gestorMicro->update($input);
   $subprocesso = $microprocesso->subprocesso;
   $macroprocesso = $subprocesso->macroprocesso;
   $pi = $macroprocesso->pi;
   return redirect()->action('PiController@mostra', ['id' => $pi->id ]);
  }
}
