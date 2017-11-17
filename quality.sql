-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Nov-2017 às 15:55
-- Versão do servidor: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quality`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacoes`
--

CREATE TABLE `aplicacoes` (
  `id` int(11) NOT NULL,
  `pi_id` int(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aplicacoes`
--

INSERT INTO `aplicacoes` (`id`, `pi_id`, `descricao`) VALUES
(2, 3, 'Aplica-se à área Comercial da PROJEK.'),
(5, 7, 'Aplica-se ao setor Financeiro da Gujão Alimentos.'),
(6, 9, 'Aplica-se ao departamento de Disciplina da Gevan.'),
(7, 10, 'Aplica-se ao departamento de Folha de pagamento da Gevan.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacoes`
--

CREATE TABLE `classificacoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `site` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `segmento` varchar(255) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `definicoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `definicoes`
--

INSERT INTO `definicoes` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'SQ: Sistema de Qualidade.\r\nCRM: Customer Relationship Management (Gerenciamento do relacionamento com o Cliente).'),
(3, '3', 'SQ: Sistema de Qualidade.\r\nCRM: Customer Relationship Management (Gerenciamento do relacionamento com o Cliente).'),
(6, '7', 'SQ: Sistema de Qualidade'),
(7, '9', 'ROV: Relatório Operacional de Veículo\r\nROF: Relatório Operacional de Funcionário'),
(8, '10', 'Carta de anuência: Uma carta que informa se o funcionário irá ou não receber adiantamento salarial e se sim, o valor do mesmo;\r\nRelação de Líquidos: Documento e que consta o valor do pagamento da Folha da competência;\r\nBM: Boletim de Medição\r\nINSS: Instituto Nacional do Seguro Social\r\nFGTS: Fundo de Garantia por Tempo de Serviço\r\nFPAS: Fundo da Previdência e Assistência Social\r\nGPS: Guia da Previdência Social\r\nSefip: Sistema Empresa de Recolhimento do FGTS e Informações à Previdência Social\r\nNF: Nota Fiscal\r\nLN: Empresa Litoral Norte\r\nVCI: Empresa Viação Cidade Industrial\r\nU1 e U3: Códigos do sistema para gerar retenção\r\nNFE: Nota Fiscal Eletrônica\r\nGRF: Guia de Recolhimento do FGTS\r\nCaged: Cadastro Geral de Empregados e Desempregados\r\nDARF: Documento de Arrecadação de Receitas Federais\r\nSicalc: Sistema de Cálculo (acréscimos legais)\r\nGRRF: Guia de Recolhimento Rescisório do FGTS\r\nASO: Atestado de Saúde Ocupacional Demissional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`id`, `cliente_id`, `nome`) VALUES
(3, 2, 'COMERCIAL'),
(6, 3, 'FINANCEIRO'),
(7, 3, 'PRODUÇÃO'),
(8, 5, 'DISCIPLINA'),
(9, 5, 'FOLHA DE PAGAMENTO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_dep`
--

CREATE TABLE `gestor_dep` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento_id` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(9, 'Fábio Dias', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', '9', '(71) 98202-0397');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_macro`
--

CREATE TABLE `gestor_macro` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `macroprocesso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_macro`
--

INSERT INTO `gestor_macro` (`id`, `nome`, `tel`, `email`, `cargo`, `macroprocesso_id`) VALUES
(3, 'Fábio Dias', '(71) 99999-9999', 'fabio.martins@projek.com.br', 'Coordenador', 3),
(13, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 13),
(15, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 15),
(16, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 16),
(17, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 17),
(18, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 18),
(20, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 20),
(22, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 22),
(23, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 23),
(24, 'Aldenice Ferreira', '(75) 3622-4812', 'aldenice@gujao.com.br', 'Financeiro', 24),
(25, 'Alexsandro Souza Ramos', '(71) 98201-2068', 'alexsandro.souza@pg.gevan.com.br', 'Disciplina', 25),
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
(51, 'Fábio Dias', '(71) 98202-0397', 'fabio.dias@gevan.com.br', 'Folha de Pagamento', 51);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_micro`
--

CREATE TABLE `gestor_micro` (
  `id` int(11) NOT NULL,
  `microprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_micro`
--

INSERT INTO `gestor_micro` (`id`, `microprocesso_id`, `nome`, `email`, `tel`, `cargo`) VALUES
(1, 1, 'Fábio Martins', 'fabio.martins@projek.com.br', '(71) 98841-9093', 'Diretor'),
(2, 2, 'fsv', 'fabio.martins@projek.com.br', '(22) 22222-2222', 'cvcv'),
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
(22, 22, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_sub`
--

CREATE TABLE `gestor_sub` (
  `id` int(11) NOT NULL,
  `subprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor_sub`
--

INSERT INTO `gestor_sub` (`id`, `subprocesso_id`, `nome`, `email`, `tel`, `cargo`) VALUES
(1, 1, 'Fábio Martins', 'fabio.martins@projek.com.br', '(71) 98841-9093', 'Diretor'),
(2, 2, 'Fábio Dias', 'fabio.martins@projek.com.br', '(99) 99999-9999', 'Coordenador'),
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
(17, 17, 'Fábio Dias 2', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento'),
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
(91, 91, 'Fábio Dias', 'fabio.dias@gevan.com.br', '(71) 98202-0397', 'Folha de Pagamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'São rotinas destinadas ao correto controle e registros referentes ao processo que engloba o comercial desde o fechamento do contrato até o seu encerramento/rescisão, envolvendo os procedimentos comerciais e financeiros que fazem parte desse processo, tais como: o fechamento de contrato, atualizações cadastrais, faturamento e recebimento dos serviços/cobrança, assim como o encerramento/extinção dos mesmos.'),
(3, '3', 'São rotinas destinadas ao correto controle e registros referentes ao processo que engloba o comercial desde o fechamento do contrato até o seu encerramento/rescisão, envolvendo os procedimentos comerciais e financeiros que fazem parte desse processo, tais como: o fechamento de contrato, atualizações cadastrais, faturamento e recebimento dos serviços/cobrança, assim como o encerramento/extinção dos mesmos.'),
(6, '7', 'O Procedimento Interno, do departamento Financeiro da Gujão Alimentos, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações.'),
(7, '9', 'O Procedimento Interno, do departamento de Disciplina é destinado a fazer a disciplina com os colaboradores quando necessário.'),
(8, '10', 'O Procedimento Interno, do departamento de Folha de Pagamento da Gevan, caracteriza rotinas adotadas visando estabelecer eficiência e eficácia em suas operações. O procedimento de pagamento de salário é dividido em quinzenas, 40% (adiantamento salarial) até o dia 15 e 60% até o dia 1o de cada mês.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `macroprocessos`
--

CREATE TABLE `macroprocessos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) NOT NULL,
  `classificacao_id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `numero` int(10) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `descricao` varchar(5000) DEFAULT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `macroprocessos`
--

INSERT INTO `macroprocessos` (`id`, `pi_id`, `classificacao_id`, `titulo`, `numero`, `pessoas`, `periodicidade_id`, `horas`, `descricao`, `maturidade_id`) VALUES
(3, '3', 1, 'Adiantamento Salarial', 1, 1, 1, 1, 'Efetuar adiantamento salarial dos funcionários', 1),
(13, '7', 1, 'Receber cadastro do cliente', 1, 1, 1, 1, 'O cadastro é analisado e aprovado pelo setor Financeiro. O recebimento é feito pelos representantes externos (responsáveis pela prospecção dos clientes) e vendedores internos onde os cadastros e as documentações são separados. Esses cadastros são de responsabilidade do setor Comercial.', 1),
(15, '7', 1, 'Fazer uma análise de crédito (SERASA)', 2, 1, 1, 1, 'Utilizada por empresas de qualquer porte ou segmento para analisar as condições de crédito de cada cliente – pessoa física ou jurídica – com a profundidade necessária, de acordo com o valor da operação e o grau de risco envolvido, por meio de políticas de crédito totalmente parametrizáveis, padronizando e agilizando a tomada de decisão na concessão da operação. Essa análise de crédito é retirada para saber se o cliente pode receber o crédito, para efetuar as compras.', 1),
(16, '7', 1, 'Cadastrar o cliente no sistema com limite e prazo de compra', 3, 1, 1, 1, 'Cadastro de cliente no sistema informado limite e prazo de compra.', 1),
(17, '7', 1, 'Receber os pedidos', 4, 1, 1, 1, 'Os pedidos são enviados pelos representantes comerciais, o setor\r\nfinanceiro analisa e libera se o pedido pode ser efetuado ou não.\r\nTudo se inicia na preparação de pedidos, etapa que engloba atividades relacionadas à coleta das informações necessárias sobre os produtos e serviços prestados pela organização. Atualmente, com o avanço da informática, essa etapa vem passando por mudanças que facilitam sua prática como o escaneamento por código de barras, que faz com que determinado produto seja encontrado facilmente nos sistemas de armazenagem, onde estão guardados.\r\nOs pedidos são enviados pelos setores comercial e vendas.', 1),
(18, '7', 1, 'Avaliar os pedidos', 5, 1, 1, 1, 'Os pedidos são avaliados, caso haja bloqueio no preço, só o Comercial pode fazer uma avaliação e assim poder liberar ou fazer acordos; quando o limite de compra do cliente é excedido, pode haver então um aumento desse limite, onde para isso, é feito uma análise financeira do cliente; em relação ao atraso, quando há problemas no pagamento, basta o cliente enviar o comprovante de que foi realizado o pagamento, já estará liberado.', 1),
(20, '7', 1, 'Liberar pedidos', 6, 1, 1, 1, 'Os pedidos até R$8.000,00 são autorizados pelo setor Financeiro, pedidos acima de R$8.000,00 é feito a autorização pelo setor Financeiro junto ao setor Comercial e os pedidos a partir de R$30.000,00 só são autorizados pela diretoria. \r\nOs pedidos estando em conforme, é feito a liberação para a montagem de cargas.', 1),
(22, '7', 1, 'Preencher os cheques', 7, 1, 1, 1, 'Os cheques são preenchidos pelo assistente do financeiro, com seus devidos valores, destinatários, datas.\r\n\r\nEnviar para assinatura\r\nTodos os cheques devem ser enviados para a diretoria, para serem assinados, para ser feito o pagamento.\r\n\r\nRealizar o pagamento \r\nOs cheques são checados e se estiverem todos oks, são realizados os pagamentos, e enviado ao banco, o banco devolve os comprovantes de pagamento.\r\n\r\nAs notas que tiverem mais de um pagamento são arquivadas para o mês  seguinte\r\nQuando é feito o pagamento de uma nota, e ocorre que existem outros pagamentos a serem efetuados nessa mesma nota, irá ser realizado o pagamento da nota atual, as outras notas restantes, serão arquivadas e serão pagas nos meses decorrentes para que no mês seguinte seja efetuado.\r\n\r\nFazer a programação de pagamento (2 dias de antecedência)\r\nFeito a separação das notas por vencimento, é realizado uma programação para o pagamento, sendo essa programação efetuada com 2 dias de antecedência do pagamento, e efetuado o pagamento na data correta.\r\n\r\nColocar na pasta até a data do pagamento\r\nAs notas serão colocadas na pasta até sua data de devido pagamento.\r\n\r\nTirar uma cópia de todos os comprovantes\r\nDeve-se retirar uma cópia de todos os comprovantes, para que sejam enviados a contabilidade.\r\n\r\nAnexar os comprovantes nas notas\r\nOs comprovantes serão colocados juntos as suas respectivas notas.\r\n\r\nEnviar os comprovantes e notas para a contabilidade\r\nOs comprovantes e as notas são enviados a contabilidade para ser realizado a baixa.', 1),
(23, '7', 1, 'Conferir o malote para efetuar os  pagamentos', 8, 1, 1, 1, 'Estando ok, é dado as baixas nos documentos que são enviados para a contabilidade. Havendo algum problema, tanto sendo em cheque ou dinheiro o banco faz um aviso, explicando o valor que será depositado novamente na conta da GUJÃO e o documento com problema só poderá ser dado a baixa no dia seguinte depois de ser resolvido.', 1),
(24, '7', 1, 'Enviar malote para o banco', 9, 1, 1, 1, 'É feita a programação dos pagamentos do dia, onde é repassado para a diretoria para que ocorra as assinaturas dos cheques. Feito isso os cheques retornam para o Financeiro e são enviados ao banco.', 1),
(25, '9', 3, 'Fazer informe', 2, 1, 1, 1, 'Após ocorrência de acidentes, vandalismo ou problemas com passageiros é necessário que o operador faça o informe do que aconteceu na ocorrência. O nome do documento do informe é “Informe de acidente”. Quando o operador faz o informe na rua: é solicitado do supervisor de acidente que o operador relate no informe: a velocidade, se o carro estava com defeito mecânico, se houve vítima, o horário da ocorrência, o local, a culpabilidade dele na ocorrência, identifique testemunhas da ocorrência e é feito o croqui. Quando o operador não faz o informe no momento da ocorrência ele é convocado pelo setor de disciplina para fazer o informe, que é feito da seguinte forma: É preenchido um documento com informações como a velocidade, se o carro estava com defeito mecânico, se houve vítima, o horário da ocorrência, o local, a culpabilidade dele na ocorrência, identificadas testemunhas da ocorrência e é feito o croqui. Ao ser feito o informe, é enviado para o setor de Acidentes para que o mesmo verifique a culpabilidade do operador.', 1),
(26, '9', 1, 'Verificar culpabilidade no informe', 3, 1, 1, 1, 'O setor de Acidentes informa se na situação em questão o operador foi considerado culpado ou não, da seguinte forma: enviando um e-mail para o setor de Disciplina constando a matrícula, o nome do operador e a culpabilidade ou não do mesmo. No mesmo e-mail são enviados os documentos relacionados a situação como avaria, franquia, danos de terceiros.', 1),
(27, '9', 1, 'Realizar entrevista', 4, 1, 1, 1, 'Após o operador ser convocado, a entrevista é realizada com base na sua demanda e necessidade. Na entrevista o coordenador do setor de Disciplina deve colher informações do operador ou passar comunicados e informações necessárias.', 1),
(28, '9', 1, 'Verificar se a ocorrência é atual', 5, 1, 1, 1, 'Quando há necessidade de verificar se a ocorrência é atual ou antiga, o critério para classificação é o seguinte: ocorrências com mais de 4 dias de acontecimento, sem o operador informar ao setor de Disciplina ou anotar no livro de ocorrências, são consideradas como antigas e o operador recebe uma advertência (ou suspensão em caso de recorrência) por não ter feito o informe. Ocorrências com menos que 4 dias, ainda são consideradas como atuais, e por isso são tratadas de forma habitual.', 1),
(29, '9', 1, 'Verificar existência de ocorrências do operador', 6, 1, 1, 1, 'Em caso de necessidade de verificação de ocorrências do operador, essa verificação é feita no sistema ROF. O ROF é como se fosse uma ficha de cada operador em que constam todas as ocorrências relacionadas a ele. Para fazer a verificação no sistema ROF é da seguinte forma, em: site do auto.sky/ login (Imagem 1)/ escolhe o sistema ROF (Imagem 2)/ login (Imagem 7)/ relatórios/ ocorrências/ individual (Imagem 8)/ funcionário/ digitar matrícula/ buscar. Através disso é verificada a ficha do operador e seu histórico de ocorrências.', 1),
(30, '9', 1, 'Emitir orientação Disciplinar', 7, 1, 1, 1, 'Em caso de orientação, ao ser convocado, o operador deve assinar o documento “Orientação Disciplinar”. O critério para emitir orientação disciplinar para o operador é: quando em sua ficha (o ROF) não existe alguma outra ocorrência do mesmo tipo em menos de 12 meses e/ou não existe nenhuma ocorrência registrada.', 1),
(31, '9', 1, 'Emitir advertência Disciplinar', 8, 1, 1, 1, 'O setor de Disciplina, ao receber a informação do setor de Acidentes sobre a culpabilidade do operador, emite o documento de advertência. O operador é convocado pelo colaborador do setor de Disciplina para receber essa advertência. Ao convocar o operador para advertência disciplinar é necessário olhar o ROF para verificar o histórico de advertências e analisar se ocorrerá apenas uma advertência, ou uma suspensão (em caso de reincidência). O documento de advertência, denominado “Advertência Disciplinar”, é um documento que já tem modelo existente. Os modelos de documentos de orientação, advertência e suspensão são diferentes. Caso exista reincidência de ocorrência no ROF do operador, aparece no documento essa outra advertência que ele recebeu. Em seguida o funcionário assina o documento de advertência.', 1),
(32, '9', 1, 'Suspender operador', 9, 1, 1, 1, 'Quando há reincidência de ocorrência, o operador recebe uma suspensão. Que varia de 1, 2, 3 e até 5 dias. \r\nO critério utilizado para definir os dias de suspensão são:\r\n1 dia: Quando o operador já recebeu antes uma orientação e uma advertência pelo mesmo motivo. \r\n2 dias: Quando o operador já recebeu orientação, advertência e suspensão de um dia pelo mesmo motivo.\r\n3 dias: Quando o operador já recebeu orientação, advertência e suspensão de dois dias pelo mesmo motivo.\r\n5 dias: Quando o operador já recebeu orientação, advertência e suspensão de três dias pelo mesmo motivo. \r\nCaso ocorra mais uma ocorrência após o operador receber a suspensão de 5 dias, o caso é encaminhado à Diretoria para verificar qual decisão deve ser tomada sobre o operador.', 1),
(33, '9', 1, 'Retirar funcionário de Escala', 10, 1, 1, 1, 'Retirar operador de escala significa retirar o funcionário da escala de trabalho, logo, ele ficará sem trabalhar no dia informado. Pode ocorrer caso haja necessidade de alinhar alguma situação ou em caso de uma ação corretiva. Em caso de alinhamento, o funcionário é liberado para reposição do dia que estava fora de escala. Em caso de ação corretiva, não é permitido que o funcionário reponha o dia em que esteve fora de escala. É informado ao operador via ligação, que por determinado motivo estará fora de escala por um dia. Caso o método de transmissão não seja efetivo, o operador é convocado a comparecer no setor de\r\nDisciplina para ser informado. Se ainda assim, o operador não comparecer, é retirado de escala sem aviso. O procedimento para retirar o motorista de escala é: ligar para a Central de Atendimento, informar a matrícula do operador e informar que o mesmo está em pendência por isso estará fora de escala.', 1),
(34, '9', 1, 'Encaminhar caso à Diretoria', 11, 1, 1, 1, 'Em situações de recorrência de ocorrência com um mesmo operador, o caso é encaminhado para a diretoria para que ela decida como proceder. Geralmente é informado diretamente ao diretor pelo coordenador do setor de Disciplina, informando o contexto do operador em questão.', 1),
(35, '9', 1, 'Efetuar cobrança de avaria', 12, 1, 1, 1, 'Em caso de ocorrência com avaria ou franquia o operador é convocado para a cobrança da mesma. Ao convocar o operador, é informada a avaria através do documento enviado pelo setor de Manutenção; ou informada a franquia através do documento enviado pelo setor de Acidentes. A cobrança de avaria é efetuada através da “Autorização de Desconto em Folha – (AVARIA) ” e a cobrança de franquia é feita através do documento “Autorização de Desconto em Folha”, solicitando que o operador assine acordando a forma do desconto.', 1),
(36, '9', 1, 'Solicitar Filmagem ao Setor de Monitoramento', 13, 1, 1, 1, 'Caso haja necessidade de solicitar filmagem ao setor de Monitoramento é enviado um e-mail solicitando que envie a filmagem, são informados os seguintes dados: número do carro, data, horário, local e motivo pelo qual quer verificar a filmagem.', 1),
(37, '9', 1, 'Liberar funcionário', 14, 1, 1, 1, 'Em caso de liberar o funcionário da ocorrência, o setor de acidentes coloca no ROF que o funcionário é isento de culpa e informa ao setor de disciplina que o operador não foi considerado culpado na situação. O setor de disciplina verifica no próprio ROF do operador a situação de culpabilidade.', 1),
(38, '9', 1, 'Identificar atraso de operador', 15, 1, 1, 1, 'O critério para considerar se operador atrasou ou não, é de 5 minutos, isso porque o sistema GPS identifica os horários de todos os carros do dia já programado. Para entrar no sistema é da seguinte forma: no site GOOLsystem (Imagem 9)/ urbano/ login (Imagem 10)/ senha/ relatório (Imagem 11)/ saída de frota (Imagem 12)/ preencher data, empresa (Plataforma) e garagem (selecionar a garagem que quer identificar)/ gerar relatório (Imagem13)/ aparece o relatório solicitado (Imagem 14). Através do sistema de GPS é identificado o horário de saída do ônibus, e o próprio sistema identifica como “atraso ou adiantado” caso o carro saia 5 minutos antes ou depois do horário programado.', 1),
(39, '9', 1, 'Justificativa de Atraso', 16, 1, 1, 1, 'O atraso do operador pode ser justificado em casos de atestado, assalto, imprevistos ou complicações no caminho (por exemplo: trânsito, perda de cartão de trabalho, habilitação). Em caso de atraso não justificado, o operador recebe orientação, advertência ou suspensão seguindo os critérios descritos do documento de procedimento interno.', 1),
(40, '9', 1, 'Problema interno entre operadores', 17, 1, 1, 1, 'Em caso de problema interno entre operadores, os mesmos são convocados para realizar entrevista separadamente, para que o colaborador do setor de Disciplina possa analisar a situação e verificar se há culpabilidade em um dos operadores, se houver, aplicar correção.', 1),
(41, '9', 1, 'Analisar horário de mudança de operadores', 18, 1, 1, 1, 'Em caso de necessidade de analisar o horário de mudança de operadores, a verificação é feita no E- CITOP. Para fazer essa verificação é da seguinte forma: na área de trabalho clica no ícone E-CITOP/ login (Imagem 15)/ relatório (Imagem 16)/ ponto de rodoviário (Imagem 17)/ seleciona a data que deseja saber, rodoviário (coloca a matrícula do operador que deseja verificar). Os horários que aparecem nesse sistema devem ser comparados com os previstos no SDO (Imagem 6). Caso seja necessário, também pode ser solicitada a filmagem ao setor de monitoramento.', 1),
(42, '10', 1, 'Adiantamento Salarial', 1, 1, 1, 1, 'Etapa referente a adiantamento salarial.', 1),
(44, '10', 1, 'Processos para liberação de salário', 2, 1, 1, 1, 'Etapa com os processos para liberação de salário.', 1),
(45, '10', 1, 'Repassar para o setor de pagamento benefícios e contribuições', 3, 1, 1, 1, 'É repassado para o setor de Pagamentos os benefícios, a contribuição do sindicato e pensão judicial. Após a integração, esse repasse é feito através da transferência da integração de um sistema para o outro que é: do sistema RUBI (Folha de Pagamento) para o SAPIENS (Financeiro contábil).', 1),
(46, '10', 1, 'Encargos', 4, 1, 1, 1, 'Etapa referente a encargos.', 1),
(47, '10', 1, 'Produzir documentação das fábricas', 5, 1, 1, 1, 'É um documento enviado mensalmente, comprovando que cada funcionário que presta serviços para esses clientes recebeu todas as remunerações e benefícios que têm direito.\r\nBridgestone: a documentação é enviada via e-mail;\r\nBraskem: a documentação é feita através de documentação física;\r\nUnigel: a documentação é feita via CD.\r\nBoticário: a documentação é feita em um sistema próprio.', 1),
(48, '10', 1, 'Admissão', 6, 1, 1, 1, 'O funcionário admitido é adicionado na folha de pagamento pelo setor de Recursos Humanos com todas as documentações.', 1),
(49, '10', 1, 'Rescisão', 7, 1, 1, 1, 'Etapa referente a rescisão.', 1),
(50, '10', 1, 'Férias', 8, 1, 1, 1, 'Etapa referente a férias.', 1),
(51, '10', 1, '13º', 9, 1, 1, 1, 'Etapa referente a decimo terceiro.', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `maturidade`
--

CREATE TABLE `maturidade` (
  `descricao` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `microprocessos` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `microprocessos`
--

INSERT INTO `microprocessos` (`id`, `subprocesso_id`, `descricao`, `numero`, `titulo`, `pessoas`, `classificacao_id`, `periodicidade_id`, `horas`, `maturidade_id`) VALUES
(1, 1, 'Feita a pesquisa de potenciais clientes, o representante comercial, após entrar em contato com algum colaborador da empresa deve alterar o status dessas empresas para LEADS da seguinte forma: em MARKET ele dele clicar no botão “+” laranja, ao lado dos dados da empresa referente, o botão se refere a NOVO LEAD. Nessa aba é necessário acrescentar algumas informações referente ao colaborador “representante” da empresa e histórico referente ao contato que teve com o cliente, ao final deve clicar em “Cadastrar”. Dessa forma o cliente é alterado do status de MARKET para LEAD.', 1, 'Modificar status para LEADS', 1, 1, 2, 1, 2),
(2, 2, 'vvvsdvzsfvsfv', 1, 'fwfds', 1, 1, 1, 1, 1),
(4, 29, 'O benefício odontológico é da empresa Odonto Sytem e para fazer o faturamento do mesmo, é solicitado o arquivo texto da empresa, todos os valores que constam no arquivo e que é possível efetuar desconto é validado, em seguida devolvido para a Odonto System em forma de relatório para ser faturado. A Odonto Sytem então, valida os descontos e emite a nota fiscal. Envia novamente para o setor da Folha, que vai gerar um relatório, em seguida arquivar no servidor, elaborar o boletim de medição e enviar para o setor de pagamento.', 1, 'Benefício Odontológico 2', 1, 3, 4, 1, 5),
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
(22, 44, 'Similar ao item 5.2.8.1., a folha de pagamento do funcionário é atualizada e ele é reativado na folha de pagamento. A depender do tempo de afastamento é verificado se mudaram os benefícios e se ele se afastou com pendências. A pendência é por exemplo, se o funcionário recebeu vale alimentação por 30 dias, mas se afastou com 10 dias de trabalho, os 20 dias são descontados no retorno.', 1, 'Reprocessar funcionário na folha', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetivos`
--

CREATE TABLE `objetivos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `objetivos`
--

INSERT INTO `objetivos` (`id`, `pi_id`, `descricao`) VALUES
(2, '3', 'Estabelecer as diretrizes para os processos inerentes a prestação de serviço partindo da formalização dos contratos, sua manutenção até o encerramento/rescisão dos mesmos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(5, '7', 'Estabelecer as diretrizes para os processos inerentes ao departamento Financeiro da Gujão Alimentos, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(6, '9', 'Estabelecer as diretrizes para os processos inerentes ao Setor de Disciplina da Gevan, a fim de atender aos requisitos estabelecidos pelo SQ.'),
(7, '10', 'Estabelecer as diretrizes para os processos inerentes ao Setor de Folha de Pagamento da Gevan, a fim de atender aos requisitos estabelecidos pelo SQ.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodicidade`
--

CREATE TABLE `periodicidade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `pis` (
  `departamento_id` int(11) DEFAULT NULL,
  `id` int(20) NOT NULL,
  `data_revisado` varchar(255) DEFAULT NULL,
  `id_consultor` int(11) DEFAULT NULL,
  `gestor_pi_id` int(11) DEFAULT NULL,
  `cod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pis`
--

INSERT INTO `pis` (`departamento_id`, `id`, `data_revisado`, `id_consultor`, `gestor_pi_id`, `cod`) VALUES
(3, 3, NULL, NULL, NULL, 'COM01'),
(6, 7, NULL, NULL, NULL, 'FIN00'),
(7, 8, NULL, NULL, NULL, 'PROD00'),
(8, 9, NULL, NULL, NULL, 'DIS01'),
(9, 10, NULL, NULL, NULL, 'FOL01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_macro`
--

CREATE TABLE `stakeholders_macro` (
  `id` int(11) NOT NULL,
  `macroprocesso_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `stakeholders_macro`
--

INSERT INTO `stakeholders_macro` (`id`, `macroprocesso_id`, `nome`, `email`, `cargo`, `departamento`) VALUES
(1, 25, 'José Gevan', 'jose.gevan@gmail.com', 'Consultor', 'Financeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_micro`
--

CREATE TABLE `stakeholders_micro` (
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

CREATE TABLE `stakeholders_sub` (
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

CREATE TABLE `subprocessos` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subprocessos`
--

INSERT INTO `subprocessos` (`id`, `macroprocesso_id`, `descricao`, `numero`, `titulo`, `pessoas`, `classificacao_id`, `periodicidade_id`, `horas`, `maturidade_id`) VALUES
(1, 1, 'É feito uma procura de empresas que se encaixem no perfil PROJEK, e após isso é feito o cadastro no banco de dados MARKET. Essa pesquisa é necessária pois, através dela, é segmentado o perfil de mercado que é almejado alcançar. Por exemplo: Micro e pequenas empresas ou grandes empresas e multinacionais, ou pessoas físicas das classes A, B ou C.', 1, 'Estudo dos potenciais clientes', 1, 1, 1, 1, 3),
(2, 3, 'Para saber qual o valor do adiantamento salarial funcionário tem direito, são verificados alguns quesitos como cartão multi benefício, faltas não atestadas, autorização de desconto, multas e avarias. A checagem é feita por amostragem.', 1, 'Verificar gastos do funcionário do mês anterior', 1, 1, 1, 1, 1),
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
(17, 42, 'Para saber qual o valor do adiantamento salarial funcionário tem direito, são verificados alguns quesitos como cartão multi benefício, faltas não atestadas, autorização de desconto, multas e avarias.\r\nA checagem é feita por amostragem.', 1, 'Verificar gastos do funcionário do mês anterior 2', 1, 1, 1, 1, 1),
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
(47, 46, 'Para gerar as NFs é no sistema Sapiens em: Mercado/ gestão de faturamento e outras saídas/ NF saída/ relatórios / relatório 102/ informa a filial/ período (de 01 a 30 ou 31 do mês) / série das Notas \"U1\", \"U3\", \"NFE\" LN e VCI \"NFE\" e “A”/ situação das NFS 2/ gerar e salvar.', 5, 'Gerar os valores retidos nas NFs (LN e VCI)', 1, 1, 1, 1, 1),
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
(91, 44, 'O arquivo de texto em geral é um arquivo em que consta de cada funcionário a matrícula, o nome e o valor a ser descontado do benefício, esse arquivo texto também é utilizado no relatório de benefícios que é gerado ao final. Em cada benefício o faturamento é feito de uma forma.', 2, 'Importar arquivo de texto de cada benefício para fazer a checagem', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`password`, `name`, `email`, `sexo`, `estado`, `cidade`, `telefone`, `id`, `sobrenome`, `updated_at`, `created_at`, `remember_token`, `image`) VALUES
('$2y$10$lRjICI53Jk2lrSYBK9kXV.oi65ksqSju/Y9vmycmGohK4h6.WcriS', 'Fábio', 'fabio.martins@projek.com.br', 'masculino', 'BA', '2927408', '(71) 98333-3333', 50, 'Martins', '2017-11-16 20:12:42', '2017-11-06 14:44:39', 'JeZ35iPJMFOPkfqY2VXrkZZ9HOynfKaTB0TNHULxg0vesQ68g9UPPIP8X3TG', '8jqKZs43yj0tnuf9gEkSQXL4tvPjtA6d18Lytj6f.png'),
('$2y$10$3xJmsunou.VPOQ9WDANQGug6NO6xt.UOSJq3Agk2EpHy3dNz0i9fa', 'Juliana', 'juliana.menezes@projek.com.br', 'feminino', 'BA', '2927408', '(71) 99371-5053', 51, 'Menezes', '2017-11-08 17:13:14', '2017-11-08 17:13:14', 'vQi7kTCbB7npFhGzAQPyCamkHSB4yp93gNb1LcJ7k4Zs6k3iELlYoMhFipsf', 'public/PFT1rJnKg04GaXtRzL0BD8mOOxBQLo1ZLu3KgDoD.png'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `classificacoes`
--
ALTER TABLE `classificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `definicoes`
--
ALTER TABLE `definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gestor_dep`
--
ALTER TABLE `gestor_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `maturidade`
--
ALTER TABLE `maturidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microprocessos`
--
ALTER TABLE `microprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `periodicidade`
--
ALTER TABLE `periodicidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
