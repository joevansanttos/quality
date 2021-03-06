<?php

Auth::routes();

Route::get('/', 'HomeController@index');
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
Route::post('/users/encontrar/alterar', 'UserController@alterar');
Route::get('/users/remover/{id}', 'UserController@remover');
Route::get('/users/gestores', 'UserController@lista_gestores');


Route::get('/clientes', 'ClienteController@lista');
Route::get('/clientes/novo', 'ClienteController@novo');
Route::post('/clientes/adiciona', 'ClienteController@adiciona');
Route::post('/clientes/gestores', 'ClienteController@gestores');
Route::resource('cliente-editar-formulario','ClienteController');
Route::get('/clientes/encontrar/{id}', 'ClienteController@encontrar');
Route::get('/clientes/ver/{id}', 'ClienteController@ver');
Route::post('/clientes/alterar', 'ClienteController@alterar');
Route::get('/clientes/remover/{id}', 'ClienteController@remover');
Route::get('/clientes/ver/{id}', 'ClienteController@ver');

Route::get('/relatorios', 'ClienteController@lista_relatorios');
Route::get('/relatorios/ver/{id}', 'ClienteController@relatorio');
Route::get('/relatorios/imprime/{id}', 'ClienteController@imprime');



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
Route::get('/pis/mostra/{id}', 'PiController@mostra');
Route::get('/pis/novo/{id}', 'PiController@novo');
Route::get('/pis/encontrar/{id}', 'PiController@encontrar');
Route::post('/pis/novo/adiciona', 'PiController@adiciona');
Route::get('/pis/todos', 'PiController@lista_todos');
Route::get('/pis/inicial', 'PiController@lista_inicial');
Route::get('/pis/andamento', 'PiController@lista_andamento');
Route::get('/pis/finalizado', 'PiController@lista_finalizado');
Route::post('/pis/encontrar/alterar', 'PiController@alterar');
Route::get('/pis/remover/{id}', 'PiController@remover');
Route::get('/pis/ver/{id}', 'PiController@ver');
Route::get('/pis/imprimir/{id}', 'PiController@imprimir');


Route::resource('pi_objetivo_formulario','PiController');
Route::get('/pis/mostra/objetivo/{id}', 'PiController@objetivo');
Route::post('/pis/mostra/objetivo/adiciona', 'PiController@adiciona_objetivo');
Route::resource('pi_objeto_alterar_formulario','PiController');
Route::get('/pis/mostra/objetivo/encontrar/{id}', 'PiController@encontrar_objetivo');
Route::post('/pis/mostra/objetivo/encontrar/alterar', 'PiController@alterar_objetivo');

Route::resource('pi_aplicacao_formulario','PiController');
Route::get('/pis/mostra/aplicacao/{id}', 'PiController@aplicacao');
Route::post('/pis/mostra/aplicacao/adiciona', 'PiController@adiciona_aplicacao');
Route::resource('pi_aplicacao_alterar_formulario','PiController');
Route::get('/pis/mostra/aplicacao/encontrar/{id}', 'PiController@encontrar_aplicacao');
Route::post('/pis/mostra/aplicacao/encontrar/alterar', 'PiController@alterar_aplicacao');

Route::resource('pi_definicao_formulario','PiController');
Route::get('/pis/mostra/definicao/{id}', 'PiController@definicao');
Route::post('/pis/mostra/definicao/adiciona', 'PiController@adiciona_definicao');
Route::resource('pi_definicao_alterar_formulario','PiController');
Route::get('/pis/mostra/definicao/encontrar/{id}', 'PiController@encontrar_definicao');
Route::post('/pis/mostra/definicao/encontrar/alterar', 'PiController@alterar_definicao');

Route::resource('pi_informacao_formulario','PiController');
Route::get('/pis/mostra/informacao/{id}', 'PiController@informacao');
Route::post('/pis/mostra/informacao/adiciona', 'PiController@adiciona_informacao');
Route::resource('pi_informacao_alterar_formulario','PiController');
Route::get('/pis/mostra/informacao/encontrar/{id}', 'PiController@encontrar_informacao');
Route::post('/pis/mostra/informacao/encontrar/alterar', 'PiController@alterar_informacao');

Route::resource('pi_macroprocesso_formulario','MacroController');
Route::get('/pis/mostra/macroprocesso/{id}', 'MacroController@macroprocesso');
Route::post('/pis/mostra/macroprocesso/adiciona', 'MacroController@adiciona_macroprocesso');
Route::get('/pis/mostra/macroprocessos/{id}', 'MacroController@mostra');
Route::resource('pi_stakeholder_macro_formulario','MacroController');
Route::get('/pis/mostra/macroprocessos/stakeholder/{id}', 'MacroController@stakeholder');
Route::post('/pis/mostra/macroprocessos/stakeholder/adiciona', 'MacroController@adiciona_stakeholder');
Route::get('/pis/mostra/macroprocessos/remover/{id}', 'MacroController@remover');
Route::resource('pi_macro_editar_formulario','MacroController');
Route::get('/pis/mostra/macroprocessos/encontrar/{id}', 'MacroController@encontrar');
Route::post('/pis/mostra/macroprocessos/encontrar/alterar', 'MacroController@alterar');

Route::resource('pi_subprocesso_formulario','SubController');
Route::get('/pis/mostra/subprocesso/{id}', 'SubController@subprocesso');
Route::post('/pis/mostra/subprocesso/adiciona', 'SubController@adiciona_subprocesso');
Route::get('/pis/mostra/subprocessos/{id}', 'SubController@mostra');
Route::resource('pi_stakeholder_sub_formulario','SubController');
Route::get('/pis/mostra/subprocessos/stakeholder/{id}', 'SubController@stakeholder');
Route::post('/pis/mostra/subprocessos/stakeholder/adiciona', 'SubController@adiciona_stakeholder');
Route::get('/pis/mostra/subprocessos/remover/{id}', 'SubController@remover');
Route::resource('pi_sub_editar_formulario','SubController');
Route::get('/pis/mostra/subprocessos/encontrar/{id}', 'SubController@encontrar');
Route::post('/pis/mostra/subprocessos/encontrar/alterar', 'SubController@alterar');



Route::resource('pi_microprocesso_formulario','MicroController');
Route::get('/pis/mostra/microprocesso/{id}', 'MicroController@microprocesso');
Route::post('/pis/mostra/microprocesso/adiciona', 'MicroController@adiciona_microprocesso');
Route::get('/pis/mostra/microprocessos/{id}', 'MicroController@mostra');
Route::resource('pi_stakeholder_micro_formulario','MicroController');
Route::get('/pis/mostra/microprocessos/stakeholder/{id}', 'MicroController@stakeholder');
Route::post('/pis/mostra/microprocessos/stakeholder/{id}', 'MicroController@adiciona_stakeholder');
Route::get('/pis/mostra/microprocessos/remover/{id}', 'MicroController@remover');
Route::resource('pi_micro_editar_formulario','MicroController');
Route::get('/pis/mostra/microprocessos/encontrar/{id}', 'MicroController@encontrar');
Route::post('/pis/mostra/microprocessos/encontrar/alterar', 'MicroController@alterar');

Route::get('/auditorias', 'AuditoriaController@lista');
Route::get('/auditorias/todos', 'AuditoriaController@lista_todos');
Route::get('/auditorias/inicial', 'AuditoriaController@lista_inicial');
Route::get('/auditorias/andamento', 'AuditoriaController@lista_andamento');
Route::get('/auditorias/finalizado', 'AuditoriaController@lista_finalizado');
Route::get('/auditorias/novo', 'AuditoriaController@novo');
Route::get('/auditorias/{id}', 'AuditoriaController@mostra');
Route::post('/auditorias/adiciona', 'AuditoriaController@adiciona');
Route::get('/auditorias/encontrar/{id}', 'AuditoriaController@encontrar');
Route::post('/auditorias/encontrar/alterar', 'AuditoriaController@alterar');
Route::get('/auditorias/naoconformidades/{id}', 'AuditoriaController@naoconformidades');
Route::get('/auditorias/naoconformidades/encontrar/{id}', 'AuditoriaController@encontrar_naoconformidade');
Route::post('/auditorias/naoconformidades/encontrar/alterar', 'AuditoriaController@alterar_naoconformidade');
Route::get('/auditorias/imprimir/{id}', 'AuditoriaController@imprimir');
Route::get('/auditorias/gestores/{id}', 'AuditoriaController@gestores');
Route::post('/auditorias/gestores/adiciona', 'AuditoriaController@adiciona_gestor');


Route::get('/auditorias/{id}/gerais/contato/novo', 'AuditoriaGeraisController@novo_contato');
Route::post('/auditorias/{id}/gerais/contato/adiciona', 'AuditoriaGeraisController@adiciona_contato');
Route::get('/auditorias/{id}/gerais/contato/encontrar', 'AuditoriaGeraisController@encontrar_contato');
Route::post('/auditorias/{id}/gerais/contato/alterar', 'AuditoriaGeraisController@alterar_contato');

Route::get('/auditorias/{id}/informacoes/norma/novo', 'AuditoriaInformacaoController@nova_norma');
Route::post('/auditorias/{id}/informacoes/norma/adiciona', 'AuditoriaInformacaoController@adiciona_norma');
Route::get('/auditorias/{id}/informacoes/norma/encontrar', 'AuditoriaInformacaoController@encontrar_norma');
Route::post('/auditorias/{id}/informacoes/norma/alterar', 'AuditoriaInformacaoController@alterar_norma');
Route::get('/auditorias/{id}/informacoes/certificacao/novo', 'AuditoriaInformacaoController@informacoes_certificacao_novo');
Route::post('/auditorias/{id}/informacoes/certificacao/adiciona', 'AuditoriaInformacaoController@adiciona_certificacao');
Route::get('/auditorias/{id}/informacoes/certificacao/encontrar', 'AuditoriaInformacaoController@encontrar_certificacao');
Route::post('/auditorias/{id}/informacoes/certificacao/alterar', 'AuditoriaInformacaoController@alterar_certificacao');
Route::get('/auditorias/{id}/informacoes/auditorinfo/novo', 'AuditoriaInformacaoController@novo_auditorinfo');
Route::post('/auditorias/{id}/informacoes/auditorinfo/adiciona', 'AuditoriaInformacaoController@adiciona_auditorinfo');
Route::get('/auditorias/{id}/informacoes/auditorinfo/encontrar', 'AuditoriaInformacaoController@encontrar_auditorinfo');
Route::post('/auditorias/{id}/informacoes/auditorinfo/alterar', 'AuditoriaInformacaoController@alterar_auditorinfo');
Route::get('/auditorias/{id}/informacoes/escopo/novo', 'AuditoriaInformacaoController@novo_escopo');
Route::post('/auditorias/{id}/informacoes/escopo/adiciona', 'AuditoriaInformacaoController@adiciona_escopo');
Route::get('/auditorias/{id}/informacoes/plano/novo', 'AuditoriaInformacaoController@novo_plano');
Route::post('/auditorias/{id}/informacoes/plano/adiciona', 'AuditoriaInformacaoController@adiciona_plano');
Route::get('/auditorias/{id}/informacoes/plano/encontrar', 'AuditoriaInformacaoController@encontrar_plano');
Route::post('/auditorias/{id}/informacoes/plano/alterar', 'AuditoriaInformacaoController@alterar_plano');

Route::get('/auditorias/{id}/processo/notas/novo', 'AuditoriaProcessoController@novas_notas');
Route::post('/auditorias/{id}/processo/notas/adiciona', 'AuditoriaProcessoController@adiciona_notas');
Route::get('/auditorias/{id}/processo/notas/encontrar', 'AuditoriaProcessoController@encontrar_nota');
Route::post('/auditorias/{id}/processo/notas/alterar', 'AuditoriaProcessoController@alterar_nota');
Route::get('/auditorias/{id}/processo/revisao/novo', 'AuditoriaProcessoController@nova_revisao');
Route::post('/auditorias/{id}/processo/revisao/adiciona', 'AuditoriaProcessoController@adiciona_revisao');
Route::get('/auditorias/{id}/processo/revisao/encontrar', 'AuditoriaProcessoController@encontrar_revisao');
Route::post('/auditorias/{id}/processo/revisao/alterar', 'AuditoriaProcessoController@alterar_revisao');
Route::get('/auditorias/{id}/processo/departamento/novo', 'AuditoriaProcessoController@novo_departamento');
Route::post('/auditorias/{id}/processo/departamento/adiciona', 'AuditoriaProcessoController@adiciona_departamento');
Route::get('/auditorias/{id}/processo/clausula/novo', 'AuditoriaProcessoController@nova_clausula');
Route::post('/auditorias/{id}/processo/clausula/adiciona', 'AuditoriaProcessoController@adiciona_clausula');
Route::get('/auditorias/{id}/processo/departamentoclausula/novo', 'AuditoriaProcessoController@novo_departamentoclausula');
Route::post('/auditorias/{id}/processo/departamentoclausula/adiciona', 'AuditoriaProcessoController@adiciona_departamentoclausula');
Route::get('/auditorias/{id}/processo/detalhenaoconformidade/novo', 'AuditoriaProcessoController@novo_detalhenaoconformidade');
Route::post('/auditorias/{id}/processo/detalhenaoconformidade/adiciona', 'AuditoriaProcessoController@adiciona_detalhenaoconformidade');
Route::get('/auditorias/{id}/processo/detalhenaoconformidade/encontrar', 'AuditoriaProcessoController@encontrar_detalhenaoconformidade');
Route::post('/auditorias/{id}/processo/detalhenaoconformidade/alterar', 'AuditoriaProcessoController@alterar_detalhenaoconformidade');
Route::get('/auditorias/{id}/processo/naoconformidade/novo', 'AuditoriaProcessoController@nova_naoconformidade');
Route::post('/auditorias/{id}/processo/naoconformidade/adiciona', 'AuditoriaProcessoController@adiciona_naoconformidade');
Route::get('/auditorias/{id}/processo/naoconformidade/encontrar', 'AuditoriaProcessoController@encontrar_naoconformidade');
Route::post('/auditorias/{id}/processo/naoconformidade/alterar', 'AuditoriaProcessoController@alterar_naoconformidade');

Route::get('/auditorias/{id}/desempenho/relatorio/novo', 'AuditoriaDesempenhoController@novo_relatorio');
Route::post('/auditorias/{id}/desempenho/relatorio/adiciona', 'AuditoriaDesempenhoController@adiciona_relatorio');

Route::get('/auditorias/{id}/sumario/conclusoes/novo', 'AuditoriaSumarioController@novas_conclusoes');
Route::post('/auditorias/{id}/sumario/conclusoes/adiciona', 'AuditoriaSumarioController@adiciona_conclusoes');
Route::get('/auditorias/{id}/sumario/conclusoes/encontrar', 'AuditoriaSumarioController@encontrar_conclusoes');
Route::post('/auditorias/{id}/sumario/conclusoes/alterar', 'AuditoriaSumarioController@alterar_conclusoes');
Route::get('/auditorias/{id}/sumario/sumarionc/novo', 'AuditoriaSumarioController@novo_sumarionc');
Route::post('/auditorias/{id}/sumario/sumarionc/adiciona', 'AuditoriaSumarioController@adiciona_sumarionc');
Route::get('/auditorias/{id}/sumario/sumarionc/encontrar', 'AuditoriaSumarioController@encontrar_sumarionc');
Route::post('/auditorias/{id}/sumario/sumarionc/alterar', 'AuditoriaSumarioController@alterar_sumarionc');
Route::get('/auditorias/{id}/sumario/eficacia/novo', 'AuditoriaSumarioController@nova_eficacia');
Route::post('/auditorias/{id}/sumario/eficacia/adiciona', 'AuditoriaSumarioController@adiciona_eficacia');
Route::get('/auditorias/{id}/sumario/eficacia/encontrar', 'AuditoriaSumarioController@encontrar_eficacia');
Route::post('/auditorias/{id}/sumario/eficacia/alterar', 'AuditoriaSumarioController@alterar_eficacia');
Route::get('/auditorias/{id}/sumario/observacoes/novo', 'AuditoriaSumarioController@novas_observacoes');
Route::post('/auditorias/{id}/sumario/observacoes/adiciona', 'AuditoriaSumarioController@adiciona_observacoes');
Route::get('/auditorias/{id}/sumario/observacoes/encontrar', 'AuditoriaSumarioController@encontrar_observacoes');
Route::post('/auditorias/{id}/sumario/observacoes/alterar', 'AuditoriaSumarioController@alterar_observacoes');

Route::get('/auditorias/{id}/recomendacoes/recomendacao/novo', 'AuditoriaRecomendacaoController@nova_recomendacao');
Route::post('/auditorias/{id}/recomendacoes/recomendacao/adiciona', 'AuditoriaRecomendacaoController@adiciona_recomendacao');
Route::get('/auditorias/{id}/recomendacoes/recomendacao/encontrar', 'AuditoriaRecomendacaoController@encontrar_recomendacao');
Route::post('/auditorias/{id}/recomendacoes/recomendacao/alterar', 'AuditoriaRecomendacaoController@alterar_recomendacao');

Route::get('/auditorias/{id}/programa/programa/novo', 'AuditoriaRecomendacaoController@novo_programa');
Route::post('/auditorias/{id}/programa/programa/adiciona', 'AuditoriaRecomendacaoController@adiciona_programa');

?>
