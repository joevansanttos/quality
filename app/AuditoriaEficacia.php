<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaEficacia extends Model
{
  protected $table = 'auditorias_eficacia';
  public $timestamps = false;
  protected $fillable = array('eficacia', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
