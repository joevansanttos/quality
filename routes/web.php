<?php



Auth::routes();


Route::get('/', 'HomeController@index')->name('home');

Route::resource('dashboard','LoginController');
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
Route::get('/users/remover/{id}', 'UserController@remover');

Route::get('/clientes', 'ClienteController@lista');
Route::get('/clientes/novo', 'ClienteController@novo');
Route::post('/clientes/adiciona', 'ClienteController@adiciona');
Route::post('/clientes/gestores', 'ClienteController@gestores');
Route::resource('cliente-editar-formulario','ClienteController');
Route::get('/clientes/encontrar/{id}', 'ClienteController@encontrar');
Route::post('/clientes/alterar', 'ClienteController@alterar');
Route::get('/clientes/remover/{id}', 'ClienteController@remover');

Route::resource('departamento-formulario','DepartamentoController');
Route::get('/departamentos/mostra/{id}', 'DepartamentoController@mostra');
Route::get('/departamentos/novo/{id}', 'DepartamentoController@novo');
Route::post('/departamentos/novo/adiciona', 'DepartamentoController@adiciona');
Route::get('/departamentos', 'DepartamentoController@lista');
Route::resource('departamento-editar-formulario','DepartamentoController');
Route::get('/departamentos/encontrar/{id}', 'DepartamentoController@encontrar');
Route::post('/departamentos/alterar', 'DepartamentoController@alterar');
Route::get('/departamentos/remover/{id}', 'DepartamentoController@remover');


Route::resource('pi-formulario','PiController');
Route::get('/pis/{id}', 'PiController@mostra');
Route::get('/pis/novo/{id}', 'PiController@novo');
Route::get('/pis/encontrar/{id}', 'PiController@encontrar');
Route::post('/pis/novo/adiciona', 'PiController@adiciona');
Route::get('/pis', 'PiController@lista');
Route::post('/pis/alterar', 'PiController@alterar');
Route::get('/pis/remover/{id}', 'PiController@remover');
Route::get('/pis/imprimir/{id}', 'PiController@imprimir');

Route::resource('objetivo-formulario','PiController');
Route::get('/pis/objetivo/{id}', 'PiController@objetivo');
Route::post('/pis/objetivo/adiciona', 'PiController@adiciona_objetivo');
Route::resource('objeto-alterar-formulario','PiController');
Route::get('/pis/objetivo/encontrar/{id}', 'PiController@encontrar_objetivo');
Route::post('/pis/objetivo/encontrar/alterar', 'PiController@alterar_objetivo');

Route::resource('aplicacao-formulario','PiController');
Route::get('/pis/aplicacao/{id}', 'PiController@aplicacao');
Route::post('/pis/aplicacao/adiciona', 'PiController@adiciona_aplicacao');
Route::resource('aplicacao-alterar-formulario','PiController');
Route::get('/pis/aplicacao/encontrar/{id}', 'PiController@encontrar_aplicacao');
Route::post('/pis/aplicacao/encontrar/alterar', 'PiController@alterar_aplicacao');

Route::resource('definicao-formulario','PiController');
Route::get('/pis/definicao/{id}', 'PiController@definicao');
Route::post('/pis/definicao/adiciona', 'PiController@adiciona_definicao');
Route::resource('definicao-alterar-formulario','PiController');
Route::get('/pis/definicao/encontrar/{id}', 'PiController@encontrar_definicao');
Route::post('/pis/definicao/encontrar/alterar', 'PiController@alterar_definicao');

Route::resource('informacao-formulario','PiController');
Route::get('/pis/informacao/{id}', 'PiController@informacao');
Route::post('/pis/informacao/adiciona', 'PiController@adiciona_informacao');
Route::resource('informacao-alterar-formulario','PiController');
Route::get('/pis/informacao/encontrar/{id}', 'PiController@encontrar_informacao');
Route::post('/pis/informacao/encontrar/alterar', 'PiController@alterar_informacao');

Route::resource('macroprocesso-formulario','MacroController');
Route::get('/pis/macroprocesso/{id}', 'MacroController@macroprocesso');
Route::post('/pis/macroprocesso/adiciona', 'MacroController@adiciona_macroprocesso');
Route::get('/pis/macroprocessos/{id}', 'MacroController@mostra');
Route::resource('stakeholder-macro-formulario','MacroController');
Route::get('/pis/macroprocessos/stakeholder/{id}', 'MacroController@stakeholder');
Route::post('/pis/macroprocessos/stakeholder/adiciona', 'MacroController@adiciona_stakeholder');
Route::get('/pis/macroprocessos/remover/{id}', 'MacroController@remover');

Route::resource('subprocesso-formulario','SubController');
Route::get('/pis/subprocesso/{id}', 'SubController@subprocesso');
Route::post('/pis/subprocesso/adiciona', 'SubController@adiciona_subprocesso');
Route::get('/pis/subprocessos/{id}', 'SubController@mostra');
Route::resource('stakeholder-sub-formulario','SubController');
Route::get('/pis/subprocessos/stakeholder/{id}', 'SubController@stakeholder');
Route::post('/pis/subprocessos/stakeholder/adiciona', 'SubController@adiciona_stakeholder');
Route::get('/pis/subprocessos/remover/{id}', 'SubController@remover');


Route::resource('microprocesso-formulario','MicroController');
Route::get('/pis/microprocesso/{id}', 'MicroController@microprocesso');
Route::post('/pis/microprocesso/adiciona', 'MicroController@adiciona_microprocesso');
Route::get('/pis/microprocessos/{id}', 'MicroController@mostra');
Route::resource('stakeholder-micro-formulario','MicroController');
Route::get('/pis/microprocessos/stakeholder/{id}', 'MicroController@stakeholder');
Route::post('/pis/microprocessos/stakeholder/{id}', 'MicroController@adiciona_stakeholder');
Route::get('/pis/microprocessos/remover/{id}', 'MicroController@remover');



?>
