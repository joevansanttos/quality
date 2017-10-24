<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\DepartamentosRequest;
use App\Cliente;
use App\Departamento;
use App\StakeholderDepartamento;

class DepartamentoController extends Controller
{
    
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
      $stakeholderDepartamento = stakeholderDepartamento::create($input + ['departamento_id' => $departamento_id]);
      return redirect('/departamentos')->withInput();
    }
}
