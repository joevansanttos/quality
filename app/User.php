<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $table = 'users';

    protected $fillable = [
        'name', 'email', 'sobrenome', 'password','email', 'sexo', 'estado', 'cidade', 'telefone', 'image'
    ];


    protected $hidden = [
        'password', 'remember_token',
    ];
}
