<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaDepartamentoClausula extends Model
{
  protected $table = 'auditorias_departamentos_clausulas';
  public $timestamps = false;
  protected $fillable = array('auditorias_departamento_id', 'auditorias_clausula_id','auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 

  public function departamento(){
      return $this->belongsTo('App\AuditoriaDepartamento', 'auditorias_departamento_id');
  } 

  public function clausula(){
      return $this->belongsTo('App\AuditoriaClausula', 'auditorias_clausula_id');
  } 
}
