<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StakeholderSub extends Model
{
  protected $table = 'stakeholders_sub';
  public $timestamps = false;
  protected $fillable = array('nome', 'email', 'cargo', 'departamento', 'subprocesso_id'); 

    public function subprocesso(){
      return $this->belongsTo('App\Subprocesso');
  	}
}
