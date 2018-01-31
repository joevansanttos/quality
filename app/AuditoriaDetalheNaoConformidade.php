<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaDetalheNaoConformidade extends Model
{
  protected $table = 'auditorias_detalhenaoconformidade';
  public $timestamps = false;
  protected $fillable = array('descricao', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
