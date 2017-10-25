<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Objetivo extends Model
{
    protected $table = 'objetivos';
    public $timestamps = false;
    protected $fillable = array('descricao', 'pi_id');

    public function pi(){
      return $this->belongsTo('App\Pi');
  	}
}
