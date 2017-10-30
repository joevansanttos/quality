<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use Request;

class LoginController extends Controller
{
  public function login()
  {
  	$credenciais = Request::only('email', 'password');
  	if(Auth::attempt($credenciais)) {
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
