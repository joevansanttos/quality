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
          $credenciais = Request::only('email', 'senha');
          if(Auth::attempt($credenciais)) {
              return "Usuário ".      Auth::user()->name    ." logado com sucesso";
          }
          return "As credencias não são válidas";
      }
}
