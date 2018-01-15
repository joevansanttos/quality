<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pi extends Model
{
   protected $table = 'pis';
   public $timestamps = false;
   protected $fillable = array('cod', 'departamento_id', 'data_revisado', 'user_id', 'gestor', 'status_pi_id', 'unidade', 'area');

   public function objetivo(){
       return $this->hasOne('App\Objetivo');
   } 

   public function aplicacao(){
       return $this->hasOne('App\Aplicacao');
   } 

   public function definicao(){
       return $this->hasOne('App\Definicao');
   } 

   public function informacao(){
       return $this->hasOne('App\Informacao');
   } 

   public function macroprocessos(){
       return $this->hasMany('App\Macroprocesso')->orderBy('numero');
   } 

   public function departamento(){
       return $this->belongsTo('App\Departamento');
   }

   public function status(){
       return $this->belongsTo('App\StatusPi', 'status_pi_id');
   }

   public function usuario(){
       return $this->belongsTo('App\User', 'user_id');
   }

}
