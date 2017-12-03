<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaNorma extends Model
{
   protected $table = 'auditorias_norma';
   public $timestamps = false;
   protected $fillable = array('norma',  'auditoria_id');

   public function auditoria(){
       return $this->belongsTo('App\Auditoria');
   } 
}
