<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\PisRequest;
use App\Pi;
use App\Departamento;

class PiController extends Controller
{
			public function lista(){
			  $pis = Pi::all();
			  return view('pis')->with('pis', $pis);

			}	

			public function mostra($codigo){
				$pi = Pi::where('codigo', $codigo)->first();
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
}
