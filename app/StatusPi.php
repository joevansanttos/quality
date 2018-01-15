<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusPi extends Model
{
  protected $table = 'status_pi';
  public $timestamps = false;
  protected $fillable = array('descricao'); 
}
