<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ClientesRequest;
use App\Http\Controllers\DepartamentoController;
use Validator;
use App\Cliente;


class ClienteController extends Controller
{
  
  public function __construct()
  {
      $this->middleware('auth');
  } 

   public function lista(){
     $clientes = Cliente::all();
     return view('clientes')->with('clientes', $clientes);

   }	

   public function novo(){
     return view('cliente-formulario');
   }

   public function adiciona(ClientesRequest $request){
     Cliente::create($request->all());
     return redirect('/clientes')->withInput();
   }

   public function encontrar($id){
    $cliente = Cliente::find($id);
    return view ('cliente-editar-formulario')->with('c', $cliente);
   }

   public function alterar(ClientesRequest $request){
    $cliente = Cliente::find($request->cliente_id);
    $cliente->update($request->all());
    return redirect('/clientes')->withInput();
   }

   public function remover($id){
    $cliente = Cliente::find($id);
    $departamentos = $cliente->departamentos;
    if(!empty($departamentos)){
        $departamentoController = new DepartamentoController;         
      foreach ($departamentos as $departamento) {
          $departamentoController->remover($departamento->id);
      }     
    }    
    $cliente->delete();
    return redirect('/clientes')->withInput();
   }

}
