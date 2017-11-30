<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaObservacoes extends Model
{
  protected $table = 'auditorias_observacoes';
  public $timestamps = false;
  protected $fillable = array('observacoes', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
