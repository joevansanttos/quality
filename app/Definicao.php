<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Definicao extends Model
{
     protected $table = 'definicoes';
     public $timestamps = false;
     protected $fillable = array('descricao', 'pi_id');

     public function pi(){
       return $this->belongsTo('App\Pi');
   	}
}
