<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ClientesRequest;
use Validator;
use App\Cliente;


class ClienteController extends Controller
{
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
}
