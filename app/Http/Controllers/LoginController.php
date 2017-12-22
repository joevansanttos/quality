<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use Request;
use App\User;


class LoginController extends Controller
{
  public function login()
  {
  	$credenciais = Request::only('email', 'password');
  	if(Auth::attempt($credenciais)) {      
      if(Auth::user()->profissao_id == 4){
        return redirect('/auditorias')->withInput();
      }
  		return redirect('/users')->withInput();
  	}
  	return redirect('/')->withInput();
  }

  public function logout(){
  	Auth::logout();
  	return redirect('/')->withInput();
  }

  public function dashboard(){
    return view('dashboard');
  }
}
