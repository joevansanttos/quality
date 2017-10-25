<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aplicacao extends Model
{
     protected $table = 'aplicacoes';
     public $timestamps = false;
     protected $fillable = array('descricao', 'pi_id');

     public function pi(){
       return $this->belongsTo('App\Pi');
   	}
}
