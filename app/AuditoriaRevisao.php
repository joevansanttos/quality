<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaRevisao extends Model
{
  protected $table = 'auditorias_revisao';
  public $timestamps = false;
  protected $fillable = array('numero', 'item', 'verificado', 'comentarios', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
