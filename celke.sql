-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Nov-2020 às 00:13
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_cads_usuarios`
--

CREATE TABLE `adms_cads_usuarios` (
  `id` int(11) NOT NULL,
  `env_email_conf` int(11) NOT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_cads_usuarios`
--

INSERT INTO `adms_cads_usuarios` (`id`, `env_email_conf`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 1, 5, 3, '2020-11-05 16:04:30', '2020-11-07 18:12:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_confs_emails`
--

CREATE TABLE `adms_confs_emails` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `smtpsecure` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `porta` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_confs_emails`
--

INSERT INTO `adms_confs_emails` (`id`, `nome`, `email`, `host`, `usuario`, `senha`, `smtpsecure`, `porta`, `created`, `modifed`) VALUES
(1, 'Cesar - Celke', 'aulacurso@celke.com.br', 'srv84.prodns.com.br', 'aulacurso@celke.com.br', 'we6tcZpR4V', 'ssl', 465, '2020-11-07 18:05:04', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_cors`
--

CREATE TABLE `adms_cors` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_cors`
--

INSERT INTO `adms_cors` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2018-03-23 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2018-03-23 00:00:00', NULL),
(3, 'Verde', 'success', '2018-03-23 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2018-03-23 00:00:00', NULL),
(5, 'Laranjado', 'warning', '2018-03-23 00:00:00', NULL),
(6, 'Azul claro', 'info', '2018-03-23 00:00:00', NULL),
(7, 'Claro', 'light', '2018-03-23 00:00:00', NULL),
(8, 'Cinza escuro', 'dark', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_grps_pgs`
--

CREATE TABLE `adms_grps_pgs` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_grps_pgs`
--

INSERT INTO `adms_grps_pgs` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Listar', 1, '2018-03-23 00:00:00', NULL),
(2, 'Cadastrar', 2, '2018-03-23 00:00:00', NULL),
(3, 'Editar', 3, '2018-03-23 00:00:00', NULL),
(4, 'Apagar', 4, '2018-03-23 00:00:00', NULL),
(5, 'Visualizar', 5, '2018-03-23 00:00:00', NULL),
(6, 'Outros', 6, '2018-03-23 00:00:00', NULL),
(7, 'Acesso', 7, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_menus`
--

CREATE TABLE `adms_menus` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_menus`
--

INSERT INTO `adms_menus` (`id`, `nome`, `icone`, `ordem`, `adms_sit_id`, `created`, `modified`) VALUES
(1, 'Dashboard', 'fas fa-tachometer-alt', 1, 1, '2018-03-23 00:00:00', '2020-10-26 10:31:59'),
(2, 'Usuario', 'fas fa-user', 2, 1, '2018-03-23 00:00:00', '2020-10-26 15:12:58'),
(3, 'Menu', 'fas fa-list-ul', 3, 1, '2018-03-23 00:00:00', '2020-10-26 15:12:58'),
(4, 'Sair', 'fas fa-sign-out-alt', 5, 1, '2018-03-23 00:00:00', '2020-11-05 16:21:08'),
(8, 'Configurações', 'fas fa-cogs', 4, 0, '2020-11-05 16:19:44', '2020-11-05 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_nivacs_pgs`
--

CREATE TABLE `adms_nivacs_pgs` (
  `id` int(11) NOT NULL,
  `permissao` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `dropdown` int(11) NOT NULL,
  `lib_menu` int(11) NOT NULL DEFAULT 2,
  `adms_menu_id` int(11) NOT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_pagina_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_nivacs_pgs`
--

INSERT INTO `adms_nivacs_pgs` (`id`, `permissao`, `ordem`, `dropdown`, `lib_menu`, `adms_menu_id`, `adms_niveis_acesso_id`, `adms_pagina_id`, `created`, `modified`) VALUES
(1, 1, 1, 2, 1, 1, 1, 1, '2018-03-23 00:00:00', NULL),
(2, 1, 2, 1, 1, 2, 1, 5, '2018-03-23 00:00:00', NULL),
(3, 1, 3, 1, 1, 2, 1, 6, '2018-03-23 00:00:00', NULL),
(4, 1, 4, 1, 1, 3, 1, 7, '2018-03-23 00:00:00', NULL),
(5, 1, 5, 1, 1, 3, 1, 8, '2018-03-23 00:00:00', NULL),
(6, 1, 6, 2, 1, 4, 1, 4, '2018-03-23 00:00:00', NULL),
(7, 1, 7, 2, 2, 2, 1, 9, '2018-03-23 00:00:00', NULL),
(8, 1, 8, 2, 2, 2, 1, 10, '2018-03-23 00:00:00', NULL),
(9, 1, 9, 2, 2, 2, 1, 11, '2018-03-23 00:00:00', NULL),
(10, 1, 10, 2, 2, 2, 1, 12, '2018-03-23 00:00:00', NULL),
(11, 1, 11, 2, 2, 2, 1, 13, '2018-03-23 00:00:00', NULL),
(12, 1, 1, 2, 1, 1, 3, 1, '2018-03-23 00:00:00', '2018-03-22 18:32:12'),
(13, 1, 3, 1, 1, 2, 3, 5, '2018-03-23 00:00:00', '2020-10-25 10:35:31'),
(14, 2, 2, 2, 2, 2, 3, 6, '2018-03-23 00:00:00', '2020-10-24 19:33:46'),
(15, 2, 4, 1, 2, 3, 3, 7, '2018-03-23 00:00:00', '2020-10-24 19:33:58'),
(16, 2, 5, 1, 2, 3, 3, 8, '2018-03-23 00:00:00', '2020-10-24 19:33:59'),
(17, 1, 6, 2, 1, 4, 3, 4, '2018-03-23 00:00:00', '2018-03-22 17:41:13'),
(18, 2, 7, 2, 2, 2, 3, 9, '2018-03-23 00:00:00', '2020-10-24 19:34:19'),
(19, 2, 8, 2, 2, 2, 3, 10, '2018-03-23 00:00:00', '2020-10-24 19:34:23'),
(20, 2, 9, 2, 2, 2, 3, 11, '2018-03-23 00:00:00', '2020-10-24 19:34:26'),
(21, 2, 10, 2, 2, 2, 3, 12, '2018-03-23 00:00:00', '2020-10-24 19:34:28'),
(22, 2, 11, 2, 2, 2, 3, 13, '2018-03-23 00:00:00', '2020-10-24 19:34:19'),
(23, 1, 12, 2, 2, 2, 1, 14, '2018-03-23 00:00:00', NULL),
(24, 1, 13, 1, 2, 2, 1, 15, '2018-03-23 00:00:00', NULL),
(25, 1, 14, 1, 2, 3, 1, 16, '2018-03-23 00:00:00', NULL),
(26, 1, 15, 1, 2, 3, 1, 17, '2018-03-23 00:00:00', NULL),
(27, 1, 16, 1, 2, 3, 1, 21, '2018-03-19 18:06:40', NULL),
(28, 2, 1, 1, 2, 3, 2, 21, '2018-03-19 18:06:40', NULL),
(29, 2, 12, 1, 2, 3, 3, 21, '2018-03-19 18:06:40', '2018-03-21 22:48:53'),
(30, 2, 1, 1, 2, 3, 14, 21, '2018-03-19 18:06:40', NULL),
(31, 1, 17, 1, 2, 3, 1, 22, '2018-03-21 12:39:49', NULL),
(32, 2, 2, 1, 2, 3, 2, 22, '2018-03-21 12:39:49', NULL),
(33, 2, 13, 1, 2, 3, 3, 22, '2018-03-21 12:39:49', NULL),
(34, 2, 2, 1, 2, 3, 14, 22, '2018-03-21 12:39:49', NULL),
(35, 1, 18, 1, 2, 3, 1, 23, '2018-03-21 16:43:09', NULL),
(36, 2, 3, 1, 2, 3, 2, 23, '2018-03-21 16:43:09', NULL),
(37, 2, 14, 1, 2, 3, 3, 23, '2018-03-21 16:43:09', '2020-10-24 19:34:33'),
(38, 2, 3, 1, 2, 3, 14, 23, '2018-03-21 16:43:09', NULL),
(39, 1, 19, 1, 2, 3, 1, 24, '2018-03-21 17:46:32', NULL),
(40, 2, 4, 1, 2, 3, 2, 24, '2018-03-21 17:46:32', NULL),
(41, 2, 15, 1, 2, 3, 3, 24, '2018-03-21 17:46:32', '2020-10-24 19:34:33'),
(42, 2, 4, 1, 2, 3, 14, 24, '2018-03-21 17:46:32', NULL),
(50, 2, 5, 1, 2, 3, 14, 26, '2018-03-21 20:16:19', NULL),
(49, 1, 16, 1, 2, 3, 3, 26, '2018-03-21 20:16:19', NULL),
(48, 1, 5, 1, 2, 3, 2, 26, '2018-03-21 20:16:19', '2020-10-24 19:32:12'),
(47, 1, 20, 1, 2, 3, 1, 26, '2018-03-21 20:16:19', NULL),
(51, 1, 21, 1, 2, 3, 1, 27, '2018-03-21 21:56:03', NULL),
(52, 1, 6, 1, 2, 3, 2, 27, '2018-03-21 21:56:03', '2020-10-24 19:33:06'),
(53, 2, 17, 1, 2, 3, 3, 27, '2018-03-21 21:56:03', NULL),
(54, 2, 6, 1, 2, 3, 14, 27, '2018-03-21 21:56:03', NULL),
(55, 1, 22, 1, 2, 3, 1, 28, '2018-03-22 17:14:57', NULL),
(56, 1, 7, 1, 2, 3, 2, 28, '2018-03-22 17:14:57', '2020-10-24 19:33:23'),
(57, 2, 18, 1, 2, 3, 3, 28, '2018-03-22 17:14:57', NULL),
(58, 2, 7, 1, 2, 3, 14, 28, '2018-03-22 17:14:57', NULL),
(59, 1, 23, 1, 2, 3, 1, 29, '2018-03-22 18:24:20', NULL),
(60, 1, 8, 1, 2, 3, 2, 29, '2018-03-22 18:24:20', '2020-10-24 19:33:28'),
(61, 2, 19, 1, 2, 3, 3, 29, '2018-03-22 18:24:20', NULL),
(62, 2, 8, 1, 2, 3, 14, 29, '2018-03-22 18:24:20', NULL),
(63, 1, 24, 1, 2, 3, 1, 30, '2018-03-22 19:21:32', NULL),
(64, 1, 9, 1, 2, 3, 2, 30, '2018-03-22 19:21:32', '2020-10-24 19:33:38'),
(65, 2, 20, 1, 2, 3, 3, 30, '2018-03-22 19:21:32', NULL),
(66, 2, 9, 1, 2, 3, 14, 30, '2018-03-22 19:21:32', NULL),
(67, 1, 25, 1, 2, 3, 1, 31, '2020-10-24 18:58:06', NULL),
(68, 2, 10, 1, 2, 3, 2, 31, '2020-10-24 18:58:06', NULL),
(69, 2, 21, 1, 2, 3, 3, 31, '2020-10-24 18:58:06', NULL),
(70, 2, 10, 1, 2, 3, 14, 31, '2020-10-24 18:58:06', NULL),
(71, 1, 26, 1, 2, 3, 1, 2, '2020-10-24 19:25:08', NULL),
(72, 1, 27, 1, 2, 3, 1, 3, '2020-10-24 19:25:08', NULL),
(73, 1, 11, 2, 1, 1, 2, 1, '2020-10-24 19:25:08', '2020-10-24 19:31:26'),
(74, 1, 12, 2, 1, 4, 2, 4, '2020-10-24 19:25:08', '2020-10-24 19:31:24'),
(75, 1, 13, 1, 2, 3, 2, 2, '2020-10-24 19:25:08', NULL),
(76, 1, 14, 1, 2, 3, 2, 3, '2020-10-24 19:25:08', NULL),
(77, 1, 15, 1, 1, 2, 2, 5, '2020-10-24 19:25:08', '2020-10-24 19:31:31'),
(78, 1, 16, 1, 1, 3, 2, 6, '2020-10-24 19:25:08', '2020-10-25 10:32:58'),
(79, 2, 17, 1, 2, 3, 2, 7, '2020-10-24 19:25:08', NULL),
(80, 1, 18, 1, 1, 3, 2, 8, '2020-10-24 19:25:09', '2020-10-24 19:35:53'),
(81, 1, 19, 1, 2, 2, 2, 9, '2020-10-24 19:25:09', '2020-10-24 19:29:09'),
(82, 1, 20, 1, 2, 2, 2, 10, '2020-10-24 19:25:09', '2020-10-24 19:29:16'),
(83, 1, 21, 1, 2, 2, 2, 11, '2020-10-24 19:25:09', '2020-10-24 19:29:23'),
(84, 1, 22, 1, 2, 2, 2, 12, '2020-10-24 19:25:09', '2020-10-24 19:30:05'),
(85, 1, 23, 1, 2, 2, 2, 13, '2020-10-24 19:25:09', '2020-10-24 19:29:09'),
(86, 1, 24, 1, 2, 2, 2, 14, '2020-10-24 19:25:09', '2020-10-24 19:29:23'),
(87, 1, 25, 1, 2, 2, 2, 15, '2020-10-24 19:25:09', '2020-10-24 19:31:40'),
(88, 2, 26, 1, 2, 3, 2, 16, '2020-10-24 19:25:09', NULL),
(89, 2, 27, 1, 2, 3, 2, 17, '2020-10-24 19:25:09', NULL),
(90, 1, 22, 1, 2, 3, 3, 2, '2020-10-24 19:25:09', NULL),
(91, 1, 23, 1, 2, 3, 3, 3, '2020-10-24 19:25:09', NULL),
(92, 2, 24, 1, 2, 2, 3, 14, '2020-10-24 19:25:09', '2020-10-24 19:34:26'),
(93, 2, 25, 1, 2, 2, 3, 15, '2020-10-24 19:25:09', NULL),
(94, 2, 26, 1, 2, 3, 3, 16, '2020-10-24 19:25:09', NULL),
(95, 2, 27, 1, 2, 3, 3, 17, '2020-10-24 19:25:09', NULL),
(96, 2, 11, 1, 2, 1, 14, 1, '2020-10-24 19:25:09', NULL),
(97, 1, 12, 1, 2, 4, 14, 4, '2020-10-24 19:25:09', NULL),
(98, 1, 13, 1, 2, 3, 14, 2, '2020-10-24 19:25:09', NULL),
(99, 1, 14, 1, 2, 3, 14, 3, '2020-10-24 19:25:09', NULL),
(100, 2, 15, 1, 2, 2, 14, 5, '2020-10-24 19:25:09', NULL),
(101, 2, 16, 1, 2, 2, 14, 6, '2020-10-24 19:25:09', NULL),
(102, 2, 17, 1, 2, 3, 14, 7, '2020-10-24 19:25:09', NULL),
(103, 2, 18, 1, 2, 3, 14, 8, '2020-10-24 19:25:09', NULL),
(104, 2, 19, 1, 2, 2, 14, 9, '2020-10-24 19:25:09', NULL),
(105, 2, 20, 1, 2, 2, 14, 10, '2020-10-24 19:25:09', NULL),
(106, 2, 21, 1, 2, 2, 14, 11, '2020-10-24 19:25:09', NULL),
(107, 2, 22, 1, 2, 2, 14, 12, '2020-10-24 19:25:09', NULL),
(108, 2, 23, 1, 2, 2, 14, 13, '2020-10-24 19:25:09', NULL),
(109, 2, 24, 1, 2, 2, 14, 14, '2020-10-24 19:25:09', NULL),
(110, 2, 25, 1, 2, 2, 14, 15, '2020-10-24 19:25:09', NULL),
(111, 2, 26, 1, 2, 3, 14, 16, '2020-10-24 19:25:09', NULL),
(112, 2, 27, 1, 2, 3, 14, 17, '2020-10-24 19:25:09', NULL),
(113, 1, 28, 1, 2, 3, 1, 32, '2020-10-25 09:38:21', NULL),
(114, 1, 28, 1, 2, 3, 2, 32, '2020-10-25 09:38:21', '2020-10-25 10:34:31'),
(115, 2, 28, 1, 2, 3, 3, 32, '2020-10-25 09:38:21', NULL),
(116, 2, 28, 1, 2, 3, 14, 32, '2020-10-25 09:38:21', NULL),
(117, 1, 29, 1, 2, 3, 1, 33, '2020-10-25 09:48:59', NULL),
(118, 1, 29, 1, 2, 3, 2, 33, '2020-10-25 09:48:59', '2020-10-25 10:34:31'),
(119, 2, 29, 1, 2, 3, 3, 33, '2020-10-25 09:48:59', NULL),
(120, 2, 29, 1, 2, 3, 14, 33, '2020-10-25 09:48:59', NULL),
(121, 1, 30, 1, 2, 3, 1, 34, '2020-10-26 09:47:10', NULL),
(122, 2, 30, 1, 2, 3, 2, 34, '2020-10-26 09:47:10', NULL),
(123, 2, 30, 1, 2, 3, 3, 34, '2020-10-26 09:47:10', NULL),
(124, 2, 30, 1, 2, 3, 14, 34, '2020-10-26 09:47:10', NULL),
(125, 1, 31, 1, 2, 3, 1, 35, '2020-10-26 09:59:10', NULL),
(126, 2, 31, 1, 2, 3, 2, 35, '2020-10-26 09:59:10', NULL),
(127, 2, 31, 1, 2, 3, 3, 35, '2020-10-26 09:59:10', NULL),
(128, 2, 31, 1, 2, 3, 14, 35, '2020-10-26 09:59:10', NULL),
(129, 1, 32, 1, 2, 3, 1, 36, '2020-10-26 10:15:49', NULL),
(130, 2, 32, 1, 2, 3, 2, 36, '2020-10-26 10:15:49', NULL),
(131, 2, 32, 1, 2, 3, 3, 36, '2020-10-26 10:15:49', NULL),
(132, 2, 32, 1, 2, 3, 14, 36, '2020-10-26 10:15:49', NULL),
(133, 1, 33, 1, 2, 3, 1, 37, '2020-10-26 10:30:57', NULL),
(134, 2, 33, 1, 2, 3, 2, 37, '2020-10-26 10:30:57', NULL),
(135, 2, 33, 1, 2, 3, 3, 37, '2020-10-26 10:30:57', NULL),
(136, 2, 33, 1, 2, 3, 14, 37, '2020-10-26 10:30:57', NULL),
(137, 1, 34, 1, 2, 3, 1, 38, '2020-10-26 14:39:07', NULL),
(138, 2, 34, 1, 2, 3, 2, 38, '2020-10-26 14:39:07', NULL),
(139, 2, 34, 1, 2, 3, 3, 38, '2020-10-26 14:39:07', NULL),
(140, 2, 34, 1, 2, 3, 14, 38, '2020-10-26 14:39:07', NULL),
(141, 1, 35, 1, 2, 3, 1, 39, '2020-10-26 14:54:36', NULL),
(142, 2, 35, 1, 2, 3, 2, 39, '2020-10-26 14:54:36', NULL),
(143, 2, 35, 1, 2, 3, 3, 39, '2020-10-26 14:54:36', NULL),
(144, 2, 35, 1, 2, 3, 14, 39, '2020-10-26 14:54:36', NULL),
(145, 1, 36, 1, 2, 3, 1, 40, '2020-10-26 15:06:27', NULL),
(146, 2, 36, 1, 2, 3, 2, 40, '2020-10-26 15:06:27', NULL),
(147, 2, 36, 1, 2, 3, 3, 40, '2020-10-26 15:06:27', NULL),
(148, 2, 36, 1, 2, 3, 14, 40, '2020-10-26 15:06:27', NULL),
(149, 1, 37, 1, 2, 3, 1, 41, '2020-10-27 16:30:09', NULL),
(150, 2, 37, 1, 2, 3, 2, 41, '2020-10-27 16:30:09', NULL),
(151, 2, 37, 1, 2, 3, 3, 41, '2020-10-27 16:30:09', NULL),
(152, 2, 37, 1, 2, 3, 14, 41, '2020-10-27 16:30:09', NULL),
(153, 1, 38, 1, 2, 3, 1, 42, '2020-10-28 15:22:58', NULL),
(154, 2, 38, 1, 2, 3, 2, 42, '2020-10-28 15:22:58', NULL),
(155, 2, 38, 1, 2, 3, 3, 42, '2020-10-28 15:22:58', NULL),
(156, 2, 38, 1, 2, 3, 14, 42, '2020-10-28 15:22:58', NULL),
(157, 1, 39, 1, 2, 3, 1, 43, '2020-10-30 16:16:25', NULL),
(158, 1, 39, 1, 2, 3, 2, 43, '2020-10-30 16:16:25', '2020-10-30 16:36:19'),
(159, 2, 39, 1, 2, 3, 3, 43, '2020-10-30 16:16:25', NULL),
(160, 2, 39, 1, 2, 3, 14, 43, '2020-10-30 16:16:25', NULL),
(161, 1, 40, 1, 2, 3, 1, 44, '2020-11-03 14:32:32', NULL),
(162, 2, 40, 1, 2, 3, 2, 44, '2020-11-03 14:32:32', NULL),
(163, 2, 40, 1, 2, 3, 3, 44, '2020-11-03 14:32:32', NULL),
(164, 2, 40, 1, 2, 3, 14, 44, '2020-11-03 14:32:32', NULL),
(165, 1, 41, 1, 2, 3, 1, 45, '2020-11-03 14:37:49', NULL),
(166, 2, 41, 1, 2, 3, 2, 45, '2020-11-03 14:37:49', NULL),
(167, 2, 41, 1, 2, 3, 3, 45, '2020-11-03 14:37:49', NULL),
(168, 2, 41, 1, 2, 3, 14, 45, '2020-11-03 14:37:49', NULL),
(169, 1, 42, 1, 2, 3, 1, 46, '2020-11-03 14:48:10', NULL),
(170, 2, 42, 1, 2, 3, 2, 46, '2020-11-03 14:48:10', NULL),
(171, 2, 42, 1, 2, 3, 3, 46, '2020-11-03 14:48:10', NULL),
(172, 2, 42, 1, 2, 3, 14, 46, '2020-11-03 14:48:10', NULL),
(173, 1, 43, 1, 2, 3, 1, 47, '2020-11-03 14:57:54', NULL),
(174, 1, 43, 1, 2, 3, 2, 47, '2020-11-03 14:57:54', '2020-11-03 15:04:48'),
(175, 2, 43, 1, 2, 3, 3, 47, '2020-11-03 14:57:54', NULL),
(176, 2, 43, 1, 2, 3, 14, 47, '2020-11-03 14:57:54', NULL),
(177, 1, 44, 1, 2, 3, 1, 48, '2020-11-03 15:06:33', NULL),
(178, 2, 44, 1, 2, 3, 2, 48, '2020-11-03 15:06:33', NULL),
(179, 2, 44, 1, 2, 3, 3, 48, '2020-11-03 15:06:33', NULL),
(180, 2, 44, 1, 2, 3, 14, 48, '2020-11-03 15:06:33', NULL),
(181, 1, 45, 1, 2, 3, 1, 49, '2020-11-03 15:18:01', NULL),
(182, 2, 45, 1, 2, 3, 2, 49, '2020-11-03 15:18:01', NULL),
(183, 2, 45, 1, 2, 3, 3, 49, '2020-11-03 15:18:01', NULL),
(184, 2, 45, 1, 2, 3, 14, 49, '2020-11-03 15:18:01', NULL),
(185, 1, 46, 1, 2, 3, 1, 50, '2020-11-05 15:25:15', NULL),
(186, 2, 46, 1, 2, 3, 2, 50, '2020-11-05 15:25:15', NULL),
(187, 2, 46, 1, 2, 3, 3, 50, '2020-11-05 15:25:15', NULL),
(188, 2, 46, 1, 2, 3, 14, 50, '2020-11-05 15:25:15', NULL),
(189, 1, 47, 1, 1, 8, 1, 51, '2020-11-05 16:15:54', '2020-11-05 16:20:40'),
(190, 2, 47, 1, 2, 3, 2, 51, '2020-11-05 16:15:54', NULL),
(191, 2, 47, 1, 2, 3, 3, 51, '2020-11-05 16:15:54', NULL),
(192, 2, 1, 1, 2, 3, 4, 51, '2020-11-05 16:15:54', NULL),
(193, 2, 1, 1, 2, 3, 5, 51, '2020-11-05 16:15:54', NULL),
(194, 1, 48, 1, 2, 3, 1, 52, '2020-11-05 16:24:38', NULL),
(195, 2, 48, 1, 2, 3, 2, 52, '2020-11-05 16:24:38', NULL),
(196, 2, 48, 1, 2, 3, 3, 52, '2020-11-05 16:24:38', NULL),
(197, 2, 2, 1, 2, 3, 4, 52, '2020-11-05 16:24:38', NULL),
(198, 2, 2, 1, 2, 3, 5, 52, '2020-11-05 16:24:38', NULL),
(199, 1, 49, 1, 1, 8, 1, 53, '2020-11-07 18:19:07', '2020-11-07 18:19:48'),
(200, 2, 49, 1, 2, 3, 2, 53, '2020-11-07 18:19:07', NULL),
(201, 2, 49, 1, 2, 3, 3, 53, '2020-11-07 18:19:07', NULL),
(202, 2, 3, 1, 2, 3, 4, 53, '2020-11-07 18:19:07', NULL),
(203, 2, 3, 1, 2, 3, 5, 53, '2020-11-07 18:19:07', NULL),
(204, 1, 50, 1, 2, 3, 1, 54, '2020-11-07 18:24:49', NULL),
(205, 2, 50, 1, 2, 3, 2, 54, '2020-11-07 18:24:49', NULL),
(206, 2, 50, 1, 2, 3, 3, 54, '2020-11-07 18:24:49', NULL),
(207, 2, 4, 1, 2, 3, 4, 54, '2020-11-07 18:24:49', NULL),
(208, 2, 4, 1, 2, 3, 5, 54, '2020-11-07 18:24:49', NULL),
(209, 1, 51, 1, 2, 3, 1, 55, '2020-11-08 20:00:31', NULL),
(210, 2, 51, 1, 2, 3, 2, 55, '2020-11-08 20:00:31', NULL),
(211, 2, 51, 1, 2, 3, 3, 55, '2020-11-08 20:00:31', NULL),
(212, 2, 5, 1, 2, 3, 4, 55, '2020-11-08 20:00:31', NULL),
(213, 2, 5, 1, 2, 3, 5, 55, '2020-11-08 20:00:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_niveis_acessos`
--

CREATE TABLE `adms_niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_niveis_acessos`
--

INSERT INTO `adms_niveis_acessos` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Super Administrador', 1, '2018-03-23 00:00:00', NULL),
(2, 'Administrador', 2, '2018-03-23 00:00:00', '2018-03-18 14:01:00'),
(3, 'Colaborador', 3, '2018-03-23 00:00:00', '2018-03-21 22:17:40'),
(4, 'Financeiro', 4, '2018-03-18 12:46:00', '2018-03-21 22:17:40'),
(5, 'Cliente', 5, '2020-11-05 15:59:54', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_paginas`
--

CREATE TABLE `adms_paginas` (
  `id` int(11) NOT NULL,
  `nome_pagina` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lib_pub` int(11) NOT NULL DEFAULT 2,
  `icone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depend_pg` int(11) NOT NULL DEFAULT 0,
  `adms_grps_pg_id` int(11) NOT NULL,
  `adms_tps_pg_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adms_robot_id` int(11) NOT NULL DEFAULT 4,
  `adms_sits_pg_id` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_paginas`
--

INSERT INTO `adms_paginas` (`id`, `nome_pagina`, `endereco`, `obs`, `keywords`, `description`, `author`, `lib_pub`, `icone`, `depend_pg`, `adms_grps_pg_id`, `adms_tps_pg_id`, `adms_robot_id`, `adms_sits_pg_id`, `created`, `modified`) VALUES
(1, 'Home', 'visualizar/home', 'Pagina home', 'home', 'pagina home', 'Celke', 2, 'fas fa-tachometer-alt', 0, 5, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(4, 'Sair', 'acesso/sair', 'Sair do ADM', 'Sair do ADM', 'Sair do ADM', 'Celke', 1, 'fas fa-sign-out-alt', 0, 7, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(2, 'Login', 'acesso/login', 'Pagina de login do ADM', 'celke pagina login', 'celke pagina login', 'Celke', 1, NULL, 0, 7, '1', 1, 1, '2018-03-23 00:00:00', NULL),
(3, 'Validar Login', 'acesso/valida', 'Validar Login', 'Validar Login', 'Validar Login', 'Celke', 1, NULL, 2, 7, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(5, 'Usuarios', 'listar/list_usuario', 'Pagina para listar usuarios', 'Listar usuarios', 'Listar usuarios', 'Celke', 2, 'fas fa-users', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', '2020-10-25 10:35:31'),
(6, 'Nivel de Acesso', 'listar/list_niv_aces', 'Pagina para listar nivel de acesso', 'Listar nivel de acesso', 'Listar nivel de acesso', 'Celke', 2, 'fas fa-key', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', '2020-10-25 10:32:58'),
(7, 'Paginas', 'listar/list_pagina', 'Pagina para listar as paginas do ADM', 'Listar pagina', 'Listar pagina', 'Celke', 2, 'fas fa-file-alt', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(8, 'Menu', 'listar/list_menu', 'Pagina para listar os itens do menu', 'Pagina para listar os itens do menu', 'Pagina para listar os itens do menu', 'Celke', 2, 'fab fa-elementor', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(9, 'Cadastrar Nível de acesso', 'cadastrar/cad_niv_aces', 'Pagina para cadastrar nível de acesso', 'Pagina para cadastrar nível de acesso', 'Pagina para cadastrar nível de acesso', 'Natobpia', 2, '', 0, 2, '1', 4, 1, '2018-03-23 00:00:00', '2020-10-24 19:28:46'),
(10, 'Visualizar nivel de acesso', 'visualizar/vis_niv_aces', 'Pagina para Visualizar nivel de acesso', 'Pagina para Visualizar nivel de acesso', 'Pagina para Visualizar nivel de acesso', 'Celke', 2, NULL, 0, 5, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(11, 'Editar nivel de acesso', 'editar/edit_niv_aces', 'Pagina para editar nivel de acesso', 'Pagina para editar nivel de acesso', 'Pagina para editar nivel de acesso', 'Celke', 2, NULL, 0, 3, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(12, 'Apagar nivel de acesso', 'processa/apagar_niv_aces', 'Pagina para apagar nivel de acesso', 'Pagina para apagar nivel de acesso', 'Pagina para apagar nivel de acesso', 'Celke', 2, NULL, 0, 4, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(13, 'Proc o form cadastrar nivel de acesso', 'processa/proc_cad_niv_aces', 'Processa o formulario cadastrar nivel de acesso', 'Processa o formulario cadastrar nivel de acesso', 'Processa o formulario cadastrar nivel de acesso', 'Celke', 2, NULL, 9, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(14, 'Proc o form editar nivel de acesso', 'processa/proc_edit_niv_aces', NULL, 'Processa o formulario editar nivel de acesso', 'Processa o formulario editar nivel de acesso', 'Celke', 2, NULL, 11, 3, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(15, 'Alterar ordem do nivel de acesso', 'processa/proc_ordem_niv_aces', 'Pagina para Alterar ordem do nivel de acesso', 'Alterar ordem do nivel de acesso', 'Alterar ordem do nivel de acesso', 'Celke', 2, NULL, 0, 6, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(16, 'Cadastrar pagina', 'cadastrar/cad_pagina', 'Formulario para Cadastrar pagina', 'Cadastrar pagina', 'Cadastrar pagina', 'Celke', 2, NULL, 0, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(17, 'Procr o form cadastrar pagina', 'processa/proc_cad_pagina', 'Pagina para processar o formulario cadastrar pagina', 'Processar o formulario cadastrar pagina', 'Processar o formulario cadastrar pagina', 'Celke', 2, NULL, 16, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(27, 'Proc Liberar PermissÃ£o', 'processa/proc_lib_per', 'PÃ¡gina para liberar permissÃ£o', 'Proc Liberar Permissao', 'Proc Liberar Permissao', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-21 21:56:03', NULL),
(26, 'PermissÃ£o', 'listar/list_permissao', 'PÃ¡gina para listar as permissÃµes', 'Permissao', 'Permissao', 'Celke', 2, '', 0, 1, '1', 4, 1, '2018-03-21 20:16:19', NULL),
(21, 'Apagar PÃ¡gina', 'processa/apagar_pagina', 'PÃ¡gina para Apagar PÃ¡gina', 'Apagar Pagina', 'Apagar Pagina', 'Celke', 2, '', 0, 4, '1', 4, 1, '2018-03-19 18:06:40', NULL),
(22, 'Visualizar PÃ¡gina', 'visualizar/vis_pagina', 'PÃ¡gina para visualizar detalhes da pÃ¡gina', 'Visualizar Pagina', 'Visualizar Pagina', 'Celke', 2, '', 0, 5, '1', 4, 1, '2018-03-21 12:39:49', NULL),
(23, 'Editar PÃ¡gina', 'editar/edit_pagina', 'FormulÃ¡rio para Editar PÃ¡gina', 'Editar Pagina', 'Editar Pagina', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-21 16:43:09', '2018-03-21 22:55:13'),
(24, 'Proc form edita pagina', 'processa/proc_edit_pagina', 'PÃ¡gina para processar o formulÃ¡rio editar a pÃ¡gina', 'Proc form edita pagina', 'Proc form edita pagina', 'Celke', 2, '', 23, 3, '1', 4, 1, '2018-03-21 17:46:32', '2018-03-21 22:56:16'),
(28, 'Liberar Menu', 'processa/proc_lib_menu', 'PÃ¡gina para Liberar item Menu', 'Liberar Menu', 'Liberar Menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 17:14:57', NULL),
(29, 'Liberar Dropdown no menu', 'processa/proc_lib_dropdown', 'PÃ¡gina para Liberar Dropdown no menu', 'Liberar Dropdown no menu', 'Liberar Dropdown no menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 18:24:19', NULL),
(30, 'Alterar Ordem do Menu', 'processa/proc_ordem_menu', 'PÃ¡gina para Alterar Ordem do Menu', 'Alterar Ordem do Menu', 'Alterar Ordem do Menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 19:21:32', NULL),
(31, 'Sincronizar Páginas', 'processa/proc_sincro_nivac_pg', 'Página para Sincronizar Páginas com Nível de acesso', 'Sincronizar Páginas', 'Sincronizar Páginas', 'Natobpia', 2, '', 0, 3, '1', 2, 1, '2020-10-24 18:58:05', NULL),
(32, 'Editar ícone do menu', 'editar/edit_permissao', 'Página para Editar nome do menu do item do menu', 'Editar nome do menu', 'Editar nome do menu', 'Natobpia', 2, '', 0, 3, '1', 2, 1, '2020-10-25 09:38:21', '2020-10-25 09:50:26'),
(33, 'Proc form edita permissão', 'processa/proc_edit_permissao', 'Página para processar o formulário editar permissão', 'Proc form edita permissão', 'Proc form edita permissão', 'Natobpia', 2, '', 32, 3, '1', 2, 1, '2020-10-25 09:48:59', '2020-10-25 09:50:31'),
(34, 'Cadastrar Menu', 'cadastrar/cad_menu', 'Página para Cadastrar Menu', 'Cadastrar Menu', 'Cadastrar Menu', 'Natobpia', 2, '', 0, 2, '1', 4, 1, '2020-10-26 09:47:10', NULL),
(35, 'Proc Form Cad Menu', 'processa/proc_cad_menu', 'Página para processar o formulário cadastrar menu', 'Processar o formulário cadastrar menu', 'Processar o formulário cadastrar menu', 'Natobpia', 2, '', 34, 2, '1', 4, 1, '2020-10-26 09:59:10', NULL),
(36, 'Editar Menu', 'editar/edit_menu', 'Formulário para Editar Menu', 'Editar Menu', 'Editar Menu', 'Natobpia', 2, '', 0, 3, '1', 4, 1, '2020-10-26 10:15:49', NULL),
(37, 'Proc Form Edit Menu', 'processa/proc_edit_menu', 'Processar o formulário editar item do menu', 'Processar o formulário editar item do menu', 'Processar o formulário editar item do menu', 'Natobpia', 2, '', 36, 3, '1', 4, 1, '2020-10-26 10:30:57', NULL),
(38, 'Visualizar Menu', 'visualizar/vis_menu', 'Página para Visualizar Menu', 'Visualizar Menu', 'Visualizar Menu', 'Natobpia', 2, '', 0, 5, '1', 4, 1, '2020-10-26 14:39:07', NULL),
(39, 'Apagar Menu', 'processa/apagar_menu', 'Página para Apagar Menu', 'Apagar Menu', 'Apagar Menu', 'Natobpia', 2, '', 0, 4, '1', 4, 1, '2020-10-26 14:54:36', NULL),
(40, 'Alterar ordem item menu', 'processa/proc_ordem_menu_item', 'Página para Alterar ordem item menu', 'Alterar ordem item menu', 'Alterar ordem item menu', 'Natobpia', 2, '', 0, 3, '1', 4, 1, '2020-10-26 15:06:27', NULL),
(41, 'Cadastrar Usuário', 'cadastrar/cad_usuario', 'Página para Cadastrar Usuário', 'Cadastrar Usuário', 'Cadastrar Usuário', 'Natobpia', 2, '', 0, 2, '1', 4, 1, '2020-10-27 16:30:09', NULL),
(42, 'Proc Form Cad User', 'processa/proc_cad_usuario', 'Página para processar a página cadastrar usuário', 'Proc Form Cad User', 'Proc Form Cad User', 'Natobpia', 2, '', 41, 2, '1', 4, 1, '2020-10-28 15:22:58', NULL),
(43, 'Visualizar Usuário', 'visualizar/vis_usuario', 'Página Para Visualizar Usuário', 'Visualizar Usuário', 'Visualizar Usuário', 'Natobpia', 2, '', 0, 5, '1', 4, 1, '2020-10-30 16:16:25', NULL),
(44, 'Editar Usuário', 'editar/edit_usuario', 'Página para editar usuário', 'Editar usuário', 'Editar usuário', 'Natobpia', 2, '', 0, 3, '1', 4, 1, '2020-11-03 14:32:32', NULL),
(45, 'Proc Form Edit Usuario', 'processa/proc_edit_usuario', 'Página para processar o formulário editar usuario', 'Proc Form Edit Usuario', 'Proc Form Edit Usuario', 'Natobpia', 2, '', 44, 3, '1', 2, 1, '2020-11-03 14:37:49', NULL),
(46, 'Apagar usuário', 'processa/apagar_usuario', 'Página para Apagar usuário', 'Apagar usuário', 'Apagar usuário', 'Natobpia', 2, '', 0, 4, '1', 4, 1, '2020-11-03 14:48:10', NULL),
(47, 'Visualizar Perfil', 'visualizar/vis_perfil', 'Página para Visualizar Perfil', 'Visualizar Perfil', 'Visualizar Perfil', 'Natobpia', 2, '', 0, 5, '1', 4, 1, '2020-11-03 14:57:54', NULL),
(48, 'Editar perfil', 'editar/edit_perfil', 'Página para editar perfil', 'Editar perfil', 'Editar perfil', 'Natobpia', 2, '', 0, 3, '1', 4, 1, '2020-11-03 15:06:33', NULL),
(49, 'Proc Form Edit Perfil', 'processa/proc_edit_perfil', 'Página para processar o formulário editar perfil', 'Processar o formulário editar perfil', 'Processar o formulário editar perfil', 'Natobpia', 2, '', 48, 3, '1', 4, 1, '2020-11-03 15:18:01', NULL),
(50, 'Página cadastrar usuário no login', 'cadastrar/cad_user_login', 'Página para Cadastrar usuário no login', 'Cadastrar usuário no login', 'Cadastrar usuário no login', 'Natobpia', 1, '', 0, 2, '1', 4, 1, '2020-11-05 15:25:15', NULL),
(51, 'Cadastro Login', 'editar/edit_cad_user_login', 'Formulário para editar o nível de acesso e a situação do formulário cadastrar usuário na página de login', 'Editar Cadastro Usuário Login', 'Editar Cadastro Usuário Login', 'Natobpia', 2, 'fas fa-edit', 0, 3, '1', 4, 1, '2020-11-05 16:15:54', '2020-11-05 16:21:33'),
(52, 'Proc Form Cad User Login', 'processa/proc_cad_user_login', 'Página para processar o formulário utilizado para editar o nível de acesso e a situação do formulário cadastrar usuário através da página de login.', 'Fomurlário cadastrar usuário no login', 'Fomurlário cadastrar usuário no login', 'Natobpia', 2, '', 51, 3, '1', 4, 1, '2020-11-05 16:24:38', NULL),
(53, 'Página para editar as credenciais do email', 'editar/edit_cred_email', 'Página com formulário para editar as credenciais do email', 'Página para editar as credenciais do email', 'Página para editar as credenciais do email', 'Natobpia', 2, 'fas fa-at', 0, 3, '1', 4, 1, '2020-11-07 18:19:07', '2020-11-07 18:19:48'),
(54, 'Processar formulário credenciais e-mail', 'processa/proc_edit_cred_email', 'Página para processar o formulário editar credenciais de envio de e-mail', 'Processar formulário credenciais e-mail', 'Processar formulário credenciais e-mail', 'Natobpia', 2, '', 53, 3, '1', 4, 1, '2020-11-07 18:24:49', NULL),
(55, 'Validar E-mail', 'acesso/valida_email', 'Página para validar e-mail', 'Validar E-mail', 'Validar E-mail', 'Natobpia', 1, '', 0, 3, '1', 4, 1, '2020-11-08 20:00:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_robots`
--

CREATE TABLE `adms_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_robots`
--

INSERT INTO `adms_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a página e seguir os links', 'index, follow', '2018-03-23 00:00:00', NULL),
(2, 'Não indexar a página mas seguir os links', 'noindex, follow', '2018-03-23 00:00:00', NULL),
(3, 'Indexar a página mas não seguir os links', 'index, nofollow', '2018-03-23 00:00:00', NULL),
(4, 'Não indexar a página e nem seguir os links', 'noindex, nofollow', '2018-03-23 00:00:00', NULL),
(5, 'Não exibir a versão em cache da página', 'noarchive', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_sits`
--

CREATE TABLE `adms_sits` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_sits`
--

INSERT INTO `adms_sits` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', '3', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', '4', '2018-03-23 00:00:00', NULL),
(3, 'Analise', '1', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_sits_pgs`
--

CREATE TABLE `adms_sits_pgs` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_sits_pgs`
--

INSERT INTO `adms_sits_pgs` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Ativo', 'success', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', 'danger', '2018-03-23 00:00:00', NULL),
(3, 'Analise', 'primary', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_sits_usuarios`
--

CREATE TABLE `adms_sits_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_sits_usuarios`
--

INSERT INTO `adms_sits_usuarios` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2018-03-23 00:00:00', NULL),
(2, 'Inativo', 5, '2018-03-23 00:00:00', NULL),
(3, 'Aguardando confirmacao', 1, '2018-03-23 00:00:00', NULL),
(4, 'Spam', 4, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_tps_pgs`
--

CREATE TABLE `adms_tps_pgs` (
  `id` int(11) NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_tps_pgs`
--

INSERT INTO `adms_tps_pgs` (`id`, `tipo`, `nome`, `obs`, `ordem`, `created`, `modified`) VALUES
(1, 'adms', 'Administrativo', 'Core do Administrativo', 1, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_usuarios`
--

CREATE TABLE `adms_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `recuperar_senha` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chave_descadastro` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf_email` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_usuarios`
--

INSERT INTO `adms_usuarios` (`id`, `nome`, `apelido`, `email`, `usuario`, `senha`, `recuperar_senha`, `chave_descadastro`, `conf_email`, `imagem`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 'Cesar N. Szpak', 'Cesar', 'cesar@celke.com.br', 'cesar@celke.com.br', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 1, 1, '2018-03-23 00:00:00', '2020-11-03 15:22:53'),
(2, 'Jessica', 'Jessica', 'jessica@celke.com.br', 'jessica@celke.com.br', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 3, 1, '2018-03-23 00:00:00', NULL),
(3, 'Kelly', 'Kelly', 'kelly@celke.com.br', 'kelly@celke.com.br', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 2, 1, '2018-03-23 00:00:00', NULL),
(18, 'Cesar', NULL, 'cesar6@celke.com.br', 'Cesar6', '$2y$10$Rj/ZAqKTixl7kpY/Tze83eHL/3.a5EdNDM1gO64ybhUrsVR8ZJns.', NULL, NULL, NULL, NULL, 5, 1, '2020-11-05 16:11:34', NULL),
(19, 'Cesar', NULL, 'cesar7@celke.com.br', 'cesar7', '$2y$10$m1i1eXVXr0jz9aqy4m8biOrGCn19amI4HhbHhCXf/QYAcksZkeeQ.', NULL, NULL, NULL, NULL, 5, 3, '2020-11-05 16:13:06', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_artigos`
--

CREATE TABLE `sts_artigos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resumo_publico` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `qnt_acesso` int(11) NOT NULL DEFAULT 0,
  `sts_robot_id` int(11) NOT NULL,
  `adms_usuario_id` int(11) NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `sts_cats_artigo_id` int(11) NOT NULL,
  `sts_tps_artigo_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_artigos`
--

INSERT INTO `sts_artigos` (`id`, `titulo`, `descricao`, `conteudo`, `imagem`, `slug`, `keywords`, `description`, `author`, `resumo_publico`, `qnt_acesso`, `sts_robot_id`, `adms_usuario_id`, `sts_situacoe_id`, `sts_cats_artigo_id`, `sts_tps_artigo_id`, `created`, `modified`) VALUES
(1, 'Sample blog post 1', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n                            <hr>\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <h2>Heading</h2>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n                            <pre><code>Example code block</code></pre>\r\n                            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n                            <ul>\r\n                                <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n                                <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n                                <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n                            </ul>\r\n                            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n                            <ol>\r\n                                <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n                                <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n                            </ol>\r\n                            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>\r\n                        </div><!-- /.blog-post -->\r\n\r\n                        <div class=\"blog-post\">\r\n                            <h2 class=\"blog-post-title\">Another blog post</h2>\r\n                            <p class=\"blog-post-meta\">December 23, 2013 by <a href=\"#\">Jacob</a></p>\r\n\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'artigo.jpg', 'sample-blog-post-1', 'artigo, artigo 1', 'Descrição do artigo 1 para SEO', 'Celke', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n                            <hr>\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 5, 1, 1, 1, 1, 1, '2020-05-27 15:59:46', NULL),
(2, 'Sample blog post 2', 'Donec 2 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n                            <hr>\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <h2>Heading</h2>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n                            <pre><code>Example code block</code></pre>\r\n                            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n                            <ul>\r\n                                <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n                                <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n                                <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n                            </ul>\r\n                            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n                            <ol>\r\n                                <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n                                <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n                            </ol>\r\n                            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>\r\n                        </div><!-- /.blog-post -->\r\n\r\n                        <div class=\"blog-post\">\r\n                            <h2 class=\"blog-post-title\">Another blog post</h2>\r\n                            <p class=\"blog-post-meta\">December 23, 2013 by <a href=\"#\">Jacob</a></p>\r\n\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'artigo.jpg', 'sample-blog-post-2', 'artigo, artigo 2', 'Descricao do artigo dois para SEO', 'Celke', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>', 5, 1, 1, 1, 1, 1, '2020-05-27 16:07:05', NULL),
(3, 'Sample blog post 3', 'Donec 3 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n                            <hr>\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <h2>Heading</h2>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n                            <pre><code>Example code block</code></pre>\r\n                            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n                            <ul>\r\n                                <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n                                <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n                                <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n                            </ul>\r\n                            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n                            <ol>\r\n                                <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n                                <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n                            </ol>\r\n                            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>\r\n                        </div><!-- /.blog-post -->\r\n\r\n                        <div class=\"blog-post\">\r\n                            <h2 class=\"blog-post-title\">Another blog post</h2>\r\n                            <p class=\"blog-post-meta\">December 23, 2013 by <a href=\"#\">Jacob</a></p>\r\n\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'artigo.jpg', 'sample-blog-post-3', 'artigo, artigo 3', 'Descricao do artigo tres para SEO', 'Celke', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>', 11, 1, 1, 1, 1, 1, '2020-05-27 16:07:05', NULL),
(4, 'Sample blog post 4', 'Donec 4 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n                            <hr>\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <h2>Heading</h2>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n                            <pre><code>Example code block</code></pre>\r\n                            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n                            <h3>Sub-heading</h3>\r\n                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n                            <ul>\r\n                                <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n                                <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n                                <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n                            </ul>\r\n                            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n                            <ol>\r\n                                <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n                                <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n                                <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n                            </ol>\r\n                            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>\r\n                        </div><!-- /.blog-post -->\r\n\r\n                        <div class=\"blog-post\">\r\n                            <h2 class=\"blog-post-title\">Another blog post</h2>\r\n                            <p class=\"blog-post-meta\">December 23, 2013 by <a href=\"#\">Jacob</a></p>\r\n\r\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n                            <blockquote>\r\n                                <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n                            </blockquote>\r\n                            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n                            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'artigo.jpg', 'sample-blog-post-4', 'artigo, artigo 4', 'Descricao do artigo quatro para SEO', 'Celke', '<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>', 12, 1, 1, 1, 1, 1, '2020-05-27 16:10:50', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_blogs_sobre`
--

CREATE TABLE `sts_blogs_sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_blogs_sobre`
--

INSERT INTO `sts_blogs_sobre` (`id`, `titulo`, `descricao`, `sts_situacoe_id`, `created`, `modified`) VALUES
(1, 'Sobre', 'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.', 1, '2020-05-28 09:57:58', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_carousels`
--

CREATE TABLE `sts_carousels` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posicao_text` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo_botao` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordem` int(11) NOT NULL,
  `sts_cor_id` int(11) NOT NULL,
  `sts_situacoes_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_carousels`
--

INSERT INTO `sts_carousels` (`id`, `nome`, `imagem`, `titulo`, `descricao`, `posicao_text`, `titulo_botao`, `link`, `ordem`, `sts_cor_id`, `sts_situacoes_id`, `created`, `modified`) VALUES
(1, 'Primeiro Exemplo', 'imagem_um.jpg', 'Example headline.1', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-left', 'Mais detalhes', 'https://celke.com.br/', 1, 1, 1, '2020-05-22 10:04:18', NULL),
(2, 'Segundo Exemplo', 'imagem_dois.jpg', 'Example headline.2', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-center', 'Inscrever-se', 'https://celke.com.br', 2, 5, 1, '2020-05-22 10:09:20', NULL),
(3, 'Terceiro Exemplo', 'imagem_tres.jpg', 'One more for good measure3', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-right', 'Comprar', 'https://celke.com.br', 3, 4, 1, '2020-05-22 10:09:20', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_cats_artigos`
--

CREATE TABLE `sts_cats_artigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_cats_artigos`
--

INSERT INTO `sts_cats_artigos` (`id`, `nome`, `sts_situacoe_id`, `created`, `modifed`) VALUES
(1, 'BootStrap', 1, '2020-05-27 15:42:10', NULL),
(2, 'MySQL', 1, '2020-05-27 15:42:10', NULL),
(3, 'PHP', 1, '2020-05-27 16:04:15', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contatos`
--

CREATE TABLE `sts_contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(520) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_contatos`
--

INSERT INTO `sts_contatos` (`id`, `nome`, `email`, `assunto`, `mensagem`, `created`, `modified`) VALUES
(1, 'Cesar', 'cesar6@hotmail.com', 'Teste assunto', 'Teste mensagem', '2020-06-08 11:23:49', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_cors`
--

CREATE TABLE `sts_cors` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_cors`
--

INSERT INTO `sts_cors` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2020-05-22 09:59:14', NULL),
(2, 'Cinza claro', 'secondary', '2020-05-22 10:00:14', NULL),
(3, 'Verde', 'success', '2020-05-22 10:00:14', NULL),
(4, 'Vermelho', 'danger', '2020-05-22 10:00:14', NULL),
(5, 'Amarelo', 'warning', '2020-05-22 10:00:14', NULL),
(6, 'Azul claro', 'info', '2020-05-22 10:00:14', NULL),
(7, 'Claro', 'light', '2020-05-22 10:00:14', NULL),
(8, 'Escuro', 'dark', '2020-05-22 10:00:14', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_forms_emails`
--

CREATE TABLE `sts_forms_emails` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_botao` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_forms_emails`
--

INSERT INTO `sts_forms_emails` (`id`, `titulo`, `descricao`, `titulo_botao`, `imagem`, `created`, `modified`) VALUES
(1, 'Receber Novidades', 'This is a wider card with supporting text below as a natural lead-in to additional content.', 'Cadastrar', 'imagem_tres.jpg', '2020-05-27 10:15:30', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_leads`
--

CREATE TABLE `sts_leads` (
  `id` int(11) NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_leads`
--

INSERT INTO `sts_leads` (`id`, `email`, `created`, `modified`) VALUES
(1, 'cezar2@celke.com.br', '2020-05-27 10:56:23', NULL),
(2, 'cezar@celke.com.br', '2020-05-27 10:59:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_paginas`
--

CREATE TABLE `sts_paginas` (
  `id` int(11) NOT NULL,
  `endereco` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `nome_pagina` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `tp_pagina` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lib_bloq` int(11) NOT NULL DEFAULT 2,
  `ordem` int(11) NOT NULL,
  `depend_pg` int(11) NOT NULL DEFAULT 0,
  `sts_robot_id` int(11) NOT NULL,
  `sts_situacaos_pg_id` int(11) NOT NULL DEFAULT 2,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_paginas`
--

INSERT INTO `sts_paginas` (`id`, `endereco`, `nome_pagina`, `titulo`, `obs`, `keywords`, `description`, `author`, `imagem`, `tp_pagina`, `lib_bloq`, `ordem`, `depend_pg`, `sts_robot_id`, `sts_situacaos_pg_id`, `created`, `modified`) VALUES
(1, 'home', 'Home', 'Celke - Home', 'Home', 'site celke home, PHP, HTML, CSS, Bootstrap, JavaScript', 'home do site desenvolvido no Curso de PHP, MySQLi e Bootstrap', 'Celke', 'home.jpg', 'sts', 1, 1, 0, 1, 1, '2018-02-23 00:00:00', NULL),
(2, 'sobre_empresa', 'Sobre Empresa', 'Celke - Sobre empresa', NULL, 'site celke sobre empresa, PHP, HTML, CSS, Bootstrap', 'sobre empresa do site desenvolvido no Curso de PHP, MySQLi e Bootstrap', 'Celke', 'sobre_empresa.jpg', 'sts', 1, 2, 0, 1, 1, '2018-02-23 00:00:00', NULL),
(3, 'contato', 'Contato', 'Celke - Contato', NULL, 'site celke contato, PHP, HTML, CSS, Bootstrap, JavaScript', 'contato do site desenvolvido no Curso de PHP, MySQLi e Bootstrap', 'Celke', 'contato.jpg', 'sts', 1, 4, 0, 1, 1, '2018-02-23 00:00:00', NULL),
(4, 'blog', 'Blog', 'Celke - Blog', NULL, 'site celke blog, PHP, HTML, CSS, Bootstrap, JavaScript', 'blog do site desenvolvido no Curso de PHP, MySQLi e Bootstrap', 'Celke', 'blog.jpg', 'sts', 1, 3, 0, 1, 1, '2018-02-23 00:00:00', NULL),
(5, 'artigo', 'Artigo', 'Celke - Artigo', NULL, 'site celke artigo, PHP, HTML, CSS, Bootstrap, JavaScript', 'artigo do site desenvolvido no Curso de PHP, MySQLi e Bootstrap', 'Celke', 'artigo.jpg', 'sts', 2, 5, 0, 1, 1, '2018-02-23 00:00:00', NULL),
(6, 'proc_cad_lead', 'Processa Cadastrar Lead', 'Celke - Cadastrar Lead', NULL, 'PHP', 'Cadastrar email para receber novidades', 'Celke', 'proc_cad_lead.jpg', 'sts', 2, 6, 1, 4, 1, '2020-05-27 10:44:14', NULL),
(7, 'proc_cad_contato', 'Processa Cadastrar Contato', 'Celke - Cadastrar Contato', NULL, 'Cadastrar contato', 'Cadastrar contato', 'Celke', 'cadastrar.jpg', 'sts', 2, 7, 3, 4, 1, '2020-06-08 10:59:34', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_pergs_resps`
--

CREATE TABLE `sts_pergs_resps` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `resposta` text COLLATE utf8_unicode_ci NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_pergs_resps`
--

INSERT INTO `sts_pergs_resps` (`id`, `pergunta`, `resposta`, `sts_situacoe_id`, `created`, `modifed`) VALUES
(1, 'PERGUNTA 1', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.', 1, '2020-05-27 11:03:16', NULL),
(2, 'PERGUNTA 2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.', 1, '2020-05-27 11:03:16', NULL),
(3, 'PERGUNTA 3', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.', 1, '2020-05-27 11:04:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_prods_homes`
--

CREATE TABLE `sts_prods_homes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `subtitulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_prods_homes`
--

INSERT INTO `sts_prods_homes` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `created`, `modified`) VALUES
(1, 'Produto', 'First featurette heading.', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'produto.jpg', '2020-05-22 11:30:06', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_robots`
--

CREATE TABLE `sts_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_robots`
--

INSERT INTO `sts_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a página e seguir os links', 'index, follow', '2020-05-28 11:09:49', NULL),
(2, 'Não indexar a página, mas seguir links', 'noindex, follow', '2020-05-28 11:09:49', NULL),
(3, 'indexar a página, mas não seguir os links', 'index, nofollow', '2020-05-28 11:10:51', NULL),
(4, 'Não indexar a página e não seguir os links', 'noindex, nofollow', '2020-05-28 11:11:54', NULL),
(5, 'Não exibir a versão em cache da página', 'noarchive', '2020-05-28 11:12:19', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_servicos`
--

CREATE TABLE `sts_servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone_um` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_um` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_um` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone_dois` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_dois` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_dois` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone_tres` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_tres` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_tres` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_servicos`
--

INSERT INTO `sts_servicos` (`id`, `titulo`, `icone_um`, `nome_um`, `descricao_um`, `icone_dois`, `nome_dois`, `descricao_dois`, `icone_tres`, `nome_tres`, `descricao_tres`, `created`, `modified`) VALUES
(1, 'Serviços', 'ion-ios-camera-outline', 'Serviço Um', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'ion-ios-film-outline', 'Serviço Dois', 'This card has supporting text below as a natural lead-in to additional content.', 'ion-ios-videocam-outline', 'Serviço Três', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2020-05-22 11:10:21', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_situacoes`
--

CREATE TABLE `sts_situacoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sts_cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_situacoes`
--

INSERT INTO `sts_situacoes` (`id`, `nome`, `sts_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2020-05-22 10:03:22', NULL),
(2, 'Inativo', 5, '2020-05-22 10:03:22', NULL),
(3, 'Análise', 1, '2020-05-22 10:03:39', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_sobs_emps`
--

CREATE TABLE `sts_sobs_emps` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_sobs_emps`
--

INSERT INTO `sts_sobs_emps` (`id`, `titulo`, `descricao`, `imagem`, `ordem`, `sts_situacoe_id`, `created`, `modifed`) VALUES
(1, 'Sobre a Empresa', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 1, 1, '2020-05-27 11:28:24', NULL),
(2, 'Sobre a Empresa 2', 'Sobre empresa 2: Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 2, 1, '2020-05-27 11:28:24', NULL),
(3, 'Sobre a Empresa 3', 'Sobre a empresa 3: Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 3, 1, '2020-05-27 11:29:29', NULL),
(4, 'Sobre a Empresa 4', 'Sobre empresa 4: Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 4, 1, '2020-05-27 11:29:58', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_tps_artigos`
--

CREATE TABLE `sts_tps_artigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_tps_artigos`
--

INSERT INTO `sts_tps_artigos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Público', '2020-05-27 15:49:15', '0000-00-00 00:00:00'),
(2, 'Privado', '2020-05-27 15:49:15', '0000-00-00 00:00:00'),
(3, 'Privado com resumo público', '2020-05-27 15:49:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_videos`
--

CREATE TABLE `sts_videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `video_um` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `video_dois` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `video_tres` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_videos`
--

INSERT INTO `sts_videos` (`id`, `titulo`, `descricao`, `video_um`, `video_dois`, `video_tres`, `created`, `modified`) VALUES
(1, 'Depoimentos', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/JfAgl6CGg2Q?rel=0\" allowfullscreen></iframe>', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/4tBeeMcw2sM?rel=0\" allowfullscreen></iframe>', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/i_R6sMRRQ0s?rel=0\" allowfullscreen></iframe>', '2020-05-22 11:22:37', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adms_cads_usuarios`
--
ALTER TABLE `adms_cads_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_confs_emails`
--
ALTER TABLE `adms_confs_emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_grps_pgs`
--
ALTER TABLE `adms_grps_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_menus`
--
ALTER TABLE `adms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_nivacs_pgs`
--
ALTER TABLE `adms_nivacs_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_niveis_acessos`
--
ALTER TABLE `adms_niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_paginas`
--
ALTER TABLE `adms_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_sits_pgs`
--
ALTER TABLE `adms_sits_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_sits_usuarios`
--
ALTER TABLE `adms_sits_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_tps_pgs`
--
ALTER TABLE `adms_tps_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_artigos`
--
ALTER TABLE `sts_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_blogs_sobre`
--
ALTER TABLE `sts_blogs_sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_carousels`
--
ALTER TABLE `sts_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_cats_artigos`
--
ALTER TABLE `sts_cats_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contatos`
--
ALTER TABLE `sts_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_cors`
--
ALTER TABLE `sts_cors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_forms_emails`
--
ALTER TABLE `sts_forms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_leads`
--
ALTER TABLE `sts_leads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_paginas`
--
ALTER TABLE `sts_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_pergs_resps`
--
ALTER TABLE `sts_pergs_resps`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_prods_homes`
--
ALTER TABLE `sts_prods_homes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_robots`
--
ALTER TABLE `sts_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_servicos`
--
ALTER TABLE `sts_servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_situacoes`
--
ALTER TABLE `sts_situacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_sobs_emps`
--
ALTER TABLE `sts_sobs_emps`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_tps_artigos`
--
ALTER TABLE `sts_tps_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_videos`
--
ALTER TABLE `sts_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adms_cads_usuarios`
--
ALTER TABLE `adms_cads_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `adms_confs_emails`
--
ALTER TABLE `adms_confs_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `adms_grps_pgs`
--
ALTER TABLE `adms_grps_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `adms_menus`
--
ALTER TABLE `adms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `adms_nivacs_pgs`
--
ALTER TABLE `adms_nivacs_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de tabela `adms_niveis_acessos`
--
ALTER TABLE `adms_niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `adms_paginas`
--
ALTER TABLE `adms_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `adms_sits_pgs`
--
ALTER TABLE `adms_sits_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `adms_sits_usuarios`
--
ALTER TABLE `adms_sits_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `adms_tps_pgs`
--
ALTER TABLE `adms_tps_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `sts_artigos`
--
ALTER TABLE `sts_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sts_blogs_sobre`
--
ALTER TABLE `sts_blogs_sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_carousels`
--
ALTER TABLE `sts_carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_cats_artigos`
--
ALTER TABLE `sts_cats_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_contatos`
--
ALTER TABLE `sts_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_cors`
--
ALTER TABLE `sts_cors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `sts_forms_emails`
--
ALTER TABLE `sts_forms_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_leads`
--
ALTER TABLE `sts_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sts_paginas`
--
ALTER TABLE `sts_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `sts_pergs_resps`
--
ALTER TABLE `sts_pergs_resps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_prods_homes`
--
ALTER TABLE `sts_prods_homes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_robots`
--
ALTER TABLE `sts_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_servicos`
--
ALTER TABLE `sts_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_situacoes`
--
ALTER TABLE `sts_situacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_sobs_emps`
--
ALTER TABLE `sts_sobs_emps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sts_tps_artigos`
--
ALTER TABLE `sts_tps_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sts_videos`
--
ALTER TABLE `sts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
