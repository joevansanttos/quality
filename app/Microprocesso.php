<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Microprocesso extends Model
{
   protected $table = 'microprocessos';
   public $timestamps = false;
   protected $fillable = array('subprocesso_id',  'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periodicidade_id', 'horas', 'descricao', 'maturidade_id');

   public function subprocesso(){
   	return $this->belongsTo('App\Subprocesso');
   }

   public function gestor(){
       return $this->hasOne('App\GestorMicro');
   } 

   public function stakeholders(){
       return $this->hasMany('App\StakeholderMicro');
   } 
}
