<?php


Route::get('/', function () {
    return view('login-form');
});

Route::resource('auth', 'LoginController');

Route::get('/usuarios', 'UsuarioController@lista');
Route::get('/usuarios/novo', 'UsuarioController@novo');
Route::post('/usuarios/adiciona', 'UsuarioController@adiciona');

Route::get('/clientes', 'ClienteController@lista');
Route::get('/clientes/novo', 'ClienteController@novo');
Route::post('/clientes/adiciona', 'ClienteController@adiciona');

Route::resource('departamento-formulario','DepartamentoController');
Route::get('/departamentos/mostra/{id}', 'DepartamentoController@mostra');
Route::get('/departamentos/novo/{id}', 'DepartamentoController@novo');
Route::post('/departamentos/adiciona', 'DepartamentoController@adiciona');
Route::get('/departamentos', 'DepartamentoController@lista');

Route::resource('pi-formulario','PiController');
Route::get('/pis/mostra/{id}', 'PiController@mostra');
Route::get('/pis/novo/{id}', 'PiController@novo');
Route::post('/pis/adiciona', 'PiController@adiciona');
Route::get('/pis', 'PiController@lista');


Route::resource('objetivo-formulario','PiController');
Route::get('/pis/objetivo/{id}', 'PiController@objetivo');
Route::post('/pis/adiciona_objetivo', 'PiController@adiciona_objetivo');

Route::resource('aplicacao-formulario','PiController');
Route::get('/pis/aplicacao/{id}', 'PiController@aplicacao');
Route::post('/pis/adiciona_aplicacao', 'PiController@adiciona_aplicacao');

Route::resource('definicao-formulario','PiController');
Route::get('/pis/definicao/{id}', 'PiController@definicao');
Route::post('/pis/adiciona_definicao', 'PiController@adiciona_definicao');

Route::resource('macroprocesso-formulario','PiController');
Route::get('/pis/macroprocesso/{id}', 'PiController@macroprocesso');
Route::post('/pis/adiciona_macroprocesso', 'PiController@adiciona_macroprocesso');


Route::post('/login', 'LoginController@login');
