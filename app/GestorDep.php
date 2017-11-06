<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GestorDep extends Model
{
  protected $table = 'gestor_dep';
  public $timestamps = false;
  protected $fillable = array('responsavel', 'email', 'cargo','telefone', 'departamento_id'); 

    public function departamento(){
      return $this->belongsTo('App\Departamento');
  	}
}
