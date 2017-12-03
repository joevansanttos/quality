<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaSumarioNorma extends Model
{
 	protected $table = 'auditorias_sumarionorma';
  public $timestamps = false;
  protected $fillable = array('numero', 'clausula', 'departamento', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
