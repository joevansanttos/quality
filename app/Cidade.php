<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cidade extends Model
{
    protected $table = 'cidade';
    public $timestamps = false;
    protected $fillable = array('CT_NOME', 'CT_UF', 'CT_IBGE');
}
