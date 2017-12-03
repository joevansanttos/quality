<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaRecomendacao extends Model
{
  protected $table = 'auditorias_recomendacao';
  public $timestamps = false;
  protected $fillable = array('norma', 'acreditacao', 'copias', 'idioma','auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
