<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Cliente;

class DepartamentoController extends Controller
{
    public function mostra($id){
    	$cliente = Cliente::find($id);
    	return view ('departamento-formulario')->with('c', $cliente);
    }

    
}
