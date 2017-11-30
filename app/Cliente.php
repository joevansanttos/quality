<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
  protected $table = 'clientes';
  public $timestamps = false;
  protected $fillable = array('nome',  'estado', 'cidade',  'endereco',  'tel', 'cep', 'fax', 'n_contrato' );

  public function departamentos(){
      return $this->hasMany('App\Departamento');
  } 
  
}
