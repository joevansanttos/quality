<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaNotas extends Model
{
  protected $table = 'auditorias_notas';
  public $timestamps = false;
  protected $fillable = array('auditor', 'data', 'processo', 'pessoal', 'notas',  'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
