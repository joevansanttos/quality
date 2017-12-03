<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaPlano extends Model
{
  protected $table = 'auditorias_plano';
  public $timestamps = false;
  protected $fillable = array('data', 'horario', 'atividade', 'site', 'processo', 'auditor', 'clausula', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
