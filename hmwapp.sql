-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 06-Jul-2020 às 17:12
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `morada` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `casa`
--

INSERT INTO `casa` (`id`, `morada`, `password`) VALUES
(1, 'rua A, nº 1', 'casa1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa_despesa`
--

DROP TABLE IF EXISTS `casa_despesa`;
CREATE TABLE IF NOT EXISTS `casa_despesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `casaId` int(11) DEFAULT NULL,
  `despesaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casa_despesa_despesaId_casaId_unique` (`casaId`,`despesaId`),
  KEY `despesaId` (`despesaId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `casa_despesa`
--

INSERT INTO `casa_despesa` (`id`, `createdAt`, `updatedAt`, `casaId`, `despesaId`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa_inquilino`
--

DROP TABLE IF EXISTS `casa_inquilino`;
CREATE TABLE IF NOT EXISTS `casa_inquilino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `casaId` int(11) DEFAULT NULL,
  `inquilinoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casa_inquilino_inquilinoId_casaId_unique` (`casaId`,`inquilinoId`),
  KEY `inquilinoId` (`inquilinoId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `casa_inquilino`
--

INSERT INTO `casa_inquilino` (`id`, `createdAt`, `updatedAt`, `casaId`, `inquilinoId`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 1),
(2, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `casa_quarto`
--

DROP TABLE IF EXISTS `casa_quarto`;
CREATE TABLE IF NOT EXISTS `casa_quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `casaId` int(11) DEFAULT NULL,
  `quartoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casa_quarto_quartoId_casaId_unique` (`casaId`,`quartoId`),
  KEY `quartoId` (`quartoId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `casa_quarto`
--

INSERT INTO `casa_quarto` (`id`, `createdAt`, `updatedAt`, `casaId`, `quartoId`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 1),
(2, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesa`
--

DROP TABLE IF EXISTS `despesa`;
CREATE TABLE IF NOT EXISTS `despesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataPub` datetime DEFAULT CURRENT_TIMESTAMP,
  `dataFinal` datetime DEFAULT NULL,
  `dataMesAno` varchar(255) DEFAULT NULL,
  `agua` double DEFAULT NULL,
  `eletricidade` double DEFAULT NULL,
  `gas` double DEFAULT NULL,
  `limpezas` double DEFAULT NULL,
  `seguranca` double DEFAULT NULL,
  `totalCasa` double DEFAULT NULL,
  `totalDiv` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `despesa`
--

INSERT INTO `despesa` (`id`, `dataPub`, `dataFinal`, `dataMesAno`, `agua`, `eletricidade`, `gas`, `limpezas`, `seguranca`, `totalCasa`, `totalDiv`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 'Janeiro 2020', 10, 2, 6, 4, 6, NULL, NULL),
(5, '2020-07-04 16:43:09', '2021-07-20 00:00:00', 'Maio 2020', 5, 10, 5, 10, 10, NULL, NULL),
(6, '2020-07-04 16:44:43', '2021-07-20 00:00:00', 'Maio 2020', 5, 10, 5, 10, 10, NULL, NULL),
(7, '2020-07-04 16:45:49', '2021-07-20 00:00:00', 'Maio 2020', 5, 10, 5, 10, 10, NULL, NULL),
(118, '2020-07-05 18:49:19', '2021-07-20 00:00:00', 'Julho 2020', 5, 10, 5, 10, 10, NULL, NULL),
(246, '2020-07-05 18:59:36', '2021-07-20 00:00:00', 'Julho 2020', 5, 10, 5, 10, 10, NULL, NULL),
(332, '2020-07-05 20:44:57', '2021-07-20 00:00:00', 'Julho 2020', 5, 10, 5, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesa_inquilino`
--

DROP TABLE IF EXISTS `despesa_inquilino`;
CREATE TABLE IF NOT EXISTS `despesa_inquilino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagamento` varchar(255) DEFAULT 'Por pagar',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `despesaId` int(11) DEFAULT NULL,
  `inquilinoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `despesa_inquilino_inquilinoId_despesaId_unique` (`despesaId`,`inquilinoId`),
  KEY `inquilinoId` (`inquilinoId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

DROP TABLE IF EXISTS `inquilino`;
CREATE TABLE IF NOT EXISTS `inquilino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `NIF` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `telemovel` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`id`, `nome`, `password`, `idade`, `sexo`, `NIF`, `email`, `morada`, `telemovel`) VALUES
(1, 'Maria Joaquina', 'inq1', 20, 'Feminino', 111111111, 'maria@gmail.com', 'rua B, nº 40', 999999999),
(2, 'Dolores Maria', 'inq2', 30, 'Feminino', 111111112, 'dolores@hmail.com', 'rua C, nº 200', 999999991);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE IF NOT EXISTS `proprietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `idade` int(3) DEFAULT NULL,
  `sexo` varchar(9) DEFAULT NULL,
  `NIF` int(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `morada` varchar(350) DEFAULT NULL,
  `telemovel` bigint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`id`, `nome`, `password`, `idade`, `sexo`, `NIF`, `email`, `morada`, `telemovel`) VALUES
(1, 'Joaquim da Silva', 'pro1', 50, 'Masculino', 111111112, 'joaquim@gmail.com', 'rua D, nº 11', 999999993);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario_casa`
--

DROP TABLE IF EXISTS `proprietario_casa`;
CREATE TABLE IF NOT EXISTS `proprietario_casa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `proprietarioId` int(11) DEFAULT NULL,
  `casaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proprietario_casa_casaId_proprietarioId_unique` (`proprietarioId`,`casaId`),
  KEY `casaId` (`casaId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `proprietario_casa`
--

INSERT INTO `proprietario_casa` (`id`, `createdAt`, `updatedAt`, `proprietarioId`, `casaId`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

DROP TABLE IF EXISTS `quarto`;
CREATE TABLE IF NOT EXISTS `quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `custoQuarto` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `quarto`
--

INSERT INTO `quarto` (`id`, `descricao`, `custoQuarto`) VALUES
(1, 'Perto da casa de banho', 170),
(2, 'Perto da cozinha', 180);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto_inquilino`
--

DROP TABLE IF EXISTS `quarto_inquilino`;
CREATE TABLE IF NOT EXISTS `quarto_inquilino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `inquilinoId` int(11) DEFAULT NULL,
  `quartoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quarto_inquilino_quartoId_inquilinoId_unique` (`inquilinoId`,`quartoId`),
  KEY `quartoId` (`quartoId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `quarto_inquilino`
--

INSERT INTO `quarto_inquilino` (`id`, `createdAt`, `updatedAt`, `inquilinoId`, `quartoId`) VALUES
(1, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 1, 1),
(2, '2020-07-05 00:00:00', '2020-07-05 00:00:00', 2, 2);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `casa_despesa`
--
ALTER TABLE `casa_despesa`
  ADD CONSTRAINT `casa_despesa_ibfk_1` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casa_despesa_ibfk_2` FOREIGN KEY (`despesaId`) REFERENCES `despesa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `casa_inquilino`
--
ALTER TABLE `casa_inquilino`
  ADD CONSTRAINT `casa_inquilino_ibfk_1` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casa_inquilino_ibfk_2` FOREIGN KEY (`inquilinoId`) REFERENCES `inquilino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `casa_quarto`
--
ALTER TABLE `casa_quarto`
  ADD CONSTRAINT `casa_quarto_ibfk_1` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casa_quarto_ibfk_2` FOREIGN KEY (`quartoId`) REFERENCES `quarto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `despesa_inquilino`
--
ALTER TABLE `despesa_inquilino`
  ADD CONSTRAINT `despesa_inquilino_ibfk_1` FOREIGN KEY (`despesaId`) REFERENCES `despesa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `despesa_inquilino_ibfk_2` FOREIGN KEY (`inquilinoId`) REFERENCES `inquilino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `proprietario_casa`
--
ALTER TABLE `proprietario_casa`
  ADD CONSTRAINT `proprietario_casa_ibfk_1` FOREIGN KEY (`proprietarioId`) REFERENCES `proprietario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proprietario_casa_ibfk_2` FOREIGN KEY (`casaId`) REFERENCES `casa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `quarto_inquilino`
--
ALTER TABLE `quarto_inquilino`
  ADD CONSTRAINT `quarto_inquilino_ibfk_1` FOREIGN KEY (`inquilinoId`) REFERENCES `inquilino` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quarto_inquilino_ibfk_2` FOREIGN KEY (`quartoId`) REFERENCES `quarto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
