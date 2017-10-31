<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subprocesso extends Model
{
	protected $table = 'subprocessos';
	public $timestamps = false;
	protected $fillable = array('macroprocesso_id',  'classificacao_id', 'titulo' , 'numero', 'pessoas', 'periodicidade_id', 'horas', 'descricao', 'maturidade_id');

	public function macroprocesso(){
		return $this->belongsTo('App\Macroprocesso');
	}

	public function microprocessos(){
		return $this->hasMany('App\Microprocesso');
	}

	public function gestor(){
	    return $this->hasOne('App\GestorSub');
	} 

	public function stakeholders(){
	    return $this->hasMany('App\StakeholderSub');
	} 

}
