<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pi extends Model
{
   protected $table = 'pis';
   public $timestamps = false;
   protected $fillable = array('codigo', 'departamento_id'); 
}
