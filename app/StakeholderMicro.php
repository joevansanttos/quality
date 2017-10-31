<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StakeholderMicro extends Model
{
   protected $table = 'stakeholders_micro';
   public $timestamps = false;
   protected $fillable = array('nome', 'email', 'cargo', 'departamento', 'microprocesso_id'); 

     public function microprocesso(){
       return $this->belongsTo('App\Microprocesso');
   	}
}
