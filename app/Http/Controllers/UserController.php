<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Storage;
use Validator;
use App\User;
use App\Profissao;
use Auth;

class UserController extends Controller
{

	public function __construct()
	{
		$this->middleware('auth');
	}

	
	public function lista(){
		$users = User::all();
		return view('/users')->with('users', $users);

	}	

	public function novo(){
		return view('user-formulario')->with('profissoes', Profissao::all());
	}

	public function perfis(){
		$user = Auth::user();
		return view('user-profile')->with('u', $user);;
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
			'profissao_id' =>$request->profissao_id,
		]);

		if ($request->hasFile('image')) {
			$path = $request->file('image')->store('public');
			$user->image = $path;
			$user->save();
		}
		return redirect('/users')->withInput();
	}

	public function encontrar($id){
		$user = User::find($id);
		return view ('user-editar-formulario')->with('u', $user)->with('profissoes', Profissao::all());
	}

	public function alterar(UserRequest $request){
		$user = User::find($request->user_id);
		$user->update($request->all());
		if ($request->hasFile('image')) {
			$path = $request->file('image')->store('public');
			$path = explode('/',$path);
			$user->image = $path[1];
			$user->save();
		}
		return redirect('/users')->withInput();
	}

	public function remover($id){
		$user = User::find($id);
		$user->delete();
		return redirect('/users')->withInput();
	}

	public function lista_gestores(){
		$gestores = User::where('profissao_id', 4)->get();
		return view('/users_gestores')->with('gestores', $gestores);
	}


	


}
