<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaSumarioNC extends Model
{
  protected $table = 'auditorias_sumarionc';
  public $timestamps = false;
  protected $fillable = array('maior', 'menor', 'followup', 'data_followup', 'duracao', 'atual_followp', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
