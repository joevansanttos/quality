<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StakeholderDepartamento extends Model
{
  protected $table = 'stakeholders_dep';
  public $timestamps = false;
  protected $fillable = array('responsavel', 'email', 'cargo','telefone', 'departamento_id'); 

    public function departamento(){
      return $this->belongsTo('App\Departamento');
  	}
}
