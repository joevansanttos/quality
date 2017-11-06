<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\DepartamentosRequest;
use App\Http\Controllers\PiController;

use App\Cliente;
use App\Departamento;
use App\GestorDep;

class DepartamentoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
		public function lista(){
		  $departamentos = Departamento::all();
		  return view('departamentos')->with('departamentos', $departamentos);

		}	
    public function mostra($id){
    	$cliente = Cliente::find($id);
    	return view ('departamento-formulario')->with('c', $cliente);
    }

    public function novo($id){
    	$cliente = Cliente::find($id);
    	return view ('departamento-formulario')->with('c', $cliente);
    }

    public function adiciona(DepartamentosRequest $request){
      $departamento = Departamento::create($request->all());
      $departamento_id = $departamento->id;
      $input = $request->except('nome');
      $gestorDep = GestorDep::create($input + ['departamento_id' => $departamento_id]);
      return redirect('/departamentos')->withInput();
    }

    public function encontrar($id){
     $departamento = Departamento::find($id);
     $gestorDep = $departamento->gestor;
     $cliente = $departamento->cliente;
     return view ('departamento-editar-formulario')->with('d', $departamento)->with('g', $gestorDep)->with('c', $cliente);
    }

    public function alterar(DepartamentosRequest $request){
     $departamento = Departamento::find($request->departamento_id);
     $departamento->update($request->all());
     $gestorDep = GestorDep::find($request->gestor_dep_id);
     $input = $request->except('nome', 'departamento_id');
     $gestorDep->update($input);
     return redirect('/departamentos')->withInput();
    }

    public function remover($id){
     $departamento = Departamento::find($id);
     $pi = $departamento->pi;
        if(!empty($pi)){
            $piController = new PiController;         
            $piController->remover($pi->id);     
        }    
        $departamento->delete();
        return redirect('/departamentos')->withInput();
    }
}
