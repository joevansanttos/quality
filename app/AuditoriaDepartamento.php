<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaDepartamento extends Model
{
  protected $table = 'auditorias_departamento';
  public $timestamps = false;
  protected $fillable = array('departamento', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 

  public function auditoriasdepartamentoclausula(){
      return $this->hasMany('App\AuditoriaDepartamentoClausula');
  } 
}
