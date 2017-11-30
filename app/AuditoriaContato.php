<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaContato extends Model
{
  protected $table = 'auditorias_contato';
  public $timestamps = false;
  protected $fillable = array('nome', 'email', 'tel', 'auditoria_id');

  public function auditoria(){
      return $this->belongsTo('App\Auditoria');
  } 
}
