<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GestorSub extends Model
{
    protected $table = 'gestor_sub';
      public $timestamps = false;
      protected $fillable = array('nome', 'email', 'cargo','tel', 'subprocesso_id'); 

        public function macroprocesso(){
          return $this->belongsTo('App\Subprocesso');
      	}
}
