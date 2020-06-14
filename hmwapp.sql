-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 14-Jun-2020 às 13:32
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmwapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa`
--

DROP TABLE IF EXISTS `casa`;
CREATE TABLE IF NOT EXISTS `casa` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL,
  `morada` varchar(320) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `casa`
--

INSERT INTO `casa` (`id`, `password`, `morada`) VALUES
(1, 'casa1', 'rua a, nº 1'),
(2, 'casa2', 'rua a, nº 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa_despesas`
--

DROP TABLE IF EXISTS `casa_despesas`;
CREATE TABLE IF NOT EXISTS `casa_despesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `casaId` int(11) DEFAULT NULL,
  `despesasId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_casa_casa_despesas` (`casaId`),
  KEY `fk_id_despesas_despesas_despesas` (`despesasId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa_quarto`
--

DROP TABLE IF EXISTS `casa_quarto`;
CREATE TABLE IF NOT EXISTS `casa_quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `casaId` int(11) DEFAULT NULL,
  `quartoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_casa_casa_quarto` (`casaId`),
  KEY `fk_id_quarto_quarto_quarto` (`quartoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesas`
--

DROP TABLE IF EXISTS `despesas`;
CREATE TABLE IF NOT EXISTS `despesas` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `dataPub` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataFinal` datetime NOT NULL,
  `dataMes` varchar(9) NOT NULL,
  `agua` double NOT NULL,
  `eletricidade` double NOT NULL,
  `gas` double NOT NULL,
  `limpezas` double NOT NULL,
  `segurança` double NOT NULL,
  `totalCasa` double NOT NULL,
  `totalDiv` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `despesas`
--

INSERT INTO `despesas` (`id`, `dataPub`, `dataFinal`, `dataMes`, `agua`, `eletricidade`, `gas`, `limpezas`, `segurança`, `totalCasa`, `totalDiv`) VALUES
(1, '2020-06-14 00:31:53', '2020-06-26 11:09:00', 'Maio', 20, 30, 40, 30, 60, 180, 90),
(2, '2020-06-14 00:31:56', '2020-06-26 11:09:00', 'Maio', 20, 30, 40, 30, 60, 180, 90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

DROP TABLE IF EXISTS `inquilino`;
CREATE TABLE IF NOT EXISTS `inquilino` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL,
  `nome` varchar(350) NOT NULL,
  `idade` int(3) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `morada` varchar(350) NOT NULL,
  `telemovel` int(9) NOT NULL,
  `NIF` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`id`, `password`, `nome`, `idade`, `sexo`, `email`, `morada`, `telemovel`, `NIF`) VALUES
(1, 'inq1', 'Maria Joaquina', 20, 'Feminino', 'maria@gmail.com', 'Rua a, nº 3', 999999999, 111111111),
(2, 'inq1', 'Maria Joaquina', 20, 'Feminino', 'maria@gmail.com', 'Rua a, nº 3', 999999999, 111111111),
(3, 'pro1', 'Dolores Almeida', 65, 'Feminino', 'dolores@gmail.com', 'rua a, nº 2', 999999999, 111111111),
(4, 'pro1', 'Dolores Almeida', 65, 'Feminino', 'dolores@gmail.com', 'rua a, nº 2', 999999999, 111111111),
(5, 'pro1', 'Dolores Almeida', 65, 'Feminino', 'dolores@gmail.com', 'rua a, nº 2', 999999999, 111111111),
(6, 'inq2', 'Sofia Santos', 23, 'Feminino', 'sofia@gmail.com', 'rua b, nº 3', 999999991, 111111112),
(7, 'inq2', 'Sofia Santos', 23, 'Feminino', 'sofia@gmail.com', 'rua b, nº 3', 999999991, 111111112),
(8, 'inqMod', 'Joana Cruz', 31, 'Feminino', 'cruz@gmail.com', 'Rua c, nº 2', 999999995, 111111115),
(9, 'inq2', 'Sofia Santos', 23, 'Feminino', 'sofia@gmail.com', 'rua b, nº 3', 999999991, 111111112),
(10, 'inq2', 'Sofia Santos', 23, 'Feminino', 'sofia@gmail.com', 'rua b, nº 3', 999999991, 111111112),
(11, 'inq3', 'Rafaela Frade', 25, 'Feminino', 'frade@gmail.com', 'rua c, nº 1', 999999993, 111111113),
(12, 'inq3', 'Rafaela Frade', 25, 'Feminino', 'frade@gmail.com', 'rua c, nº 1', 999999993, 111111113);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE IF NOT EXISTS `proprietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL,
  `nome` varchar(350) NOT NULL,
  `idade` int(3) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `morada` varchar(350) NOT NULL,
  `telemovel` int(9) NOT NULL,
  `NIF` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`id`, `password`, `nome`, `idade`, `sexo`, `email`, `morada`, `telemovel`, `NIF`) VALUES
(1, 'pro1', 'Dolores Almeida', 65, 'Feminino', 'dolores@gmail.com', 'rua a, nº 2', 999999999, 111111111),
(2, 'pro2', 'Maria Dolores', 68, 'Feminino', 'maria@gmail.com', 'rua a, nº 3', 999999994, 111111114);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario_casa`
--

DROP TABLE IF EXISTS `proprietario_casa`;
CREATE TABLE IF NOT EXISTS `proprietario_casa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proprietarioId` int(11) DEFAULT NULL,
  `casaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_casa_casa_casa` (`casaId`),
  KEY `fk_id_proprietario_proprietario_casa` (`proprietarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

DROP TABLE IF EXISTS `quarto`;
CREATE TABLE IF NOT EXISTS `quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(250) NOT NULL,
  `custoQuarto` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto_inquilino`
--

DROP TABLE IF EXISTS `quarto_inquilino`;
CREATE TABLE IF NOT EXISTS `quarto_inquilino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quartoId` int(11) DEFAULT NULL,
  `inquilinoId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_id_inquilino_inquilino_quarto` (`inquilinoId`),
  KEY `fk_id_quarto_quarto_inquilino` (`quartoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `casa_despesas`
--
ALTER TABLE `casa_despesas`
  ADD CONSTRAINT `fk_id_casa_casa_despesas` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_despesas_despesas_despesas` FOREIGN KEY (`despesasId`) REFERENCES `despesas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `casa_quarto`
--
ALTER TABLE `casa_quarto`
  ADD CONSTRAINT `fk_id_casa_casa_quarto` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_quarto_quarto_quarto` FOREIGN KEY (`quartoId`) REFERENCES `quarto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `proprietario_casa`
--
ALTER TABLE `proprietario_casa`
  ADD CONSTRAINT `fk_id_casa_casa_casa` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_proprietario_proprietario_casa` FOREIGN KEY (`proprietarioId`) REFERENCES `proprietario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `quarto_inquilino`
--
ALTER TABLE `quarto_inquilino`
  ADD CONSTRAINT `fk_id_inquilino_inquilino_quarto` FOREIGN KEY (`inquilinoId`) REFERENCES `inquilino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_quarto_quarto_inquilino` FOREIGN KEY (`quartoId`) REFERENCES `quarto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
