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


Route::post('/login', 'LoginController@login');
