<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditoriaCertificacao extends Model
{
   protected $table = 'auditorias_certificacao';
   public $timestamps = false;
   protected $fillable = array('ingles', 'portugues', 'sites', 'funcionarios', 'escritorio', 'tipo', 'termino', 'inicio', 'duracao', 'auditoria_id');

   public function auditoria(){
       return $this->belongsTo('App\Auditoria');
   } 
}
