-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Mar-2020 às 14:05
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbcadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao`
--

CREATE TABLE `administracao` (
  `adm_id` int(11) NOT NULL,
  `adm_nome` varchar(100) DEFAULT NULL,
  `adm_email` varchar(50) DEFAULT NULL,
  `adm_senha` varchar(50) DEFAULT NULL,
  `adm_img` varchar(100) DEFAULT NULL,
  `adm_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administracao`
--

INSERT INTO `administracao` (`adm_id`, `adm_nome`, `adm_email`, `adm_senha`, `adm_img`, `adm_level`) VALUES
(1, 'Antonio Filho', 'oficinadosdrones@gmail.com', '123456', '', 7),
(2, 'admistrador', 'adm@gmail.com', '123456', '', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `biometria`
--

CREATE TABLE `biometria` (
  `bio_id` int(11) NOT NULL,
  `bio_biometria` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cad_id` int(11) NOT NULL,
  `cad_nome` varchar(80) DEFAULT NULL,
  `cad_apelido` varchar(80) DEFAULT NULL,
  `cad_email` varchar(50) DEFAULT NULL,
  `cad_telefone` varchar(15) DEFAULT NULL,
  `cad_senha` varchar(30) DEFAULT NULL,
  `cad_biometria_id` int(11) DEFAULT NULL,
  `cad_images_id` int(11) DEFAULT NULL,
  `cad_morada` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cad_id`, `cad_nome`, `cad_apelido`, `cad_email`, `cad_telefone`, `cad_senha`, `cad_biometria_id`, `cad_images_id`, `cad_morada`) VALUES
(1, 'tony', 'filho', 'tony@gmail.com', '918203784', '123456', 2, 2, 'Afonso Castro'),
(2, 'gaga', 'dsa', 'dssg', '(   )-   -     ', 'sad', 0, 0, 'dg'),
(3, 'juan', '', '', '(   )-   -     ', '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `fun_id` int(11) NOT NULL,
  `fun_nomes` varchar(80) DEFAULT NULL,
  `fun_apelido` varchar(80) DEFAULT NULL,
  `fun_email` varchar(40) DEFAULT NULL,
  `fun_morada` varchar(100) DEFAULT NULL,
  `fun_contribuinte` varchar(20) DEFAULT NULL,
  `fun_sociais` varchar(40) DEFAULT NULL,
  `fun_biometria_id` int(11) DEFAULT NULL,
  `fun_senha` varchar(10) DEFAULT NULL,
  `fun_imagens_id` int(11) DEFAULT NULL,
  `fun_level` int(11) DEFAULT NULL,
  `fun_telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabela de funcionarios';

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`fun_id`, `fun_nomes`, `fun_apelido`, `fun_email`, `fun_morada`, `fun_contribuinte`, `fun_sociais`, `fun_biometria_id`, `fun_senha`, `fun_imagens_id`, `fun_level`, `fun_telefone`) VALUES
(19, 'ggggg', '', 'null', 'atec', '   -   -   ', '0', 0, 'null', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `ima_id` int(11) NOT NULL,
  `ima_imagem` varchar(50) NOT NULL,
  `ima_func_id` int(11) NOT NULL,
  `ima_cliente_id` int(11) NOT NULL,
  `ima_bio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabela de imagens';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administracao`
--
ALTER TABLE `administracao`
  ADD PRIMARY KEY (`adm_id`);

--
-- Índices para tabela `biometria`
--
ALTER TABLE `biometria`
  ADD PRIMARY KEY (`bio_id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cad_id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`fun_id`),
  ADD KEY `Funcionarios_Do_Adm` (`fun_level`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`ima_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administracao`
--
ALTER TABLE `administracao`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `biometria`
--
ALTER TABLE `biometria`
  MODIFY `bio_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `fun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `ima_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
