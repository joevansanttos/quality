<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $table = 'usuarios';
    public $timestamps = false;
    protected $fillable = array('nome', 'sobrenome', 'senha','email', 'sexo', 'estado', 'cidade', 'telefone');
}
