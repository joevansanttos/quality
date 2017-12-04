<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaNaoConformidade extends Model
{
  protected $table = 'auditorias_naoconformidade';
  public $timestamps = false;
  protected $fillable = array('n_contrato', 'data', 'n_relatorio', 'auditoria_tipo', 'processo', 'norma', 'clausula', 'descricao', 'grau', 'auditor_lider', 'auditor_lider_jbc', 'auditor', 'auditor_jbc', 'representante', 'analise', 'correcao', 'data_implementacao', 'data_verificacao', 'status_verificacao', 'auditor_verificacao', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
