<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Maturidade extends Model
{
    protected $table = 'maturidade';
    protected $fillable = array('pi_id','data_ultima', 'data_proxima', 'classificacao_id', 'titulo', 'numero', 'pessoas', 'periodicidade_id', 'horas', 'descricao', 'maturidade_id');
}
