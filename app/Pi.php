<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pi extends Model
{
   protected $table = 'pis';
   public $timestamps = false;
   protected $fillable = array('id', 'departamento_id');

   public function objetivo(){
       return $this->hasOne('App\Objetivo');
   } 

   public function aplicacao(){
       return $this->hasOne('App\Aplicacao');
   } 

   public function definicao(){
       return $this->hasOne('App\Definicao');
   } 

   public function macroprocessos(){
       return $this->hasMany('App\Macroprocesso');
   } 

   public function classificacao(){
       return $this->belongsTo('estoque\Classificacao');
   }
}
