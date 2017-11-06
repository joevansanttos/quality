-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Nov-2017 às 01:29
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

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `site`, `endereco`, `estado`, `cidade`, `tel`, `segmento`, `bairro`) VALUES
(1, 'Gevan', 'www.gevan.com.br', 'Av. Afrânio Peixoto, 901 - Coutos, Salvador - BA, 40730-200', 'BA', '2927408', '(71) 3521-1344', 'Transporte', 'Coutos');

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

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`id`, `cliente_id`, `nome`) VALUES
(1, 1, 'Financeiro');

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
(5, 'Fábio Dias', 'joevansantos@hotmail.com', 'Coordenador do setor da Folha de Pagamento', '8', '(71) 98444-4444'),
(8, 'José Gevan', 'jose@hotmail.com', 'Diretor', '11', '(71) 98333-3333'),
(9, 'Mario Slva 2', 'mario@teste.com', 'Diretor', '12', '(71) 98333-3333'),
(10, 'José Gevan', 'jose@gevan.com.br', 'Diretor', '1', '(71) 98333-3333');

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
(1, 'Marcos Gevan', '(71) 98333-3333', 'marcos@gevan.com', 'Contador', 1);

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
(6, 12, 'Catharina', 'maria@projek.com', '(71) 98333-3333', 'Empresário'),
(7, 13, 'Luciana Gevan', 'luciana@gevan.com', '(71) 98333-3333', 'Administradora');

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

--
-- Extraindo dados da tabela `macroprocessos`
--

INSERT INTO `macroprocessos` (`id`, `pi_id`, `data_ultima`, `data_proxima`, `classificacao_id`, `titulo`, `numero`, `pessoas`, `periodicidade_id`, `horas`, `descricao`, `maturidade_id`) VALUES
(1, '1', NULL, NULL, 2, 'Compras', '1', 12, 3, 120, NULL, 3);

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
(1, 1, NULL, NULL, NULL, 'XXXXX');

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
(12, 13, '2121', '1', 'Subprocesso', 12, 1, 1, 12, 1),
(13, 1, 'Este subprocesso pertence ao processo de Compras', '1', 'Compras Subprocesso', 12, 1, 1, 12, 1);

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
('$2y$10$R58Ecc33APRPMNKHM2YyjOobbHIY.M8r6EzycSeXyjrO5ht6UjP7q', 'Joevan', 'joevansantos@projek.com', 'masculino', 'BA', '2917508', '(71) 99673-0948', 31, 'Santos', '2017-11-04 14:52:37', '2017-10-29 11:50:00', 'GgCTXD0BgV5UkhoYA9nKiY62AogHpLORh1ZiTkDU8G3Rz3QXn3CcVxGjee7y', 'PdAEXi96Hn2we8M5ALbeEw61QO7rvB0u2LF7bS2A.png'),
('$2y$10$cd5DjiW6tbjvuBNV3YpzrOZ0NZBT0OaKB/l4A.ENeJbFBhU/nFnwO', 'Juliana', 'juliana@projek.com', 'feminino', 'PI', '2201101', '(71) 98333-3333', 48, 'Santos de Oliveira', '2017-11-02 18:11:25', '2017-10-31 10:18:25', 'QsD9DYFDk8hirVTtgD4bJtXm6NAgjfiVVPfxS1dShgJRrjmmoXxdykgOTeWk', 'vYWBqFyPlyPnelARuFKGTgQHSKiuc6xCy4iEm0H0.jpeg'),
('$2y$10$OSg6FK0u5W7XlYXh8mBRXeaD0hsJZ9rl3f2ykkoYFK.HqAKsOqw5G', 'Fábio', 'fabio.martins@projek.com.br', 'masculino', 'PR', '4101200', '(71) 98333-3333', 49, 'Martins', '2017-11-02 16:34:50', '2017-11-02 16:34:50', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `definicoes`
--
ALTER TABLE `definicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gestor_dep`
--
ALTER TABLE `gestor_dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gestor_macro`
--
ALTER TABLE `gestor_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gestor_micro`
--
ALTER TABLE `gestor_micro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gestor_sub`
--
ALTER TABLE `gestor_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `macroprocessos`
--
ALTER TABLE `macroprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subprocessos`
--
ALTER TABLE `subprocessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
