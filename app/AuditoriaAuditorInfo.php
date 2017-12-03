<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaAuditorInfo extends Model
{
  protected $table = 'auditorias_auditorinfo';
  public $timestamps = false;
  protected $fillable = array('auditor', 'membros', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
