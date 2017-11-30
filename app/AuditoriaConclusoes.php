<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaConclusoes extends Model
{
  protected $table = 'auditorias_conclusoes';
  public $timestamps = false;
  protected $fillable = array('conclusao', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
