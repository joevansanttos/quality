<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\UsuariosRequest;
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

	public function adiciona(UsuariosRequest $request){
	  Usuario::create($request->all());
	  return redirect('/usuarios')->withInput();
	}
}
