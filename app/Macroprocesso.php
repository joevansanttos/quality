<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Macroprocesso extends Model
{
     protected $table = 'macroprocessos';
     public $timestamps = false;
     protected $fillable = array('pi_id', 'data_ultima', 'data_proxima', 'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periodicidade_id', 'horas', 'descricao', 'maturidade_id');
     
     public function pi(){
       return $this->belongsTo('App\Pi');
   	}

   	public function subprocessos(){
   	    return $this->hasMany('App\Subprocesso');
   	} 

   	public function gestor(){
   	    return $this->hasOne('App\GestorMacro');
   	} 

    public function stakeholders(){
        return $this->hasMany('App\StakeholderMacro');
    } 

}
