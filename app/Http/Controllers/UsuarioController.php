<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;
use App\Usuario;

class UsuarioController extends Controller
{
	public function lista(){
	  $usuarios = Usuario::all();
	  return view('usuarios')->with('usuarios', $usuarios);

	}	

	public function novo(){
	  return view('usuario-formulario');
	}

	public function adiciona(UsuarioRequest $request){

	  Produto::create($request->all());
	  return redirect('/usuarios')->withInput();
	}
}
