<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{
    protected $table = 'departamentos';
    public $timestamps = false;
    protected $fillable = array('nome', 'cliente_id');   

    public function cliente(){
      return $this->belongsTo('App\Cliente');
  }
}
