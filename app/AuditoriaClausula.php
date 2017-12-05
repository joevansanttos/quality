<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaClausula extends Model
{
 	protected $table = 'auditorias_clausula';
 	public $timestamps = false;
 	protected $fillable = array('numero', 'clausula', 'auditoria_id');

 	public function auditoria(){
 	    return $this->belongsTo('App\Auditoria');
 	} 
}
