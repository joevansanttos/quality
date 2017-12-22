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
   	    return $this->hasMany('App\Subprocesso')->orderBy('numero');
   	} 

   	public function gestor(){
   	    return $this->hasOne('App\GestorMacro');
   	} 

    public function stakeholders(){
        return $this->hasMany('App\StakeholderMacro');
    } 

    public function classificacao(){
      return $this->belongsTo('App\Classificacao', 'classificacao_id');
    } 

    public function periodicidade(){
      return $this->belongsTo('App\Periodicidade', 'periodicidade_id');
    } 

    public function maturidade(){
      return $this->belongsTo('App\Maturidade', 'maturidade_id');
    } 

}
