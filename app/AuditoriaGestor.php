<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaGestor extends Model
{
  protected $table = 'auditorias_gestores';
  public $timestamps = false;
  protected $fillable = array('user_id','auditoria_id');

  public function user(){
      return $this->belongsTo('App\User', 'user_id');
  } 


  public function auditoria(){
      return $this->belongsTo('App\Auditoria', 'auditorias_id');
  } 
}
