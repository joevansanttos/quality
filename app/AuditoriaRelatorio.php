<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaRelatorio extends Model
{
  protected $table = 'auditorias_relatorio';
  public $timestamps = false;
   protected $fillable = array('data', 'auditorias_naoconformidade_id', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 

  public function naoconformidade(){
      return $this->belongsTo('App\AuditoriaNaoConformidade', 'auditorias_naoconformidade_id');
  } 
}
