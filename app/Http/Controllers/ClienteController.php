<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ClientesRequest;
use App\Http\Controllers\DepartamentoController;
use Validator;
use App\Cliente;


class ClienteController extends Controller
{

  public function __construct()
  {
    $this->middleware('auth');
  } 

  public function lista(){
   $clientes = Cliente::all();
   return view('clientes')->with('clientes', $clientes);

 }	

 public function lista_relatorios(){
   $clientes = Cliente::all();
   $collection = collect([]);
   $cont = 0;
   foreach ($clientes as $c) {
     $size = 0;
     foreach ($c->departamentos as $d) {
      $size = $size + count($d->pi->macroprocessos);
      foreach ($d->pi->macroprocessos as $m) {
      }

      if($d->pi->status->id != 1){
        $cont++;
      }
    }

    if($cont > 0){
      $c['size'] = $size;
      $collection->push($c);
    }

    $cont = 0;
  }


  return view('cliente_relatorios')->with('clientes', $collection);

}  

public function novo(){
 return view('cliente-formulario');
}

public function adiciona(ClientesRequest $request){
 $cliente = Cliente::create([
  'nome' => $request->nome,
  'endereco' => $request->endereco,
  'estado' =>$request->estado,
  'cidade' =>$request->cidade,
  'estado' => $request->estado,
  'tel' =>$request->tel,
  'cep' =>$request->cep,
  'fax' =>$request->fax,
  'n_contrato' =>$request->n_contrato,
]);

 if ($request->hasFile('image')) {
  $path = $request->file('image')->store('public');
  $path = explode('/',$path);
  $cliente->image = $path[1];
  $cliente->save();
}

return redirect('/clientes')->withInput();
}

public function encontrar($id){
  $cliente = Cliente::find($id);
  return view ('cliente-editar-formulario')->with('c', $cliente);
}

public function alterar(ClientesRequest $request){
  $cliente = Cliente::find($request->cliente_id);
  $cliente->update($request->all());

  if ($request->hasFile('image')) {
   $path = $request->file('image')->store('public');
   $path = explode('/',$path);
   $cliente->image = $path[1];
   $cliente->save();
  }

  return redirect('/clientes')->withInput();
}

public function remover($id){
  $cliente = Cliente::find($id);
  $departamentos = $cliente->departamentos;
  if(!empty($departamentos)){
    $departamentoController = new DepartamentoController;         
    foreach ($departamentos as $departamento) {
      $departamentoController->remover($departamento->id);
    }     
  }    
  $cliente->delete();
  return redirect('/clientes')->withInput();
}

public function relatorio($id){
  $c = Cliente::find($id);
  $departamentos = [];
  foreach ($c->departamentos as $d){
   array_push($departamentos, $d->nome);
 }
 $processos = $this->gerar_processo($c);
 $operacoes = $this->gerar_array($c, 1);
 $gestoes = $this->gerar_array($c, 2);
 $suportes = $this->gerar_array($c, 3);
 $inicial = $this->gerar_maturidade($c, 1); 
 $repetitivo = $this->gerar_maturidade($c, 2);
 $definido = $this->gerar_maturidade($c, 3);
 $gerenciado = $this->gerar_maturidade($c, 4);
 $otimizado = $this->gerar_maturidade($c, 5);
 return view ('cliente_graficos')->with('c', $c)->with('departamentos', $departamentos)->with('operacoes', $operacoes)->with('processos', $processos)->with('gestoes', $gestoes)->with('suportes', $suportes)->with('inicial', $inicial)->with('repetitivo', $repetitivo)->with('definido', $definido)->with('gerenciado', $gerenciado)->with('otimizado', $otimizado);
}

public function gerar_array($c, $num){
  $array = [];
  foreach ($c->departamentos as $d){
    $size = 0;
    foreach($d->pi->macroprocessos as $macro){
      if ($macro->classificacao_id == $num){
        $size++;
      }
      $subprocessos = $macro->subprocessos;
      foreach($subprocessos as $sub){
        if ($sub->classificacao_id == $num){
          $size++;
        }
        $microprocessos = $sub->microprocessos;
        foreach($microprocessos as $micro){
          if ($micro->classificacao_id == $num){
            $size++;
          }
        }
      }
    }
    array_push($array, $size);
  }
  return $array;
}

public function gerar_processo($c){
  $array = [];
  foreach ($c->departamentos as $d){
    $size = 0;
    foreach($d->pi->macroprocessos as $macro){
      $size++;
      $subprocessos = $macro->subprocessos;
      foreach($subprocessos as $sub){
        $size++;
        $microprocessos = $sub->microprocessos;
        foreach($microprocessos as $micro){
          $size++;
        }
      }
    }
    array_push($array, $size);
  }
  return $array;
}

public function gerar_maturidade($c, $num){
  $array = [];
  foreach ($c->departamentos as $d){
    $size = 0;
    foreach($d->pi->macroprocessos as $macro){
      if ($macro->maturidade_id == $num){
        $size++;
      }
      $subprocessos = $macro->subprocessos;
      foreach($subprocessos as $sub){
        if ($sub->maturidade_id == $num){
          $size++;
        }
        $microprocessos = $sub->microprocessos;
        foreach($microprocessos as $micro){
          if ($micro->maturidade_id == $num){
            $size++;
          }
        }
      }
    }
    array_push($array, $size);
  }
  return $array;
}

public function imprime($id){
  $c = Cliente::find($id);
  $departamentos = [];

  foreach ($c->departamentos as $d){
   array_push($departamentos, $d->nome);
 }


 $processos = $this->gerar_processo($c);
 $operacoes = $this->gerar_array($c, 1);
 $gestoes = $this->gerar_array($c, 2);
 $suportes = $this->gerar_array($c, 3);
 $inicial = $this->gerar_maturidade($c, 1); 
 $repetitivo = $this->gerar_maturidade($c, 2);
 $definido = $this->gerar_maturidade($c, 3);
 $gerenciado = $this->gerar_maturidade($c, 4);
 $otimizado = $this->gerar_maturidade($c, 5);

 return view ('cliente_pdf')->with('c', $c)->with('departamentos', $departamentos)->with('operacoes', $operacoes)->with('processos', $processos)->with('gestoes', $gestoes)->with('suportes', $suportes)->with('inicial', $inicial)->with('repetitivo', $repetitivo)->with('definido', $definido)->with('gerenciado', $gerenciado)->with('otimizado', $otimizado);
}

public function ver($id){
 $cliente = Cliente::find($id);
 return view ('cliente_perfil')->with('c', $cliente);
}


}
