<?php



Auth::routes();


Route::get('/', 'HomeController@index')->name('home');

Route::post('/login', 'LoginController@login');
Route::get('/logout', 'LoginController@logout');
Route::get('/dashboard', 'LoginController@dashboard');

Route::get('/users', 'UserController@lista');
Route::get('/users/novo', 'UserController@novo');
Route::post('/users/adiciona', 'UserController@adiciona');
Route::get('/users/perfis', 'UserController@perfis');
Route::resource('user-editar-formulario','UserController');
Route::get('/users/encontrar/{id}', 'UserController@encontrar');
Route::post('/users/alterar', 'UserController@alterar');

Route::get('/clientes', 'ClienteController@lista');
Route::get('/clientes/novo', 'ClienteController@novo');
Route::post('/clientes/adiciona', 'ClienteController@adiciona');
Route::post('/clientes/gestores', 'ClienteController@gestores');
Route::resource('cliente-editar-formulario','ClienteController');
Route::get('/clientes/encontrar/{id}', 'ClienteController@encontrar');
Route::post('/clientes/alterar', 'ClienteController@alterar');

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

Route::resource('informacao-formulario','PiController');
Route::get('/pis/informacao/{id}', 'PiController@informacao');
Route::post('/pis/adiciona_informacao', 'PiController@adiciona_informacao');

Route::resource('aplicacao-formulario','PiController');
Route::get('/pis/aplicacao/{id}', 'PiController@aplicacao');
Route::post('/pis/adiciona_aplicacao', 'PiController@adiciona_aplicacao');

Route::resource('definicao-formulario','PiController');
Route::get('/pis/definicao/{id}', 'PiController@definicao');
Route::post('/pis/adiciona_definicao', 'PiController@adiciona_definicao');

Route::resource('macroprocesso-formulario','MacroController');
Route::get('/pis/macroprocesso/{id}', 'MacroController@macroprocesso');
Route::get('/pis/macroprocessos/{id}', 'MacroController@mostra');
Route::post('/pis/adiciona_macroprocesso', 'MacroController@adiciona_macroprocesso');
Route::resource('stakeholder-macro-formulario','MacroController');
Route::get('/pis/macroprocessos/stakeholder/{id}', 'MacroController@stakeholder');
Route::post('/pis/macroprocessos/adiciona_stakeholder', 'MacroController@adiciona_stakeholder');

Route::resource('subprocesso-formulario','SubController');
Route::get('/pis/macroprocessos/subprocesso/{id}', 'SubController@subprocesso');
Route::post('/pis/macroprocessos/adiciona_subprocesso', 'SubController@adiciona_subprocesso');
Route::get('/pis/macroprocessos/subprocessos/{id}', 'SubController@mostra');
Route::resource('stakeholder-sub-formulario','SubController');
Route::get('/pis/macroprocessos/subprocessos/stakeholder/{id}', 'SubController@stakeholder');
Route::post('/pis/macroprocessos/subprocessos/adiciona_stakeholder', 'SubController@adiciona_stakeholder');

Route::resource('microprocesso-formulario','MicroController');
Route::get('/pis/macroprocessos/subprocessos/microprocesso/{id}', 'MicroController@microprocesso');
Route::post('/pis/macroprocessos/subprocessos/microprocesso/adiciona_microprocesso', 'MicroController@adiciona_microprocesso');
Route::get('/pis/macroprocessos/subprocessos/microprocessos/{id}', 'MicroController@mostra');


?>
