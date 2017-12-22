<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Informacao extends Model
{
	protected $table = 'informacoes';
	public $timestamps = false;
	protected $fillable = array('descricao', 'pi_id');

	public function pi(){
		return $this->belongsTo('App\Pi');
	}

	
}
