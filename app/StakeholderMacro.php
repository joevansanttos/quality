<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StakeholderMacro extends Model
{
   protected $table = 'stakeholders_macro';
   public $timestamps = false;
   protected $fillable = array('nome', 'email', 'cargo', 'departamento', 'macroprocesso_id'); 

     public function macroprocesso(){
       return $this->belongsTo('App\Macroprocesso');
   	}
}
