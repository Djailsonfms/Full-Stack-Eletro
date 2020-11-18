-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Nov-2020 às 19:14
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--
CREATE DATABASE IF NOT EXISTS `fseletro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fseletro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `msg` varchar(800) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `email`, `msg`, `data`) VALUES
(1, 'Djailson Francisco Moura da Silva', '', 'ola mundo', '2020-11-13 23:54:15'),
(2, 'Vanessa Juliana da Silva', '', 'oi tudo bem', '2020-11-13 23:55:07'),
(3, 'Vanessa Juliana da Silva', '', 'oi tudo bem', '2020-11-13 23:58:11'),
(4, 'Vanessa Juliana da Silva', '', 'oi tudo bem', '2020-11-13 23:58:56'),
(5, 'afd', '', 'fbgsd', '2020-11-14 00:17:34'),
(6, 'afd', '', 'fbgsd', '2020-11-14 00:17:38'),
(7, '', '', '', '2020-11-14 00:18:44'),
(8, '', '', '', '2020-11-14 00:18:45'),
(9, '', '', '', '2020-11-14 00:18:45'),
(10, '', '', '', '2020-11-14 00:18:46'),
(11, '', '', '', '2020-11-14 00:18:47'),
(12, 'd', '', '', '2020-11-14 00:19:59'),
(13, 'Djailson Francisco Moura da Silva', '', 'asdfjsd', '2020-11-14 15:13:20'),
(14, 'Vanessa Juliana da Silva', '', '123', '2020-11-14 15:13:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` decimal(15,0) NOT NULL,
  `nomeProduto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valorUnitario` decimal(8,2) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `valorTotal` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `celular` (`telefone`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nomeCliente`, `endereco`, `telefone`, `nomeProduto`, `valorUnitario`, `quantidade`, `valorTotal`) VALUES
(1, 'João Antonio Silva', 'Av. Monteiro Lobato, 3521, Guarulhos - SP ', '911111111', 'Geladeira-Electrolux-TF55s-431-Litros-Frost-Free-Top-Freezer-Platinum', '2019.00', '1', '2019.00'),
(2, 'Paulo Siqueira Neves', 'R. Tabajara, 196-244 - Jardim Monte Carmelo, Guarulhos - SP', '922223333', 'Micro-ondas de Bancada Philco Espelhado 32L 127V', '588.99', '2', '1177.98'),
(3, 'Juliana Silva', 'R. Haroldo Lôbo, 153 - Jardim Pinhal, Guarulhos - SP', '955552222', 'Lavadora Inverter PLR12B 12kg Philco 220V', '2899.99', '1', '2899.99'),
(4, 'Cicero Guerrieo Munhos', 'R. Guilherme Jerônimo Klosternecht, 2-54 - Jardim Capelinha, São Paulo - SP', '955553322', 'Fogão Brastemp 5 Bocas Duplo Forno Cor Inox Com Botões Removíveis', '2425.99', '2', '4851.98'),
(5, 'Djailson Francisco Moura da Silva', 'Estrada das Lavras', '965188881', 'gelareida', '3500.00', '2', '7000.00'),
(6, 'joao', 'rua roao', '941413210', 'geladeira', '1001.00', '1', '1001.00'),
(7, 'joao', 'rua a', '1198989898', 'fogao', '1500.00', '2', '3000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco_final` float(8,2) NOT NULL,
  `imagem` varchar(300) NOT NULL,
  `preco` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `descricao`, `preco_final`, `imagem`, `preco`) VALUES
(1, 'geladeira', 'Geladeira-Electrolux-TF55s-431-Litros-Frost-Free-Top-Freezer-Platinum', 2019.00, 'imagens/Geladeira-Electrolux-TF55s-431-Litros-Frost-Free-Top-Freezer-Platinum.jpg', 2389.00),
(2, 'geladeira', 'Refrigerador Electrolux Duplex DC35A 260L - Branco', 1999.99, 'imagens/Refrigerador%20Electrolux%20Duplex%20DC35A%20260L%20-%20Branco%20(2).JPG', 2499.99),
(3, 'geladeira', 'Geladeira Refrigerador French Door Electrolux 579l Dm84x Inox 110v', 2599.99, 'imagens/GeladeiraRefrigerador%20French%20Door%20Electrolux%20579l%20Dm84x%20Inox%20110v.JPG', 4129.99),
(4, 'fogao', 'Fogão Brastemp 5 Bocas Duplo Forno Cor Inox Com Botões Removíveis', 2425.99, 'imagens/Fog%C3%A3o%20Brastemp%205%20Bocas%20Duplo%20Forno%20Cor%20Inox%20Com%20Bot%C3%B5es%20Remov%C3%ADveis%20E%20Exclusivo%20Aro%20Protetor%20-%20BFD5NCR%20110V.jpg', 2999.99),
(5, 'fogao', 'Fogão Consul 5 Bocas CFS5VAR com Mesa de Vidro - Inox', 1599.99, 'imagens/Fog%C3%A3o%20Consul%205%20Bocas%20CFS5VAR%20com%20Mesa%20de%20Vidro%20-%20Inox.jpg', 1999.00),
(6, 'microondas', 'Micro-ondas Brastemp BMG45 32 Litros Espelhado com Grill ', 898.99, 'imagens/Micro-ondas%20Brastemp%20BMG45%2032%20Litros%20Espelhado%20com%20Grill.jpg', 999.00),
(7, 'microondas', 'Micro-ondas de Bancada Philco Espelhado 32L 127V', 588.00, 'imagens/Micro-ondas%20de%20Bancada%20Philco%20Espelhado%2032L%20127V%20PMO33E.jpg', 799.99),
(8, 'microondas', 'Micro-ondas Inox Brastemp 20L\r\nBms20 ar', 485.99, 'imagens/Micro-ondas%20Inox%20Brastemp%2020L%20-%20Bms20%20ar.jpg', 599.00),
(9, 'lavaroupas', 'Lavadora de Roupas Samsung - 11Kg Água Quente\r\nBms20 ar', 2969.99, 'imagens/Lavadora%20de%20Roupas%20Samsung%20-%20WW11K6800AW-AZ%2011Kg%20%C3%81gua%20Quente.jpg', 3499.00),
(10, 'lavaroupas', 'Lavadora Inverter PLR12B 12kg Philco 220V', 2899.99, 'imagens/Lavadora%20Inverter%20PLR12B%2012kg%20Philco%20220V%20-%20220V.jpg', 3699.99),
(11, 'lavaloucas', 'Lava-Louças Brastemp Ative! BLF08 8 Serviços 110-220V', 1147.99, 'imagens/Lava-Lou%C3%A7as%20Brastemp%20Ative!%20BLF08%208%20Servi%C3%A7os%20110-220V.jpg', 1499.99),
(12, 'lavaloucas', 'Lava-Louças Electrolux 8 Serviços Cinza (LE08S) 220V', 2349.99, 'imagens/Lava-Lou%C3%A7as%20Electrolux%208%20Servi%C3%A7os%20Cinza%20(LE08S)%20220V.jpg', 2799.99);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
