<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Auditoria extends Model
{
  protected $table = 'auditorias';
  public $timestamps = false;
  protected $fillable = array('cod', 'cliente_id');

  public function cliente(){
      return $this->belongsTo('App\Cliente');
  } 
  public function certificacao(){
      return $this->hasOne('App\AuditoriaCertificacao');
  } 

  public function notas(){
      return $this->hasMany('App\AuditoriaNotas');
  } 

  public function contato(){
      return $this->hasOne('App\AuditoriaContato');
  } 

  public function revisoes(){
      return $this->hasMany('App\AuditoriaRevisao');
  } 

  public function naoconformidades(){
      return $this->hasMany('App\AuditoriaNaoConformidade');
  } 

  public function conclusoes(){
      return $this->hasOne('App\AuditoriaConclusoes');
  } 

  public function sumarionc(){
      return $this->hasOne('App\AuditoriaSumarioNC');
  } 

  public function eficacia(){
      return $this->hasOne('App\AuditoriaEficacia');
  } 

  public function observacoes(){
      return $this->hasOne('App\AuditoriaObservacoes');
  }
}
