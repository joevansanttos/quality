<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\PisRequest;
use App\Http\Requests\ObjetivoRequest;
use App\Http\Requests\AplicacaoRequest;
use App\Http\Requests\DefinicaoRequest;
use App\Http\Requests\InformacaoRequest;
use App\Http\Controllers\MacroController;

use App\Pi;
use App\Departamento;
use App\Objetivo;
use App\Aplicacao;
use App\Definicao;
use App\Macroprocesso;
use App\Subprocesso;
use App\Classificacao;
use App\Informacao;
use App\Periodicidade;
use App\Maturidade;
use App\GestorMacro;


class PiController extends Controller
{
			public function __construct()
			{
			    $this->middleware('auth');
			}

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

			public function adiciona_informacao(InformacaoRequest $request){
	    	$informacao = Informacao::create($request->all());
	    	$id = $request->input('pi_id');
	    	return redirect()->action('PiController@mostra', ['id' => $id ]);
	    }

	    public function informacao($id){
				$pi = Pi::find($id);
				return view ('informacao-formulario')->with('p', $pi);
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

			public function encontrar_objetivo($id){
				$objetivo = Objetivo::find($id);
				$pi = $objetivo->pi;
				return view ('objetivo-alterar-formulario')->with('o', $objetivo)->with('p', $pi);
			}

			public function alterar_objetivo(ObjetivoRequest $request){
				$objetivo = Objetivo::find($request->objetivo_id);
				$objetivo->update($request->all());
				$pi = $objetivo->pi;
				$id = $pi->id;
				return redirect()->action('PiController@mostra', ['id' => $id ]);
			}

			public function encontrar_aplicacao($id){
				$aplicacao = Aplicacao::find($id);
				$pi = $aplicacao->pi;
				return view ('aplicacao-alterar-formulario')->with('a', $aplicacao)->with('p', $pi);
			}

			public function alterar_aplicacao(AplicacaoRequest $request){
				$aplicacao = Aplicacao::find($request->aplicacao_id);
				$aplicacao->update($request->all());
				$pi = $aplicacao->pi;
				$id = $pi->id;
				return redirect()->action('PiController@mostra', ['id' => $id ]);
			}

			public function encontrar_definicao($id){
				$definicao = Definicao::find($id);
				$pi = $definicao->pi;
				return view ('definicao-alterar-formulario')->with('d', $definicao)->with('p', $pi);
			}

			public function alterar_definicao(DefinicaoRequest $request){
				$definicao = Definicao::find($request->definicao_id);
				$definicao->update($request->all());
				$pi = $definicao->pi;
				$id = $pi->id;
				return redirect()->action('PiController@mostra', ['id' => $id ]);
			}

			public function encontrar_informacao($id){
				$informacao = Informacao::find($id);
				$pi = $informacao->pi;
				return view ('informacao-alterar-formulario')->with('i', $informacao)->with('p', $pi);
			}

			public function alterar_informacao(InformacaoRequest $request){
				$informacao = Informacao::find($request->informacao_id);
				$informacao->update($request->all());
				$pi = $informacao->pi;
				$id = $pi->id;
				return redirect()->action('PiController@mostra', ['id' => $id ]);
			}

			public function encontrar($id){
				$pi = Pi::find($id);
				return view ('pi-alterar-formulario')->with('p', $pi);
			}

			public function alterar(PisRequest $request){
				$pi = Pi::find($request->pi_id);
				$pi->update($request->all());
				return redirect('/pis')->withInput();
			}

			public function remover($id){
			 $pi = Pi::find($id);
			 $objetivo = $pi->objetivo;
			 if(!empty($objetivo)){
			 	$objetivo->delete();
			 }
			 $aplicacao = $pi->aplicacao;
			 if(!empty($aplicacao)){
			 	$aplicacao->delete();
			 }
			 $definicao = $pi->definicao;
			 if(!empty($definicao)){
			 	$definicao->delete();
			 }
			 $informacao = $pi->informacao;
			 if(!empty($informacao)){
			 	$informacao->delete();
			 }
			 $macroprocessos = $pi->macroprocessos;
			 if(!empty($macroprocessos)){
			 		$macroController = new MacroController;	        
			   foreach ($macroprocessos as $macroprocesso) {
			   		$macroController->remover($macroprocesso->id);
			   }     
			 }    
			 $pi->delete();
			 return redirect('/pis')->withInput();
			}


			
					
}
