<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GestorMacro extends Model
{
    protected $table = 'gestor_macro';
      public $timestamps = false;
      protected $fillable = array('nome', 'email', 'cargo','tel', 'macroprocesso_id'); 

        public function macroprocesso(){
          return $this->belongsTo('App\Macroprocesso');
      	}
}
