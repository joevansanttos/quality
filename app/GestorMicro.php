<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GestorMicro extends Model
{
  protected $table = 'gestor_micro';
    public $timestamps = false;
    protected $fillable = array('nome', 'email', 'cargo','tel', 'microprocesso_id'); 

      public function microprocesso(){
        return $this->belongsTo('App\Microprocesso');
    	}
}
