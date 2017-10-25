<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\PisRequest;
use App\Http\Requests\ObjetivoRequest;
use App\Http\Requests\AplicacaoRequest;
use App\Http\Requests\DefinicaoRequest;
use App\Http\Requests\MacroprocessoRequest;
use App\Pi;
use App\Departamento;
use App\Objetivo;
use App\Aplicacao;
use App\Definicao;
use App\Macroprocesso;
use App\Classificacao;
use App\Periodicidade;
use App\Maturidade;

class PiController extends Controller
{
			public function lista(){
			  $pis = Pi::all();
			  return view('pis')->with('pis', $pis);

			}	

			public function mostra($id){
				$pi = Pi::find($id);
				return view ('pi-detalhes')->with('p', $pi);
			}

	    public function novo($id){
	    	$departamento = Departamento::find($id);
	    	return view ('pi-formulario')->with('d', $departamento);
	    }

	    public function adiciona(PisRequest $request){
	      $pi = Pi::create($request->all());
	      return redirect('/pis')->withInput();
	    }

	    public function adiciona_objetivo(ObjetivoRequest $request){
	    	$objetivo = Objetivo::create($request->all());
	    	$id = $request->input('pi_id');
	    	return redirect()->action('PiController@mostra', ['id' => $id ]);
	    }

	    public function objetivo($id){
				$pi = Pi::find($id);
				return view ('objetivo-formulario')->with('p', $pi);
			}

			public function adiciona_aplicacao(AplicacaoRequest $request){
	    	$aplicacao = Aplicacao::create($request->all());
	    	$id = $request->input('pi_id');
	    	return redirect()->action('PiController@mostra', ['id' => $id ]);
	    }

	    public function aplicacao($id){
				$pi = Pi::find($id);
				return view ('aplicacao-formulario')->with('p', $pi);
			}

			public function adiciona_definicao(DefinicaoRequest $request){
	    	$definicao = Definicao::create($request->all());
	    	$id = $request->input('pi_id');
	    	return redirect()->action('PiController@mostra', ['id' => $id ]);
	    }

	    public function definicao($id){
				$pi = Pi::find($id);
				return view ('definicao-formulario')->with('p', $pi);
			}

			public function adiciona_macroprocesso(DefinicaoRequest $request){
	    	$macroprocesso = Macroprocesso::create($request->all());
	    	$id = $request->input('pi_id');
	    	return redirect()->action('PiController@mostra', ['id' => $id ]);
	    }

	    public function macroprocesso($id){
				$pi = Pi::find($id);
				return view ('macroprocesso-formulario')->with('p', $pi)->with('classificacoes', Classificacao::all())->with('periodicidade', Periodicidade::all())->with('maturidade', Maturidade::all());
			}
}
