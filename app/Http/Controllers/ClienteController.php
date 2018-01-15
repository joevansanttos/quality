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

   public function lista_relatorios(){
     $clientes = Cliente::all();
     $collection = collect([]);
     $cont = 0;
     foreach ($clientes as $c) {
       $size = 0;
       foreach ($c->departamentos as $d) {
          $size = $size + count($d->pi->macroprocessos);
          foreach ($d->pi->macroprocessos as $m) {
          }

         if($d->pi->status->id != 1){
          $cont++;
         }
       }

       if($cont > 0){
        $c['size'] = $size;
        $collection->push($c);
       }

       $cont = 0;
     }


     return view('cliente_relatorios')->with('clientes', $collection);

   }  

   public function novo(){
     return view('cliente-formulario');
   }

   public function adiciona(ClientesRequest $request){
     $cliente = Cliente::create([
      'nome' => $request->nome,
      'endereco' => $request->endereco,
      'estado' =>$request->estado,
      'cidade' =>$request->cidade,
      'estado' => $request->estado,
      'tel' =>$request->tel,
      'cep' =>$request->cep,
      'fax' =>$request->fax,
      'n_contrato' =>$request->n_contrato,
     ]);

     if ($request->hasFile('image')) {
      $path = $request->file('image')->store('public');
      $cliente->image = $path;
      $cliente->save();
     }

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

   public function relatorio($id){
     $cliente = Cliente::find($id);
    return view ('cliente-relatorio')->with('c', $cliente);
   }

   public function imprime($id){
     $cliente = Cliente::find($id);
    return view ('relatorio-imprimir')->with('c', $cliente);
   }

   public function ver($id){
     $cliente = Cliente::find($id);
    return view ('cliente_perfil')->with('c', $cliente);
   }


}
