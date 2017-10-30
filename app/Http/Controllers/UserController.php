<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\UserRequest;
use Validator;
use App\User;

class UserController extends Controller
{

	public function __construct()
	{
	    $this->middleware('auth');
	}

	
	public function lista(){
	  $users = User::all();
	  return view('users')->with('users', $users);

	}	

	public function novo(){
	  return view('user-formulario');
	}

	public function adiciona(UserRequest $request){
		$user = User::create([
			'name' => $request->name,
			'sobrenome' => $request->sobrenome,
			'email' => $request->email,
			'password' => bcrypt($request->password),
			'telefone' =>$request->telefone,
			'sexo' =>$request->sexo,
			'estado' =>$request->estado,
			'cidade' =>$request->cidade,
		]);

		return redirect('/users')->withInput();
	  
	}
}
