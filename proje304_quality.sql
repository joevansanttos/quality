-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 05-Dez-2017 às 13:38
-- Versão do servidor: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `proje304_quality`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacoes`
--

CREATE TABLE IF NOT EXISTS `aplicacoes` (
  `id` int(11) NOT NULL,
  `pi_id` int(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aplicacoes`
--

INSERT INTO `aplicacoes` (`id`, `pi_id`, `descricao`) VALUES
(2, 3, 'Aplica-se à área Comercial da PROJEK.'),
(5, 7, 'Aplica-se ao setor Financeiro da Gujão Alimentos.'),
(6, 9, 'Aplica-se ao departamento de Disciplina da Gevan.'),
(7, 10, 'Aplica-se ao departamento de Folha de pagamento da Gevan.'),
(8, 8, 'Aplica-se ao setor de Produção da Gujão Alimentos.'),
(9, 8, 'Aplica-se ao setor de Produção da Gujão Alimentos.'),
(10, 11, 'Aplica-se ao setor de Almoxarifado da Gujão Alimentos.'),
(11, 12, 'Aplica-se a área de Entrega da GUJÃO Alimentos.'),
(12, 13, 'Aplica-se ao setor de Compras da Gujão Alimentos.'),
(13, 14, 'Aplica-se ao setor Comercial da Gujão Alimentos.'),
(15, 16, 'Aplica-se ao setor de Armazenamento da Gujão Alimentos.'),
(16, 17, 'Aplica-se ao setor de Compras do Atacadão Bahia.'),
(17, 18, 'Aplica-se ao setor da Diretoria do Atacadão Bahia.'),
(18, 19, 'Aplica-se ao setor de Caixa do Atacadão Bahia.'),
(19, 20, 'Aplica-se ao setor de Televendas do Atacadão Bahia.'),
(20, 21, 'Aplica-se ao setor de Recepção do Atacadão Bahia.'),
(21, 22, 'Aplica-se ao setor Fiscal do Atacadão Bahia.'),
(22, 23, 'Aplica-se ao setor Financeiro do Atacadão Bahia.'),
(23, 24, 'Aplica-se ao setor Gerência do Atacadão Bahia.'),
(24, 25, 'Aplica-se ao setor Supervisor de Filial do Atacadão Bahia.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacoes`
--

CREATE TABLE IF NOT EXISTS `classificacoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classificacoes`
--

INSERT INTO `classificacoes` (`id`, `descricao`) VALUES
(1, 'Operação'),
(2, 'Gestão'),
(3, 'Suporte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `site` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `segmento` varchar(255) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `site`, `endereco`, `estado`, `cidade`, `tel`, `segmento`, `bairro`) VALUES
(2, 'PROJEK CONSULTORIA', 'www.projek.com.br', 'Parque Tecnológico da Bahia', 'BA', '2927408', '(71) 98841-9093', 'Serviços', 'Trobogy'),
(3, 'GUJÃO ALIMENTOS S/A', 'www.gujao.com.br', 'Rodovia BA 502, KM 27,8', 'BA', '2910800', '(75) 36224-196_', 'Abatedouro', 'Sede'),
(4, 'ATACADÃO BAHIA', 'www.atacadao.com.br', 'R. Barão de Mauá, 51C', 'BA', '2910800', '(75) 2101-0080', 'Atacado', 'Centro'),
(5, 'GRUPO GEVAN - PRAIA GRANDE', 'www.gevan.com.br', 'Av. Afrânio Peixoto, 901', 'BA', '2927408', '(71) 3521-1344', 'Transporte', 'Coutos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `definicoes`
--

CREATE TABLE IF NOT EXISTS `definicoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `definicoes`
--

INSERT INTO `definicoes` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'SQ: Sistema de Qualidade.\r\nCRM: Customer Relationship Management (Gerenciamento do relacionamento com o Cliente).'),
(3, '3', 'SQ: Sistema de Qualidade.\r\nCRM: Customer Relationship Management (Gerenciamento do relacionamento com o Cliente).'),
(6, '7', 'SQ: Sistema de Qualidade'),
(7, '9', 'ROV: Relatório Operacional de Veículo\r\nROF: Relatório Operacional de Funcionário'),
(8, '10', 'Carta de anuência: Uma carta que informa se o funcionário irá ou não receber adiantamento salarial e se sim, o valor do mesmo;\r\nRelação de Líquidos: Documento e que consta o valor do pagamento da Folha da competência;\r\nBM: Boletim de Medição\r\nINSS: Instituto Nacional do Seguro Social\r\nFGTS: Fundo de Garantia por Tempo de Serviço\r\nFPAS: Fundo da Previdência e Assistência Social\r\nGPS: Guia da Previdência Social\r\nSefip: Sistema Empresa de Recolhimento do FGTS e Informações à Previdência Social\r\nNF: Nota Fiscal\r\nLN: Empresa Litoral Norte\r\nVCI: Empresa Viação Cidade Industrial\r\nU1 e U3: Códigos do sistema para gerar retenção\r\nNFE: Nota Fiscal Eletrônica\r\nGRF: Guia de Recolhimento do FGTS\r\nCaged: Cadastro Geral de Empregados e Desempregados\r\nDARF: Documento de Arrecadação de Receitas Federais\r\nSicalc: Sistema de Cálculo (acréscimos legais)\r\nGRRF: Guia de Recolhimento Rescisório do FGTS\r\nASO: Atestado de Saúde Ocupacional Demissional'),
(9, '8', 'SQ: Sistema de Qualidade.\r\nFFO – Fábrica de Farinha e Óleo ou Fábrica de Subprodutos.\r\nShelf life – Validade do produto.\r\nPCP – Planejamento e Controle da Produção.'),
(10, '11', 'SQ: Sistema de Qualidade'),
(11, '12', 'SQ: Sistema de Qualidade.'),
(12, '13', 'SQ: Sistema de Qualidade'),
(13, '14', 'SQ: Sistema de Qualidade\r\nCliente andamento: Clientes em processo de encerramento/extinção de contrato.'),
(15, '16', 'SQ: Sistema de Qualidade\r\nFilme Termoencolhível: Tipo de plástico que encolhe em altas temperaturas.\r\nPallet: Várias caixas empilhadas dentro de um suporte de madeira.'),
(16, '17', 'SQ: Sistema de Qualidade'),
(17, '18', 'SQ: Sistema de Qualidade'),
(18, '19', 'SQ: Sistema de Qualidade'),
(19, '20', 'SQ: Sistema de Qualidade\r\nCRM: Customer Relationship Management (Gestão de Relacionamento do Cliente)'),
(20, '21', 'SQ: Sistema de Qualidade'),
(21, '22', 'SQ: Sistema de Qualidade\r\nCUMULATIVA: Que acumula com o passar do tempo.'),
(22, '23', 'SQ: Sistema de Qualidade'),
(23, '24', 'SQ: Sistema de Qualidade.'),
(24, '25', 'SQ: Sistema de Qualidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`id`, `cliente_id`, `nome`) VALUES
(3, 2, 'COMERCIAL'),
(6, 3, 'FINANCEIRO'),
(7, 3, 'PRODUÇÃO'),
(8, 5, 'DISCIPLINA'),
(9, 5, 'FOLHA DE PAGAMENTO'),
(11, 3, 'ALMOXARIFADO'),
(12, 3, 'ENTREGA'),
(13, 3, 'COMPRAS'),
(14, 3, 'COMERCIAL'),
(15, 3, 'ARMAZENAMENTO'),
(16, 4, 'COMPRAS'),
(17, 4, 'DIRETORIA'),
(18, 4, 'CAIXA'),
(19, 4, 'TELEVENDAS'),
(20, 4, 'RECEPÇÃO'),
(21, 4, 'FISCAL'),
(22, 4, 'FINANCEIRO'),
(23, 4, 'GERÊNCIA'),
(24, 4, 'SUPERVISÃO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_dep`
--

CREATE TABLE IF NOT EXISTS `gestor_dep` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento_id` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_dep`
--

INSERT INTO `gestor_dep` (`id`, `responsavel`, `email`, `cargo`, `departamento_id`, `telefone`) VALUES
(1, 'Fábio Martins', 'fabio.martins@projek.com.br', 'Diretor', '1', '(71) 98841-9093'),
(2, 'Fábio Martins', 'fabio.martins@projek.com.br', 'Diretor', '2', '(71) 98841-9093'),
(3, 'Fábio Martins', 'fabio.martins@projek.com.br', 'Diretor', '3', '(71) 98841-9093'),
(4, 'Uilson Costa', 'seminformacao@projek.com.br', 'Sem informação', '4', '(99) 99999-9999'),
(5, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', 'Sem informação', '5', '(99) 99999-9999'),
(6, 'Aldenice Ferreira', 'aldenice@gujao.com.br', 'Financeiro', '6', '(75) 36224-812_'),
(7, 'Joyce Fernandes', 'joyce@gujao.com.br', 'Coordenação', '7', '(75) 99894-0995'),
(8, 'Alexsandro Souza', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', '8', '(71) 98201-2068'),
(9, 'Fábio Dias', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', '9', '(71) 98202-0397'),
(10, 'Sem informação', 'seminformacao@projek.com.br', 'Sem informação', '10', '(99) 99999-9999'),
(11, 'Uilson Costa', 'seminformacao@projek.com.br', 'Sem informação', '11', '(99) 99999-9999'),
(12, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', 'Diretoria', '12', '(99) 99999-9999'),
(13, 'Rodrigo Vinhas', 'seminformacao@projek.com.br', 'Compras', '13', '(99) 99999-9999'),
(14, 'Dario M. De Oliveira Neto II', 'darioneto@gujao.com', 'Diretoria', '14', '(99) 99999-9999'),
(15, 'Joyce Fernandes', 'joyce@gujao.com.br', 'Armazenamento', '15', '(75) 99894-0995'),
(16, 'Elizabete Carneiro', 'seminformacao@projek.com.br', 'Compras', '16', '(99) 99999-9999'),
(17, 'Rafael Boaventura', 'seminformacao@projek.com.br', 'Diretoria', '17', '(99) 99999-9999'),
(18, 'Geisiane', 'seminformacao@projek.com.br', 'Coordenadora', '18', '(99) 99999-9999'),
(19, 'Priscila Cabral', 'seminformacao@projek.com.br', 'Coordenadora', '19', '(99) 99999-9999'),
(20, 'Ronilda Almeida', 'seminformacao@projek.com.br', 'Coordenadora', '20', '(99) 99999-9999'),
(21, 'Joseane dos Reis', 'seminformacao@projek.com.br', 'Fiscal', '21', '(99) 99999-9999'),
(22, 'Leidayane Souza', 'seminformacao@projek.com.br', 'Financeiro', '22', '(99) 99999-9999'),
(23, 'Eliseu Araújo', 'seminformacao@projek.com.br', 'Gerente', '23', '(99) 99999-9999'),
(24, 'Odair José', 'seminformacao@projek.com.br', 'Supervisor de Filial', '24', '(99) 99999-9999');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_macro`
--

CREATE TABLE IF NOT EXISTS `gestor_macro` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `macroprocesso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_macro`
--

INSERT INTO `gestor_macro` (`id`, `nome`, `tel`, `email`, `cargo`, `macroprocesso_id`) VALUES
(13, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 13),
(15, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 15),
(16, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 16),
(17, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 17),
(18, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 18),
(20, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 20),
(22, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 22),
(23, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 23),
(24, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 24),
(25, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 25),
(26, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 26),
(27, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 27),
(28, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 28),
(29, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 29),
(30, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 30),
(31, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 31),
(32, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 32),
(33, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 33),
(34, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 34),
(35, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 35),
(36, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 36),
(37, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 37),
(38, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 38),
(39, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 39),
(40, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 40),
(41, 'Alexsandro Souza', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 41),
(42, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 42),
(44, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 44),
(45, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 45),
(46, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 46),
(47, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 47),
(48, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 48),
(49, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 49),
(50, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 50),
(51, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 51),
(52, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 52),
(53, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 53),
(54, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 54),
(55, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 55),
(56, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 56),
(57, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 57),
(58, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 58),
(59, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 59),
(60, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Sem informação', 60),
(61, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Sem informação', 61),
(62, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Sem informação', 62),
(63, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Sem informação', 63),
(64, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Almoxarifado', 64),
(65, 'Uilson Costa', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Almoxarifado', 65),
(66, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 66),
(67, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 67),
(68, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 68),
(69, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 69),
(71, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 71),
(72, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Coordenadora', 72),
(73, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 73),
(74, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 74),
(75, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 75),
(76, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 76),
(77, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 77),
(78, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 78),
(79, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 79),
(80, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 80),
(81, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 81),
(82, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 82),
(86, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 86),
(87, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 87),
(88, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 88),
(89, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 89),
(90, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 90),
(91, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 91),
(92, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 92),
(93, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 93),
(94, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 94),
(95, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 95),
(96, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 96),
(97, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 97),
(98, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 98),
(99, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 99),
(100, 'Rodrigo Vinhas', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gestor de Suprimentos', 100),
(101, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 101),
(102, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 102),
(103, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 103),
(107, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Armazenamento', 107),
(109, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Armazenamento', 109),
(110, 'Joyce Fernandes', '(75) 99894-0995', 'joyce@gujao.com.br', 'Armazenamento', 110),
(111, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 111),
(112, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 112),
(113, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Comercial', 113),
(114, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 114),
(115, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 115),
(116, 'Dário M. de Oliveira Neto II', '(99) 99999-9999', 'darioneto@gujao.com', 'Diretoria', 116),
(117, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 117),
(118, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 118),
(119, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 119),
(120, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 120),
(121, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 121),
(122, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 122),
(123, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 123),
(124, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 124),
(125, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 125),
(126, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Comercial', 126),
(127, 'Elizabete Carneiro', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Compras', 127),
(128, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 128),
(129, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 129),
(130, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 130),
(131, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 131),
(132, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 132),
(133, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 133),
(134, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 134),
(135, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Diretoria', 135),
(136, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 136),
(137, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 137),
(138, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 138),
(139, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 139),
(140, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 140),
(141, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 141),
(142, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 142),
(143, 'Geisiane', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Caixa', 143),
(144, 'Priscila Cabral', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 144),
(145, 'Priscila Cabral', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 145),
(146, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 146),
(147, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 147),
(148, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 148),
(149, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 149),
(150, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 150),
(151, 'Ronilda Almeida', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 151),
(152, 'Rafael Boaventura', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Coordenadora', 152),
(154, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 154),
(155, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 155),
(156, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 156),
(157, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 157),
(158, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 158),
(159, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 159),
(160, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 160),
(161, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 161),
(162, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 162),
(163, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 163),
(164, 'Joseane dos Reis', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Fiscal', 164),
(165, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 165),
(166, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 166),
(167, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 167),
(168, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 168),
(169, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 169),
(170, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 170),
(171, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 171),
(172, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 172),
(173, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 173),
(174, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 174),
(175, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 175),
(176, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 176),
(177, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 177),
(178, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 178),
(179, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 179),
(180, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 180),
(181, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 181),
(182, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 182),
(183, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 183),
(184, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 184),
(185, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 185),
(186, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 186),
(187, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 187),
(188, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 188),
(189, 'Leidayane Souza', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 189),
(190, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 190),
(191, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 191),
(192, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 192),
(193, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 193),
(194, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 194),
(195, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Financeiro', 195),
(196, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 196),
(197, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 197),
(198, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 198),
(199, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 199),
(200, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 200),
(201, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 201),
(202, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 202),
(203, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 203),
(204, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 204),
(205, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 205),
(206, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 206),
(207, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 207),
(208, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 208),
(209, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 209),
(210, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 210),
(211, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 211),
(212, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 212),
(213, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 213),
(214, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 214),
(215, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 215),
(216, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 216),
(217, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 217),
(218, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 218),
(219, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 219),
(220, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 220),
(221, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 221),
(222, 'Odair José', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Supervisor de Filial', 222),
(224, 'Eliseu Araújo', '(99) 99999-9999', 'seminformacao@projek.com.br', 'Gerente', 224);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_micro`
--

CREATE TABLE IF NOT EXISTS `gestor_micro` (
  `id` int(11) NOT NULL,
  `microprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_micro`
--

INSERT INTO `gestor_micro` (`id`, `microprocesso_id`, `nome`, `email`, `tel`, `cargo`) VALUES
(1, 1, 'Fábio Martins', 'fabio.martins@projek.com.br', '(71) 98841-9093', 'Diretor'),
(4, 4, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(5, 5, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(6, 6, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(7, 7, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(8, 8, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(9, 9, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(10, 10, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(11, 11, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(12, 12, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(13, 13, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(14, 14, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(15, 15, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(16, 16, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(17, 17, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(18, 18, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(19, 19, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(20, 20, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(21, 21, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(22, 22, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(23, 23, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(24, 24, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(25, 25, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(26, 26, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(27, 27, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(28, 28, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(29, 29, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(30, 30, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(31, 31, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(32, 32, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(33, 33, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(34, 34, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_sub`
--

CREATE TABLE IF NOT EXISTS `gestor_sub` (
  `id` int(11) NOT NULL,
  `subprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_sub`
--

INSERT INTO `gestor_sub` (`id`, `subprocesso_id`, `nome`, `email`, `tel`, `cargo`) VALUES
(1, 1, 'Fábio Martins', 'fabio.martins@projek.com.br', '(71) 98841-9093', 'Diretor'),
(3, 3, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Sem informação'),
(4, 4, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Sem informação'),
(5, 5, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Sem informação'),
(6, 6, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Sem informação'),
(7, 7, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Colaborador da área de embalagem secundária'),
(8, 8, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Colaborador do Setor de Instalações  Frigoríficas'),
(9, 9, 'Aldir Pereira e Joyce Fernandes', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Colaborador do Setor de Instalações  Frigoríficas'),
(10, 10, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(11, 11, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(12, 12, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(17, 17, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(18, 18, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(19, 19, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(20, 20, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(21, 21, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(22, 22, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(23, 23, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(24, 24, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(25, 25, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(26, 26, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(27, 27, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(28, 28, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(29, 29, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(30, 30, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(31, 31, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(32, 32, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(33, 33, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(34, 34, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(35, 35, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(36, 36, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(37, 37, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(38, 38, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(39, 39, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(40, 40, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(41, 41, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(42, 42, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(43, 43, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(44, 44, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(45, 45, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(46, 46, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(47, 47, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(48, 48, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(49, 49, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(50, 50, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(51, 51, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(52, 52, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(53, 53, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(54, 54, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(55, 55, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(56, 56, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(57, 57, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(58, 58, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(59, 59, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(60, 60, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(61, 61, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(62, 62, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(63, 63, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(64, 64, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(65, 65, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(66, 66, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(67, 67, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(68, 68, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(69, 69, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(70, 70, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(71, 71, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(72, 72, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(73, 73, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(74, 74, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(75, 75, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(76, 76, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(77, 77, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(78, 78, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(79, 79, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(80, 80, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(81, 81, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(82, 82, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(83, 83, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(84, 84, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(85, 85, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(86, 86, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(87, 87, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(88, 88, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(89, 89, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(90, 90, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(91, 91, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(92, 92, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(93, 93, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(94, 94, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(95, 95, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(96, 96, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(97, 97, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(98, 98, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(99, 99, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
(100, 100, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(101, 101, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(102, 102, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(103, 103, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(104, 104, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(105, 105, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(106, 106, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(107, 107, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(108, 108, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(109, 109, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Folha de Pagamento'),
(110, 110, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(111, 111, 'Aldenice Ferreira', 'aldenice@gujao.com.br', '(75) 3622-4812', 'Financeiro'),
(112, 112, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(113, 113, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(114, 114, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(115, 115, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(116, 116, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(117, 117, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(118, 118, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(119, 119, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(120, 120, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(121, 121, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(122, 122, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(123, 123, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(124, 124, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(125, 125, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(126, 126, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(127, 127, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(128, 128, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(129, 129, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(130, 130, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(131, 131, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(132, 132, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(133, 133, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(134, 134, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(135, 135, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(136, 136, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(137, 137, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(138, 138, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(139, 139, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(140, 140, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(141, 141, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(142, 142, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(143, 143, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(144, 144, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(145, 145, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(146, 146, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(147, 147, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(148, 148, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(149, 149, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(150, 150, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(151, 151, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(152, 152, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(153, 153, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(154, 154, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(155, 155, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(156, 156, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(157, 157, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(158, 158, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(159, 159, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(160, 160, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(161, 161, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(162, 162, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(163, 163, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(164, 164, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(165, 165, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(166, 166, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(167, 167, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(168, 168, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(169, 169, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(170, 170, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(171, 171, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(172, 172, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(173, 173, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(174, 174, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(175, 175, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(176, 176, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(177, 177, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(178, 178, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(179, 179, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(180, 180, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(181, 181, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(182, 182, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(183, 183, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(184, 184, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(185, 185, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(186, 186, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(187, 187, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(188, 188, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(189, 189, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(190, 190, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(191, 191, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(192, 192, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(193, 193, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(194, 194, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(195, 195, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(196, 196, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(197, 197, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(198, 198, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(199, 199, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(200, 200, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(201, 201, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(202, 202, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(203, 203, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(204, 204, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(205, 205, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(206, 206, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(207, 207, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(208, 208, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(209, 209, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(210, 210, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(211, 211, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(212, 212, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(213, 213, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(214, 214, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(215, 215, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(216, 216, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(217, 217, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(218, 218, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(219, 219, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(220, 220, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(221, 221, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(222, 222, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(223, 223, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(224, 224, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(225, 225, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(226, 226, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(227, 227, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(228, 228, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(229, 229, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(230, 230, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(231, 231, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(232, 232, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(233, 233, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(234, 234, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(235, 235, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(236, 236, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(237, 237, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(238, 238, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(239, 239, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(240, 240, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(241, 241, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(242, 242, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(243, 243, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(244, 244, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(245, 245, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(246, 246, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(247, 247, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(248, 248, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(249, 249, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(250, 250, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(251, 251, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(252, 252, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(253, 253, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(254, 254, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(255, 255, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(256, 256, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(257, 257, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(258, 258, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Coordenadora'),
(259, 259, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Diretoria'),
(260, 260, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(261, 261, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(262, 262, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(263, 263, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(264, 264, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(265, 265, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(266, 266, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(267, 267, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(268, 268, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(269, 269, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(270, 270, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(271, 271, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(272, 272, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(273, 273, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(274, 274, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(275, 275, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(276, 276, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(277, 277, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(278, 278, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Produção'),
(279, 279, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(280, 280, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(281, 281, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(282, 282, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(283, 283, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(284, 284, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(285, 285, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(286, 286, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(287, 287, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(288, 288, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(289, 289, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(290, 290, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(291, 291, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(292, 292, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(293, 293, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(294, 294, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(295, 295, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(296, 296, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(297, 297, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(298, 298, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(299, 299, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(300, 300, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(301, 301, 'Joyce Fernandes', 'joyce@gujao.com.br', '(75) 99894-0995', 'Armazenamento'),
(303, 303, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(304, 304, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(305, 305, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(306, 306, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(307, 307, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(308, 308, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(309, 309, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(310, 310, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(311, 311, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(312, 312, 'Dário M. de Oliveira Neto II', 'darioneto@gujao.com', '(99) 99999-9999', 'Comercial'),
(313, 313, 'Elizabete Carneiro', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Compras'),
(314, 314, 'Elizabete Carneiro', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Compras'),
(315, 315, 'Priscila Cabral', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Coordenadora'),
(316, 316, 'Priscila Cabral', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Coordenadora'),
(317, 317, 'Priscila Cabral', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Coordenadora'),
(318, 318, 'Eliseu Araújo', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Gerente'),
(319, 319, 'Eliseu Araújo', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Gerente'),
(320, 320, 'Eliseu Araújo', 'seminformacao@projek.com.br', '(99) 99999-9999', 'Gerente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE IF NOT EXISTS `informacoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'São rotinas destinadas ao correto controle e registros referentes ao processo que engloba o comercial desde o fechamento do contrato até o seu encerramento/rescisão, envolvendo os procedimentos comerciais e financeiros que fazem parte desse processo, tais como: o fechamento de contrato, atualizações cadastrais, faturamento e recebimento dos serviços/cobrança, assim como o encerramento/extinção dos mesmos.'),
(3, '3', 'São rotinas destinadas ao correto controle e registros referentes ao processo que engloba o comercial desde o fechamento do contrato até o seu encerramento/rescisão, envolvendo os procedimentos comerciais e financeiros que fazem parte desse processo, tais como: o fechamento de contrato, atualizações cadastrais, faturamento e recebimento dos serviços/cobrança, assim como o encerramento/extinção dos mesmos.'),
(6, '7', 'O Procedimento Interno, do departamento Financeiro da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(7, '9', 'O Procedimento Interno, do departamento de Disciplina é destinado a fazer a disciplina com os colaboradores quando necessário.'),
(8, '10', 'O Procedimento Interno, do departamento de Folha de Pagamento da Gevan, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações. O procedimento de pagamento de salário é dividido em quinzenas, 40% (adiantamento salarial) até o dia 15 e 60% até o dia 1o de cada mês.'),
(9, '8', 'O Procedimento Interno, do departamento de Produção da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(10, '11', 'O Procedimento Interno, do departamento de Almoxarifado da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(11, '12', 'São rotinas destinadas ao correto controle e registros referentes ao processo que engloba as áreas de Entrega, Expedição e Financeiro.'),
(12, '13', 'O Procedimento Interno, do departamento de Compras da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(13, '14', 'O Procedimento Interno, do departamento Comercial da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(15, '16', 'O Procedimento Interno, do departamento de Armazenamento da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(16, '17', 'O Procedimento Interno, do departamento de Compras do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(17, '18', 'O Procedimento Interno, do setor de Diretoria do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(18, '19', 'O Procedimento Interno, do departamento de Caixa do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(19, '20', 'O Procedimento Interno, do departamento de Televendas do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(20, '21', 'O Procedimento Interno, do setor de Recepção do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(21, '22', 'O Procedimento Interno, do setor Fiscal do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(22, '23', 'O Procedimento Interno, do departamento Financeiro do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(23, '24', 'O Procedimento Interno, de Gerência do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(24, '25', 'O Procedimento Interno, do Supervisor de Filial do Atacadão Bahia, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `macroprocessos`
--

CREATE TABLE IF NOT EXISTS `macroprocessos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) NOT NULL,
  `data_ultima` varchar(25) DEFAULT NULL,
  `data_proxima` varchar(25) DEFAULT NULL,
  `classificacao_id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `numero` int(10) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `descricao` varchar(5000) DEFAULT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `macroprocessos`
--

INSERT INTO `macroprocessos` (`id`, `pi_id`, `data_ultima`, `data_proxima`, `classificacao_id`, `titulo`, `numero`, `pessoas`, `periodicidade_id`, `horas`, `descricao`, `maturidade_id`) VALUES
(13, '7', NULL, NULL, 1, 'Receber cadastro do cliente', 1, 1, 1, 1, 'O cadastro é analisado e aprovado pelo setor Financeiro. O recebimento é feito pelos representantes externos (responsáveis pela prospecção dos clientes) e vendedores internos onde os cadastros e as documentações são separados. Esses cadastros são de responsabilidade do setor Comercial.', 1),
(15, '7', NULL, NULL, 1, 'Fazer uma análise de crédito (SERASA)', 2, 1, 1, 1, 'Utilizada por empresas de qualquer porte ou segmento para analisar as condições de crédito de cada cliente – pessoa física ou jurídica – com a profundidade necessária, de acordo com o valor da operação e o grau de risco envolvido, por meio de políticas de crédito totalmente parametrizáveis, padronizando e agilizando a tomada de decisão na concessão da operação. Essa análise de crédito é retirada para saber se o cliente pode receber o crédito, para efetuar as compras.', 1),
(16, '7', NULL, NULL, 1, 'Cadastrar o cliente no sistema com limite e prazo de compra', 3, 1, 1, 1, 'Cadastro de cliente no sistema informado limite e prazo de compra.', 1),
(17, '7', NULL, NULL, 1, 'Receber os pedidos', 4, 1, 1, 1, 'Os pedidos são enviados pelos representantes comerciais, o setor\r\nfinanceiro analisa e libera se o pedido pode ser efetuado ou não.\r\nTudo se inicia na preparação de pedidos, etapa que engloba atividades relacionadas à coleta das informações necessárias sobre os produtos e serviços prestados pela organização. Atualmente, com o avanço da informática, essa etapa vem passando por mudanças que facilitam sua prática como o escaneamento por código de barras, que faz com que determinado produto seja encontrado facilmente nos sistemas de armazenagem, onde estão guardados.\r\nOs pedidos são enviados pelos setores comercial e vendas.', 1),
(18, '7', NULL, NULL, 1, 'Avaliar os pedidos', 5, 1, 1, 1, 'Os pedidos são avaliados, caso haja bloqueio no preço, só o Comercial pode fazer uma avaliação e assim poder liberar ou fazer acordos; quando o limite de compra do cliente é excedido, pode haver então um aumento desse limite, onde para isso, é feito uma análise financeira do cliente; em relação ao atraso, quando há problemas no pagamento, basta o cliente enviar o comprovante de que foi realizado o pagamento, já estará liberado.', 1),
(20, '7', NULL, NULL, 1, 'Liberar pedidos', 6, 1, 1, 1, 'Os pedidos até R$8.000,00 são autorizados pelo setor Financeiro, pedidos acima de R$8.000,00 é feito a autorização pelo setor Financeiro junto ao setor Comercial e os pedidos a partir de R$30.000,00 só são autorizados pela diretoria. \r\nOs pedidos estando em conforme, é feito a liberação para a montagem de cargas.', 1),
(22, '7', NULL, NULL, 1, 'Preencher os cheques', 7, 1, 1, 1, 'Os cheques são preenchidos pelo assistente do financeiro, com seus devidos valores, destinatários, datas.\r\n\r\nEnviar para assinatura\r\nTodos os cheques devem ser enviados para a diretoria, para serem assinados, para ser feito o pagamento.\r\n\r\nRealizar o pagamento \r\nOs cheques são checados e se estiverem todos oks, são realizados os pagamentos, e enviado ao banco, o banco devolve os comprovantes de pagamento.\r\n\r\nAs notas que tiverem mais de um pagamento são arquivadas para o mês  seguinte\r\nQuando é feito o pagamento de uma nota, e ocorre que existem outros pagamentos a serem efetuados nessa mesma nota, irá ser realizado o pagamento da nota atual, as outras notas restantes, serão arquivadas e serão pagas nos meses decorrentes para que no mês seguinte seja efetuado.\r\n\r\nFazer a programação de pagamento (2 dias de antecedência)\r\nFeito a separação das notas por vencimento, é realizado uma programação para o pagamento, sendo essa programação efetuada com 2 dias de antecedência do pagamento, e efetuado o pagamento na data correta.\r\n\r\nColocar na pasta até a data do pagamento\r\nAs notas serão colocadas na pasta até sua data de devido pagamento.\r\n\r\nTirar uma cópia de todos os comprovantes\r\nDeve-se retirar uma cópia de todos os comprovantes, para que sejam enviados a contabilidade.\r\n\r\nAnexar os comprovantes nas notas\r\nOs comprovantes serão colocados juntos as suas respectivas notas.\r\n\r\nEnviar os comprovantes e notas para a contabilidade\r\nOs comprovantes e as notas são enviados a contabilidade para ser realizado a baixa.', 1),
(23, '7', NULL, NULL, 1, 'Conferir o malote para efetuar os  pagamentos', 8, 1, 1, 1, 'Estando ok, é dado as baixas nos documentos que são enviados para a contabilidade. Havendo algum problema, tanto sendo em cheque ou dinheiro o banco faz um aviso, explicando o valor que será depositado novamente na conta da GUJÃO e o documento com problema só poderá ser dado a baixa no dia seguinte depois de ser resolvido.', 1),
(24, '7', NULL, NULL, 1, 'Enviar malote para o banco', 9, 1, 1, 1, 'É feita a programação dos pagamentos do dia, onde é repassado para a diretoria para que ocorra as assinaturas dos cheques. Feito isso os cheques retornam para o Financeiro e são enviados ao banco.', 1),
(25, '9', NULL, NULL, 1, 'Fazer informe', 2, 1, 1, 1, 'Após ocorrência de acidentes, vandalismo ou problemas com passageiros é necessário que o operador faça o informe do que aconteceu na ocorrência. O nome do documento do informe é “Informe de acidente”. Quando o operador faz o informe na rua: é solicitado do supervisor de acidente que o operador relate no informe: a velocidade, se o carro estava com defeito mecânico, se houve vítima, o horário da ocorrência, o local, a culpabilidade dele na ocorrência, identifique testemunhas da ocorrência e é feito o croqui. Quando o operador não faz o informe no momento da ocorrência ele é convocado pelo setor de disciplina para fazer o informe, que é feito da seguinte forma: É preenchido um documento com informações como a velocidade, se o carro estava com defeito mecânico, se houve vítima, o horário da ocorrência, o local, a culpabilidade dele na ocorrência, identificadas testemunhas da ocorrência e é feito o croqui. Ao ser feito o informe, é enviado para o setor de Acidentes para que o mesmo verifique a culpabilidade do operador.', 1),
(26, '9', NULL, NULL, 1, 'Verificar culpabilidade no informe', 3, 1, 1, 1, 'O setor de Acidentes informa se na situação em questão o operador foi considerado culpado ou não, da seguinte forma: enviando um e-mail para o setor de Disciplina constando a matrícula, o nome do operador e a culpabilidade ou não do mesmo. No mesmo e-mail são enviados os documentos relacionados a situação como avaria, franquia, danos de terceiros.', 1),
(27, '9', NULL, NULL, 1, 'Realizar entrevista', 4, 1, 1, 1, 'Após o operador ser convocado, a entrevista é realizada com base na sua demanda e necessidade. Na entrevista o coordenador do setor de Disciplina deve colher informações do operador ou passar comunicados e informações necessárias.', 1),
(28, '9', NULL, NULL, 1, 'Verificar se a ocorrência é atual', 5, 1, 1, 1, 'Quando há necessidade de verificar se a ocorrência é atual ou antiga, o critério para classificação é o seguinte: ocorrências com mais de 4 dias de acontecimento, sem o operador informar ao setor de Disciplina ou anotar no livro de ocorrências, são consideradas como antigas e o operador recebe uma advertência (ou suspensão em caso de recorrência) por não ter feito o informe. Ocorrências com menos que 4 dias, ainda são consideradas como atuais, e por isso são tratadas de forma habitual.', 1),
(29, '9', NULL, NULL, 1, 'Verificar existência de ocorrências do operador', 6, 1, 1, 1, 'Em caso de necessidade de verificação de ocorrências do operador, essa verificação é feita no sistema ROF. O ROF é como se fosse uma ficha de cada operador em que constam todas as ocorrências relacionadas a ele. Para fazer a verificação no sistema ROF é da seguinte forma, em: site do auto.sky/ login (Imagem 1)/ escolhe o sistema ROF (Imagem 2)/ login (Imagem 7)/ relatórios/ ocorrências/ individual (Imagem 8)/ funcionário/ digitar matrícula/ buscar. Através disso é verificada a ficha do operador e seu histórico de ocorrências.', 1),
(30, '9', NULL, NULL, 1, 'Emitir orientação Disciplinar', 7, 1, 1, 1, 'Em caso de orientação, ao ser convocado, o operador deve assinar o documento “Orientação Disciplinar”. O critério para emitir orientação disciplinar para o operador é: quando em sua ficha (o ROF) não existe alguma outra ocorrência do mesmo tipo em menos de 12 meses e/ou não existe nenhuma ocorrência registrada.', 1),
(31, '9', NULL, NULL, 1, 'Emitir advertência Disciplinar', 8, 1, 1, 1, 'O setor de Disciplina, ao receber a informação do setor de Acidentes sobre a culpabilidade do operador, emite o documento de advertência. O operador é convocado pelo colaborador do setor de Disciplina para receber essa advertência. Ao convocar o operador para advertência disciplinar é necessário olhar o ROF para verificar o histórico de advertências e analisar se ocorrerá apenas uma advertência, ou uma suspensão (em caso de reincidência). O documento de advertência, denominado “Advertência Disciplinar”, é um documento que já tem modelo existente. Os modelos de documentos de orientação, advertência e suspensão são diferentes. Caso exista reincidência de ocorrência no ROF do operador, aparece no documento essa outra advertência que ele recebeu. Em seguida o funcionário assina o documento de advertência.', 1),
(32, '9', NULL, NULL, 1, 'Suspender operador', 9, 1, 1, 1, 'Quando há reincidência de ocorrência, o operador recebe uma suspensão. Que varia de 1, 2, 3 e até 5 dias. \r\nO critério utilizado para definir os dias de suspensão são:\r\n1 dia: Quando o operador já recebeu antes uma orientação e uma advertência pelo mesmo motivo. \r\n2 dias: Quando o operador já recebeu orientação, advertência e suspensão de um dia pelo mesmo motivo.\r\n3 dias: Quando o operador já recebeu orientação, advertência e suspensão de dois dias pelo mesmo motivo.\r\n5 dias: Quando o operador já recebeu orientação, advertência e suspensão de três dias pelo mesmo motivo. \r\nCaso ocorra mais uma ocorrência após o operador receber a suspensão de 5 dias, o caso é encaminhado à Diretoria para verificar qual decisão deve ser tomada sobre o operador.', 1),
(33, '9', NULL, NULL, 1, 'Retirar funcionário de Escala', 10, 1, 1, 1, 'Retirar operador de escala significa retirar o funcionário da escala de trabalho, logo, ele ficará sem trabalhar no dia informado. Pode ocorrer caso haja necessidade de alinhar alguma situação ou em caso de uma ação corretiva. Em caso de alinhamento, o funcionário é liberado para reposição do dia que estava fora de escala. Em caso de ação corretiva, não é permitido que o funcionário reponha o dia em que esteve fora de escala. É informado ao operador via ligação, que por determinado motivo estará fora de escala por um dia. Caso o método de transmissão não seja efetivo, o operador é convocado a comparecer no setor de\r\nDisciplina para ser informado. Se ainda assim, o operador não comparecer, é retirado de escala sem aviso. O procedimento para retirar o motorista de escala é: ligar para a Central de Atendimento, informar a matrícula do operador e informar que o mesmo está em pendência por isso estará fora de escala.', 1),
(34, '9', NULL, NULL, 1, 'Encaminhar caso à Diretoria', 11, 1, 1, 1, 'Em situações de recorrência de ocorrência com um mesmo operador, o caso é encaminhado para a diretoria para que ela decida como proceder. Geralmente é informado diretamente ao diretor pelo coordenador do setor de Disciplina, informando o contexto do operador em questão.', 1),
(35, '9', NULL, NULL, 1, 'Efetuar cobrança de avaria', 12, 1, 1, 1, 'Em caso de ocorrência com avaria ou franquia o operador é convocado para a cobrança da mesma. Ao convocar o operador, é informada a avaria através do documento enviado pelo setor de Manutenção; ou informada a franquia através do documento enviado pelo setor de Acidentes. A cobrança de avaria é efetuada através da “Autorização de Desconto em Folha – (AVARIA) ” e a cobrança de franquia é feita através do documento “Autorização de Desconto em Folha”, solicitando que o operador assine acordando a forma do desconto.', 1),
(36, '9', NULL, NULL, 1, 'Solicitar Filmagem ao Setor de Monitoramento', 13, 1, 1, 1, 'Caso haja necessidade de solicitar filmagem ao setor de Monitoramento é enviado um e-mail solicitando que envie a filmagem, são informados os seguintes dados: número do carro, data, horário, local e motivo pelo qual quer verificar a filmagem.', 1),
(37, '9', NULL, NULL, 1, 'Liberar funcionário', 14, 1, 1, 1, 'Em caso de liberar o funcionário da ocorrência, o setor de acidentes coloca no ROF que o funcionário é isento de culpa e informa ao setor de disciplina que o operador não foi considerado culpado na situação. O setor de disciplina verifica no próprio ROF do operador a situação de culpabilidade.', 1),
(38, '9', NULL, NULL, 1, 'Identificar atraso de operador', 15, 1, 1, 1, 'O critério para considerar se operador atrasou ou não, é de 5 minutos, isso porque o sistema GPS identifica os horários de todos os carros do dia já programado. Para entrar no sistema é da seguinte forma: no site GOOLsystem (Imagem 9)/ urbano/ login (Imagem 10)/ senha/ relatório (Imagem 11)/ saída de frota (Imagem 12)/ preencher data, empresa (Plataforma) e garagem (selecionar a garagem que quer identificar)/ gerar relatório (Imagem13)/ aparece o relatório solicitado (Imagem 14). Através do sistema de GPS é identificado o horário de saída do ônibus, e o próprio sistema identifica como “atraso ou adiantado” caso o carro saia 5 minutos antes ou depois do horário programado.', 1),
(39, '9', NULL, NULL, 1, 'Justificativa de Atraso', 16, 1, 1, 1, 'O atraso do operador pode ser justificado em casos de atestado, assalto, imprevistos ou complicações no caminho (por exemplo: trânsito, perda de cartão de trabalho, habilitação). Em caso de atraso não justificado, o operador recebe orientação, advertência ou suspensão seguindo os critérios descritos do documento de procedimento interno.', 1),
(40, '9', NULL, NULL, 1, 'Problema interno entre operadores', 17, 1, 1, 1, 'Em caso de problema interno entre operadores, os mesmos são convocados para realizar entrevista separadamente, para que o colaborador do setor de Disciplina possa analisar a situação e verificar se há culpabilidade em um dos operadores, se houver, aplicar correção.', 1),
(41, '9', NULL, NULL, 1, 'Analisar horário de mudança de operadores', 18, 1, 1, 1, 'Em caso de necessidade de analisar o horário de mudança de operadores, a verificação é feita no E- CITOP. Para fazer essa verificação é da seguinte forma: na área de trabalho clica no ícone E-CITOP/ login (Imagem 15)/ relatório (Imagem 16)/ ponto de rodoviário (Imagem 17)/ seleciona a data que deseja saber, rodoviário (coloca a matrícula do operador que deseja verificar). Os horários que aparecem nesse sistema devem ser comparados com os previstos no SDO (Imagem 6). Caso seja necessário, também pode ser solicitada a filmagem ao setor de monitoramento.', 1),
(42, '10', NULL, NULL, 1, 'Adiantamento Salarial', 1, 1, 1, 1, 'Etapa referente a adiantamento salarial.', 1),
(44, '10', NULL, NULL, 1, 'Processos para liberação de salário', 2, 1, 1, 1, 'Etapa com os processos para liberação de salário.', 1),
(45, '10', NULL, NULL, 1, 'Repassar para o setor de pagamento benefícios e contribuições', 3, 1, 1, 1, 'É repassado para o setor de Pagamentos os benefícios, a contribuição do sindicato e pensão judicial. Após a integração, esse repasse é feito através da transferência da integração de um sistema para o outro que é: do sistema RUBI (Folha de Pagamento) para o SAPIENS (Financeiro contábil).', 1),
(46, '10', NULL, NULL, 1, 'Encargos', 4, 1, 1, 1, 'Etapa referente a encargos.', 1),
(47, '10', NULL, NULL, 1, 'Produzir documentação das fábricas', 5, 1, 1, 1, 'É um documento enviado mensalmente, comprovando que cada funcionário que presta serviços para esses clientes recebeu todas as remunerações e benefícios que têm direito.\r\nBridgestone: a documentação é enviada via e-mail;\r\nBraskem: a documentação é feita através de documentação física;\r\nUnigel: a documentação é feita via CD.\r\nBoticário: a documentação é feita em um sistema próprio.', 1),
(48, '10', NULL, NULL, 1, 'Admissão', 6, 1, 1, 1, 'O funcionário admitido é adicionado na folha de pagamento pelo setor de Recursos Humanos com todas as documentações.', 1),
(49, '10', NULL, NULL, 1, 'Rescisão', 7, 1, 1, 1, 'Etapa referente a rescisão.', 1),
(50, '10', NULL, NULL, 1, 'Férias', 8, 1, 1, 1, 'Etapa referente a férias.', 1),
(51, '10', NULL, NULL, 1, '13º', 9, 1, 1, 1, 'Etapa referente a decimo terceiro.', 1),
(52, '9', NULL, NULL, 1, 'Convocar Operador', 1, 1, 1, 1, 'A convocação pode ser feita via ROV, via despachante, via ligação, via mensagem de\r\nwhatsapp.\r\nVia ROV: O ROV é um documento entregue diariamente ao operador e que deve ser assinado para controle de ponto. Quando necessária convocação do operador, é liberada a mensagem:\r\n“Operador (matricula) favor comparecer ao setor de disciplina e procurar o responsável do setor”. A mensagem é enviada por 3 dias consecutivos para o caso de o operador não visualizar no primeiro dia. A mensagem aparece no campo: “especificar ocorrências - outras”.\r\nVia despachante: O despachante é o colaborador que fica no terminal de ônibus marcando e controlando as viagens. O coordenador do setor de Disciplina liga para o despachante para que o mesmo informe ao operador a convocação solicitada. Após passar a informação, o despachante retorna para o setor de Disciplina e informa que já passou a mensagem.\r\nVia Whatsapp: O coordenador do setor de Disciplina envia uma mensagem de convocação diretamente para o whatsapp do operador.\r\nLigação direta: O coordenador do setor de disciplina liga diretamente para o operador para fazer a convocação. O número do operador pode ser adquirido da seguinte forma: quando se sabe a matrícula do funcionário: no site do auto.sky/ login (Imagem 1)/ sistema SDO (Imagem 2)/ login(Imagem 3)/ Funcionário (Imagem 4)/ Chapeira/Digitar Matrícula do Operador/ apertar tecla F10/aparece endereço e telefone do operador. Caso não conste no sistema o telefone do operador, acrescentar depois. Se estiver errado, procurar saber o correto e corrigir. Quando se sabe o nome do funcionário: no site do auto.sky/ login (Imagem 1)/sistema SDO (Imagem 2)/ login (Imagem 3)/Funcionário (Imagem 4)/ nome (digitar nome do funcionário)/ apertar tecla F10. Da mesma forma, aparece endereço e telefone do operador.• No caso de saber o carro em que o operador está no dia: site do auto.sky/ login (Imagem 1)/ sistema SDO (Imagem 2)/ login (Imagem 3)/ Operação/Soltura (Imagem 5)/ preencher o campo Garagem/buscar/ identificar operador (Imagem 6). A partir disso procura o número do outro operador que está na mesma escala pela matrícula ou nome (no mesmo sistema, mas na janela de “Funcionários” (imagem4)) e passa a informação. Caso a informação seja para o motorista, solicitar que o cobrador passe a informação.', 1),
(53, '8', NULL, NULL, 1, 'Portaria', 1, 1, 1, 1, 'Etapa referente a portaria.', 1),
(54, '8', NULL, NULL, 1, 'Área de Descanso', 2, 1, 1, 1, 'Etapa referente a área de descanso.', 1),
(55, '8', NULL, NULL, 1, 'Recepção de Aves', 3, 1, 1, 1, 'Etapa referente a recepção de Aves', 1),
(56, '8', NULL, NULL, 1, 'Insensibilização e Sangria', 4, 1, 1, 1, 'Etapa referente a insensibilização e sangria.', 1),
(57, '8', NULL, NULL, 1, 'Escaldagem e Depenagem', 5, 1, 1, 1, 'Etapa referente a escaldagem e depenagem.', 1),
(58, '8', NULL, NULL, 1, 'Evisceração', 6, 1, 1, 1, 'Etapa referente a Evisceração.', 1),
(59, '8', NULL, NULL, 1, 'Área de utilidades', 7, 1, 1, 1, 'Etapa referente a área de utilidades.', 1),
(60, '11', NULL, NULL, 1, 'Receber Material', 1, 1, 1, 1, 'São diversos tipos de materiais. Estes, chegam acompanhados da Nota fiscal. É então, feita uma comparação dos itens da Nota com o material (conferência). \r\nExiste também a averiguação da Nota fiscal para correção de possíveis erros (nessa averiguação verifica-se o CNPJ, endereço, valores, quantidade). \r\nConferência do conhecimento de transporte: é analisado o CNPJ, endereço do emitente, destinatário e tomador de serviço. Qualquer erro percebido dentro de uma dessas ações deverá ser emitido uma Nota fiscal de devolução. Caso precise de Nota fiscal de devolução, acarretará no não recebimento de mercadoria.', 1),
(61, '11', NULL, NULL, 1, 'Analisar Mercadoria', 2, 1, 1, 1, 'Existem os materiais destinados a serem estocados e os materiais de consumo direto. Caso o material seja para estoque, será organizado na prateleira, caso seja para consumo direto, o setor de Almoxarifado irá informar ao outro setor que fez a solicitação do material.', 1),
(62, '11', NULL, NULL, 1, 'Lançar Nota Fiscal no Sistema', 3, 1, 1, 1, 'Esse lançamento é necessário para que haja alimentação no estoque virtual, além dos setores contábil e fiscal. É realizada também uma programação de pagamentos de fornecedores e envio das Notas fiscais para os setores de compras e fiscal.', 1),
(63, '11', NULL, NULL, 1, 'Atender às requisições de materiais (Atendimento de balcão)', 4, 1, 1, 1, 'Esse atendimento se refere às requisições de materiais dos diversos setores que são atendidos pelo almoxarifado.\r\nSão verificadas as requisições de material feitas pelo colaborador do setor, nessa requisição deverá conter os itens solicitados com a assinatura do responsável direto da área.', 1),
(64, '11', NULL, NULL, 1, 'Liberar o material requisitado', 5, 1, 1, 1, 'É dada a baixa no sistema de informação dos itens requisitados e coletada as assinaturas dos colaboradores nesses itens solicitados.', 1),
(65, '11', NULL, NULL, 1, 'Ações não padronizadas', 6, 1, 1, 1, 'Gestão de estoques (solicitação de compras e arranjo físico do almoxarifado).\r\nInventários mediante solicitações da controladoria.', 1),
(66, '8', NULL, NULL, 1, 'Pré-resfriamento', 8, 1, 1, 1, 'Etapa de pré-resfriamento', 1),
(67, '8', NULL, NULL, 1, 'Embalagem Primária', 9, 1, 1, 1, 'Etapa referente a embalagem primária', 1),
(68, '8', NULL, NULL, 1, 'Sala de Cortes', 10, 1, 1, 1, 'Etapa referente a sala de cortes.', 1),
(69, '8', NULL, NULL, 1, 'Industrializado', 11, 1, 1, 1, 'Etapa sobre industrializado.', 1),
(71, '8', NULL, NULL, 1, 'PCP', 12, 1, 1, 1, 'Etapa referente a PCP.', 1),
(72, '8', NULL, NULL, 1, 'Fábrica de Subprodutos', 13, 1, 1, 1, 'Etapa referente a fábrica de subprodutos.', 1),
(73, '12', NULL, NULL, 1, 'Receber pedidos', 1, 1, 1, 1, 'Os pedidos são enviados, via e-mail, pelos representantes, ao Setor Comercial, que é vinculado ao Setor de Entrega (COM00 – PI – COMERCIAL). Os pedidos de peças congeladas são enviados até às 13h e os pedidos de peças resfriadas são enviadas até às 15h.', 1),
(74, '12', NULL, NULL, 1, 'Enviar pedidos para o financeiro', 2, 1, 1, 1, 'É dada a entrada dos pedidos no Setor Financeiro.', 1),
(75, '12', NULL, NULL, 1, 'Verificar pedidos', 3, 1, 1, 1, 'O Coordenador Financeiro verifica qual cliente fez o pedido e faz uma análise de crédito, verificando, no sistema, se há alguma pendência, como por exemplo, títulos em atraso. O Coordenador do Setor Financeiro libera ou bloqueia o cliente após essa análise e envia um relatório para o Setor Comercial.\r\nQuando o relatório chega no Setor Comercial, devido ao bloqueio de pedidos, o colaborador imprime o histórico do cliente e envia para o Setor de Vendas.\r\nO Setor de Vendas Analisa novamente o histórico do cliente, liberando ou não os pedidos. É feito outro relatório que é encaminhado novamente para o Financeiro liberar conforme o parecer do Setor de Vendas.\r\nQuando, finalmente, os pedidos são liberados pelo Financeiro, eles são encaminhados para o Setor Comercial imprimir e enviados para o Coordenador de Logística separar os pedidos.\r\nSoma dos pedidos:\r\nO Coordenador Financeiro soma os pedidos e passa-se para a próxima etapa.', 1),
(76, '12', NULL, NULL, 1, 'Analisar a carga', 4, 1, 1, 1, 'As cargas são analisadas para a verificação de quantos motoristas e transportes serão solicitados para a realização das entregas. Esse cálculo é feito através das somas de pedidos realizadas.', 1),
(77, '12', NULL, NULL, 1, 'Definir o veículo', 5, 1, 1, 1, 'A definição do veículo ocorre através de um checklist de conformidades do caminhão encontrados na planilha ENT02 - Checklist. Os caminhões são analisados a partir dos seguintes itens: nível de óleo do carro, nível de água, nível de arla, faróis, piscas, triângulo, extintor, chave de rodas, cadeados, estado do veículo, pneus, tacógrafo, lacre de carga e carrinho de transporte. Quando detectado ou previsto um risco potencial de ocorrências de problemas, a área responsável deverá buscar outra opção de veículo que esteja dentro das conformidades e solicitar um reparo às causas potenciais do veículo que apresentou problema e estabelecer ações de maneira a evitar a ocorrência do mesmo.', 1),
(78, '12', NULL, NULL, 1, 'Definir o motorista', 6, 1, 1, 1, 'A partir das planilhas de controle dos motoristas (ENT05, ENT06, ENT07, ENT08, ENT10) onde constam quais motoristas estão disponíveis e para quais lugares eles dirigem, define-se o motorista.', 1),
(79, '12', NULL, NULL, 1, 'Definir o ajudante', 7, 1, 1, 1, 'Assim como o motorista, o ajudante é definido através das mesmas planilhas de controle que há no sistema. Sempre verificando se ele está apto e disponível.', 1),
(80, '12', NULL, NULL, 1, 'Montar a carga', 8, 1, 1, 1, 'É feito um relatório, tomando como base a planilha ENT12 – Montagem de Cargas, com as rotas completas de entrega e esse relatório é passado para a Expedição. Em seguida é analisado a cubagem do carro, que é a verificação do espaço do veículo e a capacidade de carga dele.', 1),
(81, '12', NULL, NULL, 1, 'Realizar o protocolo', 9, 1, 1, 1, 'Nessa etapa verificam-se alguns itens como: confirmação do motorista que irá realizar a viagem, placa do veículo, qual serão os destinos que o motorista entregará as mercadorias, verificação do peso da carga e o número dos lacres dos caminhões.', 1),
(82, '12', NULL, NULL, 1, 'Encaminhar protocolo para Expedição', 10, 1, 1, 1, 'O protocolo é enviado para os colaboradores de Expedição para que seja verificado se está tudo nos conformes. Após essa verificação, é autorizado a liberação de produtos a terceiros. São criadas ordens de expedição que contém todos os produtos que pertencem a cada pedido.', 1),
(86, '12', NULL, NULL, 1, 'Solicitar adiantamento de recursos para as viagens', 14, 1, 1, 1, 'É realizado um cálculo envolvendo as despesas que o motorista irá realizar na viagem, como gastos com diária, alimentação, pedágios e combustível. Essas informações são encaminhadas para o Setor Financeiro realizar uma análise e liberar o dinheiro para o motorista viajar.', 1),
(87, '12', NULL, NULL, 1, 'Distribuir adiantamento por carga', 15, 1, 1, 1, 'Assim como é realizado o cálculo para adiantamento do dinheiro para as despesas com a viagem, é também realizado o cálculo para a liberação do dinheiro para o adiantamento por carga. Nesse cálculo são envolvidas variáveis como quantos quilogramas o caminhão está carregando e o valor da tonelada para a realização da descarga dos produtos.', 1),
(88, '12', NULL, NULL, 1, 'Carregar cargas', 16, 1, 1, 1, 'As cargas são, então, carregadas no caminhão e quando o procedimento é finalizado, o carro é lacrado e colocado no pátio para seguir viagem no mesmo dia ou no dia seguinte.', 1),
(89, '12', NULL, NULL, 1, 'Prestar contas', 17, 1, 1, 1, 'Ao chegar de viagem, o motorista vai em dois setores, primeiro no Setor de Entrega, para avisar ao Coordenador que chegou e dar o parecer das entregas dos produtos para que essas informações sejam lançadas no sistema.\r\nApós sair do Setor de Entrega, o motorista se dirige até o Setor Financeiro, para o Coordenador Financeiro checar se o dinheiro que foi dado a ele para a viagem foi suficiente ou se ele terá que ser reembolsado. Além disso, é feito a prestação de contas a partir das notas fiscais emitidas.', 1),
(90, '13', NULL, NULL, 1, 'Receber solicitação', 1, 1, 1, 1, 'Existem duas formas de solicitação: a primeira é solicitar um item que já se encontra cadastrado no sistema de informação, a segunda possibilidade é a do item não se encontrar no sistema de informação, nesse caso, o solicitante terá de descrever o item com as seguintes especificações: dimensões, marca, modelo. Para assim, o item poder ser cadastrado no sistema.\r\nDeve ser preenchido um campo de observação explicando para qual a será a aplicação do produto.\r\nAs duas formas de solicitações deverão ser enviadas via e-mail pelo sistema de informação.', 1),
(91, '13', NULL, NULL, 1, 'Avaliar solicitação', 2, 1, 1, 1, 'Fazer uma análise se as solicitações de compra obedecem aos critérios estabelecidos e tirar qualquer dúvida com o setor requisitante.', 1),
(92, '13', NULL, NULL, 1, 'Solicitar orçamento', 3, 1, 1, 1, 'São enviados e-mails para os fornecedores e também realizados ligações, cobrando a agilidade da entrega do orçamento.', 1),
(93, '13', NULL, NULL, 1, 'Avaliar orçamento', 4, 1, 1, 1, 'Após a chegada do orçamento é necessária uma avaliação voltada para a especificação do item, essa avaliação leva em consideração critérios como quantidade, dimensões, modelos, marcas, valores, prazo de entrega.\r\nTambém é feita uma comparação dos orçamentos, comparando os produtos em relação a preços, marcas, empresas parceiras, empresas com melhores disponibilidades de entregas, etc.', 1),
(94, '13', NULL, NULL, 1, 'Aprovar pedido', 5, 1, 1, 1, 'Todos os orçamentos são reunidos e apresentados para a Diretoria efetuar a aprovação e também ser realizada a prestação de contas.', 1),
(95, '13', NULL, NULL, 1, 'Solicitar compra e efetuar a liberação (liberar o orçamento)', 6, 1, 1, 1, 'É feito via e-mail, enviada para os fornecedores, nesse e-mail deverá ser formalizada a compra, onde também deverá constar os dados cadastrais para o faturamento e logo depois efetuar uma ligação para o fornecedor para ser confirmado o recebimento do e-mail.', 1),
(96, '13', NULL, NULL, 1, 'Lançar compra no sistema', 7, 1, 1, 1, 'Atualizar status da compra no sistema de informação.', 1),
(97, '13', NULL, NULL, 1, 'Acompanhar a compra', 8, 1, 1, 1, 'Esse acompanhamento é feito via rastreamento por Sedex, transportadora ou com o próprio fornecedor. É necessário que haja esse acompanhamento, pois existe um acompanhamento interno, onde todas as compras deverão obedecer ao lead-time estabelecido pelo fornecedor. Existem casos onde o tempo de atravessamento da mercadoria é afetado de tal forma que há o vencimento dos títulos bancários antes mesmo da chegada dos itens solicitados.', 1),
(98, '13', NULL, NULL, 1, 'Coletar os itens comprados (montagem de Logística)', 9, 1, 1, 1, 'É realizado um processo a depender de onde está localizado o item comprado, sendo que, se o item estiver nas proximidades, até a capital, é feito uma montagem de logística pelo próprio setor, caso a mercadoria esteja localizada fora da capital, é feita uma contratação de uma empresa de transporte para realizar a coleta dos itens.', 1),
(99, '13', NULL, NULL, 1, 'Recebimento dos itens comprados (conferir itens comprados)', 10, 1, 1, 1, 'O material deverá ser recepcionado e conferido pelo setor de Almoxarifado. Logo depois a nota fiscal deverá ser lançada e comunicada a chegada do material aos setores solicitantes e setor de compras.', 1),
(100, '13', NULL, NULL, 1, 'Envio de Nota Fiscal ao setor financeiro', 11, 1, 1, 1, 'A nota fiscal com o boleto deverá ser anexada ao orçamento anteriormente assinado pela diretoria, protocolado e assinado pelo setor de compras e enviado ao setor financeiro, para assim ser autorizado o pagamento.', 1),
(101, '14', NULL, NULL, 1, 'Prospecção de Clientes', 1, 1, 1, 1, 'A prospecção é feita através da visita de um represente comercial da empresa ou vendedor, e pela abordagem da equipe da central de negócios.', 1),
(102, '14', NULL, NULL, 1, 'Cadastro de Clientes', 2, 1, 1, 1, 'Etapa referente a cadastro de clientes.', 1),
(103, '14', NULL, NULL, 1, 'Processo da Venda', 3, 1, 1, 1, 'Etapa referente a Processo da Venda.', 1),
(107, '16', NULL, NULL, 1, 'Primeira Bipagem', 1, 1, 1, 1, 'Etapa para Primeira bipagem.', 1),
(109, '16', NULL, NULL, 1, 'Instalações Frigoríficas', 2, 1, 1, 1, 'Etapa referente a Instalações Frigoríficas.', 1),
(110, '16', NULL, NULL, 1, 'Devolução', 3, 1, 1, 1, 'Etapa referente a devolução.', 1),
(111, '14', NULL, NULL, 1, 'Remuneração da Equipe Comercial', 4, 1, 1, 1, 'Etapa referente a remuneração da equipe comercial.', 1),
(112, '14', NULL, NULL, 1, 'Apoio ao Contas a Receber', 5, 1, 1, 1, 'Etapa referente a apoio ao contas a receber', 1),
(113, '14', NULL, NULL, 1, 'Apoio à Logística/ Controle Devoluções', 6, 1, 1, 1, 'Etapa para apoio à logística/ controle devoluções.', 1),
(114, '12', NULL, NULL, 1, 'Pegar Notas no Setor de Faturamento', 11, 1, 1, 1, 'O motorista é encaminhado para o Setor de Faturamento para pegar as notas que são entregues a ele.', 1),
(115, '12', NULL, NULL, 1, 'Impressão das Vias RVDA644', 12, 1, 1, 1, 'São impressas 3 vias RVDA644, uma para faturamento, outra para o motorista e a terceira fica na portaria, para análise de peso e para liberar o carro para a viagem.', 1),
(116, '12', NULL, NULL, 1, 'Entrega de material', 13, 1, 1, 1, 'Em cada entrega de material, deve-se obter a devolução do canhoto devidamente assinado, para que tenha a comprovação da entrega.', 1),
(117, '17', NULL, NULL, 1, 'Avaliar estoque', 1, 1, 1, 1, 'É necessário que haja uma avaliação no estoque geral, para que se mantenha informado e sejam identificados os produtos que devem ser comprados, com objetivo de que o estoque não venha a zerar. Os compradores, tem o auxílio do Sistema Operacional AMC, dentro desse sistema existe uma ferramenta chamada GESTOR XE, que é utilizada nesse setor para sugestão de compras, emissão de giro dos últimos 3 meses de vendas, o custo do produto e a situação atual do estoque (se está baixo). Além dessa ferramenta, o responsável pelo estoque, efetua avaliações diárias, podendo também, manter os compradores informados da situação do estoque.\r\nA avaliação é realizada na quantidade do estoque, para serem identificados os produtos em falta ou que estão próximos a faltar. Além disso, os compradores acessam o sistema para analisar os dias que os fornecedores realizam as entregas e ver se está compatível a data da entrega com a urgência dos produtos.', 1),
(118, '17', NULL, NULL, 1, 'Definir produtos e quantidades', 2, 1, 1, 1, 'A definição de produtos e quantidades, começa quando é realizada a análise de estoque, onde irá constar os produtos e a quantidade necessária.\r\nÉ feita uma análise dos produtos e quantidades que estão em escassez e os produtos demandados pelos clientes, pois, possa ser que não haja um certo produto ou a quantidade demandada desse produto em estoque. Existem produtos que não necessitam de cotação, porque saem diretamente da indústria.', 1),
(119, '17', NULL, NULL, 1, 'Solicitar cotação', 3, 1, 1, 1, 'Essa atividade se inicia quando é enviado um e-mail ou feita uma ligação para os fornecedores, solicitando os produtos.', 1),
(120, '17', NULL, NULL, 1, 'Negociar compras', 4, 1, 1, 1, 'É solicitado a presença do fornecedor para ser realizada uma negociação, com o objetivo de definir o que será comprado, pelo melhor valor, a quantidade correta, e o melhor dia de entrega, para que não haja divergências.\r\nMuitos fornecedores não podem ir até a empresa, pois são de outras cidades, fazem rotas externas, e assim, portanto, não há a presença desses fornecedores.', 1),
(121, '17', NULL, NULL, 1, 'Solicitar aprovação', 5, 1, 1, 1, 'Todas as solicitações são passadas antes para a Direção realizar a aprovação, análise ou até renegociação.\r\nTodas as cotações de preços, são enviadas à diretoria para que o mesmo faça a aprovação, pois, a quantidade em questão dos produtos, colocada pelos compradores, pode estar abaixo ou acima da necessidade real que se tem, então, cabe a Diretoria, reduzir ou não a quantidade dos produtos em questão.', 1),
(122, '17', NULL, NULL, 1, 'Emitir pedido', 6, 1, 1, 1, 'Quando o estoque (que é diariamente analisado), está chegando ao limite baixo, ou até mesmo a falta de um produto (o que não se deve ocorrer), o comprador entra em contato com o fornecedor, solicitando de imediato os produtos.\r\nO pedido é realizado no sistema e é passado para o Diretor assinar e aprovar. Em seguida, o pedido é enviado para o responsável pelo recebimento das mercadorias e é realizado um rastreamento dessa mercadoria, ou seja, um acompanhamento da mercadoria, até sua chegada ao Atacadão.\r\nCaso haja alguma divergência, como, data de faturamento errada, quantidade, valor entre outros, entra-se imediatamente, em contato com o fornecedor para ser solucionado o problema e assim efetuar o recebimento da mercadoria. Caso esse problema não seja resolvido, a mercadoria é devolvida, mas somente em último caso.', 1),
(123, '17', NULL, NULL, 1, 'Enviar cópia do pedido para o conferente de entrada', 7, 1, 1, 1, 'O comprador envia uma cópia do pedido feito por ele para o conferente de entrada, para que quando a mercadoria solicitada chegar ele efetue uma avaliação, para saber se o que chegou está conforme ao que foi solicitado. Havendo algum problema, procurar identificar e informar esse problema, para que seja buscada uma solução de imediato. Dando continuidade no processo, o conferente envia o pedido juntamente com a nota fiscal para o faturamento, para que seja realizada a entrada dessa mercadoria no estoque, constando que a mercadoria já se encontra no estoque e assim esteja disponível para a venda.', 1),
(124, '17', NULL, NULL, 1, 'Acompanhar entrega (recebimento de mercadoria)', 8, 1, 1, 1, 'O comprador acompanha juntamente com o fornecedor o faturamento do pedido, esse acompanhamento é feito quando se dá a entrada da nota pelo setor de faturamento, ou quando há divergência no pedido. O conferente informa ao setor de compras quando é chegada a mercadoria e se houve alguma divergência.\r\nO comprador faz ligações para o fornecedor, buscando saber se o pedido já foi faturado, e se já está a caminho do destino (Atacadão Bahia).\r\nO fornecedor dá um prazo para o faturamento, mesmo antes desse prazo, o setor de compras realiza cobranças ao fornecedor para saber se o pedido já foi faturado.\r\nExiste um caso específico para esse acompanhamento, no qual o objetivo é que não haja divergências em relação com a mercadoria, como: quantidade e valor diferente do pedido ou vencimento dos valores nos boletos e divergências nas datas de entrega.', 1),
(125, '17', NULL, NULL, 1, 'Analise de Estoque Para Compra (mês seguinte)', 9, 1, 1, 1, 'É feita uma projeção de análise, para se ter uma base da quantidade necessária de compra, essa projeção é através da curva ABC (utilizado para gestão de estoque do produto acabado e de matéria-prima), com relação ao mês seguinte, em relação ao mesmo mês do ano anterior, por fim é feita uma análise do estoque atual, com a quantidade a repor nesse estoque.', 1),
(126, '17', NULL, NULL, 1, 'Conta corrente do Fornecedor', 10, 1, 1, 1, 'Essa conta é um bônus obtido pelo comprador, emitido pelos fornecedores dos produtos. Esse bônus é gerado quando o fornecedor fica de enviar uma bonificação para rebaixa de preço, ou se os produtos em questão estavam vencidos ou próximos a vencer, entre outras situações. Essa conta corrente do fornecedor já é existente no próprio sistema, através da ferramenta GESTOR XE, vai na opção contas a pagar, em seguida conta corrente do fornecedor, onde terão as opções para que possa ser lançada no sistema, e ficar registrado o bônus que foi originado, com o valor desse bônus, para quando for decidida a finalidade desse valor.', 1),
(127, '17', NULL, NULL, 1, 'Realização de preços do produto (análise de precificar, lançar no sistema e replicar)', 11, 1, 1, 1, 'Esse processo se refere a Precificação, que é a definição dos preços dos produtos.\r\nÉ feita uma margem dos preços do determinado produto, e no sistema através do GESTOR XE é feita uma consulta na sugestão de preços (layout 02), onde irá ser identificado o ponto de equilíbrio do preço daquele determinado produto (se o preço do produto está dentro do sugerido). Para ser lançado no sistema deve ser aberto o sistema, na opção analise do cadastro do item, onde irá ser incluído o preço do item e na opção gravar, irá ser gravado esse valor ao item, com isso o produto já estará com o seu valor definido. Para replicar a ação, vai na opção cadastro, em seguida item, e replicar a tabela de preço, onde abrirá uma tela cadastro do item, e terá a opção replicar. Para replicar para outra loja (filial ou matriz), vai em cadastro, item, replicar por empresa, abrirá a tela cadastro de item preço, onde na parte tabela de preço e dados para replicação, terá as opções para replicar.', 1),
(128, '18', NULL, NULL, 1, 'Conferência de caixa', 1, 1, 1, 1, 'O financeiro faz a conferencia e o fechamento do caixa. São conferidos pela Diretoria os pagamentos do dia anterior, também as movimentações de caixa, entradas e saídas de boletos e cheques.\r\nÉ realizada uma movimentação de banco, ou seja, pagamentos do dia, depósitos, onde é autorizado e auxiliado pelo setor financeiro.\r\nCaso haja alguma tarefa que não possa ser realizada pelo setor financeiro, será passada para a Diretoria.', 1),
(129, '18', NULL, NULL, 1, 'Entradas de notas diárias', 2, 1, 1, 1, 'A nota vem do fornecedor. A mercadoria é descarregada, o conferente confere a mercadoria com a nota e a ordem de compra (deve estar igual), passa a nota para o faturamento realizar a entrada no sistema para a venda.\r\nAs notas diárias que chegam no depósito, são passadas para o setor de faturamento, para serem realizadas as entradas.\r\nEssas notas são conferidas pela Diretoria se estão conforme o pedido.', 1),
(130, '18', NULL, NULL, 1, 'Análise de compra', 3, 1, 1, 1, 'É feita uma sugestão de compras pelo setor de compras.\r\nO setor de compras faz uma relação do que precisa ser comprado e passa para a Diretoria conferir e aprovar.\r\nAlguns fornecedores são tratados pelo setor de compras, outros pela própria Diretoria, que irá definir o que comprar, a quantidade a comprar e se o valor do produto está acessível para a compra.', 1),
(131, '18', NULL, NULL, 1, 'Notas sem boleto', 4, 1, 1, 1, 'As notas sem boleto vêm do faturamento.\r\nQuando é dada a entrada na nota (essa, só é feita pelo setor de faturamento e com a chegada da mercadoria), e não há boleto em anexo, é feito um espelho dessa nota que irá substituir o boleto.\r\nQuando o boleto chega, é analisado e comparado junto com o espelho da nota que foi emitida, se estiver em conformidade, a Diretoria assina e envia ao setor financeiro para arquivar e colocar na programação de pagamento.', 1),
(132, '18', NULL, NULL, 1, 'Conferência de caixa', 5, 1, 1, 1, 'As entradas e saídas realizadas, as despesas realizadas, cheques devolvidos, boletos em atrasos, duplicatas e carteiras, serão conferidos para saber se estão realmente compatíveis.\r\nEssa conferencia é realizada com os demais setores envolvidos.', 1),
(133, '18', NULL, NULL, 1, 'Movimentação financeira do dia anterior', 6, 1, 1, 1, 'As entradas e saídas do dia anterior, são conferidas no dia posterior.', 1),
(134, '18', NULL, NULL, 1, 'Conferência de notas fiscais de entrada', 7, 1, 1, 1, 'Já foi dada a entrada na nota fiscal, ela já se encontra lançada no sistema, o setor de faturamento encaminha para ao auxiliar financeiro, de onde será encaminhado para a diretoria realizar as verificações. Verifica se há divergências, entre preços, quantidades, produtos pedidos, se o boleto corresponde a nota fiscal, nessas notas podem vir erros de preço, data de vencimento. Havendo essas divergências, procurar solucionar, ver as medidas a serem tomadas.', 1),
(135, '18', NULL, NULL, 1, 'Assinar pedidos já autorizados', 8, 1, 1, 1, 'É por obrigação do setor de compras analisar o estoque para que o estoque não venha a zerar. Dessa forma eles farão um levantamento dos produtos a serem comprados, entre valores e quantidades, onde serão passados para a diretoria aprovar.\r\nAlguns pedidos já são feitos pela diretoria e apenas é passado para o setor de compras lançar no sistema.', 1),
(136, '19', NULL, NULL, 1, 'Atender o cliente no caixa', 1, 1, 1, 1, 'O cliente passa pelo vendedor, onde irá fazer a relação de pedidos. Logo após será encaminhado ao caixa.\r\nNo caixa o cliente entrega a nota com o pedido, a responsável pelo caixa irá lançar no sistema essa nota para ser dada a baixa do pedido no estoque e assim a mercadoria possa ser liberada para o cliente.', 1),
(137, '19', NULL, NULL, 1, 'Recebimento de nota', 2, 1, 1, 1, 'A nota é emitida pelo vendedor, onde já se consta as opções de pagamento, boleto ou duplicata. Quando é boleto ou duplicata o cliente vai até o caixa, registra a nota, o caixa libera a nota para o conferente, onde esse irá se dirigir até o faturamento, para que possa ser retirado o boleto ou a duplicata para o cliente, e por fim, será retornado ao caixa.', 1),
(138, '19', NULL, NULL, 1, 'Lançar numeração de pedidos', 3, 1, 1, 1, 'Toda nota de venda, vem com o seu número de controle.\r\nEsse lançamento está relacionado com o número de controle da nota de venda, que será lançado no sistema. Quando a nota é lançada no sistema, já irá indicar informações como, valor, forma de pagamento. E assim após ser recebido o pagamento, a mercadoria poderá ser liberada.', 1),
(139, '19', NULL, NULL, 1, 'Transferência de valor, do caixa para o financeiro', 4, 1, 1, 1, 'Existem as despesas diárias, com relação a essas despesas, diariamente o setor financeiro faz retiradas de valores no caixa, no final do dia será feito a conferencia entre o caixa e o financeiro, para saber se está batendo os valores.', 1),
(140, '19', NULL, NULL, 1, 'Cancelamento de nota', 5, 1, 1, 1, 'Acontece somente em caso de desistência de pedido pelo cliente ou a nota foi retirada errada pelo vendedor, ou também a forma de pagamento foi registrada errada. \r\nQuando há falta, avaria, devolução, troca de mercadoria, erros de digitação, é feito pelo faturamento uma nota de crédito para o cliente, onde o cliente pode realizar a troca de mercadoria. O caixa só devolve o dinheiro em espécie, em caso de produto avariado ou erro de digitação do vendedor, esse crédito é valido durante o período de 30 dias.', 1),
(141, '19', NULL, NULL, 1, 'Retirar e realizar baixa em cupom fiscal', 6, 1, 1, 1, 'Quando a nota é registrada, os clientes que utilizam CPF no ato do pagamento, será feita a emissão do cupom fiscal. Esse cupom fiscal, somente é realizado quando o valor é abaixo de 500 reais, o mesmo é emitido através da ferramenta do sistema Gestor xe para uma outra ferramenta chamada ECF, e assim será imprimido o cupom fiscal e será entregue ao cliente.', 1),
(142, '19', NULL, NULL, 1, 'Dar baixa em boleto e duplicata de clientes', 7, 1, 1, 1, 'Quando o cliente efetua uma compra em boleto ou duplicata e é chegada a data para o pagamento, ele deverá se dirigir até o caixa para que possa realizar esse pagamento. O boleto pode ser pago no banco, mas caso não consiga, pode ser pago no caixa, já a duplicata só poderá ser paga no caixa. Quando o cliente faz o pagamento, a baixa já é realizada automaticamente. No final do dia é imprimido um relatório, para que seja entregue ao setor financeiro.', 1),
(143, '19', NULL, NULL, 1, 'Fechamento de caixa', 8, 1, 1, 1, 'Esse fechamento é feito no final do dia, onde serão somados todos os cheques, recebimentos em dinheiro, as duplicatas, os boletos e as notas de crédito. Serão conferidos esses valores e estando em conformidade, serão passados para o setor financeiro realizar uma outra conferencia e por fim será encaminhado a Diretoria para uma última conferência. Após isso, é feito o fechamento do caixa.', 1),
(144, '20', NULL, NULL, 1, 'Identificar o cliente no CRM', 1, 1, 1, 1, 'O CRM se refere a um conjunto de práticas, estratégias de negócio e tecnologias, com o objetivo de gerenciar e analisar as interações com seus clientes, antecipar suas necessidades e desejos.\r\nO setor de televendas utiliza as ferramentas do sistema operacional AMC, como por exemplo o GESTOR XE para consulta à situação do cliente, ver títulos em aberto, cheques em aberto, cheques devolvidos, última compra realizada pelo cliente e o maior valor de compra feita por aquele cliente. É visualizado também os dados do cliente, endereço, nome fantasia do comercio etc.\r\nJá o PDV é a ferramenta para ser dado o início às vendas. Nessa ferramenta existe uma função, onde se consta o código do cliente, código do vendedor e condição de pagamento (forma de pagamento realizada). \r\nÉ feita uma captação pela internet dos clientes em geral, onde irão para uma planilha no Excel com seus devidos contatos e dados.\r\nSão feitas também visitas pessoalmente ao cliente, onde os números desses clientes são captados nas visitas, é feita uma lista de transmissão no whatsaap onde irá passar promoções diárias a esses clientes.\r\nAssim serão efetuadas as ligações ao cliente, realizar a apresentação da empresa e os produtos serão ofertados.', 1);
INSERT INTO `macroprocessos` (`id`, `pi_id`, `data_ultima`, `data_proxima`, `classificacao_id`, `titulo`, `numero`, `pessoas`, `periodicidade_id`, `horas`, `descricao`, `maturidade_id`) VALUES
(145, '20', NULL, NULL, 1, 'Ligar para o cliente', 2, 1, 1, 1, 'É feito uma apresentação ao cliente, onde são oferecidos os produtos, as ofertas do dia (produtos em promoções). Caso o cliente não tenha cadastro será feito um convite para efetuar o cadastramento, onde esse convite pode ser feito via e-mail ou WhatsApp. \r\nCadastramento efetuado, é feito uma análise da documentação e o cliente aprovado, já pode ser feita a compra. Geralmente as compras são feitas por telefone ou WhatsApp, sendo essa última a maneira mais utilizada. Caso o cliente seja aprovado, ele pode solicitar o pedido, mas o pagamento pode ser feito em 7,14 ou 21 dias no cheque ou boleto onde o pagamento deve ser feito no ato da entrega. Caso o cliente não seja aprovado o pagamento deve ser feito à vista no ato da entrega.\r\n     Contato com o cliente \r\nO setor realiza visitas aos clientes, buscando realizar cadastros e também através do whatsaap.', 1),
(146, '21', NULL, NULL, 1, 'Atendimento a clientes e fornecedores', 1, 1, 1, 1, 'A recepcionista utiliza as ferramentas do sistema AMC. Como a ferramenta Gestor XE para a checagem de devoluções que irão ter abatimentos em boleto. \r\nEssa atividade está relacionada ao atendimento aos clientes nas ligações, encaminhamento de fornecedores (quando os fornecedores vão até a loja), atendimento a empresas.', 1),
(147, '21', NULL, NULL, 1, 'Compra de Materiais (materiais para escritórios, EPIS, equipamentos)', 2, 1, 1, 1, 'O setor realiza cotação e compras de materiais em geral, utilizados no dia a dia pela empresa, assim como também, equipamentos em geral (computador, calculadora, ar condicionado, dentre outros).', 1),
(148, '21', NULL, NULL, 1, 'Relógio de Ponto', 3, 1, 1, 1, 'O relógio de ponto é um dispositivo utilizado para controlar as horas trabalhadas de um empregado em uma empresa.\r\nEstá relacionado com o controle de horário dos funcionários. Os funcionários batem o cartão 4 vezes ao dia, sendo que a recepcionista faz um relatório semanal das horas diárias. Esse relatório é passado ao supervisor e gerente da matriz e filial do atacadão bahia. A partir dessa atividade a recepcionista realiza o lançamento de atestados médicos, licenças e férias.', 1),
(149, '21', NULL, NULL, 1, 'Cuidados com a manutenção', 4, 1, 1, 1, 'Problemas com telefonia quando algum ramal está com problemas, como falhas de ligação ou tem a necessidade de acrescentar outro ramal no telefone, essa solicitação é feita pela recepcionista. Acompanhamento de pessoal é referente as máquinas quando é feita a abertura do chamado, até a resolução do problema. \r\nAbertura de chamado é quando se comunica e solicita a empresa responsável pelas máquinas, a vir ao atacadão realizar manutenção, reparos ou trocas dessas máquinas. O chamado é fechado quando o problema é resolvido.\r\nSempre deve ser informado a Diretoria, Financeiro e Gerencia, sobre as medidas a serem tomadas na realização desses cuidados com a manutenção. \r\nManutenção de maquinas em geral, computadores, impressoras, relógios de pontos, ar condicionado, todos os equipamentos em geral utilizados na organização.', 1),
(150, '21', NULL, NULL, 1, 'Notas de devolução parcial', 5, 1, 1, 1, 'Avarias e falta da quantidade de produtos.\r\nA mercadoria é devolvida e feita a nota de devolução, a recepcionista realiza a cobrança. Quando a recepcionista tem uma posição do fornecedor em relação ao pagamento da devolução, é passada ao setor financeiro para ser confirmado o deposito ou desconto no boleto e é realizada a baixa.\r\nSão realizadas cobranças aos fornecedores, é feito controle de notas, onde os valores das notas são passados aos setores de compras (o setor de compras por que é o responsável pelas compras da mercadoria) e financeiro (por que é o setor responsável por controlar as contas a pagar e receber).', 1),
(151, '21', NULL, NULL, 1, 'Controle de e-mails', 6, 1, 1, 1, 'Nesse controle de e-mails, é passado informações para os setores, como solicitação de fornecedores para cadastramento do atacadão nas empresas.\r\nCada setor tem seu e-mail, mas muitas as vezes o que é para ser direcionado apenas para tal setor, é enviado para o e-mail geral do atacadão bahia. Sendo assim, a recepcionista reenvia os e-mails para o seu destinatário (os setores).', 1),
(152, '21', NULL, NULL, 1, 'Prorrogação de boletos', 7, 1, 1, 1, 'Quando são chegadas a notas das mercadorias é conferida pelo conferente, buscando divergências (fornecedor envia boleto com o prazo não estando de acordo com a ordem de compra), se o prazo combinado com o fornecedor está de acordo ou não com a ordem de compra. A recepcionista solicita a prorrogação de prazo, orientada pelo setor de compras. Quando os boletos prorrogados chegam são conferidos pela recepcionista e estando em acordo, são passados para a Diretoria realizar o visto.', 1),
(154, '22', NULL, NULL, 1, 'Entrada de Notas Fiscais', 1, 1, 1, 1, 'O setor Fiscal conta com o auxílio das ferramentas do sistema AMC, sendo elas:\r\nGESTOR XE que é utilizada para dar entrada em notas fiscais de fornecedor, notas fiscais de clientes, notas de pedidos de devolução, notas de pedido de crédito, realizar manifestação de notas de entrada, realizar notas de transferências etc.\r\nPDV utilizado para faturamentos em geral, e também retiradas de notas fiscais de clientes. \r\nECF que é utilizado para retiradas de cupons fiscais.\r\nREPLICADOR com a sua utilização voltada para replicar notas do fiscal para o gerencial.\r\nA nota chega ao conferente, que recebe a mercadoria e confere a quantidade e os valores para ver se estão de acordo com o especificado, caso haja alguma divergência, realizam-se os ajustes e o produto retorna ao faturamento para ser dada as entradas nas compras.\r\nÉ feita uma lista das notas, com o número dessas notas e nomes das empresas e são enviadas para a Diretoria para ser dado o visto, onde retornará ao faturamento, e os boletos serão protocolados, e assim enviados para o setor Financeiro para serem arquivados para os pagamentos, só serão arquivados, boletos que estiverem assinados pela Diretoria.', 1),
(155, '22', NULL, NULL, 1, 'Saídas de Notas Fiscais', 2, 1, 1, 1, 'O cliente faz o pedido, efetua o pagamento no caixa, passa a nota para o conferente, o conferente passa a nota para o faturamento, onde se retira a nota ou cupom fiscal, e a nota é passada novamente para o conferente.\r\nO conferente passa o pedido para o faturamento, o funcionário responsável pelo setor de faturamento retira a nota fiscal eletrônica ou cupom fiscal (pessoa física) e envia de volta ao conferente para que possa ser liberado o pedido do cliente.', 1),
(156, '22', NULL, NULL, 1, 'Notas de crédito', 3, 1, 1, 1, 'Caso haja desistência do cliente, houver erro de digitação, ou uma troca é solicitada, o conferente passa a nota do produto e o motivo ao setor de faturamento, para assim ser emitida a nota de crédito, onde na mesma consta motivo, código do produto, quantidade, nome do conferente, vendedor, número de controle do pedido. A nota de crédito é passada para o conferente, onde segue para o Gerente para ser assinado e conferido, volta para o conferente, para que possa ser entregue ao cliente. O cliente pode trocar por outra mercadoria, assim como também pode ir ao caixa retirar o valor ou pode ficar com o crédito em mercadoria.', 1),
(157, '22', NULL, NULL, 1, 'Cadastro de cliente', 4, 1, 1, 1, 'Cadastro de novos clientes \r\nPessoa Física – Para os clientes pessoa física, é necessário RG e CPF, cópia do comprovante de endereço do imóvel dos últimos 3 meses, solicitar 3 (três) referencias comerciais, solicitar 1 (uma) referência bancária (cópia de uma folha de cheque), 3 (três) boletos pagos dentro do mês e referência pessoal.\r\nSão fundamentais além dos dados do cliente ser colocados na ficha cadastral: Sugestão de Prazo, Limite e Forma de Pagamento.   \r\nPessoa Jurídica – Cartão CNPJ, cópia de RG/CPF dos sócios, cópia do comprovante de endereço do imóvel dos últimos 3 meses, cópia do comprovante de endereço dos sócios dos últimos 3 meses, solicitar 3 (três) referencias comerciais, solicitar 1 (uma) referência bancária (cópia de uma folha de cheque), contrato social da empresa com as últimas alterações.', 1),
(158, '22', NULL, NULL, 1, 'Acerto de estoque', 5, 1, 1, 1, 'É selecionado pelo gerente os conferentes para que seja feita uma contagem diária dos produtos no final do expediente, onde é passado ao setor fiscal a situação do estoque, se está normal, se houve falta ou quantidade a mais de mercadoria. \r\nO setor para a execução dessa atividade conta com o auxílio da ferramenta do sistema AMC, diário do item, onde por ele já é dada toda a situação do item existente no estoque.  \r\nApós ser feita a contagem do estoque no final do dia, é passada a situação ao setor fiscal, que no dia seguinte iniciará a atividade para o acerto de estoque.', 1),
(159, '22', NULL, NULL, 1, 'Conferencia de notas de crédito', 6, 1, 1, 1, 'Essa atividade é realizada através da ferramenta diário do item, onde se irá buscar o que realmente aconteceu com o produto, se realmente há a sobra ou falta do determinado produto.', 1),
(160, '22', NULL, NULL, 1, 'Lançamentos de Artigos', 7, 1, 1, 1, 'É feita uma leitura diariamente no site da secretaria da fazenda dos artigos, onde serão lançados no programa. Esse lançamento é necessário para que não haja divergências no tributo, caso haja essa divergência, ocorrerá o risco de multa.\r\nEsse lançamento só pode ser realizado no final do dia.', 1),
(161, '22', NULL, NULL, 1, 'Leitura diária de tributação', 8, 1, 1, 1, 'Voltada em relação ao CFOP (classificação dos produtos), ou seja, a descrição do que é o produto, de que estado é o produto, ou seja, em relação a saídas e entradas do produto de um estado para o outro. Existe também o NCM (é quem define o PIS e COFIS) que é a descrição de gramatura do produto. Essa leitura é com o objetivo de fazer a conferencia no SEFAZ (site da secretária da fazenda (diretório do site)) e realizar a alteração do produto no sistema.', 1),
(162, '22', NULL, NULL, 1, 'Gerar Arquivos', 9, 1, 1, 1, 'O arquivo é baixado no programa e convertido no site da secretaria da fazenda.\r\nTodos os tipos de arquivos são o mesmo caminho para desenvolver, mas cada um tem sua função diferente (os arquivos são diferentes), como o Sintegra, que é o primeiro arquivo gerado, sendo feito duas vezes no mês, com objetivo de encontrar erros nas notas de entradas e saídas, cálculos de impostos etc. Assim como outros tipos com suas destinações, sendo para manifestações para que possa verificar se as notas realmente foram compradas pela empresa, corrigir a finalidade e o objetivo do produto na empresa, dentre outros tipos de arquivos com seus devidos objetivos, mas, destinados a regularização ao governo.\r\nSegue os tipos de arquivos gerados:\r\nSintegra- Feito duas vezes no mês. Com a finalidade de facilitar o fornecimento de informações dos contribuintes aos fiscais estaduais e de aprimorar o fluxo de dados nas administrações tributárias.\r\nTendo seu objetivo voltado no fornecimento de informações relativas às operações de compra, venda e prestação de serviços. Do lado dos fiscos estaduais, o objetivo é o de propiciar maior agilidade e confiabilidade ao tratamento das informações recebidas dos contribuintes.\r\nSped Fiscal- Feito somente uma vez no mês. O sped nada mais é do que um grande e preciso banco de dados sobre a empresa. É feita em busca de abates no imposto a pagar se o crédito é indevido ou devido.\r\nSeu objetivo é promover a integração dos fiscos, mediante a padronização e compartilhamento das informações contábeis e fiscais, respeitadas as restrições legais.\r\nSped Contribuição- Feito uma vez no mês. A EFD-Contribuições consiste em um sistema de arquivos digitais que faz parte do SPED (Sistema Público de Escrituração Digital).\r\nÉ utilizado para apurar impostos de empresa em regimes de lucro real ou presumido, tanto de forma cumulativa (que acumula com o passar do tempo), quanto não cumulativa. \r\nGerenciar NFe- Feito quatro vezes no mês. Emissão de notas fiscais eletrônicas, a empresa emissora da nota fiscal gerará um arquivo eletrônico contendo as informações fiscais da operação comercial. Seu objetivo é garantir a integridade dos dados e a autoria do emissor. Este arquivo eletrônico, que corresponderá à NF-e, será transmitido pela internet para a Secretária da Fazenda (SEFAZ) enviar/validar/cancelar/inutilizar.\r\nGerenciar Cce- Só é feito quando há necessidade. Tem a sua finalidade voltada para correção de erros, como por exemplo corrigir informações de NF-e.\r\nGerenciar MDe- Feito quatro vezes no mês. é uma ferramenta que verifica todas as notas emitidas contra seu CNPJ e possibilita que você avise ao Fisco sobre notas emitidas por terceiros sem o seu conhecimento.\r\nGerenciar MDFe- Feito duas vezes no mês. Manifesto Eletrônico de Documentos Fiscais (MDF-e) é o documento emitido e armazenado eletronicamente, de existência apenas digital, para vincular os documentos fiscais transportados na unidade de carga utilizada. \r\nNFe Destinatário- Feito quando for necessário. Identifica notas fiscais eletrônicas. Manifesta as notas não compradas pela empresa.\r\nTotais de CFOP- Feito duas vezes no mês. Tem a finalidade de verificar entradas e saídas de mercadorias, intermunicipal e interestadual. Irá definir se a operação terá ou não que recolher impostos.\r\nConfiguração Natureza da Receita- Feito quatro vezes no mês. Tem a finalidade de lançamentos de códigos do NCM da configuração da Receita Federal. Sendo o principal objetivo a correção de erros.\r\nListagem de Documentos Fiscais- Feito quatro vezes no mês. Tem a finalidade do lançamento de notas fiscais de saídas. Seu objetivo é a busca de notas fiscais lançadas para acertos. \r\nRegistro de Apuração ICMS- Feito duas vezes no mês. Finalidade do lançamento de notas fiscais de saídas/entradas. Seu objetivo é para a correção do livro fiscal.\r\nReprocessa PIS/COFINS- Feito somente quando necessário. Tem a finalidade de lançamentos de notas fiscais de saídas/entradas. Seu objetivo é para calcular o imposto a ser pago ao governo federal.', 1),
(163, '22', NULL, NULL, 1, 'Entrada e Saída de outros', 10, 1, 1, 1, 'Essa entrada e saída de outros está relacionada com o acerto de estoque, ou seja, não é em relação a entrada e saídas de notas fiscais. Esse acerto é a relação à falta e sobra de produtos no estoque.', 1),
(164, '22', NULL, NULL, 1, 'Transferência de mercadoria', 11, 1, 1, 1, 'O gerente de uma das filiais do Atacadão solicita os produtos, repassando os códigos e as quantidades. É emitida uma nota fiscal pelo faturamento e um espelho da mesma e é enviada para o gerente ou conferente de entrada.\r\nOs itens de pedidos são passados para o setor de faturamento, a nota é retirada e passada novamente para o Gerente ou conferente, onde eles enviam para a filial juntamente com a mercadoria.', 1),
(165, '23', NULL, NULL, 1, 'Receber ordem de pagamento', 1, 1, 1, 1, 'O setor Financeiro, assim como outros setores, tem o auxílio da ferramenta do sistema AMC, chamada de GESTOR XE que é utilizada para todas as operações realizadas por esse setor, movimentações financeiras, como baixa nos boletos, lançamentos de despesas etc.\r\nA ordem de pagamento começa pela chegada da mercadoria no estabelecimento, onde passará pelo setor de faturamento, onde lança a nota e o contas a pagar no sistema, e a nota fiscal junto com o boleto será encaminhado para a Diretoria para a conferencia para saber se foi lançada corretamente. Feito a conferencia, os boletos já assinados são encaminhados ao setor financeiro, onde cada boleto será arrumado na pasta de acordo ao vencimento para ser feito o pagamento.\r\nSão as liberações de pagamento para os gastos gerais, como boletos, espelhos de Notas Fiscais, a própria Nota Fiscal. Todas as ordens de pagamento são enviadas para a Diretoria, para ser feita a conferencia.\r\nA ordem de pagamento é analisada pela Diretoria, cuja análise é realizada juntamente com a nota fiscal, para que o pagamento seja efetuado, com seus devidos valores corretos. É então, enviado para o setor financeiro, onde será feito um relatório de vencimento, para serem feitos os pagamentos.', 1),
(166, '23', NULL, NULL, 1, 'Emitir recurso', 2, 1, 1, 1, 'Essa emissão de recurso está relacionada as contas a pagar, esse recurso é a forma de como serão realizados os pagamentos das despesas, pagamento de fornecedores, e outros pagamentos em geral. \r\nCaso não haja a existência do recurso, cabe a diretoria resolver a forma a ser realizada. A primeira forma é se existe dinheiro no banco, se não tem essa possibilidade é  esperada a entrada do movimento do dia, ou seja, as vendas realizadas no dia, se essa movimentação do dia não chegar ao valor das despesas, será feita a utilização de cheques da casa para ser realizado o desconto no banco, onde se entrega o cheque e o banco retornam com o crédito (dinheiro), mas, se os cheques não cobrirem as despesas, então terá de ser feita uma análise pela Diretoria, juntamente com o setor financeiro a medida a ser tomada.', 1),
(167, '23', NULL, NULL, 1, 'Lançar no sistema', 4, 1, 1, 1, 'É lançado tudo o que foi pago ou que deixou de ser pago.\r\nTodas as despensas são lançadas no sistema, as contas a pagar e de acordo quando o pagamento é feito, a baixa é dada.\r\nAs despesas diárias são lançadas no sistema para ser dada a baixa. Os boletos de fornecedores já se encontram no sistema e somente é efetuada a baixa.\r\nPara ser realizada a baixa, no boleto existe um número de controle que já se encontra no sistema, o financeiro insere o número de controle, informa a forma de pagamento e finaliza a baixa. Depois de realizada a baixa, é feito um relatório de títulos quitados, os boletos são arrumados juntos aos relatórios, em ordem, e por fim são enviados para a Diretoria conferir.', 1),
(168, '23', NULL, NULL, 1, 'Programar pagamento', 3, 1, 1, 1, 'É preparado um relatório no início da semana com todos os pagamentos do dia a dia. Os boletos são organizados em pastas por vencimento, para daí serem realizados os pagamentos.\r\nExiste uma análise de crédito a receber, que é feita para saber se pode ser feito o pagamento e se existirão dificuldades financeiras.', 1),
(169, '23', NULL, NULL, 1, 'Conferir ordem de pagamento', 5, 1, 1, 1, 'A ordem de pagamento é conferida pela Diretoria.\r\nA compra é acompanhada antes da chegada, onde já se sabe o valor a ser pago, o prazo de pagamento, qual a mercadoria que irá chegar.\r\nA conferencia é feita antes de ser recebida a ordem de pagamento, para se saber a forma de como será o pagamento.\r\nUm relatório é retirado em relação aos pagamentos do dia e os boletos são lançados pelo faturamento conforme as notas fiscais que estão em mãos. O financeiro somente faz a verificação e encaminha para o banco.', 1),
(170, '23', NULL, NULL, 1, 'Realizar pagamento', 6, 1, 1, 1, 'Geralmente esses pagamentos na grande maioria são boletos.\r\nO processo começa quando se faz uma separação das pendencias a pagar, de acordo ao vencimento, onde essas pendencias são encaminhadas para o banco, e serão efetuados os pagamentos, assim como, esses pagamentos podem ser realizados também via internet. Existe também um pagamento chamado de carteira (quando não há a existência do boleto), onde o próprio fornecedor vem receber o pagamento. \r\nQuando a mercadoria é chegada, informa-se de imediato ao financeiro qual será a forma de pagamento, sendo em boleto ou não, essa informação é através da ordem de compra ou no próprio boleto.', 1),
(171, '23', NULL, NULL, 1, 'Dar baixa no pagamento', 7, 1, 1, 1, 'Os boletos são conferidos pela Diretoria, são arquivados por dia de pagamento, no dia do pagamento é retirado um relatório para ser saber o que vai ser pago no dia. É encaminhado para o banco, onde será pago.  O banco envia uma via do boleto já pago, onde será dada a baixa no sistema.\r\nA ordem de pagamento já se encontra no sistema, a baixa somente é feita quando o boleto é chegado do banco.\r\nEssa baixa é realizada pelo próprio sistema. Os boletos são conferidos e a baixa é realizada.', 1),
(172, '23', NULL, NULL, 1, 'Encaminhar para a conferência', 8, 1, 1, 1, 'Todas as movimentações financeiras do dia com os relatórios bancários são encaminhadas para a Diretoria realizar a conferência. \r\nDado a baixa de todos os movimentos do dia, tanto o que foi pago ou recebido (entradas e saídas), é arrumado os relatórios e encaminhados para a Diretoria realizar a verificação do que entrou e saiu da empresa, e observar se tudo está conforme e os valores estão batendo, mas, caso algo não esteja conforme ou algum valor não esteja batendo, o diretor irá comunicar o financeiro, para que seja feita uma reunião e assim realizar uma análise com a diretoria e financeiro reunidos, para identificar o que houve de errado e ser solucionado o problema.', 1),
(173, '23', NULL, NULL, 1, 'Receber o pedido de volta', 9, 1, 1, 1, 'Quando o cliente quer devolver um pedido, ele vai até o conferente e apresenta o motivo da devolução. O conferente analisa junto com o cliente o motivo e o mesmo irá solicitar ao setor de faturamento a nota de crédito, sendo que essa nota de crédito pode ser usada para uma nova compra. O crédito emitido, o dinheiro só será devolvido se for erro operacional.\r\nEm relação ao cliente, caso a mercadoria esteja errada ou seja enviada errada, e tenha de ser feito a troca, o faturamento emite um crédito no valor daquela mercadoria, o cliente é encaminhado para o setor de vendas, retira uma outra nota da mercadoria correta e irá se dirigir até o caixa, onde o valor de crédito emitido cobrirá a nota. Caso o cliente ainda tenha crédito, ou podemos dizer, troco, será passado pelo caixa uma nova nota de crédito, onde essa nota de crédito é emitida pelo faturamento. O erro pode ocorre de ambas as partes, sendo do vendedor, como também do cliente.', 1),
(174, '23', NULL, NULL, 1, 'Atender o cliente no caixa', 10, 1, 1, 1, 'Os atendimentos são a respeito de pagamentos, liberações de notas, pedidos, entre outros.\r\nNo pedido, por exemplo, o cliente segue diretamente para o caixa com o pedido em mãos (esse pedido foi passado pelo vendedor), onde, o operador de caixa faz a localização do pedido, realiza o registro do pagamento (onde será dada a baixa no estoque dos produtos) e encaminha o cliente para o conferente, onde será entregue a mercadoria e Nota Fiscal ao cliente.', 1),
(175, '23', NULL, NULL, 1, 'Receber pagamento', 11, 1, 1, 1, 'O recebimento é feito em cheque, dinheiro e boleto. O setor de vendas envia a nota já especificando o tipo de venda para o caixa, onde é assinada, a depender da forma de pagamento, essa nota é enviada para o faturamento, onde se imprime o boleto ou duplicata, faz o retorno para o caixa, onde o cliente irá assinar. No final do dia, todas as notas serão passadas para o setor financeiro, e também para a Diretoria.', 1),
(176, '23', NULL, NULL, 1, 'Dar baixa no sistema', 12, 1, 1, 1, 'O vendedor emite a nota de cliente, e o caixa realiza a baixa no pagamento e encaminha o cliente para o conferente para que ele possa pegar a mercadoria e a nota fiscal\r\nQuando a nota do cliente é registrada, automaticamente a baixa é feita.', 1),
(177, '23', NULL, NULL, 1, 'Guardar valor no cofre', 13, 1, 1, 1, 'Infelizmente existe a possibilidade de assaltos, então tem-se um alto cuidado com os valores. \r\nValores a partir de 2000 reais, e a depender de como esteja o movimento da loja, já são colocados diretamente no cofre. No final do dia é feito a soma de todos os valores recebidos para a prestação de contas. \r\nÉ realizado uma prestação de contas feita pelo caixa para o financeiro, sendo que no final do dia, é tirado um relatório da movimentação do caixa, e a partir desse relatório é feita a prestação de contas. Estando tudo em conformidade, será passado no dia seguinte para a diretoria, para analisar o destino desse dinheiro, se irá para o banco ou será destinado para pagamentos.', 1),
(178, '23', NULL, NULL, 1, 'Fechar o cofre', 14, 1, 1, 1, 'Os valores de todas as lojas são conferidos, registrados e encaminhados para a Diretoria.\r\nExiste uma pessoa responsável pelo malote, onde também fará a verificação dos valores e terá a responsabilidade pelo envio desse malote para o banco.', 1),
(179, '23', NULL, NULL, 1, 'Enviar para a conferência', 15, 1, 1, 1, 'Antes do malote ser fechado e enviado para o Banco, deve ser conferido pelo setor financeiro, e logo após, que, dependendo de qual seja o valor, é analisado a melhor forma de transporte desse malote.', 1),
(180, '23', NULL, NULL, 1, 'Imprimir relatórios de caixa', 16, 1, 1, 1, 'Esses relatórios são impressos no sistema, através da ferramenta AMC caixa, com o objetivo de conferencia dos valores recebidos pelo caixa (o que entrou e saiu da empresa).', 1),
(181, '23', NULL, NULL, 1, 'Baixar cheques Compensados', 17, 1, 1, 1, 'É feito no sistema através da ferramenta AMC Gestor XE, com objetivo de realizar o controle financeiro e liberar o limite do cliente, a baixa não sendo feita o cliente fica com devedor.', 1),
(182, '23', NULL, NULL, 1, 'Relatórios de Extratos Bancários', 18, 1, 1, 1, 'É feito no próprio site do banco (Caixa econômica). \r\nCom esse relatório é feito a conferencia de créditos e débitos na conta. Confere-se também os créditos que entram para que possam ser dadas as baixas.', 1),
(183, '23', NULL, NULL, 1, 'Baixa em boletos de clientes creditados', 19, 1, 1, 1, 'É feito no sistema, através da ferramenta Gestor XE.\r\nO objetivo é dar baixa nos títulos de cliente em aberto, ou seja, os clientes com pendencias a pagar. Se o cliente já efetuou o pagamento, então o setor financeiro deve através do sistema, realizar a baixa, e assim será constado que o pagamento foi realizado pelo cliente.', 1),
(184, '23', NULL, NULL, 1, 'Conferir e organizar o financeiro do dia anterior', 20, 1, 1, 1, 'Já foi conferido o caixa e também feito o relatório de banco, é feito o fechamento e encaminhado para a Diretoria realizar a conferencia e estar informada sobre o movimento financeiro do dia.', 1),
(185, '23', NULL, NULL, 1, 'Conferir dinheiro e cheque recebido do caixa (físico com o sistema)', 21, 1, 1, 1, 'Conferir o físico com o sistema ambos têm que está com valores iguais.\r\nNo final do dia, irá ser realizada a conferencia dos valores fisicamente e com o que foi lançado no sistema.', 1),
(186, '23', NULL, NULL, 1, 'Informar cheque de cliente devolvido', 22, 1, 1, 1, 'Cheques devolvidos são informados no sistema para controle de cobrança e bloqueio de limite de clientes.\r\nQuando o extrato da conta é retirado são identificados todos os cheques devolvidos, serão informados no sistema com os motivos, constando assim inadimplência daquele cliente, e assim serão geradas as cobranças.', 1),
(187, '23', NULL, NULL, 1, 'Conferir Transferências do caixa para o financeiro', 23, 1, 1, 1, 'Feita para verificar se os valores retirados do caixa pelo financeiro, estão batendo.\r\nQuando há despesas diárias, o financeiro faz a retirada dos valores no caixa para serem pagas as despesas, e sempre informando o valor retirado, para que no final do dia seja feita a conferencia dessas retiradas, e assim o caixa e o financeiro façam a verificação para saber está batendo o valor total.', 1),
(188, '23', NULL, NULL, 1, 'Enviar remessa de boletos emitidos para o banco no final do dia', 24, 1, 1, 1, 'Feito para que o banco identifique os boletos emitidos.\r\nO banco deve ter todas informações sobre os boletos emitidos, para ser reconhecido o título (crédito) do cliente e após reconhecido é enviado de volta ao setor financeiro, para o mesmo realizar a baixa.', 1),
(189, '23', NULL, NULL, 1, 'Back-up', 25, 1, 1, 1, 'Existe um HD externo onde deve conter as informações referentes a todo o acontecimento referente a loja é constado nesse HD.\r\nTodas as informações do dia, serão acrescentadas em um HD externo e assim ser salvo todos os dados.', 1),
(190, '24', NULL, NULL, 1, 'Abertura de Loja', 1, 1, 1, 1, 'O Gerente é responsável pela abertura da loja, que é exatamente às 7:30 da manhã. Irá realizar a abertura do sistema e preencher as planilhas de reuniões.', 1),
(191, '24', NULL, NULL, 1, 'Acompanhamento de pessoal', 2, 1, 1, 1, 'Acompanhamento de horário, de folgas.\r\nNesse acompanhamento de pessoal, é verificado a pontualidade e frequência dos funcionários, se estão usando o fardamento, higiene pessoal. Com o objetivo de manter um controle e organização desses funcionários, perante a organização.', 1),
(192, '24', NULL, NULL, 1, 'Análise de venda', 4, 1, 1, 1, 'A análise de venda é feita com base na observação dos resultados do mês ou ano anterior, com o objetivo de se visualizar o crescimento da loja nas vendas e fazer uma comparação com a situação atual.\r\nNa emissão do relatório via sistema, verifica-se os pontos que podem ser melhorados e assim, efetuar as mudanças. É de extrema importância também que se verifique por quais motivos as vendas são perdidas.', 1),
(193, '24', NULL, NULL, 1, 'Verificação de contagem parcial de estoque', 5, 1, 1, 1, 'O estoque é dividido em subgrupos, essa verificação deve ser feita diariamente, sem exceção. No sistema se encontram todas as mercadorias existentes no estoque físico, essa verificação é feita para confirmação se realmente o que está no sistema é o que consta no estoque físico. Após essa contagem, havendo divergências, será passada ao setor fiscal, onde o mesmo irá analisar e realizar a atividade afim de solucionar o problema no estoque.\r\nA emissão de relatório ocorre via sistema versus comparativo com contagem física, com o objetivo de se manter os estoques ajustados e confiáveis para vendedores e clientes.', 1),
(194, '24', NULL, NULL, 1, 'Gerenciamento de conflitos internos', 6, 1, 1, 1, 'Apesar de existirem conflitos (discussões) entre os colaboradores, a empresa presa que sejam solucionados rapidamente e que, de preferência, não ocorram. Por isso é necessário que haja o acompanhamento do gerente no ambiente de trabalho, fazendo assim, com que não haja conflitos.\r\nUma maneira eficaz, é o diálogo entre as partes envolvidas para manter a equipe com o mesmo objetivo.', 1),
(195, '24', NULL, NULL, 1, 'Gerenciamento de atendimento ao cliente', 7, 1, 1, 1, 'A análise de atendimento dos conferentes e dos vendedores deve ser feita para verificar se as tarefas realizadas pelos mesmos, estão sendo executadas de maneira correta.\r\nÉ necessária essa atenção ao atendimento, para manter o cliente satisfeito com um excelente serviço, sem deixar algo a desejar para o cliente.\r\nProcura-se verificar diariamente a satisfação do cliente, o que é de extrema importância para um bom atendimento. Sendo o bom atendimento o principal passo para a fidelização do cliente.\r\nSão atendidas também as reclamações, que é algo que deve ser evitado em todo o ambiente organizacional, deve-se buscar sempre a satisfação do cliente. Outro ponto importante buscado pelo supervisor em relação aos clientes, são as sugestões de melhorias, afinal, todo ambiente estará sempre aberto a possíveis melhorias, e o feedback do cliente é muito importante.', 1),
(196, '24', NULL, NULL, 1, 'Análise do vencimento dos produtos', 8, 1, 1, 1, 'O vencimento de produtos deve ser verificado diariamente. Após a chegada dos produtos, os arrumadores anotam a data de vencimento do determinado produto e passam para o conferente. O gerente solicita sempre que o produto estiver próximo a vencer, é comunicado de imediato, para que o produto possa ser comercializado o mais rápido possível.\r\nA verificação da validade dos itens visa evitar a venda de produtos fora de prazo ao cliente e perdas para a empresa.', 1),
(197, '24', NULL, NULL, 1, 'Análise de produtos avariados', 9, 1, 1, 1, 'Feita a verificação no estoque, o produto pode estar avariado sem motivos especiais ou por manuseio incorreto, o responsável pelo manuseio incorreto deve pagar por esse produto.\r\nO produto com avaria é descartado ou substituído pelo próprio fornecedor.\r\nVerificam-se as condições dos produtos, para evitar a venda de produto inadequado para consumo.', 1),
(198, '24', NULL, NULL, 1, 'Análise de transferências de produtos (entre lojas)', 10, 1, 1, 1, 'Etapa referente a análise de transferências de produtos (entre lojas).', 1),
(199, '24', NULL, NULL, 1, 'Análise de falta e ou sobra de produtos', 11, 1, 1, 1, 'A verificação de falta ou sobra dos produtos é constatada na contagem.\r\nRealiza-se a Comparação no estoque do sistema x contagem física, deixando informado os produtos que possam vir a faltar, necessitando assim a sua reposição e para verificar a possibilidade de desvios no manuseio do produto.', 1),
(200, '24', NULL, NULL, 1, 'Análise de giro dos produtos', 12, 1, 1, 1, 'Análise de venda em relação a se o produto está sendo vendido ou não, para ser realizada ação de venda em cima desse produto, como promoção, melhor exposição desse produto e também diminuição nos preços.\r\nEmissão de relatório via sistema e análise de saída dos produtos. Verificar a venda destes produtos com isso a necessidade de reposição no estoque, para que não seja gerada a falta desse produto.', 1),
(201, '24', NULL, NULL, 1, 'Análise de cadastro de clientes', 13, 1, 1, 1, 'Análise da situação do cliente, se está em dia, se há devoluções de cheques do cliente, se demora para pagar.\r\nVerificação dos documentos apresentados. Buscar todas as informações necessárias para segurança da empresa, garantindo confiabilidade aos clientes.', 1),
(202, '24', NULL, NULL, 1, 'Análise de limite de crédito financeiro de clientes', 14, 1, 1, 1, 'Mesmo sentido da atividade anterior. Há verificação se a situação do cliente está boa, para analisar a possibilidade de aumento do seu limite de compra. Assim como, se a situação do cliente não for boa, o limite é mantido e pode até mesmo ser reduzido.\r\nBaseando-se nas informações de créditos fornecidas pelos clientes. Para determinar o limite de compras e diminuir os riscos de possíveis débitos.', 1),
(203, '24', NULL, NULL, 1, 'Verificação de produtos para promoção e anúncio em rádio', 15, 1, 1, 1, 'São selecionados os produtos e as quantidades para o anuncio. Existem critérios para essa seleção: quantidade de estoque, uma quantidade maior do produto, para poder ser colocado em anuncio; quantidade certa para anúncio, como se existisse uma quantidade para suprir o período do anuncio; margem de rentabilidade, quando o produto produz rentabilidade ou não; qual o produto tem valor de giro mais alto, que produza mais lucro. Já existem as empresas responsáveis pelo anuncio, é necessário apenas passar os produtos, e as descrições com os preços a serem anunciados.', 1),
(204, '24', NULL, NULL, 2, 'Acompanhamento de Resultado dos Vendedores', 16, 1, 1, 1, 'Diariamente é realizada uma reunião com os vendedores antes de serem iniciadas as atividades. Nessa reunião são lançadas e passadas as metas aos vendedores, essas metas podem ser diárias, semanais ou mensais, onde o vendedor terá o desafio de alcança-las. O supervisor lança no final do dia todas a vendas realizadas pelos vendedores, e somente no dia seguinte quando for realizada a reunião com os vendedores novamente, são informados se a meta diária foi alcançada ou não.\r\nOutro processo é a emissão de relatórios diários. Nesses relatórios contém os valores de vendas efetuados no dia pelos vendedores. Realiza-se cobranças aos vendedores, referentes a efetuarem ligações aos seus clientes, nessas ligações são ofertados os produtos e sinalizados os que estão em promoções. É passado aos vendedores o demonstrativo de resultado de venda versus a meta, quanto eles venderam e o que falta para ser atingido o objetivo.', 1),
(205, '24', NULL, NULL, 1, 'Acompanhar contagem de estoque', 17, 1, 1, 1, 'No final do dia, quando a loja está para ser fechada, o supervisor realiza a contagem no estoque, para que no dia seguinte, ao iniciar as atividades seja novamente contada.', 1),
(206, '24', NULL, NULL, 1, 'Fechamento de sistema', 18, 1, 1, 1, 'Para realizar o fechamento do sistema é necessário entrar no mesmo e realizar a verificação nas vendas diárias. Essas vendas são lançadas no sistema por cada vendedor e o encerramento é feito.', 1),
(207, '25', NULL, NULL, 1, 'Abertura de Loja', 1, 1, 1, 1, 'O supervisor é responsável pela abertura da loja, que é exatamente às 7:30 da manhã.  Irá abrir o sistema, vai preencher as planilhas de reuniões.', 1),
(208, '25', NULL, NULL, 1, 'Acompanhamento de pessoal', 2, 1, 1, 1, 'Acompanhamento de horário, de folgas.\r\nNesse acompanhamento de pessoal, é verificado a pontualidade e frequência dos funcionários, se estão usando o fardamento, higiene pessoal. Com o objetivo de manter um controle e organização desses funcionários, perante a organização.', 1),
(209, '25', NULL, NULL, 1, 'Conferência de estoque', 3, 1, 1, 1, 'É feita uma conferência entre o sistema e o depósito, com o objetivo de saber a situação atual do estoque, para que assim, não haja problemas gerais com o estoque, como falta de mercadorias, avarias, dentre outros.\r\nIrá ser verificado se está batendo com o sistema, o que está presente no deposito. É uma atividade feita diariamente. É entregue uma listagem para o conferente com a sessão de produtos que irão ser conferidos no estoque físico e comparado com o sistema, é uma atividade realizada no fim do turno e quando há a existência de divergência nas apurações é feita uma nova conferencia pela manhã antes do início das atividades. Os responsáveis por cada loja havendo divergência, se reúnem para poder analisar e buscar a solução para o problema ocorrido, no fim da apuração é enviado ao setor fiscal, para que haja a validação.\r\nNo sistema há as sessões das mercadorias, o supervisor irá conferir o que está no deposito somente se houver alguma divergência, pois o conferente passa a listagem com a apuração dos devidos produtos para o supervisor, onde o mesmo irá conferir juntamente com o sistema, e caso algo não esteja batendo, irá imediatamente no deposito conferir.', 1),
(210, '25', NULL, NULL, 1, 'Reuniões e metas com vendedores', 4, 1, 1, 1, 'A reunião é feita diariamente, com os vendedores toda manhã, antes de serem iniciadas as atividades. São lançadas e passadas as metas aos vendedores, essas metas podem ser diárias, semanais ou mensais, onde o vendedor terá o desafio de alcança-las. O supervisor irá lançar no final do dia todas a vendas realizadas pelos vendedores, e somente no dia seguinte quando for realizada a reunião com os vendedores, irá informar dizendo se a meta diária foi alcançada ou não.', 1),
(211, '25', NULL, NULL, 1, 'Gerenciamento de conflitos internos', 5, 1, 1, 1, 'Há a existência de conflitos (discussões) entre os colaboradores, o que não deve existir jamais. É necessário que haja o acompanhamento do gerente no ambiente de trabalho, fazendo assim, com que não haja de maneira alguma a existência de conflitos. \r\nUma maneira eficaz, é o diálogo entre as partes envolvidas para manter a equipe com o mesmo objetivo.', 1),
(212, '25', NULL, NULL, 1, 'Atendimento aos clientes', 6, 1, 1, 1, 'O supervisor no seu âmbito, procura verificar diariamente a satisfação do cliente, o que é de se extrema importância, afinal um bom atendimento, é o principal passo para a fidelização do cliente.\r\nSão atendidas também as reclamações, que é algo que deve ser evitado em todo e qualquer ambiente organizacional, deve-se buscar sempre a satisfação do cliente. Outro ponto importante buscado pelo supervisor em relação aos clientes, são as sugestões de melhorias, afinal, todo ambiente estará sempre aberto a possíveis melhorias, o feedback do cliente é muito importante a ser ouvido.', 1),
(213, '25', NULL, NULL, 1, 'Acompanhamento de deposito', 7, 1, 1, 1, 'No estoque estará presente todos os produtos fornecidos pelo Atacadão Bahia, então é algo que deve ser constantemente acompanhado.\r\nHigienização do depósito, que é algo de se extrema importância, já que os produtos ofertados em sua grande maioria são alimentícios.  Outro ponto é uma boa arrumação desse estoque, para que possa minimizar ao máximo o risco com avarias e perdas de mercadorias, mantendo assim os produtos bem organizados em suas devidas sessões e descrições.', 1),
(214, '25', NULL, NULL, 1, 'Acompanhamento de entrega', 8, 1, 1, 1, 'No acompanhamento de entregas são observados os horários de saídas dos veículos, definidas as melhores rotas para as entregas.\r\nOs veículos devem ser supervisionados, para que seja observado seu estado, pois deve estar em boas condições. Essa verificação também é feita para que se tenha um controle do estado do veículo, arranhões ou uma possível batida, qualquer anormalidade do veículo após sua saída. \r\nObservar também se houve divergências nas entregas, para que assim, se mantenha informado quais os motivos, e serem tomadas medidas para que não venha a ocorrer novamente.', 1),
(215, '25', NULL, NULL, 1, 'Transferência de mercadoria (entre lojas)', 9, 1, 1, 1, 'As transferências gerais são feitas 3 vezes na semana (segunda, quarta e sexta) a partir das 8 horas da manhã, as transferências avulsas que são feitas diariamente e a depender da solicitação da demanda do vendedor, pois possa ser que no deposito não esteja presente determinado produto solicitado pelo cliente, então entra em contato com a outra loja, solicitando os produtos ao gerente Eliseu. Nesse processo deve ser dado a entrada na mercadoria pelo faturamento, para que só assim a mercadoria esteja disponível para transferência.', 1),
(216, '25', NULL, NULL, 1, 'Analise de falta e ou sobra de produtos', 10, 1, 1, 1, 'A verificação de falta ou sobra dos produtos é constatada na contagem.\r\nRealiza-se a Comparação no estoque do sistema x contagem física, deixando informado os produtos que possam vir a faltar, necessitando assim a sua reposição e para verificar a possibilidade de desvios no manuseio do produto.', 1),
(217, '25', NULL, NULL, 1, 'Verificação de contagem parcial de estoque', 11, 1, 1, 1, 'O estoque e dividido em subgrupos, diariamente é feita essa verificação e não pode deixar de ser feita. No sistema se encontra todas as mercadorias existentes no estoque físico, essa verificação é para poder confirmar se realmente o que está no sistema é o que está no estoque físico, após essa contagem, havendo divergências, irá ser relata e passada ao setor fiscal, onde o mesmo irá realizar a atividade de acerto de estoque.\r\nEmissão de relatório via sistema x comparativo com contagem física. Com o objetivo de se manter os estoques ajustados e confiáveis para vendedores e clientes.', 1),
(218, '25', NULL, NULL, 1, 'Analise de giro dos produtos', 12, 1, 1, 1, 'Analise de venda em relação se o produto está sendo vendido ou não, para ser realizada ação de venda em cima desse produto, como promoção, uma melhor exposição desse produto e também é realizada a baixa nos preços.\r\nEmissão de relatório via sistema e análise de saída dos produtos. Verificar a venda destes produtos com isso a necessidade de reposição no estoque, para que não seja gerada a falta desse produto.', 1),
(219, '25', NULL, NULL, 1, 'Acompanhar data de validade e Possíveis Avarias', 13, 1, 1, 1, 'Diariamente é verificado. Após a chegada dos produtos, os arrumadores anotam e passam para o conferente a data de vencimento daquele determinado produto. O supervisor solicita sempre que o produto estiver próximo a vencer, é comunicado de imediato, para que o produto possa ser comercializado o mais rápido possível.\r\nVerificando validade dos itens. Evitar a venda de produtos fora de prazo ao cliente e perdas para a empresa.\r\nAcompanha todo o estoque fisicamente. Encontrado esses possíveis problemas, deve ser passado as informações para os compradores a data de vencimento, para ser realizada uma ação (promoção ou redução no preço daquela mercadoria) na mercadoria, para que possa ser vendida o mais rápido possível. \r\nO produto é avariado por ele mesmo ou quando é manuseado de forma incorreta (sendo o responsável a pagar por esse produto). O produto avariado é descartado ou o próprio fornecedor recolhe e faz a substituição do produto.', 1),
(220, '25', NULL, NULL, 1, 'Conferencia de mercadoria (acompanhamento do conferente)', 14, 1, 1, 1, 'Quando a mercadoria é recebida deve ser realizada uma verificação, se está mercadoria está conforme as especificações do pedido, assim como a qualidade e validade dessa mercadoria.\r\nA conferencia nas chegadas e saídas de mercadorias, são feitas pelos conferentes, mas para que se tenha um maior controle e certificação, o supervisor realiza também esse papel.\r\nAcompanhamento de saída de mercadoria para o cliente e a entrada pelo fornecedor. Deve ser analisada a quantidade, nota fiscal, valor, boleto, data de vencimento (entrada).', 1),
(221, '25', NULL, NULL, 1, 'Acompanhar contagem de estoque', 15, 1, 1, 1, 'No final do dia, quando a loja está para ser fechada, o supervisor realiza a contagem no estoque, para que no dia seguinte, ao iniciar as atividades seja novamente contada.', 1),
(222, '25', NULL, NULL, 1, 'Fechamento de sistema', 16, 1, 1, 1, 'É dada a entrada no sistema, realiza a verificação nas vendas diárias, essas vendas são lançadas no sistema, sendo por cada vendedor e o encerramento é feito.', 1),
(224, '24', NULL, NULL, 1, 'Análise de estoque', 3, 1, 1, 1, 'O setor de gerencia, assim como outros setores, tem o auxílio da ferramenta do sistema AMC, chamada de GESTOR XE para consulta de estoque, relatórios de estoque, movimentações de estoque, ou seja, todas as atividades envolvendo estoque e o PDV para realizar alterações nos itens de vendas (produtos).\r\nEssa atividade de análise de estoque é feita diariamente por setor ou seção de mercadoria, para assim, solicitar aos compradores o abastecimento do estoque, antes de vir a faltar.\r\nÉ feita uma emissão de relatório via sistema, para verificar as necessidades de aquisições ou não, onde será realizada uma conferência entre o sistema e o depósito, com o objetivo de saber a situação atual do estoque, para que assim, não haja problemas gerais, como estoque baixo, falta de mercadorias, avarias, dentre outros.\r\nÉ verificado se o estoque físico confere com o que mostra o sistema. É entregue uma lista para o conferente com a sessão de produtos que serão conferidos no estoque físico para a comparação com o sistema. Essa é uma atividade que\r\né realizada no fim do turno. Quando há divergência nas apurações, é feita uma nova conferencia pela manhã antes do início das atividades. Em caso de confirmação de\r\ndivergência, os responsáveis por cada loja se reúnem para poder analisar e buscar a solução para o problema ocorrido. No fim da apuração, é enviado ao setor fiscal para que haja a validação.', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `maturidade`
--

CREATE TABLE IF NOT EXISTS `maturidade` (
  `descricao` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `maturidade`
--

INSERT INTO `maturidade` (`descricao`, `id`) VALUES
('Estado inicial', 1),
('Repetitivo', 2),
('Definido', 3),
('Gerenciado', 4),
('Otimizado', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `microprocessos`
--

CREATE TABLE IF NOT EXISTS `microprocessos` (
  `id` int(11) NOT NULL,
  `subprocesso_id` int(11) NOT NULL,
  `descricao` varchar(5000) DEFAULT NULL,
  `numero` int(10) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `classificacao_id` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `microprocessos`
--

INSERT INTO `microprocessos` (`id`, `subprocesso_id`, `descricao`, `numero`, `titulo`, `pessoas`, `classificacao_id`, `periodicidade_id`, `horas`, `maturidade_id`) VALUES
(1, 1, 'Feita a pesquisa de potenciais clientes, o representante comercial, após entrar em contato com algum colaborador da empresa deve alterar o status dessas empresas para LEADS da seguinte forma: em MARKET ele dele clicar no botão “+” laranja, ao lado dos dados da empresa referente, o botão se refere a NOVO LEAD. Nessa aba é necessário acrescentar algumas informações referente ao colaborador “representante” da empresa e histórico referente ao contato que teve com o cliente, ao final deve clicar em “Cadastrar”. Dessa forma o cliente é alterado do status de MARKET para LEAD.', 1, 'Modificar status para LEADS', 1, 1, 2, 1, 2),
(4, 29, 'O benefício odontológico é da empresa Odonto Sytem e para fazer o faturamento do mesmo, é solicitado o arquivo texto da empresa, todos os valores que constam no arquivo e que é possível efetuar desconto é validado, em seguida devolvido para a Odonto System em forma de relatório para ser faturado. A Odonto Sytem então, valida os descontos e emite a nota fiscal. Envia novamente para o setor da Folha, que vai gerar um relatório, em seguida arquivar no servidor, elaborar o boletim de medição e enviar para o setor de pagamento.', 1, 'Benefício Odontológico', 1, 1, 1, 1, 1),
(5, 29, 'O cartão multi benefício utilizado é o Nutricash, equivalente a um cartão de crédito. O valor utilizado neste cartão é descontado do contracheque do funcionário.\r\nPara fazer o desconto no contracheque, é baixado o arquivo do mês (arquivo importador), esse arquivo é importado para a Folha, processado pelo servidor e a partir dele é produzido o arquivo eletrônico.\r\nSolicita-se, então, o repasse para a empresa do cartão multi benefício.\r\nA empresa envia o repasse com a confirmação dos valores a serem pagos para o setor de pagamento e o financeiro efetua o pagamento.\r\nPosteriormente o relatório é gerado a partir do arquivo eletrônico e integrado junto com o boleto.\r\nTodo material que é produzido pelo departamento da Folha de pagamento é enviado para o banco de dados e salvo. Todos os colaboradores têm acesso a todos os arquivos salvos no banco de dados.', 2, 'Cartão Multi Benefício', 1, 1, 1, 1, 1),
(6, 29, 'O benefício do plano de saúde é da empresa HAP VIDA. Até o dia 20 de cada mês é feito o tratamento de cancelar ou acrescentar pessoas ao benefício no sistema da empresa HAP VIDA.\r\nPara fazer o faturamento, o arquivo de texto é baixado no sistema, e automaticamente é transformado em PDF. A partir desse arquivo é feito o relatório de consistência.\r\nÉ então, lançado o desconto na Folha de pagamento e feita a integração do valor. Confronta-se o arquivo de remessa da empresa (HAP VIDA) com os valores descontados na Folha.\r\nSolicita-se o pagamento através de boletim de medição. A nota fiscal é lançada e em seguida paga pelo setor de contabilidade.', 3, 'Plano de saúde', 1, 1, 1, 1, 1),
(7, 29, 'É permitido que o banco ligue do dia 5 ao dia 15 de cada mês, às terças e quintas no final da tarde. Avalia-se se a parcela está de acordo com o desconto legal, se estiver de acordo o empréstimo consignado é autorizado, se não estiver e não houver como mudar, não é autorizado. Todo mês um funcionário vai à agência pegar o extrato de desconto para entregar ao setor da Folha de pagamento. Após o extrato ser entregue à Folha é feito o desconto atualizado de acordo com o extrato.\r\nFaz-se integração financeira dos valores que são pagos todo dia 1º.', 4, 'Empréstimo consignado Caixa Econômica', 1, 1, 1, 1, 1),
(8, 29, 'Para fazer o faturamento deste benefício é necessário importar o arquivo texto. O sistema do BV é acessado na internet através de login e senha, o sistema do Banco Itaú é instalado no próprio computador. Através do sistema é baixado o arquivo texto e acrescentado os valores na Folha. Com as informações do arquivo texto é feito um relatório informando os afastados e desligados. Esse relatório é enviado de volta aos bancos para ser faturado. É feita a integração financeira dos valores descontados. O valor do Banco Itaú é debitado da conta da empresa e o sistema do BV é gerado um boleto a ser pago.', 5, 'Banco Itaú, Banco Votorantim (BV) consignado', 1, 1, 1, 1, 1),
(9, 29, 'A relação de eventos é enviada para o fornecedor e o mesmo envia a fatura baseado na relação de eventos (quantidade de pessoas).', 6, 'Seguro de vida', 1, 1, 1, 1, 1),
(10, 29, 'Apesar de não ser muito comum, é um convênio que inclui benefícios médicos e odontológicos do Sest Senat. A empresa recebe, a partir da demanda, a autorização de desconto do funcionário com o valor. Esse valor é descontado na Folha de pagamento do funcionário.', 7, 'Convenio Sest Senat', 1, 1, 1, 1, 1),
(11, 33, 'Se houver caso de funcionário afastado no período, é feito o reprocessamento da folha de pagamento deste funcionário (atualização da folha), a validação das verbas legais e a retirada do benefício de alimentação que é feita automaticamente ao processar o afastamento do mesmo.', 1, 'Reprocessar funcionário na Folha de Pagamento', 1, 1, 1, 1, 1),
(12, 34, 'Similar ao item 5.2.8.1., a folha de pagamento do funcionário é atualizada e ele é reativado na folha de pagamento. A depender do tempo de afastamento é verificado se mudaram os benefícios e se ele se afastou com pendências. A pendência é por exemplo, se o funcionário recebeu vale alimentação por 30 dias, mas se afastou com 10 dias de trabalho, os 20 dias são descontados no retorno.', 1, 'Reprocessar funcionário na folha', 1, 1, 1, 1, 1),
(13, 36, 'Os impostos legais são o INSS que é validado pela tabela vigente do INSS;\r\nImposto de Renda que também é validado pela tabela vigente do Imposto de Renda;\r\nA Contribuição Sindical que é feita uma vez no ano;\r\nA Pensão Alimentícia é validada através de ofício. O ofício é um documento do poder judiciário que é enviado à empresa com base na demanda. É feita a conferencia um a um dos novos cadastros ou cadastros que foram modificados. Dos cadastros antigos, a conferência e validação são feitas por amostragem.', 1, 'Validar descontos legais', 1, 1, 1, 1, 1),
(14, 36, 'Todo tipo de remuneração que o funcionário recebe é validado, porém existem dois tipos de validação: a grande maioria é feita por amostragem, e outras mais específicas são checadas individualmente. Os descontos autorizados da Folha são descritos na tabela PROCESSO DE FOLHA na parte de Checklist dos Processamentos da Folha de Pagamento.', 2, 'Validar outros descontos e remunerações', 1, 1, 1, 1, 1),
(15, 37, 'Após ser feita a triagem, a Folha de Pagamento envia os formulários à Diretoria para que o diretor valide o pagamento das verbas solicitadas e em seguida envie de volta à Folha de Pagamento.', 2, 'Enviar formulários à Diretoria', 1, 1, 1, 1, 1),
(16, 37, 'Ao receber os formulários enviados pela diretoria, a Folha de Pagamento verifica a validação dos mesmos. Os formulários que são validados pela diretoria têm os valores acrescentados na Folha de Pagamento do respectivo funcionário. É informado ao coordenador de cada respectivo setor os formulários que não forem validados pela diretoria.', 3, 'Verificar validação de formulários', 1, 1, 1, 1, 1),
(17, 42, 'Caso o banco perceba alguma inconsistência nas contas bancárias a serem feitos os pagamentos, o setor de Folha de pagamento é informado e deve tentar solucionar o problema. Normalmente são problemas com as contas dos funcionários, nesses casos o setor de Folha de pagamento fica no aguardo do funcionário resolver seu problema por cerca de duas semanas, se o problema não for resolvido, é enviado para o banco novamente o arquivo de remessa sem os valores que houve rejeição.', 1, 'Verificar aceitação do arquivo enviado', 1, 1, 1, 1, 1),
(18, 42, 'Para fazer a integração é comparado o valor total da Relação de Líquidos da Folha como arquivo de remessa enviado e aceito pelo banco. Se a relação e o arquivo de remessa estiverem diferentes, deverá ser feita a conferência individual por funcionário para verificar onde há inconsistência. Caso o banco tenha rejeitado algum valor como explicado no item 5.2.17.1. não é feita a integração do valor rejeitado e apenas dos valores aceitos.', 2, 'Fazer integração do valor', 1, 1, 1, 1, 1),
(19, 42, 'A conciliação bancária é feita a partir da integração. Após a integração ser feita, o Financeiro verifica se os valores estão corretos. Se estiverem corretos é autorizado o pagamento, se não estiverem, retorna para Folha de Pagamento para fazer a correção dos valores para ser autorizado o pagamento.', 3, 'Conciliação de Valores', 1, 1, 1, 1, 1),
(20, 42, 'Após feita a integração financeira com o valor correto	e a conciliação bancária, o setor Financeiro autoriza o pagamento do salário dos funcionários.', 4, 'Autorizar Pagamento', 1, 1, 1, 1, 1),
(21, 43, 'Se houver caso de funcionário afastado no período, é feito o reprocessamento da folha de pagamento deste funcionário (atualização da folha), a validação das verbas legais e a retirada do benefício de alimentação que é feita automaticamente ao processar o afastamento do mesmo.', 1, 'Reprocessar funcionário na Folha de Pagamento', 1, 1, 1, 1, 1),
(22, 44, 'Similar ao item 5.2.8.1., a folha de pagamento do funcionário é atualizada e ele é reativado na folha de pagamento. A depender do tempo de afastamento é verificado se mudaram os benefícios e se ele se afastou com pendências. A pendência é por exemplo, se o funcionário recebeu vale alimentação por 30 dias, mas se afastou com 10 dias de trabalho, os 20 dias são descontados no retorno.', 1, 'Reprocessar funcionário na folha', 1, 1, 1, 1, 1),
(23, 37, 'Até dia 20 de cada mês o setor da Folha recolhe do servidor eletrônico os formulários de Padronização de Pagamento de Verba e faz a triagem dos mesmos verificando se é procedente e a depender do tipo da verba leva à Diretoria.', 1, 'Fazer triagem dos formulários de solicitação de Pagamento de Verba', 1, 1, 1, 1, 1),
(24, 266, 'Limites:\r\nAté 5.000,00 – Setor de Crédito;\r\nDe 5.001,00 e 15.000,00 – Setor de Crédito e Gerência Comercial;\r\nDe 15.000,00 acima – Gerência Comercial e Diretoria.', 1, 'Autonomia de Crédito', 1, 1, 1, 1, 1),
(25, 266, 'Ocorre em 03 casos:\r\n1º - Quanto o pedido é feito pelo cliente e excede 20% do limite;\r\nUsa-se o critério de avalição do histórico de cliente na empresa, para liberação do pedido e raramente altera-se o limite;\r\n2º - Quanto solicitado pelo representante vendedor, o qual deverá apresentar a solicitação acompanhada de boletos pagos pelo cliente com valores iguais ou superiores ao limite solicitado;\r\n3º - Semestralmente pelo departamento financeiro, com base em pesquisa de SERASA e histórico financeiro na empresa. Podendo o cliente ter limite aumentado, tanto quanto reduzido e até suspenso, de acordo com a avaliação.', 2, 'Reavaliação de Limites', 1, 1, 1, 1, 1),
(26, 269, 'ATIVA:\r\nAtendimento rotineiro de toda carteira direcionada à central;\r\n- Atendimento a todos os clientes com prazo sem venda igual ou superior a 14 dias. Independente da região, rota ou carteira de vendedor ou representante.\r\nRECEPTIVA:\r\n- O cliente faz o contato com a empresa e é atendido independente de demais regras de atuação. Em caso de ter venda efetuada pelo vendedor em menos de 14 dias e o cliente informar que foi visitada e não está conseguindo contato com o vendedor, a supervisão ou gestão autoriza ou não a inclusão do pedido para o mesmo.\r\nCONDIÇÕES DE ATUAÇÃO\r\n- São respeitadas as condições normais do cadastro do cliente, como prazo, limites, tabela de preços;\r\n- A central de negócios segue a programação de fechamento de cargas pela rota. Ou seja, todas as entregas da central de negócios ocorrem juntamente com as entregas do representante da região;\r\n- Pedido Mínimo: Também é de R$300,00;\r\n- Em caso de o representante/vendedor visitar um cliente que já compra pela central de negócios deverá que obedecer aos mesmos critérios. Salvo em caso de avaliação gerencial.', 1, 'Regras de Atuação da Central de Negócios', 1, 1, 1, 1, 1),
(27, 270, 'Congelados:\r\nSegue se a programação de pedidos no sistema até 13h do dia que antecede a entrega;\r\nResfriados:\r\nO produto resfriado é produzido sob encomenda, logo o pedido deverá estar no sistema até 15h do dia que antecede a produção (dia do carregamento);\r\nExemplo: Entrega na QUI o carro é carregado QUA, logo, o pedido deverá estar no sistema antes de 15h de TER', 1, 'Rotina de entrada de pedidos', 1, 1, 1, 1, 1),
(28, 270, 'Os pedidos bloqueados não serão faturados, o representante deverá buscar identificar o motivo do bloqueio e se envolver junto à Coordenação e Gerência Comercial, ou financeiro buscando solucionar antes do horário do fechamento do prazo de montagem de cargas.', 2, 'Pedidos Bloqueados', 1, 1, 1, 1, 1),
(29, 270, '- Utiliza-se apenas uma tabela com os mesmos preços.\r\n- São direcionadas por regiões: FSA / SSA e INTERIOR;\r\n- Em casos de clientes com condições contratuais a exemplo de:\r\nREDES e GRANDES DISTRIBUIDORES com verbas de aniversário, desconto financeiro, desconto logístico, dentre outros, são criadas tabelas específicas.\r\nVIGÊNCIA: A tabela de preços tem vigência até publicação uma nova tabela.', 3, 'Tabelas de preços', 1, 1, 1, 1, 1),
(30, 270, 'A política de concessão de desconto é aplicada apenas para a tabela principal (FSA e SSA) e segue o critério de volumes, conforme abaixo:\r\nPedidos de 0 a 99,9 kg – Sem desconto;\r\nPedidos de 100 a 249,9 kg – 1%;\r\nPedidos de 250 a 499,9 kg – 2%;\r\nPedidos de 500 a 999,9 kg – 3%;\r\nPedidos de 1.000 a 1.999,9 kg – 4%;\r\nPedidos igual ou superior a 2.000kg – 5% (todo esse processo é feito pelo sistema “sisatak”).\r\nO crédito do volume para concessão do desconto é utilizado assim como o peso de todos os itens do pedido e não apenas do item que se tem a necessidade de aplicar a regra.\r\nQualquer desconto além dessa política os pedidos são bloqueados e deverão ser liberados exclusivamente pela Gerência Comercial ou Diretoria.\r\nPara produtos em condições promocionais, não se aplica descontos.', 4, 'Política de Concessão de Desconto', 1, 1, 1, 1, 1),
(31, 270, 'Em caso de antecipação do pagamento, o cliente tem desconto de 0,1% ao dia. Ou seja, se o cliente pagar 20dias antes será: 0,1% x 20 = 2%.\r\n(A instrução já constante no boleto).', 5, 'Desconto por Antecipação de Título', 1, 1, 1, 1, 1),
(32, 270, 'Os pedidos poderão ser programados e terão seus preços válidos por um prazo de (07) sete dias a contar da inclusão, independente de alteração de tabela.', 6, 'Vigência de Preço', 1, 1, 1, 1, 1),
(33, 308, 'Fazer contato por telefone e presencial junto a todos clientes que apresentem títulos em atraso, buscando solucionar, dando apoio ao CONTAS A RECEBER, interagindo pela redução da inadimplência, bem como, evitando o bloqueio do cliente para venda futura.', 1, 'Procedimento Equipe', 1, 1, 1, 1, 1),
(34, 312, '1. Motorista deverá comunicar a logística, para ser realizada uma abordagem junto ao representante comercial quanto a autorização da revenda;\r\n2. O Representante/Vendedor em hipótese alguma está autorizado a determinar a rotina do motorista;\r\n3. A venda só pode ser feita para cliente na rota, na mesma cidade ou cidade seguinte. (Não podendo o motorista retornar para entrega ou recebimento)\r\n4. A venda deverá ser feita mediante autorização da Gestão ou Coordenação Comercial;\r\n5. O pedido deve ser colocado de imediato;\r\n6. Deverá ser passado um e-mail para os setores comercial, financeiro, logística, vendas e faturamento para envio da nota e boleto;\r\n7. Em caso de o cliente não ter como receber o e-mail, não pode ser faturado.\r\n8. O motorista em hipótese alguma poderá retornar da rota sem o respectivo canhoto assinado, ainda que pago à vista.', 1, 'Procedimentos para refaturamento', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetivos`
--

CREATE TABLE IF NOT EXISTS `objetivos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `objetivos`
--

INSERT INTO `objetivos` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'Estabelecer as diretrizes para os processos inerentes a prestação de serviço partindo da formalização dos contratos, sua manutenção até o encerramento/rescisão dos mesmos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(5, '7', 'Estabelecer as diretrizes para os processos inerentes ao departamento Financeiro da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(6, '9', 'Estabelecer as diretrizes para os processos inerentes ao Setor de Disciplina da Gevan, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(7, '10', 'Estabelecer as diretrizes para os processos inerentes ao Setor de Folha de Pagamento da Gevan, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(8, '8', 'Estabelecer as diretrizes para os processos inerentes ao departamento de\r\nProdução da Gujão Alimentos, a fim de atender aos requisitos estabelecidos\r\npelo SQ.'),
(9, '11', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Almoxarifado da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(10, '12', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Entrega da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(11, '13', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Compras da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(12, '14', 'Estabelecer as diretrizes para os processos inerentes ao departamento Comercial da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(14, '16', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Armazenamento da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(15, '17', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Compras do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(16, '18', 'Estabelecer as diretrizes para os processos inerentes à Diretoria do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(17, '19', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Caixa do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(18, '20', 'Estabelecer as diretrizes para os processos inerentes ao departamento de Televendas do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(19, '21', 'Estabelecer as diretrizes para os processos inerentes à Recepção do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(20, '22', 'Estabelecer as diretrizes para os processos inerentes ao setor Fiscal do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(21, '23', 'Estabelecer as diretrizes para os processos inerentes ao departamento Financeiro do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(22, '24', 'Estabelecer as diretrizes para os processos inerentes à Diretoria do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(23, '25', 'Estabelecer as diretrizes para os processos inerentes ao Supervisor de Filial do Atacadão Bahia, a fim de atender aos requisitos estabelecidos pelo SQ.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodicidade`
--

CREATE TABLE IF NOT EXISTS `periodicidade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `periodicidade`
--

INSERT INTO `periodicidade` (`id`, `descricao`) VALUES
(1, 'Diário'),
(2, 'Semanal'),
(3, 'Quinzenal'),
(4, 'Mensal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pis`
--

CREATE TABLE IF NOT EXISTS `pis` (
  `departamento_id` int(11) DEFAULT NULL,
  `id` int(20) NOT NULL,
  `data_revisado` varchar(255) DEFAULT NULL,
  `id_consultor` int(11) DEFAULT NULL,
  `gestor_pi_id` int(11) DEFAULT NULL,
  `cod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pis`
--

INSERT INTO `pis` (`departamento_id`, `id`, `data_revisado`, `id_consultor`, `gestor_pi_id`, `cod`) VALUES
(3, 3, NULL, NULL, NULL, 'COM01'),
(6, 7, NULL, NULL, NULL, 'FIN00'),
(7, 8, NULL, NULL, NULL, 'PROD00'),
(8, 9, NULL, NULL, NULL, 'DIS01'),
(9, 10, NULL, NULL, NULL, 'FOL01'),
(11, 11, NULL, NULL, NULL, 'ALM00'),
(12, 12, NULL, NULL, NULL, 'ENT00'),
(13, 13, NULL, NULL, NULL, 'COMP00'),
(14, 14, NULL, NULL, NULL, 'COM00'),
(15, 16, NULL, NULL, NULL, 'ARM00'),
(16, 17, NULL, NULL, NULL, 'COM00'),
(17, 18, NULL, NULL, NULL, 'DIR00'),
(18, 19, NULL, NULL, NULL, 'CAI00'),
(19, 20, NULL, NULL, NULL, 'VEN00'),
(20, 21, NULL, NULL, NULL, 'REC00'),
(21, 22, NULL, NULL, NULL, 'FIS00'),
(22, 23, NULL, NULL, NULL, 'FIN00'),
(23, 24, NULL, NULL, NULL, 'GER00'),
(24, 25, NULL, NULL, NULL, 'SUP00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_macro`
--

CREATE TABLE IF NOT EXISTS `stakeholders_macro` (
  `id` int(11) NOT NULL,
  `macroprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_micro`
--

CREATE TABLE IF NOT EXISTS `stakeholders_micro` (
  `id` int(11) NOT NULL,
  `microprocesso_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_sub`
--

CREATE TABLE IF NOT EXISTS `stakeholders_sub` (
  `id` int(11) NOT NULL,
  `subprocesso_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subprocessos`
--

CREATE TABLE IF NOT EXISTS `subprocessos` (
  `id` int(11) NOT NULL,
  `macroprocesso_id` int(11) NOT NULL,
  `descricao` varchar(10000) DEFAULT NULL,
  `numero` int(10) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `classificacao_id` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subprocessos`
--

INSERT INTO `subprocessos` (`id`, `macroprocesso_id`, `descricao`, `numero`, `titulo`, `pessoas`, `classificacao_id`, `periodicidade_id`, `horas`, `maturidade_id`) VALUES
(1, 1, 'É feito uma procura de empresas que se encaixem no perfil PROJEK, e após isso é feito o cadastro no banco de dados MARKET. Essa pesquisa é necessária pois, através dela, é segmentado o perfil de mercado que é almejado alcançar. Por exemplo: Micro e pequenas empresas ou grandes empresas e multinacionais, ou pessoas físicas das classes A, B ou C.', 1, 'Estudo dos potenciais clientes', 1, 1, 1, 1, 3),
(3, 10, 'Depois de acondicionados nas embalagens primárias, os produtos dirigem-se para a área de embalagem secundária através de uma esteira, onde o colaborador retira manualmente colocando nas caixas de papelão.', 1, 'Retirar da esteira', 1, 1, 1, 1, 1),
(4, 10, 'As caixas de papelão são colocadas em cima de uma balança de precisão, na qual o colaborador seleciona frangos para padronizar as caixas com 20kg e logo após são colocadas em uma esteira transportadora.', 2, 'Pesar produtos', 1, 1, 1, 1, 1),
(5, 10, 'As caixas pesadas seguem por uma esteira e chegam até um colaborador que é responsável pela colagem das etiquetas, contendo nome do produto, o peso padrão, data de fabricação, de validade e o código de barras.', 3, 'Colocar etiquetas nas caixas', 1, 1, 1, 1, 1),
(6, 10, 'Ao final da esteira transportadora, um colaborador retira a caixa com o peso padrão e etiqueta, colocando-a em carrinho próprio para congelamento com capacidade de 27 caixas.', 4, 'Colocar no carrinho', 1, 1, 1, 1, 1),
(7, 10, 'Os carrinhos são encaminhados para a área onde se encontra o sistema de bipagem, que será realizado através de um scaner leitor de código de barras que dará entrada na produção diária e túnel de congelamento.', 5, 'Encaminhar carrinho para primeira bipagem', 1, 1, 1, 1, 1),
(8, 11, 'Após a bipagem, o colaborador conduz o carrinho, que possui duas rodas fixas e duas rodas móveis, para os túneis de congelamento.', 1, 'Colocar carrinho no túnel de congelamento', 1, 1, 1, 1, 1),
(9, 11, 'Após o carregamento total do túnel, fecha-se a porta. O produto ficará em torno de 20 horas, em uma temperatura de aproximadamente -30oC. O congelamento é feito através de compressores com sucção de amônia e vaporizadores. O congelamento é realizado através de processo rápido, o que evita a formação de grandes cristais de gelo na carne de frango.', 2, 'Esperar o congelamento dos frangos', 1, 1, 1, 1, 1),
(10, 13, 'A avaliação do cadastro é feita pelo Coordenador Financeiro e também pelo Gestor Financeiro e Comercial. Documentação em mãos, é feita uma análise:\r\nPessoa Jurídica - Cópia do contrato social/requerimento empresarial ou RG do sócio que assinou a ficha, 03 boletos pagos (não é pré-requisito). (A assinatura deve ser idêntica à do documento apresentado).\r\nPessoa Física – Para os clientes pessoa física, é necessário RG e CPF, comprovante de endereço em nome do cliente e será o endereço que efetuará a entrega.\r\nSão fundamentais além dos dados do cliente ser colocados na ficha cadastral: Sugestão de Prazo, Limite e Forma de Pagamento.', 1, 'Avaliar a documentação', 1, 1, 1, 1, 1),
(11, 16, 'A definição de prazos se dá de acordo os seguintes critérios:\r\nPrazo máximo 21dd;\r\nAté seis meses: Sem prazo;\r\nSeis a doze meses: até 14dd;\r\nMais de doze meses: até 21dd.\r\nSalienta-se que a condições do prazo são máximas, cabe ao setor de crédito, com base nas informações cadastrais definir. A exemplo um cliente com mais de 12 meses pode sim ter um prazo liberado de apenas 7 (Sete) dias, até apresentar eficácia de liquidez;\r\nEm caso de qualquer exceção dos prazos pré-fixados, somente serão acatados com autorização da Gerência\r\nComercial ou Diretoria.', 1, 'Definição de Prazos', 1, 1, 1, 1, 1),
(12, 16, 'É feita através das informações cadastrais da pesquisa, levando em consideração as referências comerciais e sugestão de limite apresentada pelo representante/vendedor, contando ainda com a avaliação da Coordenação Comercial e Gerência Comercial.', 2, 'Definição de limites', 1, 1, 1, 1, 1),
(17, 42, 'Para saber qual o valor do adiantamento salarial funcionário tem direito, são verificados alguns quesitos como cartão multi benefício, faltas não atestadas, autorização de desconto, multas e avarias.\r\nA checagem é feita por amostragem.', 1, 'Verificar gastos do funcionário do mês anterior', 1, 1, 1, 1, 1),
(18, 42, 'Se após a verificação foi percebido que o funcionário gastou nos benefícios mais que 40% do valor integral do salário, é então enviada a ele uma carta de anuência informando o valor que ele receberá no adiantamento salarial.', 2, 'Gasto inferior a 40%', 1, 1, 1, 1, 1),
(19, 42, 'Se foi verificado nos benefícios do funcionário um gasto superior a 40% do valor integral do salário, é então enviada ao mesmo, uma carta de anuência informando que ele não terá direto de receber o adiantamento salarial de 40%.', 3, 'Gasto superior a 40%', 1, 1, 1, 1, 1),
(20, 42, 'É emitido um relatório de resumo da folha em que constam todos os custos gerais com os funcionários, o valor pago no adiantamento salarial e todo o custo com pessoal detalhado pelas verbas.', 4, 'Gerar relatório de resumo da Folha', 1, 1, 1, 1, 1),
(21, 42, 'Após feita a verificação de adiantamento salarial, é enviado para o banco um arquivo que remessa que contém os valores dos adiantamentos a serem feitos.', 5, 'Enviar arquivo de remessa para o banco', 1, 1, 1, 1, 1),
(22, 42, 'Caso o banco perceba alguma inconsistência nas contas bancárias a serem feitos os pagamentos, o setor de Folha de pagamento é informado e deve tentar solucionar o problema. Normalmente são problemas com as contas dos funcionários, nesses casos o setor de Folha de pagamento fica no aguardo do funcionário resolver seu problema por cerca de duas semanas, de o problema não for resolvido, é enviado para o banco novamente o arquivo de remessa sem os valores que houve rejeição.', 6, 'Verificar aceitação do arquivo enviado', 1, 1, 1, 1, 1),
(23, 42, 'Para fazer a integração é comparado o valor total da Relação de Líquidos da Folha como arquivo de remessa enviado e aceito pelo banco. Se a relação e o arquivo de remessa estiverem diferentes, deverá ser feita a conferência individual por funcionário para verificar onde há inconsistência. Caso o banco tenha rejeitado algum valor como explicado no item 5.1.6. não é feita a integração do valor rejeitado e apenas dos valores aceitos.', 7, 'Fazer integração do valor', 1, 1, 1, 1, 1),
(24, 42, 'Após fazer a integração dos valores do adiantamento salvar o relatório de Resumo da Folha no servido eletrônico.', 8, 'Arquivar relatório no servidor', 1, 1, 1, 1, 1),
(25, 42, 'A conciliação bancária é feita a partir da integração. Após a integração ser feita, o Financeiro verifica se os valores estão corretos. Se estiverem corretos é autorizado o pagamento, se não estiverem, retorna para Folha de Pagamento para fazer a correção dos valores para ser autorizado o pagamento.', 9, 'Conciliação de Valores', 1, 1, 1, 1, 1),
(26, 42, 'Após feita a integração financeira com o valor correto e a conciliação bancária, o setor Financeiro autoriza o pagamento do adiantamento salarial dos funcionários.', 10, 'Autorizar Pagamento', 1, 1, 1, 1, 1),
(27, 44, 'Uma parte do fechamento de benefícios é feito via BM (boletim de medição), checa-se se os valores estão corretos, se estiverem, é feito o faturamento para em seguida ser liberado o 60% que falta do salário dos funcionários.', 1, 'Fechamento de Benefícios', 1, 1, 1, 1, 1),
(28, 44, 'A partir do arquivo de texto importado verifica-se se arquivo de texto que foi produzido na Folha está de acordo com o boleto para pagamento. O faturamento de benefícios é finalizado com antecedência, após a finalização a Folha informa aos parceiros e faz a integração dos valores.', 3, 'Checar benefício de cada funcionário', 1, 1, 1, 1, 1),
(29, 44, 'Etapa para faturamento de beneficio.', 4, 'Faturamento de benefícios', 1, 1, 1, 1, 1),
(30, 44, 'O relatório de benefícios da Folha, que é o relatório de eventos, é detalhado por funcionário e por benefício. É solicitado do sistema que gere um relatório com base nos dados dos arquivos de texto importados (5.2.2.). Esse documento é comparado com o relatório dos fornecedores dos benefícios, se os dois documentos estiverem de acordo o relatório elaborado pela Folha de Pagamento é salvo no servidor.', 5, 'Relatório de benefícios', 1, 1, 1, 1, 1),
(31, 44, 'O relatório a partir de cada benefício é arquivado em cada referente pasta do servidor.', 6, 'Salvar no servidor', 1, 1, 1, 1, 1),
(32, 44, 'A Folha recebe do setor de Frequência uma integração ou um arquivo com o resultado da frequência do período	gerado pelo sistema SDO (16 a 15 de cada mês), juntamente ao arquivo um o relatório para conferência. Após a integração e processamento na Folha, esse relatório é comparado com o relatório gerado pela Folha com base no sistema RUBI e verificado se os dois estão iguais. Caso não estejam, a Folha deve corrigir os valores.', 7, 'Verificar Frequência do Funcionário', 1, 1, 1, 1, 1),
(33, 44, 'Verificar no sistema funcionários afastados e junto ao serviço médico se há funcionários com processo de afastamento no período de fechamento da folha. É registrado se funcionário foi afastado com pendência para que haja o desconto no retorno do mesmo. Geralmente são pendências de benefícios.', 8, 'Verificar se houve afastamento', 1, 1, 1, 1, 1),
(34, 44, 'Verifica-se no sistema se houve caso de retorno de funcionário e junto ao serviço médico se há algum processo de retorno.', 9, 'Verificar se houve retorno', 1, 1, 1, 1, 1),
(35, 44, 'Verifica-se no sistema se houve caso de transferência de funcionário. Caso haja o funcionário nessa situação, deve ser processado na Folha e verificado se é necessário mudar a escala de trabalho ou escala de vale transporte. Havendo necessidade, fazer as alterações na Folha.', 10, 'Verificar se houve transferência', 1, 1, 1, 1, 1),
(36, 44, 'Etapa para validar remunerações.', 11, 'Validar remunerações', 1, 1, 1, 1, 1),
(37, 44, 'O coordenador de cada setor deve preencher o formulário de Padronização de Pagamento de Verba dos colaboradores do seu respectivo setor e salvar no servidor eletrônico em: Z:\\Servidor Setor Pessoal.', 12, 'Padronização de Pagamento de Verba', 1, 1, 1, 1, 1),
(38, 44, 'Ao receber do setor de Recursos Humanos as informações da promoção, o setor da Folha de pagamento deve fazer as alterações no sistema da Folha, sendo elas: o reajuste salarial, o novo cargo junto à nova escala de trabalho e de vale transporte (se for o caso) e o lançamento do centro de custo com a data do preenchimento do formulário.', 13, 'Promoção', 1, 1, 1, 1, 1),
(39, 44, 'Com base na verificação dos benefícios, do relatório de frequência, dos afastamentos, retornos e transferências, das remunerações descontadas e verbas verificadas, e das promoções é liberada a segunda parte (60%) que cada respectivo funcionário deve receber.', 14, 'Liberar 60% do salário do Funcionário', 1, 1, 1, 1, 1),
(40, 44, 'É gerado no sistema um arquivo que remessa que contém os valores a serem pagos e/ou faturados.', 15, 'Gerar arquivo de remessa', 1, 1, 1, 1, 1),
(41, 44, 'A Folha gera os contracheques no sistema, salva em PDF e manda imprimir em livreto, sendo dois por página.', 16, 'Impressão de contracheques', 1, 1, 1, 1, 1),
(42, 44, 'O arquivo de remessa gerado é enviado para o banco através de integração.', 17, 'Enviar arquivo de remessa para o banco', 1, 1, 1, 1, 1),
(43, 46, 'Verificar no sistema funcionários afastados e junto ao serviço médico se há funcionários com processo de afastamento no período de fechamento da folha. É registrado se funcionário foi afastado com pendência para que haja o desconto no retorno do mesmo.\r\nGeralmente são pendências de benefícios.', 1, 'Verificar se houve afastamento', 1, 1, 1, 1, 1),
(44, 46, 'Verifica-se no sistema se houve caso de retorno funcionário e junto ao serviço médico se há algum processo de retorno.', 2, 'Verificar se houve retorno', 1, 1, 1, 1, 1),
(45, 46, 'No período de 26 a 02 de cada mês verifica-se com o serviço médico se irá haver mais algum afastamento ou retorno.', 3, 'FGTS / INSS', 1, 1, 1, 1, 1),
(46, 46, 'No período de 01 a 04 de cada mês são incluídos no sistema os novos clientes com retenção de INSS. Em: Empresa/ outras empresas/ cadastro/ informar o código da nova empresa seguindo a sequência/ preencher os campos: País, endereço, CNPJ, inscrição estadual, Código FPAS (verificar o ramo da atividade) / GPS (em caso de empresa pública, geralmente esse campo é preenchido com “não”, só se for empresa pública mesmo, e se considera para Sefip “sim”).', 4, 'Inclusão de novos clientes com retenção de INSS', 1, 1, 1, 1, 1),
(47, 46, 'Para gerar as NFs é no sistema Sapiens em: Mercado/ gestão de faturamento e outras saídas/ NF saída/ relatórios / relatório 102/ informa a filial/ período (de 01 a 30 ou 31 do mês) / série das Notas "U1", "U3", "NFE" LN e VCI "NFE" e “A”/ situação das NFS 2/ gerar e salvar.', 5, 'Gerar os valores retidos nas NFs (LN e VCI)', 1, 1, 1, 1, 1),
(48, 46, 'Solicitar do sistema QLIKVIEW que gere o Relatório de Encargos que está em: Área de Trabalho/ QLIKVIEW/ Relatório de Encargos, com os campos:\r\nBases: Inss s/ 13º, Base Inss 13º, Totais. Inss s/ folha, Sat/Rat, Outras Entidades, RPAs, Total (de cada campo separado).\r\nParte Empregado: Inss do mês, Inss Férias, Inss 13º salário, Inss RPA, Dev de Inss, Total.\r\nCompensações: Funcionário, Liminar, Desoneração, Salário Família, Total.\r\nValor a Recolher.', 9, 'Geração do Relatório de Encargos', 1, 1, 1, 1, 1),
(49, 46, 'É feita a importação do arquivo da Sefip para a folha pelo próprio sistema Rubi, em: impostos/ fundo de garantia/ Sefip/ gerar/ processar. É necessário verificar se está na Folha de pagamentoatual. \r\nApós processar será importado o arquivo da seguinte forma: Sefip – arquivo/ importar folha/ movimento/.', 10, 'Importação do arquivo Sefip', 1, 1, 1, 1, 1),
(50, 46, 'Se der algum problema verifica a inconsistência, se tudo estiver correto vai para: simular/ comprovante de declaração da previdência e verifica os valores da planilha com os valores da declaração; \r\nSe durante esse processo existir alguma divergência: verificar a inconsistência/, se estiver tudo certo executar/ salvar o arquivo na pasta da Sefip, anotar o número do protocolo.', 11, 'Fazer conferência', 1, 1, 1, 1, 1),
(51, 46, 'Após ser feita a conferência e salvar o arquivo no servidor. O mesmo, é enviado via conectividade social.\r\nPara fazer isso, acessa o site: http://www.caixa.gov.br/fgts/conectividade_social_icp.asp coloca a senha, e vai em: caixa postal/ nova mensagem/ acessar arquivo Sefip/ continuar / selecionar a cidade/ anexar arquivo/ abre outra caixa com o nome do arquivo/ selecionar o arquivo e salvar / abre outra caixa/ selecionar o arquivo zipado e enviar / imprime e salva o protocolo.', 12, 'Enviar via conectividade social e salvar protocolo', 1, 1, 1, 1, 1),
(52, 46, 'Retorna para Sefip e salva no arquivo eletrônico a GRF da seguinte forma: relatório/ GRF/ arquivo selo/ procurar pelo número de protocolo e gerar a GRF. E também em movimento salvar todos os relatórios: RE, comprovante de declaração a previdência/ analítico GPS/ analítico GRF/ RET/ alterações de endereço etc. Salva o protocolo gerado.', 13, 'Gerar GRF', 1, 1, 1, 1, 1),
(53, 46, 'Através de integração financeira;\r\nGRF: É gerado o valor a ser recolhido referente ao FGTS de todos os funcionários da empresa, logo após enviar ao SEFIP e conectividade social, gera a GRF através do número do protocolo pela SEFIP, salva em PDF e envia para o financeiro. \r\nGPS: No sistema Rubi, em: Impostos/ Previdência/ GPS/ Listar GPS, gera o valor a ser recolhido pelo INSS através do CNPJ, salva em PDF e manda para o financeiro.', 14, 'Solicitar pagamento da GRF e GPS', 1, 1, 1, 1, 1),
(54, 47, 'A solicitação é feita por integração ou via boletim de medição. Quando for integração, é transferido do sistema RUBI para o SAPIENS, quando é feita via BM salva em PDF e envia por e-mail.', 2, 'Solicitar ao financeiro pagamento aos fornecedores', 1, 1, 1, 1, 1),
(55, 49, 'Ao processar rescisão o funcionário já é retirado automaticamente da folha de pagamento.', 1, 'Retirar funcionário da folha de pagamento', 1, 1, 1, 1, 1),
(56, 49, 'O setor da folha de pagamento recebe do setor Pessoal a documentação do funcionário demitido, juntamente com uma carta de aviso prévio ou carta de pedido de demissão.', 2, 'Receber documentação do funcionário', 1, 1, 1, 1, 1),
(57, 49, 'É feito o cancelamento dos benefícios do funcionário demitido, os benefícios são os citados no item 5.2.4. e cancelamento do cartão Samartcard (cartão que permite gratuidade no sistema de transporte) pelo site do Salvador Card.', 3, 'Fazer cancelamento de benefícios', 1, 1, 1, 1, 1),
(58, 49, 'Solicitar à Caixa Econômica através de conectividade social o extrato de FGTS e a chave que permite acesso ao funcionário sacar o FGTS.', 4, 'FGTS / INSS', 1, 1, 1, 1, 1),
(59, 49, 'Após o recebimento dos documentos solicitados para o processamento da rescisão no sistema, é feito o cálculo da rescisão no sistema Rubi em: Colaborador/ Rescisões/ calcular.', 6, 'Calcular rescisão no sistema', 1, 1, 1, 1, 1),
(60, 49, 'É verificado se os cálculos feitos pelo sistema estão corretos. Essa verificação é feita por amostragem.', 7, 'Verificar verbas por amostragem', 1, 1, 1, 1, 1),
(61, 49, 'Caso note que a parametrização utilizada para o cálculo não está correta, é necessário corrigir as parametrizações.', 8, 'Solicitar correção de parametrização', 1, 1, 1, 1, 1),
(62, 49, 'A GRRF é gerada no sistema Rubi em: colaboradores/rescisões/listar/GRRF eletrônica e enviada via conectividade social.', 9, 'Gerar GRRF', 1, 1, 1, 1, 1),
(63, 49, 'É enviado para o banco um arquivo que remessa que contém os valores a serem pagos e/ou faturados.', 10, 'Envia arquivo de remessa para o banco', 1, 1, 1, 1, 1),
(64, 49, 'É feita solicitação de pagamento da guia GRRF ao setor Financeiro. A guia é enviada através de integração financeira.', 11, 'Solicitar pagamento da GRRF', 1, 1, 1, 1, 1),
(65, 49, 'Após ser elaborada a rescisão e ser informado aos bancos e aos consignados a demissão do funcionário, é solicitado o comprovante de pagamento da GRRF e o termo de rescisão. Gera o relatório do seguro desemprego para quem tem direito e o relatório das contribuições para aposentadoria. Emite a carta de referência, solicita o ASO, protocola e entrega ao setor Jurídico.', 12, 'Organizar documentação para homologação', 1, 1, 1, 1, 1),
(66, 49, 'Ao receber a documentação do setor da Folha de Pagamento, o setor Jurídico homologa a documentação, escanea, e salva no servidor eletrônico em: Z:\\Servidor Jurídico – Homologação. Em seguida,envia para o setor de Arquivo.', 13, 'Homologar documentação', 1, 1, 1, 1, 1),
(67, 50, 'É verificado se tem algum funcionário para vencer a 2ª férias, o que acarreta multa. A verificação é feita da seguinte formas: Rubi/ Colaboradores/ férias/ programação/ relatório 001 ou 101/ período de + -cinco anos/ ordenação – vencimento período de férias', 1, 'Verificar funcionário a vencer férias', 1, 1, 1, 1, 1),
(68, 50, 'Para fazer a programação das férias dos funcionários do sistema é em: Rubi – colaboradores/ férias/ programação/ cadastro/ individual/ tipo do colaborador/ matrícula do funcionário/ localizar pela reticencias a último período em aberto, ok / início das férias/ em férias os dias de gozo/ abono os dias de abono se tiver/ 13º salário marcar “S” se for adiantar a 1º parcela do décimo e “N” se não for adiantar/ alterar. Esse procedimento deve ser feito até o dia 5 de cada mês e se cair em final de semana ou feriadodeve ser feito no primeiro dia útil corrente.', 2, 'Programar férias', 1, 1, 1, 1, 1),
(69, 50, 'Para elaborar o relatório de programação de férias no sistema é em: colaboradores/ férias/ programação/ listar relatório 103 e colocar o período das férias e lista.', 3, 'Emitir relatório de Programação', 1, 1, 1, 1, 1),
(70, 50, 'Ao funcionário sair de férias, deve ser feito o bloqueio do cartão multi benefício, da seguinte forma: no site www.nutricash.com.br - em convênio web/colocar em férias, selecionar os funcionários e especificar o período.', 4, 'Bloqueio dos cartões multi benefício', 1, 1, 1, 1, 1),
(71, 50, 'Fazer a verificação dos funcionários com menos de 30 dias de férias por conta das faltas.', 5, 'Perda de férias', 1, 1, 1, 1, 1),
(72, 50, 'São geradas as férias no sistema em: colaboradores/ férias/ programação/ gerar. Coloca-se os parâmetros (operação separado de adm/manutenção e limpeza, por conta do abono) início das férias, dias de férias e data de pagamento. Vai no campo “seleção”, filtra a operação e depois os outros setores.', 6, 'Gerar todas as férias', 1, 1, 1, 1, 1),
(73, 50, 'Verificar as médias na ficha financeira no período aquisitivo, gratificações em seleção na ficha cadastral, consignado no BS, pensão alimentícia em dependentes pensão judicial, plano de saúde no BS, IR e INSS pelas tabelas.', 7, 'Conferência por amostragem', 1, 1, 1, 1, 1),
(74, 50, 'A geração do arquivo deve ser feita em: cálculos/ relatórios / operacionais/ bancário/ crédito bancário/ modelo 152 - colocar origem E (férias)/ código da agência/ conta corrente/ dac (digito) da agência/ código de remessa 01/ a data de pagamento (dois dias antes das férias)/ período das férias e empresa(1,2,3,4,5 ou 7). Salvar o arquivo em texto na pasta ARQUIVOS DO BANCO no banco de dados no arquivo eletrônico.', 8, 'Geração do arquivo', 1, 1, 1, 1, 1),
(75, 50, 'No site: www.itau.com.br em transmissão de	arquivos/ transmissão (ambiente produção)/ remessa/ enviar/ produto pagamento sispag e anexa o arquivo	gerado no Rubi, onde o mesmo foi salvo.', 9, 'Envio do arquivo ao banco', 1, 1, 1, 1, 1),
(76, 50, 'Informar às unidades que os recibos estão liberadospara impressão.', 10, 'Impressão dos recibos', 1, 1, 1, 1, 1),
(77, 50, 'A integração é feita da seguinte forma: integração sapiens/ integração financeira/ integração financeira/ seleção/ código da empresa (1,2,3,4,5 ou 7) e códigos do CIF 7 e 63.', 11, 'Integração Financeira', 1, 1, 1, 1, 1),
(78, 50, 'Enviar a relação de liquido por rateio via e-mail para o financeiro.', 12, 'Envio ao Financeiro', 1, 1, 1, 1, 1),
(79, 51, 'Definir cálculo do 13º em: cálculos/ definir cálculo, coloca o número posterior ao último cálculo definido - tipo de cálculo 32 - data de pagamento 20 dezembro e se 20/12 cair em finais de seman ou feriados, antecipa para o último dia útil.', 1, 'Abrir Folha da competência', 1, 1, 1, 1, 1),
(80, 51, 'O cálculo deve ser processado em: cálculo/ efetuar cálculo (se atentar se está na folha do adiantamento do décimo). A definição e o cálculo devem ser feitos entre os dias 10 e 12 do mês.', 2, 'Processar cálculo', 1, 1, 1, 1, 1),
(81, 51, 'Fazer a conferência dos retornos, afastamento e admitidos para verificar a proporcionalidade por amostragem – deve ser emitido o relatório em colaboradores/ histórico/ listar relatório 009/ colocar a data 01/01 do ano em questão a 31/12 do ano em questão. Verificar as datas de afastamento e retorno para validar se a quantidade de avos estão corretos. Afastamentos com tempo superior a 12 meses, ou retorno com tempo inferior a 12 meses não é incluído o 13º.', 3, 'Verificar retornos e afastamentos', 1, 1, 1, 1, 1),
(82, 51, 'Verificar por amostragem, se os funcionários transferidos estão com a quantidade de avos e valores corretos.', 4, 'Conferência dos funcionários transferidos', 1, 1, 1, 1, 1),
(83, 51, 'Verificar as médias de hora extra, adicional noturno na ficha financeira no ano, gratificações em seleção na ficha cadastral, anuênio pela data de admissão, IR e INSS pelas tabelas.', 5, 'Conferência das verbas', 1, 1, 1, 1, 1),
(84, 51, 'Para elaborar a relação de líquido no sistema é em: Cálculos/ relatórios/ operacionais/ relação de líquido/ modelo 003 e salvar em PDF na pasta RESUMO E LÍQUIDOS no banco de dados no arquivo eletrônico.', 6, 'Relação de líquido', 1, 1, 1, 1, 1),
(85, 51, 'Deve ser gerado em: Cálculos/ relatórios/ operacionais/ bancário/ crédito bancário/ modelo 152 - colocar origem F (folha)/ código da agência/ conta corrente/ dac (digito) da agência/ código de remessa 01/ a data de pagamento/ período da folha e empresa (1,2,3,4,5 ou 7). Salvar o arquivo em texto na pasta ARQUIVOS DO BANCO no banco de dados no arquivo eletrônico.', 7, 'Gerar arquivo de remessa', 1, 1, 1, 1, 1),
(86, 51, 'Para fazer o envio do arquivo para o banco, é no site: www.itau.com.br em transmissão de arquivos/ transmissão (ambiente produção) / remessa/ enviar/ produto pagamento sispag e anexar o arquivo gerado no rubi onde o mesmo foi salvo. O envio para o banco deve ser feito entre os dias 16 e 18 de dezembro.', 8, 'Envio do arquivo para o banco', 1, 1, 1, 1, 1),
(87, 51, 'A integração financeira via sistema é feita em: integração sapiens/ integração financeira / integração financeira/ seleção/ código da empresa (1,2,3,4,5 ou 7) e códigos do CIF 4, 32, 33 e 62.', 9, 'Integração Financeira', 1, 1, 1, 1, 1),
(88, 51, 'Enviar para o financeiro por rateio via e-mail, a relação de líquido de todos que receberam no banco e outra, dos funcionários que receberam em cheque (se houver).', 10, 'Informar ao financeiro', 1, 1, 1, 1, 1),
(89, 15, 'É feita a confirmação dos dados referentes ao cliente, para dar continuidade ao cadastro.', 1, 'Confirmar endereço, telefone, e referências comerciais', 1, 1, 1, 1, 1),
(90, 18, 'Independente de o pedido ser liberado ou não, terá de ser informado ao setor comercial.\r\nOs pedidos não liberados devem ser passados ao setor comercial, onde serão informados porque não ocorreu a liberação, para que possam ser analisados e solucionados.', 1, 'Informar ao setor comercial sobre os pedidos não liberados', 1, 1, 1, 1, 1),
(91, 44, 'O arquivo de texto em geral é um arquivo em que consta de cada funcionário a matrícula, o nome e o valor a ser descontado do benefício, esse arquivo texto também é utilizado no relatório de benefícios que é gerado ao final. Em cada benefício o faturamento é feito de uma forma.', 2, 'Importar arquivo de texto de cada benefício para fazer a checagem', 1, 1, 1, 1, 1),
(92, 46, 'Para importar os valores retidos nas Notas Fiscais vai no sistema Rubi, em: recursos/ implementações/ gerador importação exportação/ executar/ importação/ código de importação 134.', 6, 'Importar os valores retidos nas Notas Fiscais (LN e VCI)', 1, 1, 1, 1, 1),
(93, 46, 'Para fazer a validação das informações, ainda no sistema Rubi é gerado um relatório em: cálculos/ terceiros/ listar/ relatório 006 demonstrativo 11% NF e verifica-se o total a compensar com os valores somados das notas. Necessitando de ajustes vai em: calculo/ terceiros/ serviços prestados/ recebimento.', 7, 'Validar as informações importadas com as notas fiscais', 1, 1, 1, 1, 1),
(94, 46, 'Após o relatório listado em cálculos/ relatórios/ operacionais/ relação de cálculo 131 ação judicial e lança as compensações em compensação em impostos/ previdência/ GPS/ compensação.', 8, 'Lançamento das compensações da liminar (1/3 e atestado)', 1, 1, 1, 1, 1),
(95, 46, 'O sistema possui um validador já parametrizado, através dessa tela é encaminhador para o validador e informa através do portal do Ministério do Trabalho e Emprego. Envia o arquivo e salva o protocolo e a relação dos funcionários.', 15, 'Informar ao Caged funcionários demitidos e admitidos', 1, 1, 1, 1, 1),
(96, 46, 'O relatório de evento da Folha é detalhado por funcionário. É solicitado do sistema que gere um relatório com base nos dados dos arquivos de texto importados. Através desse documento é feita a conferência com a tabela de imposto de renda vigente, se o documento e a tabela estiverem de acordo, o relatório elaborado pela Folha de Pagamento é salvo no servidor. Na tabela também consta a parcela dedutiva por dependente. Para gerar esse relatório é: Gerar a relação dos eventos de IR em cálculos/ relatórios/ operacionais/ relação de cálculo 004 colocar empresa e os eventos 304, 306 e 308.', 16, 'Gera relatório de valores descontados do imposto de renda do funcionário', 1, 1, 1, 1, 1),
(97, 46, 'A guia é o DARF, referente ao imposto. Verifica-se através do relatório de eventos (com os valores já conferidos). Acessa o sistema da receita federal Sicalc/ gerar Darf/ código de recolhimento 0561/ competência/ gerar Darf/ nome da empresa, CNPJ, referência do mês/ salvar no arquivo eletrônico/ salvar em PDF e envia para o financeiro.', 17, 'Emitir guias para repasse de valores e solicitar pagamento ao financeiro', 1, 1, 1, 1, 1),
(98, 47, 'Através da Folha é colhida a quantidade de funcionários, a quantidade de pedidos entre outros requisitos para validação dos gastos na Folha. A validação é feita por amostragem.', 1, 'Elaborar boletins de medição e/ou integração financeira', 1, 1, 1, 1, 1),
(99, 49, 'É solicitado o resumo de frequência ao setor de Frequência para verificar se há algum desconto ou pagamento a ser feito, e um documento de Nada consta ao setor de Acidentes para verificar se há alguma pendência.', 5, 'Solicitar documentos para processar rescisão no sistema', 1, 1, 1, 1, 1),
(100, 53, 'Quando os caminhões de transporte das aves chegam, na entrada do abatedouro, eles são pesados com a carga viva.', 1, 'Processo - Receber Caminhão', 1, 1, 1, 1, 1),
(101, 53, 'A placa é reavaliada para dar início aos dados no sistema.', 2, 'Processo – Avaliar Documentação', 1, 1, 1, 1, 1),
(102, 53, 'Alguns dados são recolhidos e inseridos no sistema como: fornecedor, produto (frango vivo), o nome do motorista, operador da portaria, a hora de chegada, a quantidade prevista de aves.', 3, 'Processo - Inserir dados no sistema', 1, 1, 1, 1, 1),
(103, 53, 'O caminhão é pesado e mensurado o peso bruto. O peso bruto refere-se ao peso do caminhão junto ao peso da carga.', 4, 'Processo – Pesar caminhão', 1, 1, 1, 1, 1),
(104, 53, 'Após a pesagem, os caminhões são dirigidos para os galpões de espera e ficam até o momento de os frangos serem abatidos.', 5, 'Processo – Liberar Caminhão na Entrada', 1, 1, 1, 1, 1),
(105, 53, 'Ao serem descarregados os caminhões de frango vivo voltam para a balança na portaria, onde serão pesados (tara – refere- se o peso do caminhão sem a carga). Desta maneira, com os pesos brutos e as taras, são adquiridos os resultados dos pesos dos frangos recebidos (pesos líquidos – refere-se apenas ao volume da carga).', 6, 'Processo – Pesar saída de caminhão', 1, 1, 1, 1, 1),
(106, 53, 'Ao término da pesagem o caminhão será liberado para a garagem na Nova Granja (empresa fornecedora).', 7, 'Processo – Liberar Caminhão na Saída', 1, 1, 1, 1, 1),
(107, 54, 'Os caminhões são estacionados de ré, em área coberta e com adequada movimentação de ar. Os galpões de espera possuem sistema de ventilação e aspersores de água para evitar estresse térmico.', 1, 'Processo – Posicionar o caminhão', 1, 1, 1, 1, 1),
(108, 54, 'O motorista do caminhão de frango vivo deverá acionar o sistema, logo depois que ele estacionar o caminhão no galpão. Esse processo é necessário para evitar o estresse térmico das aves e assim não ocasionar um aumento da mortalidade.', 2, 'Processo – Ligar Ventiladores e Aspersores', 1, 1, 1, 1, 1),
(109, 54, 'O tempo de espera é determinado pela chegada das aves no abatedouro até o momento do abate, e ele não deve ultrapassar duas horas. O frango passa por um jejum hídrico de 6 (seis) a 12(doze) horas na etapa anterior e em virtude disso não é recomendado um tempo maior de descanso, pois isso poderá prejudicar a qualidade e rendimento da carne das aves. O tempo de jejum corresponde ao período que a ave permanece na granja com água disponível antes do embarque, ou seja, desde a apanha até o carregamento para o transporte acrescido do período de espera nas instalações de recepção do abatedouro até o momento do abate. Esse período pode variar de 6 (seis) a 12 (doze) horas dependendo da distância das granjas até o abatedouro e das condições de transporte. É considerado suficiente para que ocorra o esvaziamento do trato digestivo das aves.', 3, 'Processo – Aguardar ordem de descarregar', 1, 1, 1, 1, 1),
(110, 55, 'Ao passar o período de espera, o motorista posicionará de ré o caminhão, em frente a plataforma de aves, até receber a autorização para entrar na plataforma e iniciar o processo.', 1, 'Processo – Posicionar caminhão', 1, 1, 1, 1, 1),
(111, 55, 'O líder do setor solicitará a nota de entrega e o guia de trânsito animal. Deve-se observar a placa do caminhão, o nome do motorista, a quantidade de aves, o código e o nome do integrado, data de envio e hora de chegada do caminhão. Esse processo é necessário para que se garanta a legalidade do transporte de cargas vivas dentro do Estado da Bahia.', 2, 'Processo – Solicitar Documentação', 1, 1, 1, 1, 1),
(112, 55, 'O colaborador responsável irá conferir os lacres e na sequência alimentar a planilha do PCP (PROD11). A conferência dos lacres servirá para garantir que a carga transportada não teve qualquer violação durante o seu transporte.', 3, 'Processo – Conferir os lacres', 1, 1, 1, 1, 1),
(113, 55, 'Após a conferência dos lacres a carga será liberada para o abate. Nessa fase o encarregado irá romper os lacres para que a carga esteja liberada para entrar na plataforma de recepção das aves.', 4, 'Processo – Liberar a carga para o abate', 1, 1, 1, 1, 1),
(114, 55, 'O caminhão é posicionado de ré na plataforma de recepção de aves. Dessa forma, é possível otimizar o tempo de descarga das aves para a linha de produção.', 5, 'Processo – Posicionar o caminhão no guincho', 1, 1, 1, 1, 1),
(115, 55, 'As correntes serão engatadas ao guincho. O engate das correntes no guincho facilitará o manuseio da carga retirando de forma ordenada as gaiolas do caminhão.', 6, 'Processo – Engatar as correntes', 1, 1, 1, 1, 1),
(116, 55, 'As aves são descarregadas manualmente dos caminhões para a plataforma. Dois colaboradores ficam posicionados no elevador, de maneira que um pegará em uma das extremidades da gaiola e o outro na outra, descarregando-as na esteira. É recomendado que os colaboradores utilizem EPI’s – Equipamentos de Proteção Individual: luvas, protetor auricular e cinto de segurança.', 7, 'Processo – Descarregar o caminhão', 1, 1, 1, 1, 1),
(117, 55, 'Após retirar a carga, o caminhão será encaminhado para o posto de lavagem. Esse processo é necessário para que haja uma desinfecção do veículo, com objetivo de diminuir o risco de transporte de doenças entre as unidades produtivas.', 8, 'Processo – Encaminhar o caminhão de frango vivo para lavagem', 1, 1, 1, 1, 1),
(118, 55, 'Após a lavagem do caminhão, o mesmo será posicionado de ré na plataforma de carregamento com gaiolas. Após a lavagem, as mesmas são carregadas no caminhão para serem transportadas até as unidades produtivas.', 9, 'Processo – Encaminhar caminhão para recarregar', 1, 1, 1, 1, 1),
(119, 55, 'As gaiolas são conduzidas, através de uma esteira transportadora, que levam para a área de pendura.', 10, 'Processo – Colocar as gaiolas na	esteira', 1, 1, 1, 1, 1),
(120, 55, 'As aves são removidas manualmente por uma abertura na parte superior das gaiolas e são penduradas pelos pés, para favorecer a insensibilização e aumentar a eficiência da sangria.', 11, 'Processo – Pendurar as aves na nória', 1, 1, 1, 1, 1),
(121, 55, 'Ao final do descarregamento, as gaiolas são transportadas para a máquina de lavagem.', 12, 'Processo –Encaminhar as gaiolas para lavagem na máquina', 1, 1, 1, 1, 1),
(122, 55, 'As gaiolas passarão pelo processo de higienização através de jatos de água e sanitização. As mesmas são devidamente lavadas, higienizadas e esterilizadas através de um sanitizante, com o objetivo de evitar a transmissão de doenças entre as unidades produtoras.', 13, 'Processo – Lavar as gaiolas', 1, 1, 1, 1, 1),
(123, 55, 'As gaiolas são empilhadas e colocadas novamente no caminhão para serem transportadas até as unidades de produção, no qual serão reutilizadas.', 14, 'Processo – Recarregar caminhão com gaiolas', 1, 1, 1, 1, 1),
(124, 55, 'O colaborador fecha o fundo do caminhão colocando as travas necessárias para manter a segurança da carga. As correntes são engatadas nas travas. Esse processo é necessário para que as gaiolas não se desloquem durante o transporte e possam se danificar.', 15, 'Processo – Fechar o fundo do caminhão', 1, 1, 1, 1, 1),
(125, 55, 'O líder da pendura irá entregar ao motorista as guias com as quantidades recebidas, o número de lacres, o índice de mortalidade, o valor da diferença da quantidade de frangos para que esses documentos possam ser apresentados na portaria. Esses documentos são enviados para o fornecedor da carga no qual serão conferidos.', 16, 'Processo – Liberar o caminhão', 1, 1, 1, 1, 1),
(126, 56, 'O processo de insensibilização consiste na aplicação de choque elétrico na região da cabeça. O método utilizado é a eletronarcose sob imersão em líquido, comumente usada em aves, que é um método efetivo e que provoca insensibilidade instantânea. Ela consiste na transmissão de corrente elétrica, de alta voltagem e baixa amperagem, no cérebro do animal, induzindo um estado epiléptico que causa uma inconsciência momentânea e indolor. Com o choque, as aves ficam atordoadas e, neste estado, elas percorrem um determinado espaço, o qual permitirá que uma grande quantidade de sangue chegue à cabeça e o pescoço, alcançando uma perfeita sangria. Utiliza-se uma voltagem que varia de 30 a 60V. A insensibilização deve ser seguida de sangria no prazo máximo de 12 segundos.', 1, 'Processo – Insensibilizar as aves', 1, 1, 1, 1, 1),
(127, 56, 'A sangria é realizada mecanicamente por meio do corte dos vasos sanguíneos do pescoço quando este passa por um disco de corte automático.', 2, 'Processo – Passar pelo disco de Sangria', 1, 1, 1, 1, 1),
(128, 56, 'Faz-se necessário o acompanhamento por um operador que verifica a eficácia da corte, e nos casos de corte insuficiente ou não realizado, realiza-se o corte manual.', 3, 'Processo – Repassar manualmente as aves', 1, 1, 1, 1, 1),
(129, 56, 'A sangria deve ser realizada em instalação própria e exclusiva, chamado de “área de sangria”. O tempo mínimo para sangria total é de 3 minutos. A operação de sangria deve ser feita com as aves presas pelos pés, em ganchos de material inoxidável, apoiados em trilhos aéreos.', 4, 'Processo – Passar pelo túnel de sangria', 1, 1, 1, 1, 1),
(130, 56, 'O sangue é colhido em calha própria denominada de “calha de sangria”. Esse sangue é coletado através de calhas de aço inoxidável e armazenado num tanque para posterior envio.', 5, 'Processo – Coletar sangue', 1, 1, 1, 1, 1),
(131, 56, 'O mesmo é armazenado em um tanque que será destinado à indústria de subprodutos. O bombeamento será feito através de uma bomba sucção.', 6, 'Processo – Bombear sangue para a indústria de subprodutos', 1, 1, 1, 1, 1),
(132, 57, 'As aves são submetidas ao processo de escaldagem. Na escaldagem, as aves são imersas em um tanque de aço inoxidável contendo água quente, visando aumentar a densidade das penas e da área de fricção, assim como uma abertura dos poros da epiderme facilitando a retirada das penas. O tempo e temperatura devem ser ajustados de maneira que possua uma depenagem eficiente e que evite os diferentes efeitos da temperatura. Desta maneira, quanto maior a temperatura de escaldagem, menor é o tempo de exposição das aves. Mantém-se a água do tanque de escaldagem a uma temperatura que varia de 60 a 65°C (tanque possui um termômetro fixo). A água passa por renovação contínua e a cada período de oito horas é trocada. Um sistema de borbulho, feito através da injeção de um compressor radial agita a água no tanque e o aquecimento é feito através de vapor direto na água.', 1, 'Processo – Mergulhar a ave no tanque de escaldagem', 1, 1, 1, 1, 1),
(133, 57, 'Realiza-se a remoção das penas sambiqueira em equipamento adequado. O objetivo é retirar as penas maiores e mais resistentes para que não comprometa o processo posterior.', 2, 'Processo – Retirar penas da sambiqueira', 1, 1, 1, 1, 1),
(134, 57, 'O processo realizado é de depenagem úmida que é efetuado com máquinas chamadas de depenadeiras. As depenadeiras são túneis de aço inoxidável, com cilindros rotativos, munidos de “dedos” de borracha que friccionam as carcaças e removem as penas.', 3, 'Processo – Retirar as penas da carcaça', 1, 1, 1, 1, 1),
(135, 57, 'A ave passa por um desenganchador que cairá na esteira. Ao final do processo de pendura, o frango deverá ser trocado de nória e, assim, essa etapa é feita por um desenganchador.', 4, 'Processo – Desenganchar as carcaças', 1, 1, 1, 1, 1),
(136, 57, 'A esteira irá transportar as carcaças para a área de rependura.', 5, 'Processo – Encaminhar as carcaças para a esteira', 1, 1, 1, 1, 1),
(137, 57, 'As carcaças são rependuradas, desta vez na nória da evisceração, pelo pescoço por um colaborador. O objetivo desse posicionamento pelo pescoço é possibilitar a retirada da queratina dos pés no processo posterior.', 6, 'Processo – Rependurar as carcaças', 1, 1, 1, 1, 1),
(138, 57, 'Os pés passam pelo processo de escaldagem com o objetivo de remover a queratina dos pés. Eles são imersos em um tanque de aço inoxidável contendo água quente, com temperatura de 70 a 82ºC, durante, aproximadamente, 20 segundos. O objetivo principal dessa etapa é o amolecimento da queratina para posterior remoção.', 7, 'Processo – Escaldar os pés', 1, 1, 1, 1, 1),
(139, 57, 'É realizada através de cilindros rotativos, munidos de “dedos” de borracha que friccionam os pés, removendo a queratina. Através de rolos a queratina é retirada de forma eficiente.', 8, 'Processo – Retirar a queratina dos pés', 1, 1, 1, 1, 1),
(140, 57, 'A queratina é enviada através de canaletas para a fábrica de subprodutos.', 9, 'Processo – Encaminhar para Fábrica de Subprodutos', 1, 1, 1, 1, 1),
(141, 57, 'Na sequência ocorre a lavagem da carcaça, com a instalação de chuveiros de aspersão contendo água hiperclorada com sistema de pressão, com jatos de água orientados de modo que toda a carcaça seja lavada. A lavagem inicial é realizada antes da área de evisceração e deve ser realizada logo após a depenagem. Nesta fase as carcaças saem da área suja para a área limpa.', 10, 'Processo – Lavar as carcaças', 1, 1, 1, 1, 1),
(142, 58, 'O coureamento é o corte na pele do pescoço, promovendo a liberação da traquéia e do papo. O corte é realizado manualmente com uma faca de aço inoxidável, com o propósito de desgarrar o pescoço e facilitar sua remoção.', 1, 'Processo – Fazer o coureamento', 1, 1, 1, 1, 1),
(143, 58, 'É realizada a pendura por três pontos, onde os pés são presos no mesmo gancho, expondo o abdômen para evisceração.', 2, 'Processo – Pendurar em 3 (três) pontos', 1, 1, 1, 1, 1),
(144, 58, 'A cloaca é cortada e extraída com o uso de uma pistola a vácuo, ficando dependuradas pelo intestino. A remoção da cloaca requer habilidade e cuidado por parte do operador, pois resíduos de cloaca ou fezes são foco de contaminação.', 3, 'Processo – Retirar a cloaca', 1, 1, 1, 1, 1),
(145, 58, 'Com o auxílio de uma faca afiada faz-se um corte transversal na parte inferior do abdômen, facilitando a exposição das vísceras. É feita uma abertura entre as coxas fazendo um corte ao redor da cloaca. O procedimento tem que ser feito de forma criteriosa a fim de evitar a perfuração das vísceras.', 4, 'Processo – Abrir o abdômen', 1, 1, 1, 1, 1),
(146, 58, 'É realizada manualmente, eventrando as vísceras para fora da cavidade abdominal. Para eventrar, usam-se os dedos indicadores e médios segurando a moela com firmeza, em seguida, gira-se a mão de maneira que a moela seja puxada, expondo as vísceras para fora da cavidade.', 5, 'Processo – Eventrar a carcaça', 1, 1, 1, 1, 1),
(147, 58, 'O SIE (Serviço de Inspeção Estadual) é realizado por fiscais que observam a presença de anormalidades nas carcaças, verificado se as aves se encontram sadias ou impróprias para consumo. As carcaças são avaliadas de forma interna e externa, visando o diagnóstico de contusões e doenças evidenciadas visualmente.', 6, 'Processo - Avaliar a carcaça pelo SIE (Serviço de Inspeção Estadual)', 1, 1, 1, 1, 1),
(148, 58, 'O colaborador retira o coração do frango manualmente e o coloca numa calha para o mini-chiller. São separados manualmente e destinadas para o pré-resfriamento. O coração ao ser coletado deve-se remover o saco pericárdico com cuidado.', 7, 'Processo – Remover coração', 1, 1, 1, 1, 1),
(149, 58, 'O colaborador retira o fígado do frango manualmente e o coloca numa calha para o mini-chiller São separados manualmente e destinadas para o pré-resfriamento. O fígado ao ser coletado deve-se remover a vesícula biliar com cuidado para evitar o rompimento da bílis e consequentemente ocorrer à contaminação do fígado e da carcaça.', 8, 'Processo – Remover fígado', 1, 1, 1, 1, 1),
(150, 58, 'Nesse processo, as vísceras estão expostas para fora e, dessa forma, o colaborador as retira manualmente com cuidado observando para que retire juntamente o papo do frango.', 9, 'Processo – Remover moela e vísceras não comestíveis', 1, 1, 1, 1, 1),
(151, 58, 'As moelas e as vísceras não comestíveis são direcionadas para a máquina separadora de moela onde serão separadas em equipamento especial.', 10, 'Processo – Encaminhar para a máquina de limpeza de moela', 1, 1, 1, 1, 1),
(152, 58, 'A moela segue para a lavagem interna e remoção da queratina através de dois rolos abrasivos, que giram em direção contrária. E as vísceras não comestíveis são enviadas para a calha de evisceração e conduzidas para a fábrica de subprodutos.', 11, 'Processo – Retirar a queratina', 1, 1, 1, 1, 1),
(153, 58, 'Após a limpeza a moela é encaminhada para o sistema de pré-resfriamento.', 12, 'Processo – Encaminhar para o mini-chiller', 1, 1, 1, 1, 1),
(154, 58, 'O colaborador irá verificar todas carcaças internamente avaliando se todos os processos da evisceração foram feitos corretamente. Quando se encontra algum item não conforme, é feita a correção para que a carcaça possa seguir o fluxo normal.', 13, 'Processo – Revisar a carcaça', 1, 1, 1, 1, 1),
(155, 58, 'Com o auxílio de uma pistola a vácuo, operada manualmente, os pulmões são extraídos. O objetivo da retirada dos pulmões é o cumprimento das Normas de Segurança Alimentar que proíbem a sua comercialização.', 14, 'Processo – Retirar os pulmões', 1, 1, 1, 1, 1),
(156, 58, 'O colaborador retira o pescoço do gancho, deixando o frango pendurado pelos pés. Essa fase é importante para que facilite a retirada da cabeça e do corte dos pés do frango.', 15, 'Processo – Desenganchar a Cabeça', 1, 1, 1, 1, 1),
(157, 58, 'A carcaça vai sendo conduzida pela nória e a cabeça passa por duas barras horizontais, dispostas paralelamente, sendo arrancadas.', 16, 'Processo – Arrancar a cabeça', 1, 1, 1, 1, 1),
(158, 58, 'Após arrancar a cabeça, ela será encaminhada para o sistema de pré- resfriamento.', 17, 'Processo – Encaminhar para o mini-chiller', 1, 1, 1, 1, 1),
(159, 58, 'Terminada a evisceração, realiza-se a lavagem final das aves. A lavagem é feita com a instalação de chuveiros de aspersão contendo água hiperclorada com sistema de pressão, com jatos de água orientados de modo que toda a carcaça seja lavada.', 18, 'Processo – Lavar a carcaça', 1, 1, 1, 1, 1),
(160, 58, 'As carcaças são separadas dos pés por um sistema de discos de aço inoxidável que está acoplado a nória em uma curva de 180 graus, no qual o disco está ajustado para cortar sobre a junta, entre os pés e a coxa.', 19, 'Processo – Cortar os pés', 1, 1, 1, 1, 1),
(161, 58, 'Os pés, ainda na nória, são desenganchados através de dois guias de aço inoxidável.', 20, 'Processo – Desenganchar os pés', 1, 1, 1, 1, 1),
(162, 58, 'Após desenganchar os pés, eles são encaminhados através de calhas para o sistema de pré-resfriamento. O pré- resfriamento é realizado em tanques de imersão por um sistema de rosca sem fim, denominado de mini-chiller de miúdos, obedecendo a temperatura máxima de 4oC e a renovação de água contracorrente. Cada miúdo obtido é destinado para seu mini-chiller.', 21, 'Processo – Encaminhar para o mini-chiller', 1, 1, 1, 1, 1),
(163, 59, 'A cloaca e o pulmão são sugados por uma bomba de vácuo e são recepcionadas por dois tanques onde ficam armazenados. Nos intervalos do abate as bombas são desligadas, fecha o tanque e faz um shut com ar comprimido até a fábrica de subprodutos.', 1, 'Processo – Recepcionar cloaca e pulmão', 1, 1, 1, 1, 1),
(164, 66, 'Ao término da etapa de evisceração, as carcaças estão a uma temperatura de aproximadamente 35oC e terão que passar por um rápido resfriamento com objetivo de minimizar a possibilidade de contaminação microbiana e de outros processos deteriorantes. O resfriamento é realizado por imersão em água hiperclorada em tanques de aço inoxidável contínuos com sistema de borbulhamento de ar através de compressor radial, com rosca sem fim, contendo água gelada sendo abastecido automaticamente com gelo. O pré-chiller é utilizado para abaixar vagarosamente a temperatura da carcaça evitando causar o encolhimento pelo frio. Ele limpa as sujidades ainda existentes das carcaças evisceradas, reduzindo as contaminações cruzadas. A temperatura da água no pré-chiller não deve ser superior a 16°C, medida no ponto em que a carcaça entra no tanque. A renovação de água é constante e contracorrente na proporção de 1,5 litros por carcaça e admite-se no máximo 5 ppm de cloro livre.', 1, 'Processo – Encaminhar para o pré-chiller', 1, 1, 1, 1, 1),
(165, 66, 'É realizado por imersão em água hiperclorada em tanques de aço inoxidável contínuos com sistema de borbulhamento de ar através de compressor radial, com rosca sem fim, contendo água gelada sendo abastecido automaticamente com gelo. A temperatura da água não deve ser superior a 4°C na saída da carcaça.', 2, 'Processo – Encaminhar para o chiller intermediário', 1, 1, 1, 1, 1);
INSERT INTO `subprocessos` (`id`, `macroprocesso_id`, `descricao`, `numero`, `titulo`, `pessoas`, `classificacao_id`, `periodicidade_id`, `horas`, `maturidade_id`) VALUES
(166, 66, 'É realizado por imersão em água hiperclorada em tanques de aço inoxidável contínuos com sistema de borbulhamento de ar através de compressor radial, com rosca sem fim, contendo água gelada sendo abastecido automaticamente com gelo. A temperatura da água não deve ser superior a 4°C na saída da carcaça. No final do processo de pré-resfriamento, a temperatura das carcaças, deverá ser igual ou inferior a 7oC. Para as carcaças destinadas ao congelamento imediato permite-se umatemperatura de 10oC. A renovação de água é constante e contracorrente na proporção 1,0 litro por carcaça e admite-se no máximo 5 ppm de cloro livre.', 3, 'Processo – Encaminhar para o Chiller.', 1, 1, 1, 1, 1),
(167, 66, 'As carcaças caem sobre a mesa de classificação, onde funcionários determinam quais carcaças serão destinadas para embalagem, como frango inteiro, e quais irão para a sala de cortes analisando sua aparência externa.', 4, 'Processo – Cair na esteira da rependura', 1, 1, 1, 1, 1),
(168, 67, 'As carcaças selecionadas para serem embaladas inteiras são penduradas na nória pela coxa.', 1, 'Processo – Pendurar na nória da embalagem primária', 1, 1, 1, 1, 1),
(169, 67, 'O colaborador irá verificar a eficiência da classificação da carcaça antes da embalagem.', 2, 'Processo – Revisar a carcaça', 1, 1, 1, 1, 1),
(170, 67, 'As carcaças recebem no seu interior os sacos de miúdos contendo dois pés, uma cabeça com pescoço, moela e fígado.', 3, 'Processo – Colocar o pacote de miúdos', 1, 1, 1, 1, 1),
(171, 67, 'O frango será inserido na embalagem primária por intermédio de um cone. O colaborador retirará o frango da nória e irá inserir no funil de embalagem. O primeiro colaborador deverá inserir o frango no cone no sentido que a cabeça seja embalada primeiro.', 4, 'Processo – Embalar', 1, 1, 1, 1, 1),
(172, 67, 'Ao embalar o frango é colocado na esteira transportadora.', 5, 'Processo – Colocar na esteira', 1, 1, 1, 1, 1),
(173, 67, 'Em seguida as embalagens são grampeadas.', 6, 'Processo – Grampear', 1, 1, 1, 1, 1),
(174, 67, 'O frango é colocado na esteira.', 7, 'Processo – Colocar na esteira', 1, 1, 1, 1, 1),
(175, 67, 'Através de uma esteira transportadora, o frango é encaminhado para a embalagem secundária.', 8, 'Processo – Encaminhar para embalagem secundária', 1, 1, 1, 1, 1),
(176, 68, 'As carcaças encaminhadas ao corte são penduradas na nória pelo pescoço, em ganchos tipo gota, que facilitarão o corte.', 1, 'Processo – Pendurar na nória da sala de cortes', 1, 1, 1, 1, 1),
(177, 68, 'O colaborador, com o auxílio de uma faca, faz um pré corte sobre o dorso (entre as coxas). Esse corte é para facilitar a retirada das coxas limpando toda a pele que está por cima do dorso.', 2, 'Processo – Pré corte', 1, 1, 1, 1, 1),
(178, 68, 'Com o auxílio de uma faca as coxas e sobrecoxas são removidas. O colaborador com a mão esquerda pega a coxa e com a faca na mão direita corta na junta da sobrecoxa entre o dorso. Durante o processo o colaborador também retira toda a pele e carne que está no dorso.', 3, 'Processo – Cortar as coxas com a sobrecoxas', 1, 1, 1, 1, 1),
(179, 68, 'Elas são colocadas em uma esteira transportadora, onde são selecionadas e embaladas.', 4, 'Processo – Colocar as coxas com a sobrecoxas na esteira', 1, 1, 1, 1, 1),
(180, 68, 'Com o auxílio de uma faca as asas são removidas. O colaborador com a mão esquerda pega a asa e com a faca na mão direita corta na junta entre a coxinha da asa e o peito.', 5, 'Processo – Cortar as asas', 1, 1, 1, 1, 1),
(181, 68, 'Elas são colocadas em uma esteira transportadora, onde são selecionadas e embaladas.', 6, 'Processo – Colocar as asas na esteira', 1, 1, 1, 1, 1),
(182, 68, 'Com o auxílio de uma faca os peitos são removidos da carcaça cuidadosamente, para que tenham um padrão de corte.', 7, 'Processo – Cortar os peitos', 1, 1, 1, 1, 1),
(183, 68, 'Eles são colocados em uma esteira transportadora, onde são selecionadas e embaladas.', 8, 'Processo – Colocar os peitos na esteira', 1, 1, 1, 1, 1),
(184, 68, 'Com o auxílio de uma faca os filés dos peitos são removidos cuidadosamente das carcaças, para que não remova a cartilagem e ossos.', 9, 'Processo – Cortar os filés dos peitos', 1, 1, 1, 1, 1),
(185, 68, 'Eles são colocados em uma esteira transportadora, onde são selecionadas e embaladas.', 10, 'Processo – Colocar os filés dos peitos na esteira', 1, 1, 1, 1, 1),
(186, 68, 'O dorso é removido da nória por um colaborador e embalado através do cone incluindo pés e cabeça. Um outro colaborador acopla a embalagem no cone.', 11, 'Processo – Retirar o dorso da nória', 1, 1, 1, 1, 1),
(187, 69, 'O colaborador recebe os filés, através do carrinho feito de aço inoxidável.', 1, 'Processo – Recepcionar o filé de peito e o filé de coxa com sobrecoxa', 1, 1, 1, 1, 1),
(188, 69, 'O colaborador faz uma revisão nos filés, separando alguns ossos ou cartilagem que possam conter.', 2, 'Processo – Selecionar a carne sem osso e sem cartilagem', 1, 1, 1, 1, 1),
(189, 69, 'Através de uma balança de precisão, o colaborador faz a pesagem das bateladas.', 3, 'Processo – Pesar o produto para batelada', 1, 1, 1, 1, 1),
(190, 69, 'A matéria prima é colocada para moer em um equipamento de aço inoxidável com uma rosca sem fim, no centro, que empurrará os filés para moer em facas e disco.', 4, 'Processo – Colocar no moedor', 1, 1, 1, 1, 1),
(191, 69, 'Após moer, a massa é colocada em um carrinho transportador de aço inoxidável.', 5, 'Processo – Colocar no carrinho transportador', 1, 1, 1, 1, 1),
(192, 69, 'A massa é colocada em um misturador com um auxílio de um elevador, que eleva o carrinho até a altura ideal, despejando a massa no equipamento.', 6, 'Processo – Colocar no misturador', 1, 1, 1, 1, 1),
(193, 69, 'Os condimentos serão dosados na massa e misturados.', 7, 'Processo – Adicionar os condimentos', 1, 1, 1, 1, 1),
(194, 69, 'Ao término da mistura será retirado a massa para um carrinho transportador de aço inoxidável.', 8, 'Processo – Retirar o produto no misturador', 1, 1, 1, 1, 1),
(195, 69, 'A massa ficará descansando por quatro horas na câmara, sob refrigeração para que a cura reaja lenta e adequadamente.', 9, 'Processo – Encaminhar a massa para descanso na câmara de marinado', 1, 1, 1, 1, 1),
(196, 69, 'A massa é retirada e transportada para a sala de industrializado.', 10, 'Processo – Retirar a massa da câmara de marinado', 1, 1, 1, 1, 1),
(197, 69, 'A massa é retirada no carrinho com auxílio de uma bandeja e colocada na embutideira. A tripa suína, com calibre 28/32, será acoplada na máquina e começará o processo.', 11, 'Processo – Colocar na embutideira', 1, 1, 1, 1, 1),
(198, 69, 'Depois de embutida as linguiças são colocadas na esteira transportadora.', 12, 'Processo – Encaminhar para a esteira', 1, 1, 1, 1, 1),
(199, 69, 'As extremidades das linguiças são amarradas com cordões e embaladas.', 13, 'Processo – Embalar', 1, 1, 1, 1, 1),
(200, 69, 'As embalagens são retiradas da esteira.', 14, 'Processo – Retirar da esteira', 1, 1, 1, 1, 1),
(201, 69, 'O processo de embalagem a vácuo consiste na retirada do ar ao redor do alimento e na selagem da embalagem, melhorando o shelf life do produto. As embalagens são encaminhadas para a máquina selovac onde são seladas e embaladas a vácuo.', 15, 'Processo – Encaminhar para a máquina selovac', 1, 1, 1, 1, 1),
(202, 69, 'As embalagens seladas são retiradas da máquina.', 16, 'Processo – Retirar da máquina selovac', 1, 1, 1, 1, 1),
(203, 69, 'Após saírem da máquina, as embalagens são colocadas na esteira.', 17, 'Processo – Colocar na esteira', 1, 1, 1, 1, 1),
(204, 69, 'Os produtos são colocados na embalagem secundária', 18, 'Processo – Colocar na embalagem secundária', 1, 1, 1, 1, 1),
(205, 69, 'As caixas com 16,800 kg são colocadas em carrinhos, que possuem divisórias com capacidade de 27 caixas, que são direcionados para o túnel de congelamento rápido.', 19, 'Processo – Colocar no carrinho', 1, 1, 1, 1, 1),
(206, 69, 'São coladas etiquetas nas caixas secundárias contendo as seguintes informações: descrição do produto, peso, data de fabricação e validade e o código de barra.', 20, 'Processo – Colocar etiquetas', 1, 1, 1, 1, 1),
(207, 69, 'Os carrinhos são encaminhados para a área onde encontra-se o sistema de bipagem, que será realizado através de um scaner leitor de código de barras que dará entrada na produção diária e túnel de congelamento.', 21, 'Processo – Encaminhar para a primeira bipagem', 1, 1, 1, 1, 1),
(208, 69, 'O colaborador recebe os cortes através de caixas plásticas.', 22, 'Processo – Recepcionar coxa com sobrecoxa, asa e peito', 1, 1, 1, 1, 1),
(209, 69, 'Os cortes são passados em uma máquina contendo 4 discos de cortes, fazendo corte padronizado.', 23, 'Processo – Cortar os produtos', 1, 1, 1, 1, 1),
(210, 69, 'Após serem cortados eles serão pesados em proporções diferentes. A coxa com sobrecoxa são 30%, peito são 30% e asa 40%, sendo que as pontas das asas são descartadas.', 24, 'Processo – Pesar os produtos', 1, 1, 1, 1, 1),
(211, 69, 'O tambleamento (massageamento da carne) consiste em colocar a carne marinada no tambler (que é um equipamento de aço inoxidável que ao ser acionado ele gira) incrementando, desta forma, a distribuição da salmoura, melhorando o sabor, suculência e retenção de água na carne. Os cortes são colocados no tambler, adicionando água e os condimentos deixando tamblear por 30 minutos.', 25, 'Processo – Colocar no tambler', 1, 1, 1, 1, 1),
(212, 69, 'Após tamblear os produtos são colocados em carrinhos transportadores de aço inoxidável.', 26, 'Processo - Colocar o produto no carrinho transportador', 1, 1, 1, 1, 1),
(213, 69, 'Os produtos são retirados dos carrinhos e com o auxílio de bandejas um colaborador pesa e o outro através de um cone, com a embalagem acoplada, coloca o produto.', 27, 'Processo – Pesar produto', 1, 1, 1, 1, 1),
(214, 69, 'O colaborador pega a embalagem já com o produto na saída do cone e coloca na esteira.', 28, 'Processo – Colocar na esteira', 1, 1, 1, 1, 1),
(215, 69, 'O processo de embalagem a vácuo consiste na retirada do ar ao redor do alimento e na selagem da embalagem, melhorando o shelf life do produto. O operador da seladora, retira o produto da esteira levando até a máquina selovac. Em seguida, as embalagens são arrumadas de maneira que as aberturas fiquem na resistência de soldagem e a máquina é fechada.', 29, 'Processo – Colocar produto na máquina selovac', 1, 1, 1, 1, 1),
(216, 69, 'O colaborador abre a máquina e retira as embalagens levando-as até a esteira.', 30, 'Processo – Retirar da máquina selovac', 1, 1, 1, 1, 1),
(217, 69, 'O colaborador retira os produtos das esteiras e são colocados na embalagem secundária (caixa de papelão). Caixa secundária é designada para conter uma ou mais embalagens primárias.', 31, 'Processo – Colocar na embalagem secundária', 1, 1, 1, 1, 1),
(218, 69, 'As caixas com 16,800 kg são colocadas em carrinhos, que possuem divisórias com capacidade de 27 caixas, que são direcionados para o túnel de congelamento.', 32, 'Processo – Colocar no carrinho', 1, 1, 1, 1, 1),
(219, 69, 'São coladas etiquetas nas caixas secundárias contendo as seguintes informações: descrição do produto, peso, data de fabricação e validade e o código de barra.', 33, 'Processo – Colocar as etiquetas', 1, 1, 1, 1, 1),
(220, 69, 'Os carrinhos são encaminhados para a área onde encontra-se o sistema de bipagem, que será realizado através de um scaner leitor de código de barras que dará entrada na produção diária e túnel de congelamento.', 34, 'Processo – Encaminhar para a primeira bipagem', 1, 1, 1, 1, 1),
(221, 71, 'As planilhas e os dados que são entregues ao PCP são:\r\nControle de chegada e pesagem do frango vivo e os ticktes (PROD01), que são enviados da portaria; Controle de recebimento de frangos e GTA (PROD04), que são enviados da recepção de aves; Planejamento da produção (PROD12), planilha que é enviada pelo supervisor de produção; Controle de condenações (PROD02), planilha que é enviada pela Evisceração; Consumo de materiais industrializados (PROD09), planilha que é enviada pelo industrializados; Romaneio FFO, planilha que é enviada pela FFO; Planilha da Sala de embalagem (PROD03), que é enviada pela sala de embalagem.', 1, 'Processo – Receber planilhas e dados da produção', 1, 1, 1, 1, 1),
(222, 71, 'O colaborador confere as informações que estão nas planilhas, a fim de identificar algum erro ou fato atípico.', 2, 'Processo – Conferir as Informações', 1, 1, 1, 1, 1),
(223, 71, 'Para fazer a planilha são necessárias algumas informações que estão na planilha de controle de chegada e pesagem do frango vivo (PROD01), na planilha de controle de recebimento de frangos (PROD04), nas GTA’S, na planilha de controle de condenação (PROD02). Na planilha de controle de chegada e pesagem do frango vivo, possui a informação do peso líquido do frango. Na Planilha de controle recebimento de frangos (PROD04), possui a informação da quantidade recebida, nome do motorista e quantidade de frangos mortos. Nas GTA’S, possui o nome do integrado. Na planilha de controle de condenação (PROD02), possui o peso dos frangos condenados. Após confeccionada toda a planilha, enviar por e- mail e levar uma cópia juntamente com as GTA’s para o setor de contabilidade.', 3, 'Processo – Fazer a planilha para faturamento do frango vivo', 1, 1, 1, 1, 1),
(224, 71, 'Para fazer a planilha do controle diário de produção são necessárias algumas informações que estão na planilha para faturamento do frango vivo (PROD17), na planilha de controle de condenações (PROD02), na planilha da sala de embalagens (PROD03), nos dados da sala de corte e da RMVE010. Na planilha para faturamento do frango vivo (PROD17), é retirada a informação da quantidade de aves, peso líquido, peso médio, e a mortalidade (peso e quantidade), na planilha de controle de condenações (PROD02) é retirada a informação do peso total de frangos condenados e a quantidade de frangos condenados, na planilha da sala de embalagens (PROD03) é retirada a informação da quantidade de frango embalados, a sala de corte passa informações do peso das sobras e a RMVE010 o total produzido. Após reunir essas informações na planilha é feito o cálculo do rendimento que é a divisão entre o total produzido pelo peso líquido. Também é feito o cálculo da quantidade de frangos que foram embalados inteiros e desviados para corte além dos rendimentos do fígado, moela e coração.', 4, 'Processo - Fazer planilha do controle diário de produção', 1, 1, 1, 1, 1),
(225, 71, 'Para fazer essa planilha são necessárias as informações da RMVE010, que é total produzido no dia, e das informações dos líderes. Cada um informa ao PCP, a quantidade de material que foi danificado e com a RMVE010 é feito o cálculo de consumo de cada material da produção.', 5, 'Processo – Fazer a planilha do consumo diário da produção', 1, 1, 1, 1, 1),
(226, 71, 'Para fazer a planilha de patologias (PROD05), são necessárias as informações do SIE, onde eles possuem um Mapa diário de condenações, na qual se encontra as quantidades de frangos condenados e qual foi a sua patologia.', 6, 'Processo – Fazer planilha de patologias', 1, 1, 1, 1, 1),
(227, 71, 'Todos os dados das planilhas são lançados no sistema integrado da empresa (SISATAK), a fim de gerar as informações do abate.', 7, 'Processo - Fazer lançamentos de dados no sistema', 1, 1, 1, 1, 1),
(228, 71, 'São enviados os relatórios diariamente para a diretoria e gestores da empresa. São enviados o relatório de aves, planilha de patologias e o relatório de % de condenados e mortos. Esses relatórios são gerados pelo sistema com exceção da planilha de patologias.', 8, 'Processo - Enviar relatórios', 1, 1, 1, 1, 1),
(229, 71, 'Diariamente é verificado no sistema o relatório de produção de resfriado.', 9, 'Processo - Verificar relatório para produção de resfriado', 1, 1, 1, 1, 1),
(230, 71, 'Após verificar o relatório no sistema, é feito o contato com o comercial para verificar se está correta a quantidade de resfriado a ser produzida.', 10, 'Processo – Conferir Relatório com o comercial', 1, 1, 1, 1, 1),
(231, 71, 'Verificar com o refeitório a quantidade e qual o produto que será produzido para o setor.', 11, 'Processo – Produção para o refeitório', 1, 1, 1, 1, 1),
(232, 71, 'Verificar a quantidade de produtos que estão em estoque para produzir aqueles que estão com quantidade baixa ou em falta.', 12, 'Processo – Verificar RETQ702', 1, 1, 1, 1, 1),
(233, 71, 'A ordem de serviço (PROD10) é feita com as informações da quantidade de produtos resfriados e congelados que vai ser produzida além da quantidade e qual produto vai ser produzido para o refeitório.', 13, 'Processo – Fazer a ordem de serviço', 1, 1, 1, 1, 1),
(234, 71, 'Após ser feita a ordem de serviço, ela deve ser entregue na supervisão, com seis cópias, para que sejam distribuídas.', 14, 'Processo – Entregar na supervisão', 1, 1, 1, 1, 1),
(235, 71, 'A partir da ordem de serviço as etiquetas são emitidas para serem coladas nas caixas de cada produto, as etiquetas especificam o nome do produto, o peso, a data de fabricação e a data de validade, além de um código de barra.', 15, 'Processo - Emitir Etiquetas', 1, 1, 1, 1, 1),
(236, 71, 'As etiquetas que são danificadas no processo são apagadas.', 16, 'Processo – Apagar etiquetas', 1, 1, 1, 1, 1),
(237, 72, 'Receber cloaca e pulmão que foram enviados pela área de utilidades durante o processo de limpeza da carcaça. Recepcionar queratina que foi enviada pelo setor de escaldagem e depenagem, e a carcaça condenada enviada pelo setor de evisceração. Após a limpeza da moela no setor de evisceração, verificar se está totalmente sem queratina, se ainda restar queratinas, a moela estará condenada e será enviada para a fábrica de subprodutos. Todos esses subprodutos são transportados via tubulação.', 1, 'Processo - Recepcionar cloaca, pulmão, queratina, carcaças e moelas condenadas', 1, 1, 1, 1, 1),
(238, 72, 'A moega recebe e armazena os produtos para obter uma quantidade necessária para iniciar de fato o processo.', 4, 'Processo - Encaminhar para moega', 1, 1, 1, 1, 1),
(239, 72, 'A finalidade da rosca transportadora é carregar os produtos que saem de um equipamento para outro. Na produção da farinha e óleo, as vísceras são transportadas até o digestor começando o processo de cozimento.', 5, 'Processo - Encaminhar para rosca transportadora', 1, 1, 1, 1, 1),
(240, 72, 'Antes de fechar a carga no digestor adiciona- se o antioxidante com o intuito de prolongar a vida útil da farinha e equilibrar o pH do óleo (acidez máxima de 3%). Este equipamento efetuará a fritura dos produtos em 2 horas e 30 minutos fazendo a evaporação da água contida, resultando em um misto de farinha de vísceras e óleo. Lembrando que a cada carga do digestor é adicionado um tanque de pulmão. O processo de cozimento é realizado por via úmida que consiste na utilização direta de vapor cobre o produto no digestor propiciando uma separação de fases entre sólido, gordura e água.', 6, 'Processo - Colocar no digestor', 1, 1, 1, 1, 1),
(241, 72, 'Ao término do cozimento, o produto é direcionado para o percolador e com o auxílio da rosca transportadora é levado até a prensa. Este equipamento é responsável pela percolação, com o objetivo de remover o óleo, através da gravidade, dos sólidos maiores resultante dos digestores.', 7, 'Processo - Encaminhar para o percolador de farinha', 1, 1, 1, 1, 1),
(242, 72, 'A prensa é um equipamento que tem a finalidade de extrair o óleo da massa resultante do processo. O óleo retirado é encaminhado até um tanque mexedor.', 8, 'Processo - Encaminhar para a prensa', 1, 1, 1, 1, 1),
(243, 72, 'Do tanque mexedor o óleo será transportado para uma centrífuga e em seguida será refinado.', 9, 'Processo - Encaminhar óleo para centrifugar', 1, 1, 1, 1, 1),
(244, 72, 'Após a refinação o óleo é por fim armazenado no tanque de óleo. O sólido é conduzido por meio da rosca transportadora para a etapa seguinte.', 10, 'Processo - Armazenar no tanque', 1, 1, 1, 1, 1),
(245, 72, 'Esta etapa refere-se à moagem e a desintegração do sólido, onde o produto será refinado no moinho.', 11, 'Processo - Encaminhar massa para o moinho', 1, 1, 1, 1, 1),
(246, 72, 'Logo após a saída do moinho, o ensacamento é realizado colocando a farinha em embalagens específicas. Na sequência a farinha é armazenada.', 12, 'Processo - Ensacar', 1, 1, 1, 1, 1),
(247, 72, 'Os sacos de farinha ficam armazenados até o momento em que serão utilizados.', 13, 'Processo - Armazenar', 1, 1, 1, 1, 1),
(248, 72, 'O sangue é levado para a fábrica desubprodutos através do bombeamento, passa para um dosador com a mediação de uma bomba. Este dosador carrega o sangue até o digestor.', 14, 'Processo - Recepcionar sangue	encaminhar para o tanque de dosagem', 1, 1, 1, 1, 1),
(249, 72, 'A pena é conduzida em calhas para a fábrica de subprodutos por via gravitacional e com o fluxo de água do processo de abate.', 15, 'Processo - Recepcionar penas', 1, 1, 1, 1, 1),
(250, 72, 'Ao chegar à área de processamento de subprodutos, as penas são enviadas para a peneira hidroestática, com o propósito de remover a maior quantidade de água possível. Estima-se que quase 80% de água é retirada.', 16, 'Processo - Colocar na peneira hidroestática', 1, 1, 1, 1, 1),
(251, 72, 'Depois de passar pela peneira, as penas seguirão para a etapa subsequente por meio da rosca transportadora.', 17, 'Processo - Encaminhar pena para rosca transportadora', 1, 1, 1, 1, 1),
(252, 72, 'A pena é prensada e o excesso de água é removido. Em seguida a pena é transportada para a moega de recepção.', 18, 'Processo - Colocar na prensa de Pena', 1, 1, 1, 1, 1),
(253, 72, 'A moega recebe e armazena a pena até chegar a quantidade ideal para iniciar o processo no digestor.', 19, 'Processo - Encaminhar para moega', 1, 1, 1, 1, 1),
(254, 72, 'O sangue é despejado no digestor através do dosador para então ser misturado com a pena e iniciar o cozimento. Lembrando que é adicionado o antioxidante na mistura (pena e sangue) antes da carga começar a cozinhar.\r\nQuando o digestor é acionado leva cerca de 25 minutos cozinhando e na sequência a válvula é aliviada aos poucos (15 minutos). Por fim, a carga fica por 1 hora fazendo a pré-secagem.', 20, 'Processo - Colocar no digestor', 1, 1, 1, 1, 1),
(255, 72, 'Ao término do tempo no digestor o produto cai no percolador.', 21, 'Processo - Colocar no percolador', 1, 1, 1, 1, 1),
(256, 72, 'Logo depois a farinha entra no ciclo do anel secador, permanecendo até atingir a umidade desejada (Umidade máxima de 7%).', 22, 'Processo - Colocar para o anel secador', 1, 1, 1, 1, 1),
(257, 72, 'Com a umidade alcançada, a carga entra nos cones para ser ensacada. Por fim, são armazenadas.', 23, 'Processo - Ensacar', 1, 1, 1, 1, 1),
(258, 72, 'Os sacos de farinha permanecem armazenados na fábrica de subprodutos até o momento de serem utilizados.', 24, 'Processo - Armazenar farinha', 1, 1, 1, 1, 1),
(259, 73, 'Os pedidos são impressos e também enviados por e-mail para o Setor Financeiro.', 1, 'Imprimir a relação de pedidos', 1, 1, 1, 1, 1),
(260, 101, 'Após a definição da área de atuação do profissional, o mesmo tem como rotina realizar visitas a todos PDV´s (Pontos de Vendas) possíveis, de clientes que comercializam ou utilizam produtos no segmento de atuação da Gujão, com o objetivo de prospectar novos clientes para desenvolvimento de uma parceria comercial.', 1, 'Prospecção Presencial', 1, 1, 1, 1, 1),
(261, 101, 'A prospecção remota ocorre através do setor de televendas no qual utilizam uma plataforma automatizada de ligações e gerenciamento de chamadas. O grupo de clientes é definido a partir da estratégia comercial do período e são definidos grupos de clientes a serem realizados as campanhas. Após a finalização da campanha é gerado um relatório com o status de cada chamada realizada.', 2, 'Prospecção Ativa', 1, 1, 1, 1, 1),
(262, 101, 'O cliente faz contato com a empresa e o comercial direciona o atendimento para o profissional responsável pela área de atuação. Após a visita, é feita a identificação do cliente que irá seguir o fluxo normal de entrega dos documentos necessários ao cadastro.', 3, 'Prospecção Passiva', 1, 1, 1, 1, 1),
(263, 102, 'O profissional preencherá a ficha cadastral e recolherá a assinatura do cliente ou representante legal da empresa, que obrigatoriamente deve ser igual ao documento apresentado que prove o poder necessário para realizar compras em nome da empresa. Os seguintes documentos são solicitados:\r\nPessoa Jurídica - Cópia do contrato social/requerimento empresarial ou RG do sócio que assinou a ficha.\r\n(A assinatura deve ser idêntica à do documento apresentado).\r\nPessoa Física – Para os clientes pessoa física, RG e CPF, comprovante de endereço em nome do cliente e será o endereço que efetuará a entrega.\r\nSão fundamentais além dos dados do cliente ser colocados na ficha cadastral: Sugestão de Prazo, Limite e Forma de Pagamento.', 1, 'Coletar Documentação', 1, 1, 1, 1, 1),
(264, 102, 'É feita pelo setor de crédito, através de pesquisa de SERASA e em caso de constar documentos de outros fornecedores ou referências comerciais contatos para busca de informações.', 2, 'Processo – Cadastrar Dados dos Clientes', 1, 1, 1, 1, 1),
(265, 102, 'A definição de prazos se dá de acordo os seguintes critérios:\r\nPrazo máximo 28dd;\r\nAté seis meses: Sem prazo;\r\nSeis a doze meses: até 14dd;\r\nMais de doze meses: até 21dd.\r\nSalienta-se que a condições do prazo são máximas, cabe ao setor de crédito, com base nas informações cadastrais definir. A exemplo um cliente com mais de 12 meses pode sim ter um prazo liberado de apenas 7 (Sete) dias, até apresentar eficácia de liquidez.\r\nEm caso de qualquer exceção dos prazos pré-fixados, somente serão acatados com autorização da Gerência Comercial ou Diretoria.', 3, 'Processo – Definição de Prazos', 1, 1, 1, 1, 1),
(266, 102, 'É feita através das informações cadastrais da pesquisa, levando em consideração as referências comerciais e sugestão de limite apresentada pelo representante/vendedor, contando ainda com a avaliação da Coordenação Comercial e Gerência Comercial.', 4, 'Definição de Limites', 1, 1, 1, 1, 1),
(267, 102, 'Após o recebimento da documentação o financeiro tem o prazo de 24hs para finalizar o cadastro do cliente ou passar a justificativa do não cadastro.', 5, 'Finalização do Cadastro', 1, 1, 1, 1, 1),
(268, 103, 'Representante ou vendedor visita o cliente devidamente cadastrado e após negociação, encaminha o pedido via palm para a empresa.', 1, 'Processo – Venda Externa', 1, 1, 1, 1, 1),
(269, 103, 'A central de negócios efetua a venda através de atendimento telefônico ou web, faz a inclusão do pedido diretamente no sistema “Sisatak”.', 2, 'Processo – Venda Interna', 1, 1, 1, 1, 1),
(270, 103, 'O pedido de venda é imputado no sistema da empresa por dois meios:\r\n1º - DIRETO NO SISITEMA: Quando gerado por operação interna ou central de negócios;\r\n2º - Através o sistema de automação de vendas (Palm): Pedido gerado pelo profissional através do aplicativo ATAK que após a sincronização automaticamente é imputado no sistema onde passa por critérios avaliativos de bloqueios, por limites, preços, regras de negócios e disponibilidade de estoques.', 3, 'Condições de Venda', 1, 1, 1, 1, 1),
(271, 104, 'Depois de acondicionados nas embalagens primárias, os produtos dirigem-se para a área de embalagem secundária através de uma esteira, onde o colaborador retira manualmente colocando nas caixas de papelão.', 1, 'Retirar da esteira', 1, 1, 1, 1, 1),
(272, 104, 'As caixas de papelão são colocadas em cima de uma balança de precisão, na qual o colaborador seleciona frangos para padronizar as caixas com 20kg e logo após são colocadas em uma esteira transportadora.', 2, 'Pesar produtos', 1, 1, 1, 1, 1),
(273, 104, 'As caixas pesadas seguem por uma esteira e chegam até um colaborador que é responsável pela colagem das etiquetas, contendo nome do produto, o peso padrão, data de fabricação, de validade e o código de barras.', 3, 'Colocar etiquetas nas caixas', 1, 1, 1, 1, 1),
(274, 104, 'Ao final da esteira transportadora, um colaborador retira a caixa com o peso padrão e etiqueta, colocando-a em carrinho próprio para congelamento com capacidade de 27 caixas.', 4, 'Colocar no carrinho', 1, 1, 1, 1, 1),
(275, 104, 'Os carrinhos são encaminhados para a área onde se encontra o sistema de bipagem, que será realizado através de um scaner leitor de código de barras que dará entrada na produção diária e túnel de congelamento.', 5, 'Encaminhar carrinho para primeira bipagem', 1, 1, 1, 1, 1),
(276, 106, 'Após a bipagem, o colaborador conduz o carrinho, que possui duas rodas fixas e duas rodas móveis, para os túneis de congelamento.', 1, 'Colocar carrinho no túnel de congelamento', 1, 1, 1, 1, 1),
(277, 106, 'Após o carregamento total do túnel, fecha-se a porta. O produto ficará em torno de 20 horas, em uma temperatura de aproximadamente -30ºC. O congelamento é feito através de compressores com sucção de amônia e vaporizadores. O congelamento é realizado através de processo rápido, o que evita a formação de grandes cristais de gelo na carne de frango.q', 2, 'Esperar o congelamento dos frangos', 1, 1, 1, 1, 1),
(278, 106, 'Após o tempo de congelamento total das aves, os vaporizadores dos túneis são desligados, abre-se a porta e confere se a temperatura dos produtos está de acordo com a legislação (- 12ºC). Os carrinhos são retirados dos túneis e levados até a embalagem terciária.', 3, 'Remover carrinho do túnel', 1, 1, 1, 1, 1),
(279, 106, 'O colaborador irá retirar as caixas dos carrinhos, colocar em uma esteira que transportará para a máquina seladora, onde recebem embalagem terciária (filme termoencolhível). A embalagem terciária agrupa diversas embalagens secundárias.', 4, 'Encaminhar para embalagem terciária', 1, 1, 1, 1, 1),
(280, 107, 'Depois de acondicionados nas embalagens primárias, os produtos dirigem-se para a área de embalagem secundária através de uma esteira, onde o colaborador retira manualmente colocando nas caixas de papelão.', 1, 'Retirar da esteira', 1, 1, 1, 1, 1),
(281, 107, 'As caixas de papelão são colocadas em cima de uma balança de precisão, na qual o colaborador seleciona frangos para padronizar as caixas com 20kg e logo após são colocadas em uma esteira transportadora.', 2, 'Pesar produtos', 1, 1, 1, 1, 1),
(282, 107, 'As caixas pesadas seguem por uma esteira e chegam até um colaborador que é responsável pela colagem das etiquetas, contendo nome do produto, o peso padrão, data de fabricação, de validade e o código de barras.', 3, 'Colocar etiquetas nas caixas', 1, 1, 1, 1, 1),
(283, 107, 'Ao final da esteira transportadora, um colaborador retira a caixa com o peso padrão e etiqueta, colocando-a em carrinho próprio para congelamento com capacidade de 27 caixas.', 4, 'Colocar no carrinho', 1, 1, 1, 1, 1),
(284, 107, 'Os carrinhos são encaminhados para a área onde se encontra o sistema de bipagem, que será realizado através de um scaner leitor de código de barras que dará entrada na produção diária e túnel de congelamento.', 5, 'Encaminhar carrinho para primeira bipagem', 1, 1, 1, 1, 1),
(285, 109, 'Após a bipagem, o colaborador conduz o carrinho, que possui duas rodas fixas e duas rodas móveis, para os túneis de congelamento.', 1, 'Colocar carrinho no túnel de congelamento', 1, 1, 1, 1, 1),
(286, 109, 'Após o carregamento total do túnel, fecha-se a porta. O produto ficará em torno de 20 horas, em uma temperatura de aproximadamente -30ºC. O congelamento é feito através de compressores com sucção de amônia e vaporizadores. O congelamento é realizado através de processo rápido, o que evita a formação de grandes cristais de gelo na carne de frango.', 2, 'Esperar o congelamento dos frangos', 1, 1, 1, 1, 1),
(287, 109, 'Após o tempo de congelamento total das aves, os vaporizadores dos túneis são desligados, abre-se a porta e confere se a temperatura dos produtos está de acordo com a legislação (- 12ºC). Os carrinhos são retirados dos túneis e levados até a embalagem terciária.', 3, 'Remover carrinho do túnel', 1, 1, 1, 1, 1),
(288, 109, 'O colaborador irá retirar as caixas dos carrinhos, colocar em uma esteira que transportará para a máquina seladora, onde recebem embalagem terciária (filme termoencolhível). A embalagem terciária agrupa diversas embalagens secundárias.', 4, 'Encaminhar para embalagem terciária', 1, 1, 1, 1, 1),
(289, 109, 'Após receber o filme, as caixas seguem por uma esteira transportadora onde o colaborador retira as caixas e monta um pallet contendo 50 caixas. Os pallets são de madeira e servem para a movimentação de cargas, otimizando o processo.', 5, 'Formar pallet', 1, 1, 1, 1, 1),
(290, 109, 'O colaborador, com uma transpaleteira, encaminha para a área da segunda bipagem. Neste momento, cada pallet possui uma “etiqueta mãe” contendo 50 caixas cada (todas as etiquetas são bipadas – inicialmente a “mãe” e depois as etiquetas das caixas).', 6, 'Encaminhar para a segunda bipagem', 1, 1, 1, 1, 1),
(291, 109, 'Em seguida são colocadas as cantoneiras nos pallets e depois são envoltos pelo filme strech.', 7, 'Colocar as cantoneiras e filmar', 1, 1, 1, 1, 1),
(292, 109, 'Com o auxílio da empilhadeira, os pallets são colocados na câmara de estocagem e ficam até serem expedidos. Vale lembrar, que as ruas da câmara principal são controladas, onde um colaborador controla a entrada dos produtos e o outro controla sua saída.', 8, 'Encaminhar para a câmara de estocagem', 1, 1, 1, 1, 1),
(293, 110, 'O motorista ao chegar no abatedouro com a devolução, dirige-se para uma das docas posicionando o caminhão de ré com a porta aberta, comunicando o conferente sobre a devolução.', 1, 'Receber a carga devolvida', 1, 1, 1, 1, 1),
(294, 110, 'O conferente retira os produtos do caminhão e confere.', 2, 'Conferir os produtos', 1, 1, 1, 1, 1),
(295, 110, 'O conferente faz uma identificação no produto que fica aguardando a avaliação do controle de qualidade e bipagem.', 3, 'Identificar a carga na câmara', 1, 1, 1, 1, 1),
(296, 110, 'O conferente assina a guia de devolução, preenchida pelo motorista.', 4, 'Assinar a guia de devolução', 1, 1, 1, 1, 1),
(297, 110, 'O motorista leva a guia assinada pelo conferente até o faturamento.', 5, 'Encaminhar a guia para o faturamento', 1, 1, 1, 1, 1),
(298, 110, 'Após o faturamento lançar no sistema a devolução, emitirá uma guia para a expedição.', 6, 'Receber guia definitiva de devolução', 1, 1, 1, 1, 1),
(299, 110, 'O conferente recebe a guia com o número da carga e os produtos que estão sendo devolvidos, abre o sistema para inserir os dados.', 7, 'Abrir o sistema', 1, 1, 1, 1, 1),
(300, 110, 'O conferente faz a bipagem, que será realizada através de um scaner leitor de código de barras, dando retorno do produto ao estoque.', 8, 'Bipar o retorno do produto no estoque', 1, 1, 1, 1, 1),
(301, 110, 'O produto passará por uma avaliação do controle de qualidade. Em seguida eles serão encaminhados para a câmara de estoque. Se apresentarem alguma avaria (caixa ou embalagem danificada), são retornados para a sala de embalagem primária e depois seguem para a câmara de estocagem.', 9, 'Avaliar o produto', 1, 1, 1, 1, 1),
(303, 111, 'A comissão de Vendas é fixa de 1%.', 1, 'Comissão de Vendas', 1, 1, 1, 1, 1),
(304, 111, '1 - VOLUME DE VENDAS: Caso a média mensal de vendas por dia útil seja maior ou igual à média alcançada no mês anterior o bônus será de 0,25%.\r\n2 - DEVOLUÇÕES: Caso o valor total da devolução for menor ou igual a 2% das vendas do mesmo mês o bônus será de 0,25%.\r\n3 - INADIMPLÊNCIA: Caso os títulos com atraso igual ou superior a cinco dias seja inferior a 2% do valor do faturamento do mês em apuração o bônus será de 0,25%.\r\n4 - CLIENTES POSITIVADOS: Caso o número de clientes positivados seja maior ou igual a média dos últimos 3 meses o bônus será de 0,25%.\r\nOs pontos avaliativos poderão por decisão da empresa serem alterações a qualquer momento mediante comunicação prévia de 30 (trinta) dias.', 2, 'Bônus Representantes Comerciais Bônus: (PONTOS AVALIATIVOS)', 1, 1, 1, 1, 1),
(305, 111, 'Salário fixo da categoria;\r\nAjuda de custos referente a transporte e alimentação de acordo com a área de atuação.', 3, 'Remuneração Vendedor Externo', 1, 1, 1, 1, 1),
(306, 111, '1 - VOLUME DE VENDAS: Caso a média mensal de vendas por dia útil seja maior ou igual à média alcançada no mês anterior o bônus será de 0,125%.\r\n2 - DEVOLUÇÕES: Caso o valor total da devolução for menor ou igual a 2% das vendas do mesmo mês o bônus será de 0,125%.\r\n3 - INADIMPLÊNCIA: Caso os títulos com atraso igual ou superior a cinco dias seja inferior a 2% do valor do faturamento do mês em apuração o bônus será de 0,125%.\r\n4 - CLIENTES POSITIVADOS: Caso o número de clientes positivados seja maior ou igual a média dos últimos 3 meses o bônus será de 0,125%.\r\nOs pontos avaliativos poderão por decisão da empresa serem alterações a qualquer momento mediante comunicação prévia de 30 (trinta) dias.\r\nBÔNUS EXTRA FIXO EM 0,5% DO VALOR DO FATURAMENTO MENSAL DE RESFRIADOS (apenas para os vendedores de Feira de Santana – BA).', 4, 'Bônus Vendedores Externo Bônus: (PONTOS AVALIATIVOS)', 1, 1, 1, 1, 1),
(307, 111, 'É pago mensalmente ao profissional da central de negócios além de remuneração mensal de registro, um bônus de 0,2%, do volume de títulos baixados.', 5, 'Bônus Central de Negócios', 1, 1, 1, 1, 1),
(308, 112, 'Semanalmente são emitidos relatório de contas a receber para toda equipe de vendas e Gerência Comercial;', 1, 'Controle e Gestão do Contas a Receber', 1, 1, 1, 1, 1),
(309, 112, 'Acompanhar cada carteira semanalmente, filtrando os clientes que estão com dificuldade de contato, solicitando da equipe a regularização imediata do cadastro e suporte ativo ao setor;\r\nFiltrar cliente com títulos com mais de 15 dias e tratar com cada representante/vendedor, sobre a situação e providências que estão sendo tomadas;\r\nCasos de títulos com valor mais expressivos atuação presencial da gerência, buscando negociação direta e objetiva, para solução.', 2, 'Atuação da Coordenação/ Gerência', 1, 1, 1, 1, 1),
(310, 113, 'Em casos de dificuldade na entrega o motorista tem como procedimento fazer contato de imediato com a logística, a qual deverá fazer contato imediato com o representante / vendedor, para buscar solucionar junto ao cliente. O representante / vendedor tem o prazo de 30 (Trinta) minutos a contar do contato para solucionar junto ao cliente e findar o processo da entrega. Isso não ocorrendo o Coord. de Logística, solicita ao cliente declarar o motivo da devolução em formulário personalizado e assinar. Após isso o veículo dá sequência às entregas.', 1, 'Dificuldade na Entrega', 1, 1, 1, 1, 1),
(311, 113, 'Em caso de ser solicitada entrega fora do endereço especificado na nota fiscal, o cliente deverá emitir nota fiscal de transferência para armazenamento em outro estabelecimento.\r\nEM HIPÓTESE ALGUMA A MERCADORIA PODE SER ENTREGUE EM OUTRO ENDEREÇO SEM ACOMPANHAMENTO DE DOCUMENTO FISCAL.', 2, 'Entrega Fora do Endereço do Cliente', 1, 1, 1, 1, 1),
(312, 113, 'Com objetivo de evitar o retorno da mercadoria devolvida para empresa, principalmente pela perda da qualidade, em virtude ao trajeto em todo roteiro de entrega e retorno, é autorizada a venda para clientes cadastrados na empresa, devendo seguir os seguintes procedimentos:', 3, 'Venda de Mercadoria Devolvida/ Refaturamento', 1, 1, 1, 1, 1),
(313, 119, 'Os fornecedores enviam uma resposta ao que foi solicitado, com os devidos preços dos produtos.', 1, 'Receber cotação', 1, 1, 1, 1, 1),
(314, 119, 'Avaliação de marca, especificação e concorrentes dos produtos. Observa-se os produtos com mais vantagem nos valores, podendo também ocorrer negociação com os fornecedores em relação a esses produtos.', 2, 'Avaliar cotação', 1, 1, 1, 1, 1),
(315, 145, 'Os produtos são apresentados e toda semana existe uma lista dos produtos em promoções, onde será passada para os clientes, ou seja, uma lista de ofertas semanal, realizada toda segunda-feira.', 1, 'Oferecer a lista de produtos', 1, 1, 1, 1, 1),
(316, 145, 'O orçamento não é sempre realizado por esse setor, o cliente liga buscando informações ou somente para saber os preços de algum produto.\r\nO orçamento é realizado juntamente com o cliente, onde os valores dos produtos são passados. O cliente com o orçamento em mãos, irá analisar se o valor é acessível, caso não seja, pode ser realizado negociações em relação aos valores dos produtos.', 2, 'Elaborar orçamentos', 1, 1, 1, 1, 1),
(317, 145, 'Essa negociação é com o objetivo de ser realizada a venda. Muitos clientes podem achar os valores dos produtos não acessíveis, então é comunicado ao Gerente, se pode haver a possibilidade de ocorrer uma negociação com os produtos, para que a venda venha a acontecer e o cliente não precisar ir na concorrência.\r\nHá uma resistência dos clientes, quando se tenta negociar uma proposta por telefone. Os clientes preferem ir pessoalmente as lojas, e efetuar a negociação.\r\nNessa negociação é explicado ao cliente que a ligação é com o objetivo de dar maior comodidade a ele para o dia a dia.\r\nSe a venda for efetuada, a entrega é realizada de 24 a 48 horas, onde é feita pelos profissionais da empresa.', 3, 'Negociar proposta', 1, 1, 1, 1, 1),
(318, 198, 'É verificada a necessidade de transferência de produtos, a depender da urgência daquele produto decorrente das vendas.', 1, 'Transferência de produtos', 1, 1, 1, 1, 1),
(319, 198, 'É necessário verificar o estoque de cada loja ajustando às necessidades de cada uma e essa verificação é feita através do relatório emitido no sistema.', 2, 'Emissão de relatório via sistema', 1, 1, 1, 1, 1),
(320, 198, 'As transferências gerais são feitas 3 vezes na semana (segunda, quarta e sexta) a partir das 8 horas da manhã. As transferências avulsas são feitas diariamente, a depender da solicitação da demanda do vendedor, pois possa ser que no deposito não esteja presente determinado produto solicitado pelo cliente, então deve entrar em contato com a outra loja e solicitando ao responsável. Nesse processo deve ser dado a entrada na mercadoria pelo faturamento, para que só assim a mercadoria esteja disponível para transferência.', 3, 'Transferências gerais', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`password`, `name`, `email`, `sexo`, `estado`, `cidade`, `telefone`, `id`, `sobrenome`, `updated_at`, `created_at`, `remember_token`, `image`) VALUES
('$2y$10$lRjICI53Jk2lrSYBK9kXV.oi65ksqSju/Y9vmycmGohK4h6.WcriS', 'Fábio', 'fabio.martins@projek.com.br', 'masculino', 'BA', '2927408', '(71) 98333-3333', 50, 'Martins', '2017-11-17 15:43:12', '2017-11-06 14:44:39', 'y2EWEyUYWRQJQs1Hy1J7VrbFEjjLdfiu1qUBH7WI4kyOyVNkBiE8IwxJDMk4', 'n0t8pmssrQWnVqf1Wj6ud8iv570cOrvRSmCoKdUT.png'),
('$2y$10$3xJmsunou.VPOQ9WDANQGug6NO6xt.UOSJq3Agk2EpHy3dNz0i9fa', 'Juliana', 'juliana.menezes@projek.com.br', 'feminino', 'BA', '2927408', '(71) 99371-5053', 51, 'Menezes', '2017-11-08 17:13:14', '2017-11-08 17:13:14', 'hlUA4KGZBmBQh3fTNJSiSRORTnpPK722NV1EJLeWevk1oSW9WRkQrydnTKCk', 'public/PFT1rJnKg04GaXtRzL0BD8mOOxBQLo1ZLu3KgDoD.png'),
('$2y$10$eg5.BDJE9dWkf6HFnx7Op.Gfvk/xtQw51J2Eckun1i6PpyHuCXgWe', 'Catharina', 'catharina.ramos@projek.com.br', 'feminino', 'BA', '2927408', '(71) 99915-5505', 52, 'Ramos', '2017-11-10 18:26:22', '2017-11-10 18:26:22', 'XjjdTz52VcFpUYDjgNsgeIGOd425c69NjVQuMxv0g2Wa7Lp9facB8Gzl2quZ', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplicacoes`
--
ALTER TABLE `aplicacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classificacoes`
--
ALTER TABLE `classificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `definicoes`
--
ALTER TABLE `definicoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gestor_dep`
--
ALTER TABLE `gestor_dep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maturidade`
--
ALTER TABLE `maturidade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microprocessos`
--
ALTER TABLE `microprocessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periodicidade`
--
ALTER TABLE `periodicidade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pis`
--
ALTER TABLE `pis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakeholders_micro`
--
ALTER TABLE `stakeholders_micro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakeholders_sub`
--
ALTER TABLE `stakeholders_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subprocessos`
--
ALTER TABLE `subprocessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplicacoes`
--
ALTER TABLE `aplicacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `classificacoes`
--
ALTER TABLE `classificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `definicoes`
--
ALTER TABLE `definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `gestor_dep`
--
ALTER TABLE `gestor_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT for table `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `maturidade`
--
ALTER TABLE `maturidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microprocessos`
--
ALTER TABLE `microprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `periodicidade`
--
ALTER TABLE `periodicidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stakeholders_micro`
--
ALTER TABLE `stakeholders_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stakeholders_sub`
--
ALTER TABLE `stakeholders_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subprocessos`
--
ALTER TABLE `subprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
