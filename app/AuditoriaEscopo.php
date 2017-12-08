<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaEscopo extends Model
{
  protected $table = 'auditorias_escopo';
  public $timestamps = false;
  protected $fillable = array('data', 'objetivos', 'comentarios', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
