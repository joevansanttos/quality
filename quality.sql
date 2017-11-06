-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Nov-2017 às 15:45
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `definicoes`
--

CREATE TABLE `definicoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetivos`
--

CREATE TABLE `objetivos` (
  `id` int(11) NOT NULL,
  `pi_id` varchar(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `numero` varchar(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `pessoas` int(11) NOT NULL,
  `classificacao_id` int(11) NOT NULL,
  `periodicidade_id` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `maturidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('$2y$10$lRjICI53Jk2lrSYBK9kXV.oi65ksqSju/Y9vmycmGohK4h6.WcriS', 'Fábio', 'fabio.martins@projek.com.br', 'masculino', 'BA', '2927408', '(71) 98333-3333', 50, 'Martins', '2017-11-06 14:44:39', '2017-11-06 14:44:39', '1Pgvfb7baEyI7YuwXQMoPMzhlHS6IVWl2TOihOILfw0YNU0ERiSu4xISXJkd', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `classificacoes`
--
ALTER TABLE `classificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `definicoes`
--
ALTER TABLE `definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor_dep`
--
ALTER TABLE `gestor_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maturidade`
--
ALTER TABLE `maturidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microprocessos`
--
ALTER TABLE `microprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `periodicidade`
--
ALTER TABLE `periodicidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stakeholders_macro`
--
ALTER TABLE `stakeholders_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
