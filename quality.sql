-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Out-2017 às 11:37
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
(1, 1, 'aplicacao');

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
(1, 'Novo Gevan');

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
(2, '1', 'definições');

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
(18, 'Joevan', '(71) 98333-3333', 'joevansantos@hotmail.com', 'Empresário', 13),
(19, 'Mariana Cezar', '(71) 98333-3333', 'mariana@gmail.com', 'Diretora', 14);

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
(1, 7, 'Joevan', 'cat@hotmail.com', '(71) 33333-3333', 'Empresário');

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
(6, 12, 'Catharina', 'maria@projek.com', '(71) 98333-3333', 'Empresário');

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
(1, '1', 'Informação');

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

--
-- Extraindo dados da tabela `macroprocessos`
--

INSERT INTO `macroprocessos` (`id`, `pi_id`, `data_ultima`, `data_proxima`, `classificacao_id`, `titulo`, `numero`, `pessoas`, `periodicidade_id`, `horas`, `descricao`, `maturidade_id`) VALUES
(13, '1', NULL, NULL, 1, 'Teste', '1', 12, 1, 12, NULL, 1),
(14, '1', NULL, NULL, 3, 'Construção', '2', 12, 3, 12, 'Ok este e um processo', 4);

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
  `descricao` varchar(2000) DEFAULT NULL,
  `numero` varchar(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
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
(7, 12, '323232', '1', 'Subprocesso sub', 12, 1, 1, 12, 1);

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
(3, '1', 'sasasas');

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
(8, 1, NULL, NULL, NULL, 'FOL01');

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
(1, 13, 'Joevan', 'joevansantos@hotmail.com', 'Empresário', 'Financeiro');

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

--
-- Extraindo dados da tabela `stakeholders_sub`
--

INSERT INTO `stakeholders_sub` (`id`, `subprocesso_id`, `nome`, `email`, `cargo`, `departamento`) VALUES
(1, 12, 'Paulo Carlos', 'paulo@hotmail.com', 'Vendedor', 'Compras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subprocessos`
--

CREATE TABLE `subprocessos` (
  `id` int(11) NOT NULL,
  `macroprocesso_id` int(11) NOT NULL,
  `descricao` varchar(10000) DEFAULT NULL,
  `numero` varchar(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
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
(12, 13, '2121', '1', 'Subprocesso', 12, 1, 1, 12, 1);

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
('$2y$10$jdbLBw30n9ARCaItEDqabuVnWXjSI0qHnSuC7TrYpoVS/dF7PZ2Iu', 'Maria', 'maria@projek.com', NULL, NULL, NULL, NULL, 28, NULL, '2017-10-26 01:24:44', '2017-10-26 01:24:44', '1ZKtZQhsVNtMWeCDyoYq9cxAQFvuuuHDKoboH491RdVdS4dNPVSsW4MX46V5', NULL),
('$2y$10$R58Ecc33APRPMNKHM2YyjOobbHIY.M8r6EzycSeXyjrO5ht6UjP7q', 'Joevan', 'joevansantos@projek.com', 'masculino', 'BA', '2917508', '(71) 98344-4444', 31, 'Santos', '2017-10-30 10:04:29', '2017-10-29 11:50:00', 'ekfjS7J4iNZB2hXSnvaPvEzcTn0nbTNpyf7OAVLTEIsERNH9XAjfT5i1HcjU', NULL),
('$2y$10$cd5DjiW6tbjvuBNV3YpzrOZ0NZBT0OaKB/l4A.ENeJbFBhU/nFnwO', 'Juliana', 'juliana@projek.com', 'feminino', 'PI', '2201101', '(71) 98333-3333', 48, 'Santos de Oliveira', '2017-10-31 10:18:25', '2017-10-31 10:18:25', '08r4DFhtOJ6TA99h034HHXlgqu2zH597l4oIgCmyHEzk7wnoQ2a85jNkufBq', 'image/X3KJrDreWsXw1glLF0ApezjSiQ1lxAhSqVJblclq.jpeg'),
('$2y$10$nBAyk1Fg71pH9U8W5EYfwOpF7tJJxWWgku0YzymHijWvUxDsJtDyG', 'José', 'jose@hotmail.com', 'masculino', 'PI', '2201150', '(71) 98333-3333', 49, 'Paulo', '2017-10-31 10:33:57', '2017-10-31 10:33:57', NULL, 'public/6bpBQ1gWseNn8gGvVU6HvDIKIJHyYCHHfJN5qRxg.jpeg');

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
-- Indexes for table `stakeholders_dep`
--
ALTER TABLE `stakeholders_dep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `maturidade`
--
ALTER TABLE `maturidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microprocessos`
--
ALTER TABLE `microprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stakeholders_dep`
--
ALTER TABLE `stakeholders_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stakeholders_sub`
--
ALTER TABLE `stakeholders_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subprocessos`
--
ALTER TABLE `subprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
