<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaPrograma extends Model
{
  protected $table = 'auditorias_programa';
  public $timestamps = false;
  protected $fillable = array('auditor', 'data', 'comentarios', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
