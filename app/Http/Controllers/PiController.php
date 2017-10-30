<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\PisRequest;
use App\Http\Requests\ObjetivoRequest;
use App\Http\Requests\AplicacaoRequest;
use App\Http\Requests\DefinicaoRequest;
use App\Http\Requests\InformacaoRequest;
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

			
					
}
