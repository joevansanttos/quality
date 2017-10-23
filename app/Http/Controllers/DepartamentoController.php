<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliente;

class DepartamentoController extends Controller
{
    public function novo($id){
    	$cliente = Cliente::find($id);
    	return view ('departamento-formulario')->with('c', $cliente);
    }

    
}
