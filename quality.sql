-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 25-Out-2017 às 20:45
-- Versão do servidor: 10.1.26-MariaDB
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
(1, 445454, 'aplicacao');

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
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`) VALUES
(1, 'Gevan');

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
(2, '445454', 'definições');

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
(8, 1, 'Teste');

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
(5, 'José Folha', '(71) 98998-8888', 'jose@gevan.com.br', 'Coordenador do setor da Folha de Pagamento', 4),
(6, 'José', '(71) 98444-4444', 'jose@gevan.com', 'Adm', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `macroprocessos`
--

CREATE TABLE `macroprocessos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) NOT NULL,
  `data_ultima` varchar(25) DEFAULT NULL,
  `data_proxima` varchar(25) DEFAULT NULL,
  `classificacao_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, '445454', 'sasasas');

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
  `id` varchar(20) NOT NULL,
  `data_revisado` varchar(255) DEFAULT NULL,
  `id_consultor` int(11) DEFAULT NULL,
  `gestor_pi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pis`
--

INSERT INTO `pis` (`departamento_id`, `id`, `data_revisado`, `id_consultor`, `gestor_pi_id`) VALUES
(8, '445454', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholders_dep`
--

CREATE TABLE `stakeholders_dep` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento_id` varchar(255) DEFAULT NULL,
  `pi` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `stakeholders_dep`
--

INSERT INTO `stakeholders_dep` (`id`, `responsavel`, `email`, `cargo`, `departamento_id`, `pi`, `telefone`) VALUES
(5, 'Fábio Dias', 'joevansantos@hotmail.com', 'Coordenador do setor da Folha de Pagamento', '8', NULL, '(71) 98444-4444');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `senha` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `sobrenome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`senha`, `nome`, `email`, `sexo`, `estado`, `cidade`, `telefone`, `id_usuario`, `sobrenome`) VALUES
('0b1020edf5fc9f514e6adac231e012aa', 'Fabio', 'fabio@projek.com', 'masculino', 'BA', 'Salvador', '(71) 92332-2344', 10, 'Martins'),
(NULL, 'Joevan', 'joevansantos@hotmail.com', NULL, NULL, NULL, NULL, 25, NULL),
(NULL, 'ererere', 'joevansantos@hotmail.com', NULL, NULL, NULL, NULL, 26, NULL),
(NULL, 'Joevan', 'joevansantos@hotmail.com', 'masculino', 'PB', '2501302', '(71) 98344-4444', 27, 'Santos de Oliveira');

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
-- Indexes for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
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
-- Indexes for table `stakeholders_dep`
--
ALTER TABLE `stakeholders_dep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplicacoes`
--
ALTER TABLE `aplicacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `classificacoes`
--
ALTER TABLE `classificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `definicoes`
--
ALTER TABLE `definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `maturidade`
--
ALTER TABLE `maturidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `periodicidade`
--
ALTER TABLE `periodicidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stakeholders_dep`
--
ALTER TABLE `stakeholders_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
