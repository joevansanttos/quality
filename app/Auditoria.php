<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Auditoria extends Model
{
  protected $table = 'auditorias';
  public $timestamps = false;
  protected $fillable = array('cod', 'data', 'cliente_id', 'status_pi_id');

  public function cliente(){
      return $this->belongsTo('App\Cliente');
  } 
  public function certificacao(){
      return $this->hasOne('App\AuditoriaCertificacao');
  } 

  public function notas(){
      return $this->hasMany('App\AuditoriaNotas');
  } 

  public function contatos(){
      return $this->hasMany('App\AuditoriaContato');
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

  public function recomendacao(){
      return $this->hasMany('App\AuditoriaRecomendacao');
  } 

  public function planos(){
      return $this->hasMany('App\AuditoriaPlano');
  } 

  public function normas(){
      return $this->hasMany('App\AuditoriaNorma');
  } 

  public function auditorinfo(){
      return $this->hasOne('App\AuditoriaAuditorInfo');
  } 

  public function departamentos(){
      return $this->hasMany('App\AuditoriaDepartamento');
  } 

  public function clausulas(){
      return $this->hasMany('App\AuditoriaClausula');
  }

  public function departamentosclausulas(){
      return $this->hasMany('App\AuditoriaDepartamentoClausula');
  }

  public function relatorios(){
      return $this->hasMany('App\AuditoriaRelatorio');
  }

  public function programa(){
      return $this->hasOne('App\AuditoriaPrograma');
  } 

  public function escopo(){
      return $this->hasOne('App\AuditoriaEscopo');
  } 

}
