-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2020 a las 04:17:34
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE `tbl_bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_objeto` int(11) NOT NULL,
  `accion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_bitacora`
--

INSERT INTO `tbl_bitacora` (`id_bitacora`, `fecha`, `id_usuario`, `id_objeto`, `accion`, `descripcion`) VALUES
(1, '2020-12-05 16:06:56', 1, 1, 'consulta', ' Consulto Inicio'),
(2, '2020-12-05 16:06:59', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(3, '2020-12-05 16:07:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(4, '2020-12-05 16:07:10', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(5, '2020-12-05 16:07:13', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(6, '2020-12-05 16:16:51', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(7, '2020-12-05 16:16:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(8, '2020-12-05 16:18:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(9, '2020-12-05 16:18:12', 1, 3, 'Nuevo', 'Nuevo cliente'),
(10, '2020-12-05 16:21:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(11, '2020-12-05 16:21:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(12, '2020-12-05 16:24:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(13, '2020-12-05 16:33:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(14, '2020-12-05 16:33:12', 1, 3, 'Nuevo', 'Nuevo cliente'),
(15, '2020-12-05 16:35:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(16, '2020-12-05 16:36:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(17, '2020-12-05 16:37:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(18, '2020-12-05 16:39:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(19, '2020-12-05 16:40:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(20, '2020-12-05 16:41:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(21, '2020-12-05 16:45:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(22, '2020-12-05 16:46:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(23, '2020-12-05 16:47:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(24, '2020-12-05 16:48:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(25, '2020-12-05 16:49:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(26, '2020-12-05 16:49:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(27, '2020-12-05 16:49:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(28, '2020-12-05 16:50:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(29, '2020-12-05 16:50:43', 1, 3, 'Nuevo', 'Nuevo cliente'),
(30, '2020-12-05 16:51:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(31, '2020-12-05 16:51:38', 1, 3, 'Nuevo', 'Nuevo cliente'),
(32, '2020-12-05 16:52:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(33, '2020-12-05 16:52:18', 1, 3, 'Nuevo', 'Nuevo cliente'),
(34, '2020-12-05 16:53:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(35, '2020-12-05 16:54:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(36, '2020-12-05 16:55:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(37, '2020-12-05 16:55:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(38, '2020-12-05 16:55:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(39, '2020-12-05 18:04:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(40, '2020-12-05 18:05:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(41, '2020-12-05 18:05:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(42, '2020-12-05 18:07:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(43, '2020-12-05 18:46:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(44, '2020-12-05 18:51:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(45, '2020-12-05 18:52:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(46, '2020-12-05 18:54:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(47, '2020-12-05 18:54:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(48, '2020-12-05 18:54:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(49, '2020-12-05 18:55:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(50, '2020-12-05 18:56:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(51, '2020-12-05 18:59:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(52, '2020-12-05 19:11:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(53, '2020-12-05 19:15:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(54, '2020-12-05 19:15:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(55, '2020-12-05 19:15:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(56, '2020-12-05 19:17:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(57, '2020-12-05 19:21:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(58, '2020-12-05 19:21:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(59, '2020-12-05 19:32:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(60, '2020-12-05 19:32:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(61, '2020-12-05 19:33:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(62, '2020-12-05 19:33:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(63, '2020-12-05 19:58:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(64, '2020-12-05 20:14:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(65, '2020-12-05 20:16:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(66, '2020-12-05 20:20:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(67, '2020-12-05 20:22:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(68, '2020-12-05 20:25:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(69, '2020-12-05 20:25:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(70, '2020-12-05 20:26:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(71, '2020-12-05 20:26:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(72, '2020-12-05 20:28:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(73, '2020-12-05 20:28:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(74, '2020-12-05 21:02:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(75, '2020-12-05 21:03:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(76, '2020-12-05 21:15:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(77, '2020-12-05 21:15:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(78, '2020-12-05 21:15:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(79, '2020-12-05 21:16:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(80, '2020-12-05 21:25:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(81, '2020-12-05 21:25:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(82, '2020-12-05 21:26:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(83, '2020-12-05 21:27:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(84, '2020-12-05 21:40:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(85, '2020-12-05 21:40:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(86, '2020-12-05 21:40:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(87, '2020-12-06 07:17:54', 1, 6, 'Ingreso', ' Ingreso a Login'),
(88, '2020-12-06 07:17:56', 1, 1, 'consulta', ' Consulto Inicio'),
(89, '2020-12-06 07:18:09', 1, 1, 'consulta', ' Consulto Inicio'),
(90, '2020-12-06 07:18:12', 1, 1, 'consulta', ' Consulto Inicio'),
(91, '2020-12-06 07:18:41', 1, 1, 'consulta', ' Consulto Inicio'),
(92, '2020-12-06 07:18:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(93, '2020-12-06 07:18:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(94, '2020-12-06 07:30:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(95, '2020-12-06 07:30:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(96, '2020-12-06 07:34:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(97, '2020-12-06 07:35:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(98, '2020-12-06 07:35:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(99, '2020-12-06 07:35:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(100, '2020-12-06 07:36:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(101, '2020-12-06 07:36:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(102, '2020-12-06 07:37:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(103, '2020-12-06 07:38:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(104, '2020-12-06 07:39:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(105, '2020-12-06 07:41:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(106, '2020-12-06 07:41:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(107, '2020-12-06 07:43:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(108, '2020-12-06 07:43:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(109, '2020-12-06 07:55:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(110, '2020-12-06 07:56:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(111, '2020-12-06 08:00:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(112, '2020-12-06 08:09:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(113, '2020-12-06 08:09:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(114, '2020-12-06 08:09:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(115, '2020-12-06 08:11:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(116, '2020-12-06 08:14:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(117, '2020-12-06 08:16:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(118, '2020-12-06 08:19:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(119, '2020-12-06 08:19:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(120, '2020-12-06 08:22:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(121, '2020-12-06 08:22:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(122, '2020-12-06 08:22:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(123, '2020-12-06 08:26:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(124, '2020-12-06 08:28:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(125, '2020-12-06 08:29:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(126, '2020-12-06 08:30:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(127, '2020-12-06 08:32:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(128, '2020-12-06 08:34:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(129, '2020-12-06 08:35:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(130, '2020-12-06 08:38:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(131, '2020-12-06 08:38:15', 1, 3, 'Nuevo', 'Nuevo cliente'),
(132, '2020-12-06 08:39:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(133, '2020-12-06 08:39:59', 1, 3, 'Nuevo', 'Nuevo cliente'),
(134, '2020-12-06 08:40:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(135, '2020-12-06 08:42:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(136, '2020-12-06 08:44:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(137, '2020-12-06 08:44:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(138, '2020-12-06 08:44:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(139, '2020-12-06 08:45:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(140, '2020-12-06 08:45:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(141, '2020-12-06 08:45:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(142, '2020-12-06 08:45:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(143, '2020-12-06 08:51:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(144, '2020-12-06 08:53:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(145, '2020-12-06 08:57:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(146, '2020-12-06 12:44:53', 1, 1, 'consulta', ' Consulto Inicio'),
(147, '2020-12-06 12:45:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(148, '2020-12-06 12:45:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(149, '2020-12-06 12:49:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(150, '2020-12-06 12:50:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(151, '2020-12-06 12:53:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(152, '2020-12-06 12:53:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(153, '2020-12-06 12:54:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(154, '2020-12-06 12:57:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(155, '2020-12-06 12:57:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(156, '2020-12-06 12:57:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(157, '2020-12-06 12:58:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(158, '2020-12-06 12:58:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(159, '2020-12-06 12:58:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(160, '2020-12-06 12:58:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(161, '2020-12-06 13:08:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(162, '2020-12-06 13:09:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(163, '2020-12-06 13:10:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(164, '2020-12-06 13:10:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(165, '2020-12-06 13:20:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(166, '2020-12-06 13:20:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(167, '2020-12-06 13:21:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(168, '2020-12-06 13:23:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(169, '2020-12-06 13:23:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(170, '2020-12-06 13:23:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(171, '2020-12-06 13:24:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(172, '2020-12-06 13:24:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(173, '2020-12-06 13:24:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(174, '2020-12-06 13:24:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(175, '2020-12-06 13:24:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(176, '2020-12-06 13:25:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(177, '2020-12-06 13:25:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(178, '2020-12-06 13:25:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(179, '2020-12-06 13:33:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(180, '2020-12-06 13:35:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(181, '2020-12-06 13:36:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(182, '2020-12-06 13:40:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(183, '2020-12-06 13:40:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(184, '2020-12-06 13:41:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(185, '2020-12-06 13:41:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(186, '2020-12-06 13:42:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(187, '2020-12-06 13:44:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(188, '2020-12-06 13:45:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(189, '2020-12-06 13:45:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(190, '2020-12-06 13:45:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(191, '2020-12-06 13:46:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(192, '2020-12-06 13:46:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(193, '2020-12-06 13:47:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(194, '2020-12-06 13:49:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(195, '2020-12-06 13:49:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(196, '2020-12-06 13:50:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(197, '2020-12-06 13:50:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(198, '2020-12-06 13:50:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(199, '2020-12-06 13:50:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(200, '2020-12-06 13:50:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(201, '2020-12-06 13:51:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(202, '2020-12-06 13:51:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(203, '2020-12-06 14:18:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(204, '2020-12-06 14:18:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(205, '2020-12-06 14:18:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(206, '2020-12-06 14:19:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(207, '2020-12-06 14:22:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(208, '2020-12-06 14:22:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(209, '2020-12-06 14:23:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(210, '2020-12-06 14:24:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(211, '2020-12-06 14:24:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(212, '2020-12-06 14:24:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(213, '2020-12-06 14:27:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(214, '2020-12-06 14:44:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(215, '2020-12-06 14:50:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(216, '2020-12-06 14:55:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(217, '2020-12-06 14:55:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(218, '2020-12-06 14:57:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(219, '2020-12-06 14:57:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(220, '2020-12-06 15:01:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(221, '2020-12-06 15:01:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(222, '2020-12-06 15:02:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(223, '2020-12-06 15:02:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(224, '2020-12-06 15:17:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(225, '2020-12-06 15:17:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(226, '2020-12-06 15:17:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(227, '2020-12-06 15:17:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(228, '2020-12-06 15:18:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(229, '2020-12-06 15:18:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(230, '2020-12-06 15:19:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(231, '2020-12-06 15:20:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(232, '2020-12-06 15:21:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(233, '2020-12-06 15:24:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(234, '2020-12-06 15:25:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(235, '2020-12-06 15:26:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(236, '2020-12-06 15:27:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(237, '2020-12-06 15:28:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(238, '2020-12-06 15:28:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(239, '2020-12-06 15:29:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(240, '2020-12-06 15:30:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(241, '2020-12-06 15:30:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(242, '2020-12-06 15:30:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(243, '2020-12-06 15:32:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(244, '2020-12-06 15:33:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(245, '2020-12-06 15:33:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(246, '2020-12-06 15:34:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(247, '2020-12-06 15:37:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(248, '2020-12-06 15:37:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(249, '2020-12-06 15:38:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(250, '2020-12-06 15:43:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(251, '2020-12-06 15:43:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(252, '2020-12-06 15:43:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(253, '2020-12-06 15:45:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(254, '2020-12-06 15:45:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(255, '2020-12-06 15:46:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(256, '2020-12-06 15:46:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(257, '2020-12-06 15:47:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(258, '2020-12-06 15:48:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(259, '2020-12-06 15:50:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(260, '2020-12-06 15:53:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(261, '2020-12-06 15:53:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(262, '2020-12-06 15:54:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(263, '2020-12-06 15:54:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(264, '2020-12-06 15:55:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(265, '2020-12-06 16:00:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(266, '2020-12-06 16:06:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(267, '2020-12-06 16:08:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(268, '2020-12-06 16:09:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(269, '2020-12-06 16:16:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(270, '2020-12-06 16:17:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(271, '2020-12-06 16:18:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(272, '2020-12-06 16:18:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(273, '2020-12-06 16:18:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(274, '2020-12-06 16:19:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(275, '2020-12-06 16:19:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(276, '2020-12-06 16:19:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(277, '2020-12-06 16:19:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(278, '2020-12-06 16:20:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(279, '2020-12-06 16:21:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(280, '2020-12-06 16:21:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(281, '2020-12-06 16:21:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(282, '2020-12-06 16:21:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(283, '2020-12-06 16:22:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(284, '2020-12-06 16:23:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(285, '2020-12-06 16:23:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(286, '2020-12-06 16:23:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(287, '2020-12-06 16:28:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(288, '2020-12-06 16:29:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(289, '2020-12-06 16:31:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(290, '2020-12-06 16:36:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(291, '2020-12-06 16:39:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(292, '2020-12-06 16:40:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(293, '2020-12-06 16:41:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(294, '2020-12-06 16:44:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(295, '2020-12-06 16:44:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(296, '2020-12-06 16:44:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(297, '2020-12-06 16:49:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(298, '2020-12-06 16:49:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(299, '2020-12-06 16:50:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(300, '2020-12-06 16:51:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(301, '2020-12-06 16:51:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(302, '2020-12-06 16:53:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(303, '2020-12-06 16:54:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(304, '2020-12-06 16:54:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(305, '2020-12-06 16:55:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(306, '2020-12-06 17:01:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(307, '2020-12-06 17:01:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(308, '2020-12-06 17:02:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(309, '2020-12-06 17:02:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(310, '2020-12-06 17:06:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(311, '2020-12-06 17:07:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(312, '2020-12-06 17:07:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(313, '2020-12-06 17:07:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(314, '2020-12-06 17:08:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(315, '2020-12-06 17:08:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(316, '2020-12-06 18:11:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(317, '2020-12-06 18:13:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(318, '2020-12-06 18:13:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(319, '2020-12-06 18:13:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(320, '2020-12-06 18:15:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(321, '2020-12-06 18:15:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(322, '2020-12-06 18:16:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(323, '2020-12-06 18:21:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(324, '2020-12-06 18:21:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(325, '2020-12-06 18:21:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(326, '2020-12-06 18:21:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(327, '2020-12-06 18:29:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(328, '2020-12-06 18:30:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(329, '2020-12-06 18:30:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(330, '2020-12-06 18:32:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(331, '2020-12-06 18:34:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(332, '2020-12-06 18:35:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(333, '2020-12-06 18:35:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(334, '2020-12-06 18:37:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(335, '2020-12-06 18:39:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(336, '2020-12-06 18:40:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(337, '2020-12-06 18:40:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(338, '2020-12-06 18:41:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(339, '2020-12-06 18:41:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(340, '2020-12-06 18:41:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(341, '2020-12-06 18:41:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(342, '2020-12-06 18:41:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(343, '2020-12-06 18:43:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(344, '2020-12-06 18:44:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(345, '2020-12-06 18:44:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(346, '2020-12-06 18:45:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(347, '2020-12-06 18:46:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(348, '2020-12-06 18:46:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(349, '2020-12-06 18:46:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(350, '2020-12-06 18:49:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(351, '2020-12-06 18:50:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(352, '2020-12-06 18:50:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(353, '2020-12-06 18:50:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(354, '2020-12-06 18:51:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(355, '2020-12-06 18:51:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(356, '2020-12-06 18:54:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(357, '2020-12-06 18:54:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(358, '2020-12-06 18:54:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(359, '2020-12-06 18:56:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(360, '2020-12-06 18:58:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(361, '2020-12-06 18:58:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(362, '2020-12-06 18:59:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(363, '2020-12-06 18:59:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(364, '2020-12-06 18:59:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(365, '2020-12-06 18:59:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(366, '2020-12-06 19:00:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(367, '2020-12-06 19:00:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(368, '2020-12-06 19:02:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(369, '2020-12-06 19:02:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(370, '2020-12-06 19:05:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(371, '2020-12-06 19:05:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(372, '2020-12-06 19:05:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(373, '2020-12-06 19:14:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(374, '2020-12-06 19:15:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(375, '2020-12-06 19:16:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(376, '2020-12-06 19:16:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(377, '2020-12-06 19:16:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(378, '2020-12-06 19:17:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(379, '2020-12-06 19:17:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(380, '2020-12-06 19:17:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(381, '2020-12-06 19:17:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(382, '2020-12-06 19:17:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(383, '2020-12-06 19:25:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(384, '2020-12-06 19:25:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(385, '2020-12-06 19:28:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(386, '2020-12-06 19:28:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(387, '2020-12-06 19:29:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(388, '2020-12-06 19:30:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(389, '2020-12-06 19:30:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(390, '2020-12-06 19:40:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(391, '2020-12-06 19:46:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(392, '2020-12-06 19:53:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(393, '2020-12-06 19:56:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(394, '2020-12-06 19:56:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(395, '2020-12-06 19:56:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(396, '2020-12-06 19:56:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(397, '2020-12-06 19:56:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(398, '2020-12-06 19:57:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(399, '2020-12-06 19:57:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(400, '2020-12-06 19:58:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(401, '2020-12-06 20:08:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(402, '2020-12-06 20:08:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(403, '2020-12-06 20:08:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(404, '2020-12-06 20:08:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(405, '2020-12-06 20:08:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(406, '2020-12-06 20:10:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(407, '2020-12-06 20:11:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(408, '2020-12-06 20:11:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(409, '2020-12-06 20:11:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(410, '2020-12-06 21:00:10', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(411, '2020-12-06 21:00:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(412, '2020-12-06 21:09:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(413, '2020-12-06 21:13:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(414, '2020-12-06 21:16:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(415, '2020-12-06 21:16:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(416, '2020-12-06 21:16:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(417, '2020-12-06 21:17:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(418, '2020-12-06 21:18:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(419, '2020-12-06 21:19:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(420, '2020-12-06 21:20:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(421, '2020-12-06 21:20:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(422, '2020-12-06 21:20:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(423, '2020-12-06 21:23:53', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(424, '2020-12-06 21:23:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(425, '2020-12-06 21:26:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(426, '2020-12-06 21:26:05', 1, 3, 'Nuevo', 'Nuevo cliente'),
(427, '2020-12-06 21:26:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(428, '2020-12-06 21:26:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(429, '2020-12-06 21:26:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(430, '2020-12-06 21:27:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(431, '2020-12-06 21:28:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(432, '2020-12-06 21:29:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(433, '2020-12-06 21:30:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(434, '2020-12-06 21:31:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(435, '2020-12-06 21:31:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(436, '2020-12-06 21:31:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(437, '2020-12-06 21:32:53', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(438, '2020-12-06 21:34:08', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(439, '2020-12-06 21:34:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(440, '2020-12-06 21:34:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(441, '2020-12-06 21:35:04', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(442, '2020-12-06 21:35:09', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(443, '2020-12-06 21:36:24', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(444, '2020-12-06 21:36:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(445, '2020-12-06 21:39:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(446, '2020-12-06 21:56:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(447, '2020-12-06 22:12:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(448, '2020-12-06 22:12:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(449, '2020-12-06 22:14:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(450, '2020-12-07 07:49:33', 1, 6, 'Ingreso', ' Ingreso a Login'),
(451, '2020-12-07 07:52:14', 1, 1, 'consulta', ' Consulto Inicio'),
(452, '2020-12-07 07:53:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(453, '2020-12-07 07:53:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(454, '2020-12-07 08:00:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(455, '2020-12-07 08:01:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(456, '2020-12-07 08:01:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(457, '2020-12-07 08:02:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(458, '2020-12-07 08:09:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(459, '2020-12-07 08:10:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(460, '2020-12-07 08:10:48', 1, 3, 'Nuevo', 'Nuevo cliente'),
(461, '2020-12-07 08:11:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(462, '2020-12-07 08:11:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(463, '2020-12-07 08:12:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(464, '2020-12-07 08:18:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(465, '2020-12-07 08:18:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(466, '2020-12-07 08:18:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(467, '2020-12-07 08:18:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(468, '2020-12-07 08:19:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(469, '2020-12-07 09:05:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(470, '2020-12-07 09:07:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(471, '2020-12-07 09:08:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(472, '2020-12-07 09:10:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(473, '2020-12-07 09:14:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(474, '2020-12-07 09:24:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(475, '2020-12-07 09:24:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(476, '2020-12-07 09:25:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(477, '2020-12-07 09:26:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(478, '2020-12-07 09:26:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(479, '2020-12-07 09:32:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(480, '2020-12-07 09:37:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(481, '2020-12-07 09:37:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(482, '2020-12-07 09:52:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(483, '2020-12-07 09:54:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(484, '2020-12-07 09:54:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(485, '2020-12-07 09:54:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(486, '2020-12-07 09:55:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(487, '2020-12-07 09:55:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(488, '2020-12-07 09:56:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(489, '2020-12-07 09:57:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(490, '2020-12-07 09:58:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(491, '2020-12-07 10:01:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(492, '2020-12-07 10:04:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(493, '2020-12-07 10:05:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(494, '2020-12-07 10:05:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(495, '2020-12-07 10:05:56', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(496, '2020-12-07 10:05:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(497, '2020-12-07 10:10:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(498, '2020-12-07 10:10:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(499, '2020-12-07 10:36:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(500, '2020-12-07 10:37:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(501, '2020-12-07 10:37:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(502, '2020-12-07 10:38:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(503, '2020-12-07 10:39:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(504, '2020-12-07 10:39:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(505, '2020-12-07 10:41:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(506, '2020-12-07 10:45:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(507, '2020-12-07 10:45:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(508, '2020-12-07 10:48:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(509, '2020-12-07 11:03:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(510, '2020-12-07 11:03:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(511, '2020-12-07 11:15:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(512, '2020-12-07 11:15:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(513, '2020-12-07 11:15:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(514, '2020-12-07 11:15:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(515, '2020-12-07 11:15:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(516, '2020-12-07 11:17:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(517, '2020-12-07 11:17:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(518, '2020-12-07 11:24:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(519, '2020-12-07 11:24:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(520, '2020-12-07 11:26:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(521, '2020-12-07 11:26:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(522, '2020-12-07 11:29:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(523, '2020-12-07 11:29:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(524, '2020-12-07 11:30:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(525, '2020-12-07 11:30:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(526, '2020-12-07 11:40:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(527, '2020-12-07 11:44:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(528, '2020-12-07 11:44:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(529, '2020-12-07 11:45:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(530, '2020-12-07 11:45:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(531, '2020-12-07 11:46:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(532, '2020-12-07 11:46:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(533, '2020-12-07 11:46:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(534, '2020-12-07 11:48:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(535, '2020-12-07 11:55:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(536, '2020-12-07 12:11:04', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(537, '2020-12-07 12:11:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(538, '2020-12-07 12:11:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(539, '2020-12-07 12:11:21', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(540, '2020-12-07 12:11:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(541, '2020-12-07 12:11:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(542, '2020-12-07 12:12:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(543, '2020-12-07 12:14:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(544, '2020-12-07 12:15:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(545, '2020-12-07 12:17:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(546, '2020-12-07 12:17:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(547, '2020-12-07 12:18:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(548, '2020-12-07 12:19:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(549, '2020-12-07 12:20:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(550, '2020-12-07 12:21:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(551, '2020-12-07 12:21:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(552, '2020-12-07 14:16:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(553, '2020-12-07 14:18:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(554, '2020-12-07 14:18:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(555, '2020-12-07 14:18:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(556, '2020-12-07 15:04:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(557, '2020-12-07 15:08:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(558, '2020-12-07 15:14:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(559, '2020-12-07 15:16:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(560, '2020-12-07 15:20:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(561, '2020-12-07 15:22:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(562, '2020-12-07 15:23:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(563, '2020-12-07 15:23:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(564, '2020-12-07 15:23:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(565, '2020-12-07 15:23:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(566, '2020-12-07 15:23:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(567, '2020-12-07 15:25:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(568, '2020-12-07 15:26:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(569, '2020-12-07 15:27:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(570, '2020-12-07 15:29:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(571, '2020-12-07 15:30:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(572, '2020-12-07 15:30:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(573, '2020-12-07 15:31:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(574, '2020-12-07 15:32:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(575, '2020-12-07 15:33:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(576, '2020-12-07 15:34:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(577, '2020-12-07 15:34:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(578, '2020-12-07 15:35:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(579, '2020-12-07 15:35:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(580, '2020-12-07 15:36:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(581, '2020-12-07 15:40:44', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(582, '2020-12-07 15:41:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(583, '2020-12-07 15:46:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(584, '2020-12-07 15:59:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(585, '2020-12-07 16:02:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(586, '2020-12-07 16:02:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(587, '2020-12-07 16:03:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(588, '2020-12-07 16:04:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(589, '2020-12-07 16:04:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(590, '2020-12-07 16:05:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(591, '2020-12-07 16:05:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(592, '2020-12-07 16:07:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(593, '2020-12-07 16:07:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(594, '2020-12-07 16:11:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(595, '2020-12-07 16:14:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(596, '2020-12-07 16:18:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(597, '2020-12-07 16:30:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(598, '2020-12-07 16:37:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(599, '2020-12-07 16:38:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(600, '2020-12-07 16:41:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(601, '2020-12-07 16:41:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(602, '2020-12-07 17:05:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(603, '2020-12-07 17:07:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(604, '2020-12-07 17:07:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(605, '2020-12-07 17:08:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(606, '2020-12-07 17:08:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(607, '2020-12-07 17:09:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(608, '2020-12-07 17:09:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(609, '2020-12-07 17:10:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(610, '2020-12-07 17:56:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(611, '2020-12-07 17:59:22', 1, 7, 'Consulta', 'Consulta a Perfil'),
(612, '2020-12-07 17:59:25', 1, 1, 'salir', ' Salio del sistema'),
(613, '2020-12-07 17:59:40', 1, 6, 'Ingreso', ' Ingreso a Login'),
(614, '2020-12-07 17:59:48', 1, 1, 'consulta', ' Consulto Inicio');
INSERT INTO `tbl_bitacora` (`id_bitacora`, `fecha`, `id_usuario`, `id_objeto`, `accion`, `descripcion`) VALUES
(615, '2020-12-07 18:00:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(616, '2020-12-07 18:04:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(617, '2020-12-07 18:12:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(618, '2020-12-07 18:16:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(619, '2020-12-07 18:18:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(620, '2020-12-07 18:36:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(621, '2020-12-07 18:40:27', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(622, '2020-12-07 20:09:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(623, '2020-12-07 21:24:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(624, '2020-12-07 21:32:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(625, '2020-12-08 07:39:58', 1, 6, 'Ingreso', ' Ingreso a Login'),
(626, '2020-12-08 07:39:59', 1, 1, 'consulta', ' Consulto Inicio'),
(627, '2020-12-08 07:40:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(628, '2020-12-08 07:41:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(629, '2020-12-08 07:43:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(630, '2020-12-08 07:44:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(631, '2020-12-08 07:44:13', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(632, '2020-12-08 07:44:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(633, '2020-12-08 07:46:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(634, '2020-12-08 07:46:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(635, '2020-12-08 07:48:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(636, '2020-12-08 07:49:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(637, '2020-12-08 07:49:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(638, '2020-12-08 07:49:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(639, '2020-12-08 07:51:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(640, '2020-12-08 07:51:14', 1, 3, 'Nuevo', 'Nuevo cliente'),
(641, '2020-12-08 07:51:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(642, '2020-12-08 07:51:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(643, '2020-12-08 07:56:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(644, '2020-12-08 07:56:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(645, '2020-12-08 07:57:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(646, '2020-12-08 07:57:21', 1, 3, 'Nuevo', 'Nuevo cliente'),
(647, '2020-12-08 07:59:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(648, '2020-12-08 07:59:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(649, '2020-12-08 08:01:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(650, '2020-12-08 08:01:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(651, '2020-12-08 08:01:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(652, '2020-12-08 08:15:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(653, '2020-12-08 08:17:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(654, '2020-12-08 08:18:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(655, '2020-12-08 08:33:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(656, '2020-12-08 08:35:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(657, '2020-12-08 08:38:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(658, '2020-12-08 08:39:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(659, '2020-12-08 08:39:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(660, '2020-12-08 08:40:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(661, '2020-12-08 08:42:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(662, '2020-12-08 08:43:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(663, '2020-12-08 08:44:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(664, '2020-12-08 08:45:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(665, '2020-12-08 08:45:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(666, '2020-12-08 08:46:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(667, '2020-12-08 08:48:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(668, '2020-12-08 08:48:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(669, '2020-12-08 08:48:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(670, '2020-12-08 08:48:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(671, '2020-12-08 08:51:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(672, '2020-12-08 08:52:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(673, '2020-12-08 08:53:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(674, '2020-12-08 08:53:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(675, '2020-12-08 12:32:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(676, '2020-12-08 12:32:31', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(677, '2020-12-08 12:32:36', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(678, '2020-12-08 12:32:55', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(679, '2020-12-08 12:33:02', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(680, '2020-12-08 12:35:09', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(681, '2020-12-08 12:42:31', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(682, '2020-12-08 12:42:33', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(683, '2020-12-08 12:43:11', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(684, '2020-12-08 12:43:11', 1, 5, 'Nueva', 'Nueva venta '),
(685, '2020-12-08 12:43:13', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(686, '2020-12-08 12:49:06', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(687, '2020-12-08 12:49:42', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(688, '2020-12-08 12:51:05', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(689, '2020-12-08 13:05:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(690, '2020-12-08 13:10:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(691, '2020-12-08 13:10:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(692, '2020-12-08 13:11:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(693, '2020-12-08 13:11:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(694, '2020-12-08 13:11:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(695, '2020-12-08 13:12:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(696, '2020-12-08 13:13:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(697, '2020-12-08 13:15:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(698, '2020-12-08 13:15:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(699, '2020-12-08 14:00:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(700, '2020-12-08 14:00:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(701, '2020-12-08 14:00:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(702, '2020-12-08 14:01:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(703, '2020-12-08 14:01:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(704, '2020-12-08 14:01:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(705, '2020-12-08 15:01:34', 1, 4, 'Actualizo', 'Actualizo un producto del stock'),
(706, '2020-12-08 15:08:32', 1, 2, 'Actualizo', 'Actualizo un equipo del stock'),
(707, '2020-12-08 15:42:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(708, '2020-12-08 15:43:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(709, '2020-12-08 15:44:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(710, '2020-12-08 15:45:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(711, '2020-12-08 15:46:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(712, '2020-12-08 15:49:22', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(713, '2020-12-08 15:50:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(714, '2020-12-08 15:50:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(715, '2020-12-08 15:50:23', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(716, '2020-12-08 15:50:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(717, '2020-12-08 15:50:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(718, '2020-12-08 15:50:55', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(719, '2020-12-08 15:51:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(720, '2020-12-08 15:52:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(721, '2020-12-08 15:53:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(722, '2020-12-08 15:53:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(723, '2020-12-08 15:53:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(724, '2020-12-08 15:54:59', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(725, '2020-12-08 16:04:53', 1, 1, 'consulta', ' Consulto Inicio'),
(726, '2020-12-08 16:05:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(727, '2020-12-08 16:10:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(728, '2020-12-08 16:13:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(729, '2020-12-08 16:14:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(730, '2020-12-08 16:15:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(731, '2020-12-08 16:15:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(732, '2020-12-08 16:15:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(733, '2020-12-08 16:15:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(734, '2020-12-08 16:16:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(735, '2020-12-08 16:23:22', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(736, '2020-12-08 16:32:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(737, '2020-12-08 16:34:37', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(738, '2020-12-08 16:41:43', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(739, '2020-12-08 16:51:25', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(740, '2020-12-08 16:51:37', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(741, '2020-12-08 16:51:50', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(742, '2020-12-08 16:52:00', 1, 7, 'consulta', ' Consulto la pantalla de Respaldo y Restauracion'),
(743, '2020-12-08 16:52:00', 1, 7, 'consulta', ' Consulto la pantalla de Respaldo'),
(744, '2020-12-08 16:52:00', 1, 7, 'consulta', ' Consulto la pantalla de Restauracion'),
(745, '2020-12-08 16:52:26', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(746, '2020-12-08 16:52:47', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(747, '2020-12-08 16:54:06', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(748, '2020-12-08 16:54:08', 1, 1, 'consulta', ' Consulto Inicio'),
(749, '2020-12-08 16:54:58', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(750, '2020-12-08 16:55:00', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(751, '2020-12-08 16:55:14', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(752, '2020-12-08 16:55:21', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(753, '2020-12-08 16:55:24', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(754, '2020-12-08 16:55:27', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(755, '2020-12-08 16:55:31', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(756, '2020-12-08 16:55:38', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(757, '2020-12-08 16:55:39', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(758, '2020-12-08 16:55:43', 1, 1, 'salir', ' Salio del sistema'),
(759, '2020-12-08 16:55:52', 1, 1, 'Ingreso', ' Ingreso a Login'),
(760, '2020-12-08 16:55:54', 1, 1, 'consulta', ' Consulto Inicio'),
(761, '2020-12-08 16:55:59', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(762, '2020-12-08 16:56:54', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(763, '2020-12-08 16:57:04', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(764, '2020-12-08 16:57:55', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(765, '2020-12-08 16:58:06', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(766, '2020-12-08 16:59:12', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(767, '2020-12-08 16:59:17', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(768, '2020-12-08 16:59:19', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(769, '2020-12-08 16:59:26', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(770, '2020-12-08 16:59:30', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(771, '2020-12-08 16:59:32', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(772, '2020-12-08 16:59:36', 1, 5, 'consulta', ' Consulto la pantalla de Editar Venta'),
(773, '2020-12-08 16:59:38', 1, 1, 'consulta', ' Consulto Inicio'),
(774, '2020-12-08 17:04:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(775, '2020-12-08 17:04:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(776, '2020-12-08 17:05:01', 1, 1, 'consulta', ' Consulto Inicio'),
(777, '2020-12-08 17:11:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(778, '2020-12-08 17:13:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(779, '2020-12-08 17:13:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(780, '2020-12-08 17:14:02', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(781, '2020-12-08 17:14:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(782, '2020-12-08 17:14:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(783, '2020-12-08 17:14:13', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(784, '2020-12-08 17:14:41', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(785, '2020-12-08 17:15:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(786, '2020-12-08 17:15:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(787, '2020-12-08 17:15:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(788, '2020-12-08 17:22:51', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(789, '2020-12-08 17:23:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(790, '2020-12-08 17:25:55', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(791, '2020-12-08 17:26:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(792, '2020-12-08 17:31:50', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(793, '2020-12-08 17:32:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(794, '2020-12-08 17:33:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(795, '2020-12-08 17:34:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(796, '2020-12-08 17:34:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(797, '2020-12-08 17:35:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(798, '2020-12-08 17:35:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(799, '2020-12-08 17:36:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(800, '2020-12-08 17:36:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(801, '2020-12-08 17:36:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(802, '2020-12-08 17:36:56', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(803, '2020-12-08 17:37:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(804, '2020-12-08 17:38:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(805, '2020-12-08 17:38:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(806, '2020-12-08 17:39:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(807, '2020-12-08 17:40:38', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(808, '2020-12-08 17:42:38', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(809, '2020-12-08 17:45:03', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(810, '2020-12-08 18:04:59', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(811, '2020-12-10 13:13:34', 1, 1, 'Ingreso', ' Ingreso a Login'),
(812, '2020-12-10 13:13:35', 1, 1, 'consulta', ' Consulto Inicio'),
(813, '2020-12-10 13:13:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(814, '2020-12-10 13:14:52', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(815, '2020-12-10 13:15:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(816, '2020-12-10 13:21:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(817, '2020-12-10 13:30:29', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(818, '2020-12-10 13:36:13', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(819, '2020-12-10 13:53:57', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(820, '2020-12-10 13:55:28', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(821, '2020-12-10 13:56:44', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(822, '2020-12-10 14:01:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(823, '2020-12-10 14:07:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(824, '2020-12-10 14:07:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(825, '2020-12-10 14:07:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(826, '2020-12-10 14:08:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(827, '2020-12-10 14:08:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(828, '2020-12-10 14:08:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(829, '2020-12-10 14:08:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(830, '2020-12-10 14:09:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(831, '2020-12-10 14:33:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(832, '2020-12-10 14:44:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(833, '2020-12-10 14:44:25', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(834, '2020-12-10 14:44:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(835, '2020-12-10 14:47:05', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(836, '2020-12-10 14:47:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(837, '2020-12-10 14:47:53', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(838, '2020-12-10 14:51:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(839, '2020-12-10 14:51:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(840, '2020-12-10 14:54:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(841, '2020-12-10 14:55:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(842, '2020-12-10 14:55:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(843, '2020-12-10 14:57:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(844, '2020-12-10 14:59:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(845, '2020-12-10 14:59:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(846, '2020-12-10 15:00:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(847, '2020-12-10 15:00:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(848, '2020-12-10 15:00:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(849, '2020-12-10 15:01:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(850, '2020-12-10 15:03:31', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(851, '2020-12-10 15:08:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(852, '2020-12-10 15:19:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(853, '2020-12-10 15:19:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(854, '2020-12-10 15:19:58', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(855, '2020-12-10 15:20:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(856, '2020-12-10 15:20:24', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(857, '2020-12-10 15:20:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(858, '2020-12-10 15:20:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(859, '2020-12-10 15:22:37', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(860, '2020-12-10 15:23:04', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(861, '2020-12-10 15:27:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(862, '2020-12-10 15:28:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(863, '2020-12-10 15:32:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(864, '2020-12-10 15:34:30', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(865, '2020-12-10 15:38:27', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(866, '2020-12-10 15:40:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(867, '2020-12-10 15:43:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(868, '2020-12-10 15:44:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(869, '2020-12-10 15:45:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(870, '2020-12-10 15:46:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(871, '2020-12-10 15:48:57', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(872, '2020-12-10 15:58:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(873, '2020-12-10 16:03:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(874, '2020-12-10 16:05:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(875, '2020-12-10 16:06:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(876, '2020-12-10 16:07:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(877, '2020-12-10 16:07:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(878, '2020-12-10 16:09:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(879, '2020-12-10 16:11:00', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(880, '2020-12-10 16:11:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(881, '2020-12-10 16:12:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(882, '2020-12-10 16:12:33', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(883, '2020-12-10 16:13:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(884, '2020-12-10 16:21:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(885, '2020-12-10 16:23:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(886, '2020-12-10 16:26:16', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(887, '2020-12-10 16:26:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(888, '2020-12-10 16:27:03', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(889, '2020-12-10 16:28:10', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(890, '2020-12-10 16:28:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(891, '2020-12-10 16:35:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(892, '2020-12-10 16:35:38', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(893, '2020-12-10 16:35:42', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(894, '2020-12-10 16:37:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(895, '2020-12-10 16:38:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(896, '2020-12-10 16:38:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(897, '2020-12-10 16:40:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(898, '2020-12-10 16:44:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(899, '2020-12-10 16:49:56', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(900, '2020-12-10 16:50:08', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(901, '2020-12-10 16:51:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(902, '2020-12-10 16:51:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(903, '2020-12-10 16:51:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(904, '2020-12-10 16:51:35', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(905, '2020-12-10 16:51:36', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(906, '2020-12-10 16:58:32', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(907, '2020-12-10 17:02:24', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(908, '2020-12-10 17:05:07', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(909, '2020-12-10 20:49:40', 1, 1, 'consulta', ' Consulto Inicio'),
(910, '2020-12-10 20:49:48', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(911, '2020-12-10 20:50:28', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(912, '2020-12-10 20:53:08', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(913, '2020-12-10 20:53:47', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(914, '2020-12-10 20:54:14', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(915, '2020-12-10 20:57:58', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(916, '2020-12-10 20:58:04', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(917, '2020-12-10 21:04:24', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(918, '2020-12-10 21:05:07', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(919, '2020-12-10 21:20:12', 1, 5, 'consulta', ' Consulto la pantalla de crear ventas'),
(920, '2020-12-10 21:20:15', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(921, '2020-12-11 17:36:59', 1, 1, 'Ingreso', ' Ingreso a Login'),
(922, '2020-12-11 17:37:00', 1, 1, 'consulta', ' Consulto Inicio'),
(923, '2020-12-11 17:37:28', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(924, '2020-12-11 20:53:37', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(925, '2020-12-11 21:12:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(926, '2020-12-11 21:12:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(927, '2020-12-11 21:12:52', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(928, '2020-12-11 21:13:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(929, '2020-12-11 21:13:49', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(930, '2020-12-11 22:35:39', 1, 1, 'consulta', ' Consulto Inicio'),
(931, '2020-12-11 22:35:43', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(932, '2020-12-11 22:36:12', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(933, '2020-12-11 22:57:17', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(934, '2020-12-11 22:57:20', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(935, '2020-12-14 22:16:43', 1, 1, 'Ingreso', ' Ingreso a Login'),
(936, '2020-12-14 22:16:44', 1, 1, 'consulta', ' Consulto Inicio'),
(937, '2020-12-14 22:16:49', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(938, '2020-12-14 22:26:54', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(939, '2020-12-14 22:29:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(940, '2020-12-14 22:30:18', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(941, '2020-12-14 22:30:25', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(942, '2020-12-14 22:30:29', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(943, '2020-12-14 22:30:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(944, '2020-12-14 22:30:51', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(945, '2020-12-14 22:30:54', 1, 3, 'consulta', ' Consulto la pantalla de Hsitorial de Pagos '),
(946, '2020-12-14 22:35:44', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(947, '2020-12-14 22:35:52', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(948, '2020-12-14 22:36:27', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(949, '2020-12-14 22:36:27', 1, 4, 'Nuevo', ' Nuevo Producto'),
(950, '2020-12-14 22:36:29', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(951, '2020-12-14 22:36:32', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(952, '2020-12-14 22:39:12', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(953, '2020-12-14 22:39:39', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(954, '2020-12-14 22:40:10', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(955, '2020-12-14 22:42:47', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(956, '2020-12-14 22:42:48', 1, 4, 'Nuevo', ' Nuevo Producto'),
(957, '2020-12-14 22:43:18', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(958, '2020-12-14 22:43:51', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(959, '2020-12-14 22:43:56', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(960, '2020-12-14 22:44:21', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(961, '2020-12-14 22:44:35', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(962, '2020-12-14 22:44:55', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(963, '2020-12-14 22:45:50', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(964, '2020-12-14 22:46:12', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(965, '2020-12-14 22:46:12', 1, 4, 'Nuevo', ' Nuevo Producto'),
(966, '2020-12-14 22:46:14', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(967, '2020-12-14 22:46:47', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(968, '2020-12-14 22:47:11', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(969, '2020-12-14 22:51:30', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(970, '2020-12-14 22:52:12', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(971, '2020-12-14 22:52:55', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(972, '2020-12-14 22:54:34', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(973, '2020-12-14 22:56:28', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(974, '2020-12-14 22:56:49', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(975, '2020-12-14 22:56:49', 1, 4, 'Nuevo', ' Nuevo Producto'),
(976, '2020-12-14 22:56:51', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(977, '2020-12-14 22:56:55', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(978, '2020-12-14 22:57:17', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(979, '2020-12-14 22:58:27', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(980, '2020-12-14 22:59:37', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(981, '2020-12-14 22:59:56', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(982, '2020-12-14 23:02:20', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(983, '2020-12-14 23:03:06', 1, 4, 'consulta', ' Consulto la pantalla de Productos'),
(984, '2020-12-14 23:03:26', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(985, '2020-12-14 23:03:29', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(986, '2020-12-14 23:07:56', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(987, '2020-12-14 23:08:09', 1, 1, 'salir', ' Salio del sistema'),
(988, '2020-12-14 23:12:59', 1, 1, 'Ingreso', ' Ingreso a Login'),
(989, '2020-12-14 23:13:00', 1, 1, 'consulta', ' Consulto Inicio'),
(990, '2020-12-14 23:13:03', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(991, '2020-12-14 23:13:12', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(992, '2020-12-14 23:13:12', 1, 2, 'Actualizo', ' Actualizo registro en la pantalla de usuario'),
(993, '2020-12-14 23:13:13', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(994, '2020-12-14 23:13:17', 1, 1, 'salir', ' Salio del sistema'),
(995, '2020-12-14 23:13:24', 2, 1, 'Ingreso', ' Ingreso a Login'),
(996, '2020-12-14 23:13:25', 2, 6, 'Ingreso', ' Primer Ingreso'),
(997, '2020-12-14 23:14:18', 2, 6, 'Ingreso', ' Primer Ingreso'),
(998, '2020-12-14 23:14:18', 2, 1, 'salir', ' Salio del sistema'),
(999, '2020-12-14 23:14:52', 2, 1, 'Ingreso', ' Ingreso a Login'),
(1000, '2020-12-14 23:14:53', 2, 1, 'consulta', ' Consulto Inicio'),
(1001, '2020-12-14 23:14:58', 2, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1002, '2020-12-14 23:15:06', 2, 7, 'Consulta', 'Consulta a Perfil'),
(1003, '2020-12-14 23:16:05', 2, 7, 'Consulta', 'Consulta a Perfil'),
(1004, '2020-12-14 23:26:06', 2, 1, 'salir', ' Salio del sistema'),
(1005, '2020-12-15 00:39:58', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1006, '2020-12-15 00:40:00', 1, 1, 'consulta', ' Consulto Inicio'),
(1007, '2020-12-15 00:40:06', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1008, '2020-12-15 00:41:09', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1009, '2020-12-22 19:37:09', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1010, '2020-12-22 19:37:11', 1, 1, 'consulta', ' Consulto Inicio'),
(1011, '2020-12-22 19:58:16', 1, 1, 'consulta', ' Consulto Inicio'),
(1012, '2020-12-22 19:59:31', 1, 1, 'consulta', ' Consulto Inicio'),
(1013, '2020-12-22 20:00:01', 1, 1, 'consulta', ' Consulto Inicio'),
(1014, '2020-12-22 20:00:19', 1, 1, 'consulta', ' Consulto Inicio'),
(1015, '2020-12-22 20:00:28', 1, 1, 'consulta', ' Consulto Inicio'),
(1016, '2020-12-22 20:01:01', 1, 1, 'consulta', ' Consulto Inicio'),
(1017, '2020-12-22 20:01:11', 1, 1, 'consulta', ' Consulto Inicio'),
(1018, '2020-12-22 20:01:22', 1, 1, 'consulta', ' Consulto Inicio'),
(1019, '2020-12-22 20:01:37', 1, 1, 'consulta', ' Consulto Inicio'),
(1020, '2020-12-22 20:01:40', 1, 1, 'consulta', ' Consulto Inicio'),
(1021, '2020-12-22 20:02:46', 1, 1, 'consulta', ' Consulto Inicio'),
(1022, '2020-12-22 20:03:13', 1, 1, 'consulta', ' Consulto Inicio'),
(1023, '2020-12-22 20:04:18', 1, 1, 'consulta', ' Consulto Inicio'),
(1024, '2020-12-22 20:05:34', 1, 1, 'consulta', ' Consulto Inicio'),
(1025, '2020-12-22 20:06:10', 1, 1, 'consulta', ' Consulto Inicio'),
(1026, '2020-12-22 20:07:38', 1, 1, 'consulta', ' Consulto Inicio'),
(1027, '2020-12-22 20:07:40', 1, 1, 'consulta', ' Consulto Inicio'),
(1028, '2020-12-22 20:07:52', 1, 1, 'consulta', ' Consulto Inicio'),
(1029, '2020-12-22 20:08:30', 1, 1, 'consulta', ' Consulto Inicio'),
(1030, '2020-12-22 20:08:37', 1, 1, 'consulta', ' Consulto Inicio'),
(1031, '2020-12-22 20:08:46', 1, 1, 'consulta', ' Consulto Inicio'),
(1032, '2020-12-22 20:08:55', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1033, '2020-12-22 20:10:11', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1034, '2020-12-22 20:11:07', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1035, '2020-12-22 20:11:17', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1036, '2020-12-22 20:22:53', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1037, '2020-12-22 20:23:12', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1038, '2020-12-22 20:23:49', 1, 1, 'consulta', ' Consulto Inicio'),
(1039, '2020-12-22 20:23:51', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1040, '2020-12-22 20:28:27', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1041, '2020-12-22 20:28:36', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1042, '2020-12-22 20:28:58', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1043, '2020-12-22 20:29:27', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1044, '2020-12-22 20:29:39', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1045, '2020-12-22 20:36:01', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1046, '2020-12-22 20:36:10', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1047, '2020-12-22 20:37:30', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1048, '2020-12-22 20:38:16', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1049, '2020-12-22 20:39:23', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1050, '2020-12-22 20:39:29', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1051, '2020-12-22 20:39:36', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1052, '2020-12-22 20:40:25', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1053, '2020-12-22 20:40:27', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1054, '2020-12-22 20:42:59', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1055, '2020-12-22 20:43:30', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1056, '2020-12-22 20:44:37', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1057, '2020-12-22 20:44:52', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1058, '2020-12-22 20:45:35', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1059, '2020-12-22 20:45:58', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1060, '2020-12-22 20:46:39', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1061, '2020-12-22 20:47:07', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1062, '2020-12-22 21:05:40', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1063, '2020-12-22 21:05:46', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1064, '2020-12-22 21:05:55', 1, 1, 'consulta', ' Consulto Inicio'),
(1065, '2020-12-22 21:07:03', 1, 1, 'consulta', ' Consulto Inicio'),
(1066, '2020-12-22 21:23:54', 1, 1, 'consulta', ' Consulto Inicio'),
(1067, '2020-12-22 21:24:12', 1, 1, 'consulta', ' Consulto Inicio'),
(1068, '2020-12-22 21:24:14', 1, 1, 'consulta', ' Consulto Inicio'),
(1069, '2020-12-22 21:24:41', 1, 1, 'consulta', ' Consulto Inicio'),
(1070, '2020-12-22 21:25:35', 1, 1, 'consulta', ' Consulto Inicio'),
(1071, '2020-12-22 21:26:06', 1, 1, 'consulta', ' Consulto Inicio'),
(1072, '2020-12-22 21:26:40', 1, 1, 'consulta', ' Consulto Inicio'),
(1073, '2020-12-22 21:27:43', 1, 1, 'consulta', ' Consulto Inicio'),
(1074, '2020-12-22 21:28:56', 1, 1, 'consulta', ' Consulto Inicio'),
(1075, '2020-12-22 21:34:54', 1, 1, 'consulta', ' Consulto Inicio'),
(1076, '2020-12-22 21:35:13', 1, 1, 'consulta', ' Consulto Inicio'),
(1077, '2020-12-22 21:35:31', 1, 1, 'consulta', ' Consulto Inicio'),
(1078, '2020-12-22 21:35:38', 1, 1, 'consulta', ' Consulto Inicio'),
(1079, '2020-12-22 21:39:10', 1, 1, 'consulta', ' Consulto Inicio'),
(1080, '2020-12-22 21:39:26', 1, 1, 'consulta', ' Consulto Inicio'),
(1081, '2020-12-22 21:40:15', 1, 1, 'consulta', ' Consulto Inicio'),
(1082, '2020-12-22 21:40:33', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1083, '2020-12-22 21:41:57', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1084, '2020-12-22 21:42:05', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1085, '2020-12-22 21:42:14', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1086, '2020-12-22 21:42:24', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1087, '2020-12-22 21:43:11', 1, 1, 'consulta', ' Consulto Inicio'),
(1088, '2020-12-22 21:44:43', 1, 1, 'consulta', ' Consulto Inicio'),
(1089, '2020-12-22 21:45:42', 1, 1, 'consulta', ' Consulto Inicio'),
(1090, '2020-12-22 21:46:09', 1, 1, 'consulta', ' Consulto Inicio'),
(1091, '2020-12-22 21:48:28', 1, 1, 'consulta', ' Consulto Inicio'),
(1092, '2020-12-22 21:48:56', 1, 1, 'consulta', ' Consulto Inicio'),
(1093, '2020-12-22 21:49:18', 1, 1, 'consulta', ' Consulto Inicio'),
(1094, '2020-12-22 21:49:24', 1, 1, 'consulta', ' Consulto Inicio'),
(1095, '2020-12-22 21:52:44', 1, 1, 'consulta', ' Consulto Inicio'),
(1096, '2020-12-22 21:53:33', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1097, '2020-12-22 21:53:37', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(1098, '2020-12-22 21:53:41', 1, 1, 'consulta', ' Consulto Inicio'),
(1099, '2020-12-22 21:55:51', 1, 1, 'consulta', ' Consulto Inicio'),
(1100, '2020-12-22 21:56:27', 1, 1, 'consulta', ' Consulto Inicio'),
(1101, '2020-12-22 21:57:13', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1102, '2020-12-22 21:57:43', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1103, '2020-12-22 21:57:46', 1, 1, 'consulta', ' Consulto Inicio'),
(1104, '2020-12-22 21:57:54', 1, 1, 'consulta', ' Consulto Inicio'),
(1105, '2020-12-22 21:58:00', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1106, '2020-12-22 21:58:06', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1107, '2020-12-22 21:58:10', 1, 1, 'consulta', ' Consulto Inicio'),
(1108, '2020-12-22 21:58:14', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1109, '2020-12-22 21:58:23', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1110, '2020-12-22 21:58:31', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1111, '2020-12-22 21:58:38', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1112, '2020-12-23 19:16:44', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1113, '2020-12-23 19:16:48', 1, 1, 'consulta', ' Consulto Inicio'),
(1114, '2020-12-23 19:19:20', 1, 1, 'consulta', ' Consulto Inicio'),
(1115, '2020-12-23 19:22:33', 1, 1, 'consulta', ' Consulto Inicio'),
(1116, '2020-12-23 19:22:56', 1, 1, 'consulta', ' Consulto Inicio'),
(1117, '2020-12-23 19:23:07', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1118, '2020-12-23 19:24:45', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1119, '2020-12-23 19:25:17', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1120, '2020-12-23 19:25:51', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1121, '2020-12-23 19:25:56', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1122, '2020-12-23 19:26:00', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1123, '2020-12-23 19:27:07', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1124, '2020-12-23 19:27:39', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1125, '2020-12-23 19:27:50', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1126, '2020-12-23 19:29:09', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1127, '2020-12-23 19:29:27', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1128, '2020-12-23 19:30:48', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1129, '2020-12-23 19:35:59', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1130, '2020-12-23 19:36:05', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1131, '2020-12-23 19:38:44', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1132, '2020-12-23 19:38:51', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1133, '2020-12-23 19:39:09', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1134, '2020-12-23 20:18:11', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1135, '2020-12-23 20:18:51', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1136, '2020-12-23 20:21:00', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1137, '2020-12-23 20:21:09', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1138, '2020-12-23 20:25:09', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1139, '2020-12-23 20:25:10', 1, 6, 'Elimino', 'Elimino el Rol'),
(1140, '2020-12-23 20:25:12', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1141, '2020-12-23 20:25:15', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1142, '2020-12-23 20:26:17', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1143, '2020-12-23 20:26:28', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1144, '2020-12-23 20:28:31', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1145, '2020-12-23 20:28:41', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1146, '2020-12-23 20:28:41', 1, 6, 'Actualizo', 'Actualizo rol'),
(1147, '2020-12-23 20:28:41', 1, 6, 'Actualizo', 'Actualizo rol'),
(1148, '2020-12-23 20:28:44', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1149, '2020-12-23 20:28:53', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1150, '2020-12-23 20:41:24', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1151, '2020-12-23 20:41:24', 1, 6, 'Actualizo', 'Actualizo rol'),
(1152, '2020-12-23 20:41:24', 1, 6, 'Actualizo', 'Actualizo rol'),
(1153, '2020-12-23 20:41:27', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1154, '2020-12-23 20:41:47', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1155, '2020-12-23 20:47:58', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1156, '2020-12-23 20:50:13', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1157, '2020-12-23 20:51:02', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1158, '2020-12-23 20:51:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1159, '2020-12-23 20:52:03', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1160, '2020-12-23 20:52:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1161, '2020-12-23 20:53:50', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1162, '2020-12-23 20:54:03', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1163, '2020-12-23 20:54:11', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1164, '2020-12-23 20:54:44', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1165, '2020-12-23 20:55:03', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1166, '2020-12-23 20:57:27', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1167, '2020-12-23 20:58:39', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1168, '2020-12-23 21:00:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1169, '2020-12-23 21:00:37', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1170, '2020-12-23 21:01:03', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1171, '2020-12-23 21:03:26', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1172, '2020-12-23 21:04:04', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1173, '2020-12-23 21:04:30', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1174, '2020-12-23 21:44:58', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1175, '2020-12-23 22:05:25', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1176, '2020-12-23 22:06:59', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1177, '2020-12-23 22:07:02', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1178, '2020-12-23 22:07:07', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1179, '2020-12-23 22:07:26', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1180, '2020-12-23 22:08:48', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1181, '2020-12-23 22:09:50', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1182, '2020-12-23 22:18:29', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1183, '2020-12-23 22:22:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1184, '2020-12-23 22:23:29', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1185, '2020-12-23 22:23:52', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1186, '2020-12-23 22:25:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1187, '2020-12-23 22:25:43', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1188, '2020-12-23 22:26:26', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1189, '2020-12-23 22:26:53', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1190, '2020-12-23 22:27:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1191, '2020-12-23 22:28:44', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1192, '2020-12-23 22:29:16', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1193, '2020-12-23 22:29:41', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1194, '2020-12-23 22:30:28', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1195, '2020-12-23 22:31:15', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1196, '2020-12-23 22:31:15', 1, 6, 'Actualizo', 'Actualizo rol'),
(1197, '2020-12-23 22:31:16', 1, 6, 'Actualizo', 'Actualizo rol'),
(1198, '2020-12-23 22:31:18', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1199, '2020-12-23 22:31:21', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1200, '2020-12-25 18:59:18', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1201, '2020-12-25 18:59:20', 1, 1, 'consulta', ' Consulto Inicio'),
(1202, '2020-12-25 18:59:27', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1203, '2020-12-25 18:59:36', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1204, '2020-12-25 18:59:36', 1, 6, 'Elimino', 'Elimino el Rol'),
(1205, '2020-12-25 18:59:46', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1206, '2020-12-25 18:59:58', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1207, '2020-12-25 19:00:16', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1208, '2020-12-25 19:01:25', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1209, '2020-12-25 19:01:26', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1210, '2020-12-25 19:01:36', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1211, '2020-12-25 19:02:45', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1212, '2020-12-25 19:03:02', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1213, '2020-12-25 19:03:12', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1214, '2020-12-25 19:05:00', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1215, '2020-12-25 19:05:44', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1216, '2020-12-25 19:11:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1217, '2020-12-25 19:12:15', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1218, '2020-12-25 19:13:36', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1219, '2020-12-25 19:15:01', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1220, '2020-12-25 19:15:03', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1221, '2020-12-25 19:15:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1222, '2020-12-25 19:15:08', 1, 6, 'Elimino', 'Elimino el Rol'),
(1223, '2020-12-25 19:15:11', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1224, '2020-12-25 19:15:17', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1225, '2020-12-25 19:15:44', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1226, '2020-12-25 19:16:53', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1227, '2020-12-25 19:16:55', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1228, '2020-12-25 19:17:02', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1229, '2020-12-25 19:17:47', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1230, '2020-12-25 19:23:40', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1231, '2020-12-25 19:23:40', 1, 6, 'Actualizo', 'Actualizo rol'),
(1232, '2020-12-25 19:23:40', 1, 6, 'Actualizo', 'Actualizo rol'),
(1233, '2020-12-25 19:23:43', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1234, '2020-12-25 19:23:45', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1235, '2020-12-25 19:24:01', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1236, '2020-12-25 19:24:05', 1, 6, 'consulta', ' Consulto la pantalla de Rol');
INSERT INTO `tbl_bitacora` (`id_bitacora`, `fecha`, `id_usuario`, `id_objeto`, `accion`, `descripcion`) VALUES
(1237, '2020-12-25 19:26:25', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1238, '2020-12-25 19:33:44', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1239, '2020-12-25 19:39:19', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1240, '2020-12-25 19:39:30', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1241, '2020-12-25 19:41:01', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1242, '2020-12-25 19:41:19', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1243, '2020-12-25 19:44:06', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1244, '2020-12-25 19:47:37', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1245, '2020-12-25 19:54:09', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1246, '2020-12-25 19:54:40', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1247, '2020-12-25 20:08:02', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1248, '2020-12-25 20:08:11', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1249, '2020-12-25 20:08:25', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1250, '2020-12-25 20:09:20', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1251, '2020-12-25 20:10:51', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1252, '2020-12-25 20:10:56', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1253, '2020-12-25 20:15:55', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1254, '2020-12-25 20:17:30', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1255, '2020-12-25 20:17:35', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1256, '2020-12-25 20:17:40', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1257, '2020-12-25 20:19:51', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1258, '2020-12-25 20:19:55', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1259, '2020-12-25 20:20:29', 1, 2, 'consulta', ' Consulto la pantalla de Usuario'),
(1260, '2020-12-25 20:20:34', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1261, '2020-12-25 20:20:40', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1262, '2020-12-25 20:20:50', 1, 4, 'consulta', ' Consulto la pantalla de Administracion de Ventas'),
(1263, '2020-12-25 20:20:52', 1, 1, 'consulta', ' Consulto Inicio'),
(1264, '2020-12-25 20:21:45', 1, 1, 'consulta', ' Consulto Inicio'),
(1265, '2020-12-26 16:18:09', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1266, '2020-12-26 16:18:10', 1, 1, 'consulta', ' Consulto Inicio'),
(1267, '2020-12-26 16:18:16', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1268, '2020-12-26 16:18:24', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1269, '2020-12-26 16:37:46', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1270, '2020-12-26 16:43:24', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1271, '2020-12-26 16:44:56', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1272, '2020-12-26 16:45:26', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1273, '2020-12-26 16:49:51', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1274, '2020-12-26 16:50:07', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1275, '2020-12-26 16:52:19', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1276, '2020-12-26 16:52:30', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1277, '2020-12-26 16:52:31', 1, 6, 'Actualizo', 'Actualizo parametro'),
(1278, '2020-12-26 16:52:33', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1279, '2020-12-26 16:54:28', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1280, '2020-12-26 16:54:28', 1, 6, 'Actualizo', 'Actualizo parametro'),
(1281, '2020-12-26 16:54:30', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1282, '2020-12-26 16:54:41', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1283, '2020-12-26 16:57:14', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1284, '2020-12-26 16:57:18', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1285, '2020-12-26 16:57:24', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1286, '2020-12-26 16:57:26', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1287, '2020-12-26 16:57:29', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1288, '2020-12-26 16:57:31', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1289, '2020-12-26 16:57:33', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1290, '2020-12-26 17:40:27', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1291, '2020-12-26 17:40:53', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1292, '2020-12-26 17:40:54', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1293, '2020-12-26 17:40:56', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1294, '2020-12-26 17:41:04', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1295, '2020-12-26 17:41:04', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1296, '2020-12-26 17:41:06', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1297, '2020-12-26 17:47:11', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1298, '2020-12-26 17:47:44', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1299, '2020-12-26 17:47:45', 1, 6, 'Nuevo', 'Nueva Inscripcion del Gimnasio'),
(1300, '2020-12-26 17:49:02', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1301, '2020-12-26 17:49:06', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1302, '2020-12-26 17:49:40', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1303, '2020-12-26 17:49:43', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1304, '2020-12-26 17:49:46', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1305, '2020-12-26 17:49:47', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1306, '2020-12-26 17:49:49', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1307, '2020-12-26 17:49:51', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1308, '2020-12-26 17:49:53', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1309, '2020-12-26 17:51:17', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1310, '2020-12-26 17:51:21', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1311, '2020-12-26 17:51:24', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1312, '2020-12-26 17:51:26', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1313, '2020-12-26 17:51:29', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1314, '2020-12-26 17:51:32', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1315, '2020-12-26 17:52:25', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1316, '2020-12-26 17:52:31', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1317, '2020-12-26 17:52:33', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1318, '2020-12-26 17:53:01', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1319, '2020-12-26 17:53:05', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1320, '2020-12-26 17:53:19', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1321, '2020-12-26 17:53:23', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1322, '2020-12-26 17:53:23', 1, 6, 'Elimino', 'Elimino la Inscripcion'),
(1323, '2020-12-26 17:58:27', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1324, '2020-12-26 17:58:42', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1325, '2020-12-26 17:58:42', 1, 6, 'Nuevo', 'Nueva Inscripcion del Gimnasio'),
(1326, '2020-12-26 17:58:45', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1327, '2020-12-26 17:58:48', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1328, '2020-12-26 17:58:50', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1329, '2020-12-26 17:58:56', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1330, '2020-12-26 17:58:56', 1, 6, 'Elimino', 'Elimino la Inscripcion'),
(1331, '2020-12-26 17:58:58', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1332, '2020-12-26 17:59:00', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1333, '2020-12-26 18:07:13', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1334, '2020-12-26 18:07:50', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1335, '2020-12-26 18:12:01', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1336, '2020-12-26 18:12:15', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1337, '2020-12-26 18:12:16', 1, 6, 'Nuevo', 'Nueva Inscripcion del Gimnasio'),
(1338, '2020-12-26 18:12:17', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1339, '2020-12-26 18:12:22', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1340, '2020-12-26 18:12:24', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1341, '2020-12-26 18:12:25', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1342, '2020-12-26 18:12:31', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1343, '2020-12-26 18:12:31', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1344, '2020-12-26 18:12:33', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1345, '2020-12-26 18:12:41', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1346, '2020-12-26 18:12:41', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1347, '2020-12-26 18:12:43', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1348, '2020-12-26 18:12:51', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1349, '2020-12-26 18:12:51', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1350, '2020-12-26 18:12:53', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1351, '2020-12-26 18:13:02', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1352, '2020-12-26 18:13:02', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1353, '2020-12-26 18:13:04', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1354, '2020-12-26 18:21:40', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1355, '2020-12-26 18:22:53', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1356, '2020-12-26 18:23:12', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1357, '2020-12-26 18:23:44', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1358, '2020-12-26 18:23:49', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1359, '2020-12-26 18:24:09', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1360, '2020-12-26 18:24:23', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1361, '2020-12-26 18:25:52', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1362, '2020-12-26 18:25:58', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1363, '2020-12-26 18:25:59', 1, 6, 'Elimino', 'Elimino la Inscripcion'),
(1364, '2020-12-26 18:26:00', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1365, '2020-12-26 18:26:03', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1366, '2020-12-26 18:30:40', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1367, '2020-12-26 18:35:29', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1368, '2020-12-26 18:35:36', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1369, '2020-12-26 18:36:02', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1370, '2020-12-26 18:36:02', 1, 6, 'Nuevo', 'Nueva Inscripcion del Gimnasio'),
(1371, '2020-12-26 18:36:04', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1372, '2020-12-26 18:36:11', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1373, '2020-12-26 18:36:12', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1374, '2020-12-26 18:36:32', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1375, '2020-12-26 18:36:32', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1376, '2020-12-26 18:36:34', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1377, '2020-12-26 18:36:41', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1378, '2020-12-26 18:36:45', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1379, '2020-12-26 18:36:46', 1, 6, 'Elimino', 'Elimino la Inscripcion'),
(1380, '2020-12-26 18:36:47', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1381, '2020-12-26 18:41:54', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1382, '2020-12-26 18:42:03', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1383, '2020-12-26 18:42:15', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1384, '2020-12-26 18:42:17', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1385, '2020-12-26 18:43:10', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1386, '2020-12-26 18:45:43', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1387, '2020-12-26 18:46:37', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1388, '2020-12-26 18:46:51', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1389, '2020-12-26 18:46:59', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1390, '2020-12-26 18:47:07', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1391, '2020-12-26 18:47:28', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1392, '2020-12-26 18:47:31', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1393, '2020-12-26 18:47:32', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1394, '2020-12-26 18:47:37', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1395, '2020-12-26 18:47:40', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1396, '2020-12-26 18:51:54', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1397, '2020-12-26 18:51:57', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1398, '2020-12-26 18:52:50', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1399, '2020-12-26 18:52:55', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1400, '2020-12-26 18:55:06', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1401, '2020-12-26 18:55:10', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1402, '2020-12-26 18:55:12', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1403, '2020-12-26 18:56:21', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1404, '2020-12-26 18:56:24', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1405, '2020-12-26 18:56:27', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1406, '2020-12-26 18:56:29', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1407, '2020-12-26 18:57:17', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1408, '2020-12-26 18:57:50', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1409, '2020-12-26 18:57:53', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1410, '2020-12-26 18:58:50', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1411, '2020-12-26 18:58:54', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1412, '2020-12-26 18:59:33', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1413, '2020-12-26 18:59:51', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1414, '2020-12-26 19:00:06', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1415, '2020-12-26 19:00:06', 1, 6, 'Nuevo', 'Nueva Matricula del Gimnasio'),
(1416, '2020-12-26 19:00:07', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1417, '2020-12-26 19:11:14', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1418, '2020-12-26 19:11:18', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1419, '2020-12-26 19:11:20', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1420, '2020-12-26 19:11:22', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1421, '2020-12-26 19:14:02', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1422, '2020-12-26 19:14:21', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1423, '2020-12-26 19:14:21', 1, 6, 'Actualizo', 'Actualizo Matricula '),
(1424, '2020-12-26 19:15:01', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1425, '2020-12-26 19:16:28', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1426, '2020-12-26 19:16:34', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1427, '2020-12-26 19:18:30', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1428, '2020-12-26 19:20:20', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1429, '2020-12-26 19:20:30', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1430, '2020-12-26 19:20:30', 1, 6, 'Actualizo', 'Actualizo Matricula '),
(1431, '2020-12-26 19:20:32', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1432, '2020-12-26 19:20:35', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1433, '2020-12-26 19:20:37', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1434, '2020-12-26 19:22:00', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1435, '2020-12-26 19:22:07', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1436, '2020-12-26 19:22:12', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1437, '2020-12-26 19:22:12', 1, 6, 'Elimino', 'Elimino la Matricul'),
(1438, '2020-12-26 19:25:08', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1439, '2020-12-26 19:25:09', 1, 6, 'Elimino', 'Elimino la Matricul'),
(1440, '2020-12-26 19:25:11', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1441, '2020-12-26 19:25:23', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1442, '2020-12-26 19:25:23', 1, 6, 'Nuevo', 'Nueva Matricula del Gimnasio'),
(1443, '2020-12-26 19:25:25', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1444, '2020-12-26 19:25:36', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1445, '2020-12-26 19:25:36', 1, 6, 'Actualizo', 'Actualizo Matricula '),
(1446, '2020-12-26 19:25:38', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1447, '2020-12-26 19:25:41', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1448, '2020-12-26 19:25:43', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1449, '2020-12-26 19:26:03', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1450, '2020-12-26 19:26:06', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1451, '2020-12-26 19:26:33', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1452, '2020-12-26 19:27:00', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1453, '2020-12-26 19:27:36', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1454, '2020-12-26 19:28:00', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1455, '2020-12-26 19:28:47', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1456, '2020-12-26 19:29:03', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1457, '2020-12-26 19:29:03', 1, 6, 'Actualizo', 'Actualizo Matricula '),
(1458, '2020-12-26 19:29:05', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1459, '2020-12-26 19:30:06', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1460, '2020-12-26 19:30:06', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1461, '2020-12-26 19:30:09', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1462, '2020-12-26 19:30:09', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1463, '2020-12-26 19:30:11', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1464, '2020-12-26 19:30:11', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1465, '2020-12-26 19:34:30', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1466, '2020-12-26 19:34:30', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1467, '2020-12-26 19:37:03', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1468, '2020-12-26 19:37:03', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1469, '2020-12-26 19:37:06', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1470, '2020-12-26 19:37:06', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1471, '2020-12-26 19:39:36', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1472, '2020-12-26 19:39:36', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1473, '2020-12-26 19:39:37', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1474, '2020-12-26 19:39:37', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1475, '2020-12-26 19:39:41', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1476, '2020-12-26 19:39:41', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1477, '2020-12-26 19:40:00', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1478, '2020-12-26 19:40:00', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1479, '2020-12-26 19:40:04', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1480, '2020-12-26 19:40:04', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1481, '2020-12-26 19:40:16', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1482, '2020-12-26 19:40:16', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1483, '2020-12-26 19:40:20', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1484, '2020-12-26 19:40:20', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1485, '2020-12-26 19:40:32', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1486, '2020-12-26 19:40:32', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1487, '2020-12-26 19:40:37', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1488, '2020-12-26 19:40:37', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1489, '2020-12-26 19:41:20', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1490, '2020-12-26 19:41:20', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1491, '2020-12-26 19:41:23', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1492, '2020-12-26 19:41:23', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1493, '2020-12-26 19:41:25', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1494, '2020-12-26 19:41:25', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1495, '2020-12-26 19:41:26', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1496, '2020-12-26 19:41:26', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1497, '2020-12-26 19:41:29', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1498, '2020-12-26 19:41:29', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1499, '2020-12-26 19:41:31', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1500, '2020-12-26 19:41:31', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1501, '2020-12-26 19:42:06', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1502, '2020-12-26 19:42:06', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1503, '2020-12-26 19:43:57', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1504, '2020-12-26 19:43:57', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1505, '2020-12-26 19:44:08', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1506, '2020-12-26 19:44:08', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1507, '2020-12-26 19:44:08', 1, 6, 'Nuevo', 'Nuevo Descuento del Gimnasio'),
(1508, '2020-12-26 19:44:14', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1509, '2020-12-26 19:44:14', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1510, '2020-12-26 19:44:27', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1511, '2020-12-26 19:44:27', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1512, '2020-12-26 19:44:28', 1, 6, 'consulta', 'Actualizo Descuento'),
(1513, '2020-12-26 19:44:30', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1514, '2020-12-26 19:44:30', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1515, '2020-12-26 19:44:44', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1516, '2020-12-26 19:44:44', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1517, '2020-12-26 19:44:50', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1518, '2020-12-26 19:44:50', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1519, '2020-12-26 19:44:54', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1520, '2020-12-26 19:44:54', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1521, '2020-12-26 19:45:01', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1522, '2020-12-26 19:45:01', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1523, '2020-12-26 19:45:01', 1, 6, 'consulta', 'Actualizo Descuento'),
(1524, '2020-12-26 19:50:08', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1525, '2020-12-26 19:50:08', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1526, '2020-12-26 19:50:12', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1527, '2020-12-26 19:50:12', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1528, '2020-12-26 19:52:35', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1529, '2020-12-26 19:52:35', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1530, '2020-12-26 19:52:36', 1, 6, 'consulta', 'Actualizo Descuento'),
(1531, '2020-12-26 19:52:40', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1532, '2020-12-26 19:52:41', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1533, '2020-12-26 19:52:47', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1534, '2020-12-26 19:52:47', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1535, '2020-12-26 19:52:47', 1, 6, 'consulta', 'Actualizo Descuento'),
(1536, '2020-12-26 19:52:50', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1537, '2020-12-26 19:52:50', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1538, '2020-12-26 19:55:49', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1539, '2020-12-26 19:55:49', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1540, '2020-12-26 19:56:04', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1541, '2020-12-26 19:56:04', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1542, '2020-12-26 19:56:11', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1543, '2020-12-26 19:56:11', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1544, '2020-12-26 19:56:11', 1, 6, 'consulta', 'Actualizo Descuento'),
(1545, '2020-12-26 19:56:13', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1546, '2020-12-26 19:56:13', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1547, '2020-12-26 19:56:16', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1548, '2020-12-26 19:56:16', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1549, '2020-12-26 19:56:22', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1550, '2020-12-26 19:56:22', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1551, '2020-12-26 19:56:22', 1, 6, 'Elimino', 'Elimino el Descuento'),
(1552, '2020-12-26 19:58:40', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1553, '2020-12-26 19:58:40', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1554, '2020-12-26 19:58:40', 1, 6, 'Elimino', 'Elimino el Descuento'),
(1555, '2020-12-26 19:58:44', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1556, '2020-12-26 19:58:44', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1557, '2020-12-26 19:59:58', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1558, '2020-12-26 19:59:58', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1559, '2020-12-26 20:00:56', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1560, '2020-12-26 20:00:56', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1561, '2020-12-26 20:01:02', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1562, '2020-12-26 20:01:02', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1563, '2020-12-27 14:28:05', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1564, '2020-12-27 14:28:08', 1, 1, 'consulta', ' Consulto Inicio'),
(1565, '2020-12-27 14:31:37', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1566, '2020-12-27 14:31:37', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1567, '2020-12-27 14:31:53', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1568, '2020-12-27 14:31:53', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1569, '2020-12-27 14:31:55', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1570, '2020-12-27 14:31:55', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1571, '2020-12-27 14:32:38', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1572, '2020-12-27 14:32:38', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1573, '2020-12-27 14:34:58', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1574, '2020-12-27 14:34:59', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1575, '2020-12-27 14:35:16', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1576, '2020-12-27 14:35:16', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1577, '2020-12-27 14:35:34', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1578, '2020-12-27 14:38:31', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1579, '2020-12-27 14:39:53', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1580, '2020-12-27 14:39:57', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1581, '2020-12-27 14:41:41', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1582, '2020-12-27 14:42:11', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1583, '2020-12-27 14:44:56', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1584, '2020-12-27 14:45:10', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1585, '2020-12-27 14:45:18', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1586, '2020-12-27 14:45:34', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1587, '2020-12-27 14:46:05', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1588, '2020-12-27 14:47:33', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1589, '2020-12-27 14:47:59', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1590, '2020-12-27 14:49:54', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1591, '2020-12-27 14:50:02', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1592, '2020-12-27 14:50:35', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1593, '2020-12-27 14:50:42', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1594, '2020-12-27 14:50:48', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1595, '2020-12-27 14:51:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1596, '2020-12-27 14:51:49', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1597, '2020-12-27 14:52:08', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1598, '2020-12-27 14:52:31', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1599, '2020-12-27 14:52:38', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1600, '2020-12-27 14:52:52', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1601, '2020-12-27 14:52:52', 1, 6, 'Actualizo', 'Actualizo rol'),
(1602, '2020-12-27 14:52:54', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1603, '2020-12-27 14:53:00', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1604, '2020-12-27 14:53:01', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1605, '2020-12-27 18:01:24', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1606, '2020-12-27 18:02:19', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1607, '2020-12-27 18:02:32', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1608, '2020-12-27 18:02:40', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1609, '2020-12-27 18:03:56', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1610, '2020-12-27 18:04:21', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1611, '2020-12-27 18:05:17', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1612, '2020-12-27 18:05:17', 1, 6, 'Actualizo', 'Actualizo rol'),
(1613, '2020-12-27 18:05:20', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1614, '2020-12-27 18:05:24', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1615, '2020-12-27 18:06:02', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1616, '2020-12-28 12:51:56', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1617, '2020-12-28 12:51:59', 1, 1, 'consulta', ' Consulto Inicio'),
(1618, '2020-12-28 13:41:12', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1619, '2020-12-28 13:41:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1620, '2020-12-28 13:41:34', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1621, '2020-12-28 13:42:54', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1622, '2020-12-28 13:43:53', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1623, '2020-12-28 13:45:01', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1624, '2020-12-28 13:45:26', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1625, '2020-12-28 13:45:27', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1626, '2020-12-28 13:45:41', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1627, '2020-12-28 13:45:41', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1628, '2020-12-28 13:45:51', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1629, '2020-12-28 13:47:02', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1630, '2020-12-28 13:47:21', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1631, '2020-12-28 15:04:19', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1632, '2020-12-28 15:06:47', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1633, '2020-12-28 15:08:46', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1634, '2020-12-28 15:16:59', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1635, '2020-12-28 15:17:11', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1636, '2020-12-28 15:17:24', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1637, '2020-12-28 15:18:15', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1638, '2020-12-28 15:19:07', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1639, '2020-12-28 15:19:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1640, '2020-12-28 15:19:48', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1641, '2020-12-28 15:25:28', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1642, '2020-12-28 15:27:01', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1643, '2020-12-28 15:27:39', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1644, '2020-12-28 15:27:45', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1645, '2020-12-28 15:28:26', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1646, '2020-12-28 16:34:21', 1, 3, 'consulta', ' Consulto la pantalla de cliente'),
(1647, '2020-12-28 16:34:53', 1, 4, 'consulta', ' Consulto la pantalla de Compras'),
(1648, '2020-12-28 19:28:04', 1, 1, 'Ingreso', ' Ingreso a Login'),
(1649, '2020-12-28 19:28:05', 1, 1, 'consulta', ' Consulto Inicio'),
(1650, '2020-12-28 20:46:24', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1651, '2020-12-28 20:46:34', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1652, '2020-12-28 20:46:39', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1653, '2020-12-28 20:46:43', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1654, '2020-12-28 20:46:46', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1655, '2020-12-28 20:46:48', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1656, '2020-12-28 20:46:56', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1657, '2020-12-28 20:47:02', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1658, '2020-12-28 20:47:03', 1, 6, 'Actualizo', 'Actualizo parametro'),
(1659, '2020-12-28 20:47:05', 1, 6, 'consulta', ' Consulto la pantalla de Parametro'),
(1660, '2020-12-28 20:47:33', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1661, '2020-12-28 20:47:43', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1662, '2020-12-28 20:47:43', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1663, '2020-12-28 20:47:45', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1664, '2020-12-28 20:47:48', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1665, '2020-12-28 20:47:50', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1666, '2020-12-28 20:47:56', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1667, '2020-12-28 20:47:56', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1668, '2020-12-28 20:47:57', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1669, '2020-12-28 20:48:04', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1670, '2020-12-28 20:48:13', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1671, '2020-12-28 20:48:13', 1, 6, 'Actualizo', 'Actualizo Matricula '),
(1672, '2020-12-28 20:48:14', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1673, '2020-12-28 20:48:17', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1674, '2020-12-28 20:48:21', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1675, '2020-12-28 20:48:23', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1676, '2020-12-28 20:48:26', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1677, '2020-12-28 20:48:27', 1, 6, 'Elimino', 'Elimino la Matricul'),
(1678, '2020-12-28 20:48:29', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1679, '2020-12-28 20:48:33', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1680, '2020-12-28 20:48:33', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1681, '2020-12-28 20:48:36', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1682, '2020-12-28 20:48:36', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1683, '2020-12-28 20:48:38', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1684, '2020-12-28 20:48:38', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1685, '2020-12-28 20:48:53', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1686, '2020-12-28 20:48:53', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1687, '2020-12-28 20:48:53', 1, 6, 'consulta', 'Actualizo Descuento'),
(1688, '2020-12-28 20:48:56', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1689, '2020-12-28 20:48:56', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1690, '2020-12-28 21:03:36', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1691, '2020-12-28 21:04:06', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1692, '2020-12-28 21:04:18', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1693, '2020-12-28 21:04:20', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1694, '2020-12-28 21:04:23', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1695, '2020-12-28 21:04:26', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1696, '2020-12-28 21:04:30', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1697, '2020-12-28 21:04:32', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1698, '2020-12-28 21:05:39', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1699, '2020-12-28 21:05:42', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1700, '2020-12-28 21:05:46', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1701, '2020-12-28 21:05:54', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1702, '2020-12-28 21:05:54', 1, 6, 'Actualizo', 'Actualizo rol'),
(1703, '2020-12-28 21:05:55', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1704, '2020-12-28 21:06:03', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1705, '2020-12-28 21:06:04', 1, 6, 'Elimino', 'Elimino el Rol'),
(1706, '2020-12-28 21:06:05', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1707, '2020-12-28 21:07:32', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1708, '2020-12-28 21:07:39', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1709, '2020-12-28 21:07:56', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1710, '2020-12-28 21:07:58', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1711, '2020-12-28 21:08:10', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1712, '2020-12-28 21:08:16', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1713, '2020-12-28 21:08:20', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1714, '2020-12-28 21:08:20', 1, 6, 'Elimino', 'Elimino el Rol'),
(1715, '2020-12-28 21:08:22', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1716, '2020-12-28 21:08:24', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1717, '2020-12-28 21:10:35', 1, 6, 'consulta', ' Consulto la pantalla de Rol'),
(1718, '2020-12-28 21:10:39', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1719, '2020-12-28 21:10:54', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1720, '2020-12-28 21:10:54', 1, 6, 'Nuevo', 'Nueva Inscripcion del Gimnasio'),
(1721, '2020-12-28 21:10:56', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1722, '2020-12-28 21:10:58', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1723, '2020-12-28 21:11:01', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1724, '2020-12-28 21:11:15', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1725, '2020-12-28 21:11:15', 1, 6, 'Actualizo', 'Actualizo Inscripcion'),
(1726, '2020-12-28 21:11:16', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1727, '2020-12-28 21:11:21', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1728, '2020-12-28 21:11:21', 1, 6, 'Elimino', 'Elimino la Inscripcion'),
(1729, '2020-12-28 21:11:22', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1730, '2020-12-28 21:13:08', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1731, '2020-12-28 21:13:19', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1732, '2020-12-28 21:13:19', 1, 6, 'Nuevo', 'Nueva Matricula del Gimnasio'),
(1733, '2020-12-28 21:13:21', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1734, '2020-12-28 21:13:24', 1, 6, 'consulta', ' Consulto la pantalla deInscripcion'),
(1735, '2020-12-28 21:13:42', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1736, '2020-12-28 21:13:46', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1737, '2020-12-28 21:13:47', 1, 6, 'Elimino', 'Elimino la Matricul'),
(1738, '2020-12-28 21:13:49', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1739, '2020-12-28 21:14:48', 1, 6, 'consulta', ' Consulto la pantalla de Matricula'),
(1740, '2020-12-28 21:14:51', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1741, '2020-12-28 21:14:51', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1742, '2020-12-28 21:14:55', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1743, '2020-12-28 21:14:55', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1744, '2020-12-28 21:15:07', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1745, '2020-12-28 21:15:07', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1746, '2020-12-28 21:15:07', 1, 6, 'Nuevo', 'Nuevo Descuento del Gimnasio'),
(1747, '2020-12-28 21:15:09', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1748, '2020-12-28 21:15:09', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1749, '2020-12-28 21:15:11', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1750, '2020-12-28 21:15:11', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1751, '2020-12-28 21:15:19', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1752, '2020-12-28 21:15:19', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1753, '2020-12-28 21:15:19', 1, 6, 'consulta', 'Actualizo Descuento'),
(1754, '2020-12-28 21:15:20', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1755, '2020-12-28 21:15:21', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1756, '2020-12-28 21:15:34', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1757, '2020-12-28 21:15:34', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1758, '2020-12-28 21:15:38', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1759, '2020-12-28 21:15:38', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1760, '2020-12-28 21:15:38', 1, 6, 'Elimino', 'Elimino el Descuento'),
(1761, '2020-12-28 21:15:42', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1762, '2020-12-28 21:15:42', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento'),
(1763, '2020-12-28 21:15:43', 1, 6, 'consulta', ' Consulto la pantalla de Descuento'),
(1764, '2020-12-28 21:15:43', 1, 6, 'consulta', ' Consulto la pantalla de mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `tipo_cliente` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_matricula` int(11) DEFAULT NULL,
  `id_descuento` int(11) DEFAULT NULL,
  `compras` int(11) DEFAULT NULL,
  `ultima_compra` datetime DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`id_cliente`, `id_persona`, `tipo_cliente`, `id_matricula`, `id_descuento`, `compras`, `ultima_compra`, `creado_por`) VALUES
(15, 22, 'Gimnasio', 1, 1, NULL, NULL, 1),
(21, 30, 'Gimnasio', 1, 3, NULL, NULL, NULL),
(22, 31, 'Gimnasio', 1, 1, 2, '2020-12-08 12:43:11', NULL),
(23, 32, 'Gimnasio', 1, 2, NULL, NULL, NULL),
(25, 34, 'Gimnasio', 1, 1, NULL, NULL, NULL),
(27, 39, 'Gimnasio', 1, NULL, NULL, NULL, NULL),
(28, 40, 'Gimnasio', 1, 1, NULL, NULL, NULL),
(36, 54, 'Gimnasio', 1, NULL, NULL, NULL, NULL),
(37, 55, 'Gimnasio', 1, 2, NULL, NULL, NULL),
(38, 57, 'Gimnasio', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente_inscripcion`
--

CREATE TABLE `tbl_cliente_inscripcion` (
  `id_cliente_inscripcion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_inscripcion` int(11) NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `fecha_pago` date NOT NULL,
  `fecha_proximo_pago` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `inscrito` int(11) NOT NULL DEFAULT 1,
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cliente_inscripcion`
--

INSERT INTO `tbl_cliente_inscripcion` (`id_cliente_inscripcion`, `id_cliente`, `id_inscripcion`, `fecha_inscripcion`, `fecha_pago`, `fecha_proximo_pago`, `fecha_vencimiento`, `estado`, `inscrito`, `creado_por`) VALUES
(1, 15, 2, '2020-04-01', '2020-07-30', '2020-08-14', '2020-08-14', 0, 1, 1),
(10, 15, 2, '2020-07-01', '2020-09-01', '2020-09-01', '2020-09-01', 0, 1, 1),
(11, 21, 2, '2020-08-01', '2020-08-01', '2020-08-31', '2020-08-31', 0, 1, NULL),
(12, 21, 1, '2020-10-01', '2020-10-01', '2020-10-31', '2020-10-31', 0, 1, NULL),
(14, 22, 1, '2020-10-01', '2020-10-01', '2020-10-31', '2020-10-31', 0, 1, 1),
(15, 23, 1, '2020-09-10', '2020-09-10', '2020-10-10', '2020-10-10', 0, 1, NULL),
(22, 22, 1, '2020-12-07', '2020-12-08', '2021-01-21', '2021-01-21', 1, 1, 1),
(23, 15, 1, '2020-12-07', '2020-12-07', '2021-01-06', '2021-01-06', 1, 1, NULL),
(24, 25, 1, '2020-07-08', '2020-07-08', '2020-08-07', '2020-08-07', 0, 0, NULL),
(25, 23, 1, '2020-12-08', '2020-12-08', '2021-01-07', '2021-01-07', 1, 1, NULL),
(27, 21, 2, '2020-12-08', '2020-12-08', '2020-12-23', '2020-12-23', 1, 1, NULL),
(28, 27, 2, '2020-12-08', '2020-12-08', '2021-02-21', '2021-02-21', 0, 0, 1),
(30, 28, 2, '2020-12-08', '2020-12-08', '2021-02-06', '2021-02-06', 0, 1, 1),
(31, 28, 2, '2020-12-08', '2020-12-08', '2020-12-23', '2020-12-23', 0, 0, NULL),
(39, 36, 2, '2020-12-10', '2020-12-10', '2021-01-09', '2021-01-09', 1, 1, NULL),
(40, 37, 1, '2020-12-14', '2020-12-14', '2021-01-13', '2021-01-13', 1, 1, NULL),
(41, 38, 2, '2020-12-15', '2020-12-15', '2020-12-30', '2020-12-30', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compras`
--

CREATE TABLE `tbl_compras` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `cantidad` int(15) NOT NULL,
  `precio` int(15) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_compras`
--

INSERT INTO `tbl_compras` (`id_compra`, `id_proveedor`, `id_inventario`, `cantidad`, `precio`, `fecha`) VALUES
(1, 1, 1, 35, 15, '2020-12-08 18:41:07'),
(2, 1, 2, 15, 700, '2020-12-08 18:50:57'),
(3, 1, 1, 20, 300, '2020-12-08 19:46:35'),
(11, 1, 7, 15, 650, '2020-12-15 05:02:20'),
(12, 1, 7, 15, 650, '2020-12-15 05:03:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_descuento`
--

CREATE TABLE `tbl_descuento` (
  `id_descuento` int(11) NOT NULL,
  `tipo_descuento` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valor_descuento` decimal(10,0) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_descuento`
--

INSERT INTO `tbl_descuento` (`id_descuento`, `tipo_descuento`, `valor_descuento`, `estado`, `fecha_creacion`, `creado_por`) VALUES
(1, '2x1', '50', 1, '2020-12-05 05:19:49', NULL),
(2, 'gratis', '100', 1, '2020-12-05 05:20:57', NULL),
(3, 'tercera edad', '35', 1, '2020-12-05 05:22:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_documento`
--

CREATE TABLE `tbl_documento` (
  `id_documento` int(11) NOT NULL,
  `tipo_documento` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 0,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_documento`
--

INSERT INTO `tbl_documento` (`id_documento`, `tipo_documento`, `estado`, `fecha_creacion`) VALUES
(1, 'Identidad', 1, '2020-12-28 20:26:39'),
(2, 'RTN', 1, '2020-12-28 20:26:39'),
(3, 'Pasaporte', 1, '2020-12-28 20:26:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inscripcion`
--

CREATE TABLE `tbl_inscripcion` (
  `id_inscripcion` int(11) NOT NULL,
  `tipo_inscripcion` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `precio_inscripcion` float DEFAULT NULL,
  `cantidad_dias` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_inscripcion`
--

INSERT INTO `tbl_inscripcion` (`id_inscripcion`, `tipo_inscripcion`, `precio_inscripcion`, `cantidad_dias`, `estado`, `fecha_creacion`, `creado_por`) VALUES
(1, 'MENSUAL', 300, 30, 1, '2020-12-05 05:32:32', NULL),
(2, 'QUINCENAL', 180, 15, 1, '2020-12-05 05:33:42', NULL),
(3, 'DIARIA', 25, 1, 1, '2020-12-05 05:34:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inventario`
--

CREATE TABLE `tbl_inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_tipo_producto` int(11) DEFAULT NULL,
  `codigo` int(20) DEFAULT NULL,
  `nombre_producto` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio_venta` float DEFAULT NULL,
  `producto_minimo` int(11) DEFAULT NULL,
  `producto_maximo` int(11) DEFAULT NULL,
  `venta` int(45) DEFAULT NULL,
  `devolucion` int(45) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp(),
  `precio_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_inventario`
--

INSERT INTO `tbl_inventario` (`id_inventario`, `id_tipo_producto`, `codigo`, `nombre_producto`, `foto`, `stock`, `precio_venta`, `producto_minimo`, `producto_maximo`, `venta`, `devolucion`, `fecha`, `precio_compra`) VALUES
(1, 1, 100, 'GATORADE', '', 54, 30, 20, 70, 1, NULL, '2020-12-08 18:37:15', 15),
(2, 1, 101, 'PROTEINA', NULL, 49, 1750, 20, 50, NULL, NULL, '2020-12-08 18:38:41', 700),
(3, 2, 700, 'PESAS', '', 30, NULL, 15, 40, NULL, NULL, '2020-12-08 18:41:54', 0),
(4, 2, 701, 'CAMINADORA', NULL, 7, NULL, 15, 40, NULL, NULL, '2020-12-08 21:07:46', 0),
(7, 1, 102, 'CARNITINA', '', 30, 1299, 10, 30, NULL, NULL, '2020-12-15 04:56:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_matricula`
--

CREATE TABLE `tbl_matricula` (
  `id_matricula` int(11) NOT NULL,
  `tipo_matricula` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `precio_matricula` float DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_matricula`
--

INSERT INTO `tbl_matricula` (`id_matricula`, `tipo_matricula`, `precio_matricula`, `estado`, `fecha_creacion`, `creado_por`) VALUES
(1, 'Normal', 50, 1, '2020-12-05 05:36:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objetos`
--

CREATE TABLE `tbl_objetos` (
  `id_objeto` int(11) NOT NULL,
  `objeto` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `link_objeto` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `icono` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_objetos`
--

INSERT INTO `tbl_objetos` (`id_objeto`, `objeto`, `link_objeto`, `icono`, `fecha_creacion`, `creado_por`) VALUES
(1, 'Dashboard', 'dashboard', 'fas fa-tachometer-alt', '2020-12-05 05:40:13', NULL),
(2, 'Usuarios', 'usuarios', 'fas fa-users', '2020-12-05 05:42:36', NULL),
(3, 'Clientes', 'clientes', 'fas fa-user-circle', '2020-12-05 05:43:34', NULL),
(4, 'Stock', 'stock', 'fas fa-layer-group', '2020-12-05 05:48:10', NULL),
(5, 'Ventas', 'ventas', 'fas fa-cart-plus', '2020-12-05 05:49:40', NULL),
(6, 'Mantenimiento', 'mantenimiento', 'fas fa-sliders-h', '2020-12-05 05:51:12', NULL),
(7, 'Respaldo y Restauracion', 'respaldoyrestauracion', 'fas fa-download', '2020-12-05 05:53:24', NULL),
(8, 'Bitacora', 'bitacora', 'fas fa-bold', '2020-12-05 05:54:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pagos_cliente`
--

CREATE TABLE `tbl_pagos_cliente` (
  `id_pagos_cliente` int(11) NOT NULL,
  `id_cliente_inscripcion` int(11) NOT NULL,
  `pago_matricula` float DEFAULT NULL,
  `pago_descuento` float DEFAULT NULL,
  `pago_inscripcion` float DEFAULT NULL,
  `pago_total` float DEFAULT NULL,
  `fecha_de_pago` date NOT NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_pagos_cliente`
--

INSERT INTO `tbl_pagos_cliente` (`id_pagos_cliente`, `id_cliente_inscripcion`, `pago_matricula`, `pago_descuento`, `pago_inscripcion`, `pago_total`, `fecha_de_pago`, `creado_por`) VALUES
(4, 1, 50, 25, 300, 325, '2020-12-07', 1),
(7, 1, 0, 0, 300, 300, '2020-12-07', NULL),
(23, 10, 0, 0, 180, 180, '2020-12-07', NULL),
(24, 11, 0, 0, 180, 180, '2020-12-07', NULL),
(25, 12, 0, 0, 300, 300, '2020-12-07', NULL),
(29, 14, 50, 50, 300, 325, '2020-12-07', NULL),
(30, 14, 0, 0, 180, 180, '2020-12-07', NULL),
(31, 15, 50, 100, 300, 300, '2020-12-07', NULL),
(33, 22, 0, 0, 180, 180, '2020-12-07', NULL),
(34, 23, 0, 0, 300, 300, '2020-12-07', NULL),
(35, 23, 50, 0, 300, 350, '2020-12-08', NULL),
(36, 24, 50, 50, 300, 325, '2020-07-08', NULL),
(38, 22, NULL, NULL, 300, 300, '2020-12-08', NULL),
(39, 25, 0, 0, 300, 300, '2020-12-08', NULL),
(41, 25, 50, 0, 180, 230, '2020-12-08', NULL),
(42, 27, 0, 0, 180, 180, '2020-12-08', NULL),
(43, 28, 50, 0, 300, 350, '2020-12-08', NULL),
(44, 28, NULL, NULL, 300, 300, '2020-12-08', NULL),
(45, 28, NULL, NULL, 180, 180, '2020-12-08', NULL),
(47, 30, 50, 0, 300, 325, '2020-12-08', NULL),
(48, 30, NULL, NULL, 180, 180, '2020-12-08', NULL),
(49, 30, NULL, NULL, 180, 180, '2020-12-08', NULL),
(50, 30, NULL, NULL, 180, 180, '2020-12-08', NULL),
(51, 30, NULL, NULL, 180, 180, '2020-12-08', NULL),
(60, 39, 50, 0, 180, 230, '2020-12-10', NULL),
(61, 39, NULL, NULL, 180, 180, '2020-12-10', NULL),
(62, 40, 50, 50, 300, 300, '2020-12-14', NULL),
(63, 41, 50, 25, 180, 205, '2020-12-15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametros`
--

CREATE TABLE `tbl_parametros` (
  `id_parametro` int(11) NOT NULL,
  `parametro` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valor` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_parametros`
--

INSERT INTO `tbl_parametros` (`id_parametro`, `parametro`, `valor`, `fecha_creacion`, `creado_por`) VALUES
(1, 'ADMIN_CPASS', 'Grupo_6s', '2020-12-05 05:57:16', NULL),
(2, 'ADMIN_CORREO', 'grupo6ctrls@gmail.com', '2020-12-05 05:58:17', NULL),
(3, 'ADMIN_INTENTOS', '3', '2020-12-05 05:58:55', NULL),
(4, 'ADMIN_VIGENCIA_CORREO', '24', '2020-12-05 06:00:41', NULL),
(5, 'ADMIN_DIAS_VIGENCIA', '365', '2020-12-05 06:01:56', NULL),
(6, 'ADMIN_CPUERTO', '465', '2020-12-05 06:03:19', NULL),
(7, 'ADMIN_CHOST', 'smtp.gmail.com', '2020-12-05 06:04:59', NULL),
(8, 'ADMIN_CSMTP', 'ssl', '2020-12-05 06:06:25', NULL),
(9, 'ADMIN_PREGUNTAS', '3', '2020-12-05 06:07:19', NULL),
(10, 'ADMIN_VIGENCIA_CLIENTE_MES', '30', '2020-12-05 06:08:26', NULL),
(11, 'ADMIN_VIGENCIA_CLIENTE_QUINCENAL', '15', '2020-12-05 06:09:02', NULL),
(12, 'ADMIN_VIGENCIA_CLIENTE_DIA', '12', '2020-12-05 06:09:32', NULL),
(13, 'ADMIN_IMPUESTO', '15', '2020-12-05 06:10:12', NULL),
(14, 'ADMIN_NOMBRE_EMPRESA', 'GIMNASIO LA ROCA ', '2020-12-05 06:13:04', NULL),
(15, 'ADMIN_DIRECCION_EMPRESA', 'COMAYAGUELA D.C BARRIO BELEN', '2020-12-05 06:13:56', NULL),
(16, 'ADMIN_TELEFONO_EMPRESA', '(504) 9988-9999', '2020-12-05 06:15:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisos`
--

CREATE TABLE `tbl_permisos` (
  `id_permiso` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_objeto` int(11) DEFAULT NULL,
  `agregar` int(11) DEFAULT NULL,
  `eliminar` int(11) DEFAULT NULL,
  `actualizar` int(11) DEFAULT NULL,
  `consulta` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_permisos`
--

INSERT INTO `tbl_permisos` (`id_permiso`, `id_rol`, `id_objeto`, `agregar`, `eliminar`, `actualizar`, `consulta`, `fecha_creacion`, `creado_por`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2020-12-05 06:22:28', NULL),
(2, 1, 2, 1, 1, 1, 1, '2020-12-05 06:23:13', NULL),
(3, 1, 3, 1, 1, 1, 1, '2020-12-05 06:23:44', NULL),
(4, 1, 4, 1, 1, 1, 1, '2020-12-05 06:23:54', NULL),
(5, 1, 5, 1, 1, 1, 1, '2020-12-05 06:24:06', NULL),
(6, 1, 6, 1, 1, 1, 1, '2020-12-05 06:24:18', NULL),
(7, 1, 7, 1, 1, 1, 1, '2020-12-05 06:24:27', NULL),
(8, 1, 8, 1, 1, 1, 1, '2020-12-05 06:24:40', NULL),
(19, 7, 1, 1, 0, 0, 1, '2020-12-26 01:15:56', NULL),
(20, 7, 5, 1, 1, 1, 1, '2020-12-26 01:17:26', NULL),
(21, 7, 6, 0, 0, 0, 1, '2020-12-26 01:23:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_personas`
--

CREATE TABLE `tbl_personas` (
  `id_personas` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `apellidos` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `num_documento` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tipo_persona` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_personas`
--

INSERT INTO `tbl_personas` (`id_personas`, `nombre`, `apellidos`, `id_documento`, `num_documento`, `tipo_persona`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `correo`, `fecha_creacion`, `creado_por`) VALUES
(1, 'Super', 'Admin', 1, '000000000', 'usuarios', '0000-00-00', '', '', '', 'superadmin@correo.com', '2020-12-05 06:30:28', NULL),
(22, 'JESUS', 'ZUNIGA', 1, '0801199907678', 'clientes', '1990-01-22', 'M', '50499999999', 'VALLE', 'jesus@correo.com', '2020-12-06 01:09:02', 1),
(30, 'MARIA', 'AMADOR', 2, '0801199907645', 'clientes', '1960-09-09', 'M', '(504) 9966-7788', 'VALLE', 'maria@correo.com', '2020-12-06 14:39:58', NULL),
(31, 'CARLOS', 'ORTEZ', 1, '0801199489746', 'clientes', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE', 'carlos@gmail.com', '2020-12-07 03:26:05', NULL),
(32, 'JUAN', 'ROSALES', 1, '0801199998881', 'clientes', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE', 'juan@yahoo.es', '2020-12-07 14:10:47', NULL),
(34, 'BARBARA', 'RUBIO', 1, '0801199507334', 'clientes', '1999-09-09', 'F', '(504) 9999-9999', 'VALLE DE ANGELES', 'barb@gmail.com', '2020-12-08 13:57:21', NULL),
(39, 'MARIO', 'LOPEZ', 1, '0801199489743', 'clientes', '1989-09-09', 'M', '(504) 9999-9999', 'VALLE', 'mario@correo.com', '2020-12-08 21:49:22', NULL),
(40, 'INFORMATICA', 'INFORMATICA', 1, '0801199507364', 'clientes', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE', 'informatica@gmail.com', '2020-12-08 23:15:48', NULL),
(54, 'FERNANDA', 'ZUNIGA', 1, '0801199507362', 'clientes', '1999-09-09', 'F', '(504) 8888-8888', 'VALL', 'fer@gmail.com', '2020-12-10 22:11:59', NULL),
(55, 'NUEVO', 'NUEVO', 1, '0801199507312', 'clientes', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE DE ANGELES', 'nuevo@yahoo.es', '2020-12-15 04:30:19', NULL),
(56, 'PRUEBA', 'PRUEBA', 1, '0801199507365', 'usuarios', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE', 'prueba@yahoo.es', '2020-12-15 05:11:59', NULL),
(57, 'ROLES', 'ROLES', 1, '0801199507376', 'clientes', '1999-09-09', 'M', '(504) 9999-9999', 'VALLE DE ANGELES', 'rol@gmail.com', '2020-12-15 06:41:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas`
--

CREATE TABLE `tbl_preguntas` (
  `id_preguntas` int(11) NOT NULL,
  `pregunta` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_preguntas`
--

INSERT INTO `tbl_preguntas` (`id_preguntas`, `pregunta`, `fecha_creacion`, `creado_por`) VALUES
(1, '¿Escuela a la que asistía de pequeño?', '2020-12-05 06:33:16', NULL),
(2, '¿Héroe favorito?', '2020-12-05 06:33:46', NULL),
(3, '¿Color favorito?', '2020-12-05 06:34:30', NULL),
(4, '¿Cuál era el nombre de tu primera mascota?', '2020-12-05 06:35:00', NULL),
(5, '¿Dónde fuiste de vacaciones el año pasado?', '2020-12-05 06:36:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas_usuarios`
--

CREATE TABLE `tbl_preguntas_usuarios` (
  `id_preguntas_usuarios` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_preguntas` int(11) DEFAULT NULL,
  `respuesta` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_preguntas_usuarios`
--

INSERT INTO `tbl_preguntas_usuarios` (`id_preguntas_usuarios`, `id_usuario`, `id_preguntas`, `respuesta`, `fecha_creacion`, `creado_por`) VALUES
(1, 2, 1, 'ELVEL', '2020-12-15 05:14:18', NULL),
(2, 2, 3, 'AZUL', '2020-12-15 05:14:18', NULL),
(3, 2, 5, 'ROATAN', '2020-12-15 05:14:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedores`
--

CREATE TABLE `tbl_proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_proveedores`
--

INSERT INTO `tbl_proveedores` (`id_proveedor`, `nombre`, `correo`, `telefono`) VALUES
(1, 'ECO', 'eco@gmail.com', '50499889977');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` int(15) NOT NULL,
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_rol`, `rol`, `fecha_creacion`, `descripcion`, `estado`, `creado_por`) VALUES
(1, 'Administrador', '2020-12-05 06:19:03', 'TODOS LOS PERMISOS', 1, NULL),
(2, 'Default', '2020-12-05 06:19:53', 'NO TIENE PERMISOS', 1, NULL),
(7, 'VENDEDOR', '2020-12-26 01:15:32', 'PERMISOS EN VENTAS', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_producto`
--

CREATE TABLE `tbl_tipo_producto` (
  `id_tipo_producto` int(11) NOT NULL,
  `tipo_producto` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `creado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_producto`
--

INSERT INTO `tbl_tipo_producto` (`id_tipo_producto`, `tipo_producto`, `fecha_creacion`, `creado_por`) VALUES
(1, 'Productos', '2020-12-05 06:38:32', NULL),
(2, 'Bodega', '2020-12-05 06:39:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `usuario` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT 0,
  `primera_vez` int(11) DEFAULT 1,
  `token` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_recuperacion` datetime DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `ultimo_login` datetime DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `id_persona`, `usuario`, `password`, `foto`, `estado`, `primera_vez`, `token`, `fecha_recuperacion`, `fecha_vencimiento`, `ultimo_login`, `id_rol`) VALUES
(1, 1, 'SUPERADMIN', '$2a$07$asxx54ahjppf45sd87a5au.1UP6zDSXc3b.CkjVjQR/OCpZlYz4hq', 'vistas/img/usuarios/SUPERADMIN/854.jpg', 1, 0, NULL, NULL, NULL, '2020-12-28 19:28:04', 1),
(2, 56, 'PRUE', '$2a$07$asxx54ahjppf45sd87a5auLPjFcMng9ID3.WybWFciH86yMkmyp.a', '', 1, 0, NULL, NULL, '2021-12-14', '2020-12-14 23:14:52', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `numero_factura` int(11) NOT NULL,
  `productos` varchar(1000) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `neto` float DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_venta`
--

INSERT INTO `tbl_venta` (`id_venta`, `id_cliente`, `id_usuario`, `numero_factura`, `productos`, `impuesto`, `neto`, `total`, `fecha`) VALUES
(1, 22, 1, 1001, '[{\"id\":\"1\",\"descripcion\":\"GATORADE\",\"cantidad\":\"1\",\"stock\":\"34\",\"precio\":\"30\",\"total\":\"30\"}]', 4.5, 30, 35, '2020-12-08 18:43:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD PRIMARY KEY (`id_bitacora`),
  ADD KEY `id_usuariobitacora` (`id_usuario`) USING BTREE,
  ADD KEY `id_objetobitacora` (`id_objeto`) USING BTREE;

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_matricula` (`id_matricula`),
  ADD KEY `id_descuento` (`id_descuento`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_cliente_inscripcion`
--
ALTER TABLE `tbl_cliente_inscripcion`
  ADD PRIMARY KEY (`id_cliente_inscripcion`),
  ADD KEY `id_inscripcion` (`id_inscripcion`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_compras`
--
ALTER TABLE `tbl_compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_inventario` (`id_inventario`);

--
-- Indices de la tabla `tbl_descuento`
--
ALTER TABLE `tbl_descuento`
  ADD PRIMARY KEY (`id_descuento`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_documento`
--
ALTER TABLE `tbl_documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_tipo_producto` (`id_tipo_producto`);

--
-- Indices de la tabla `tbl_matricula`
--
ALTER TABLE `tbl_matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_objetos`
--
ALTER TABLE `tbl_objetos`
  ADD PRIMARY KEY (`id_objeto`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_pagos_cliente`
--
ALTER TABLE `tbl_pagos_cliente`
  ADD PRIMARY KEY (`id_pagos_cliente`),
  ADD KEY `creado_por` (`creado_por`),
  ADD KEY `id_cliente_inscripcion` (`id_cliente_inscripcion`);

--
-- Indices de la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  ADD PRIMARY KEY (`id_parametro`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_objeto` (`id_objeto`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD PRIMARY KEY (`id_personas`),
  ADD KEY `id_documento` (`id_documento`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  ADD PRIMARY KEY (`id_preguntas`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_preguntas_usuarios`
--
ALTER TABLE `tbl_preguntas_usuarios`
  ADD PRIMARY KEY (`id_preguntas_usuarios`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_preguntas` (`id_preguntas`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_proveedores`
--
ALTER TABLE `tbl_proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_tipo_producto`
--
ALTER TABLE `tbl_tipo_producto`
  ADD PRIMARY KEY (`id_tipo_producto`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1765;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente_inscripcion`
--
ALTER TABLE `tbl_cliente_inscripcion`
  MODIFY `id_cliente_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tbl_compras`
--
ALTER TABLE `tbl_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_descuento`
--
ALTER TABLE `tbl_descuento`
  MODIFY `id_descuento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_documento`
--
ALTER TABLE `tbl_documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_matricula`
--
ALTER TABLE `tbl_matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_objetos`
--
ALTER TABLE `tbl_objetos`
  MODIFY `id_objeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_pagos_cliente`
--
ALTER TABLE `tbl_pagos_cliente`
  MODIFY `id_pagos_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  MODIFY `id_parametro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  MODIFY `id_personas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  MODIFY `id_preguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_preguntas_usuarios`
--
ALTER TABLE `tbl_preguntas_usuarios`
  MODIFY `id_preguntas_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_proveedores`
--
ALTER TABLE `tbl_proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_producto`
--
ALTER TABLE `tbl_tipo_producto`
  MODIFY `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD CONSTRAINT `tbl_bitacorausuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_objetobitacora` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `tbl_descuentocliente` FOREIGN KEY (`id_descuento`) REFERENCES `tbl_descuento` (`id_descuento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_matriculacliente` FOREIGN KEY (`id_matricula`) REFERENCES `tbl_matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_personacliente` FOREIGN KEY (`id_persona`) REFERENCES `tbl_personas` (`id_personas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuariocliente` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_cliente_inscripcion`
--
ALTER TABLE `tbl_cliente_inscripcion`
  ADD CONSTRAINT `tbl_cliente_inscripcion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cliente_inscripcion_ibfk_2` FOREIGN KEY (`id_inscripcion`) REFERENCES `tbl_inscripcion` (`id_inscripcion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cliente_inscripcion_ibfk_3` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_compras`
--
ALTER TABLE `tbl_compras`
  ADD CONSTRAINT `tbl_compras_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `tbl_inventario` (`id_inventario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_compras_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `tbl_proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_descuento`
--
ALTER TABLE `tbl_descuento`
  ADD CONSTRAINT `tbl_usuarioclient` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD CONSTRAINT `tbl_usuaricliente` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD CONSTRAINT `tbl_tipoproducto_iventario` FOREIGN KEY (`id_tipo_producto`) REFERENCES `tbl_tipo_producto` (`id_tipo_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_matricula`
--
ALTER TABLE `tbl_matricula`
  ADD CONSTRAINT `tbl_usuario_matricula` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_objetos`
--
ALTER TABLE `tbl_objetos`
  ADD CONSTRAINT `tbl_usuario_objeto` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pagos_cliente`
--
ALTER TABLE `tbl_pagos_cliente`
  ADD CONSTRAINT `tbl_pagos_cliente_ibfk_1` FOREIGN KEY (`id_cliente_inscripcion`) REFERENCES `tbl_cliente_inscripcion` (`id_cliente_inscripcion`),
  ADD CONSTRAINT `tbl_usuario_pagos` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  ADD CONSTRAINT `tbl_usuario_parametro` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD CONSTRAINT `tbl_objeto_permisos` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_rol_permisos` FOREIGN KEY (`id_rol`) REFERENCES `tbl_roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_permisos` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD CONSTRAINT `tbl_documento_personas` FOREIGN KEY (`id_documento`) REFERENCES `tbl_documento` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_personas` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  ADD CONSTRAINT `tbl_usuario_preguntas` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_preguntas_usuarios`
--
ALTER TABLE `tbl_preguntas_usuarios`
  ADD CONSTRAINT `tbl_pregunta_preguntausua` FOREIGN KEY (`id_preguntas`) REFERENCES `tbl_preguntas` (`id_preguntas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usua_preguntausuario` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_preguntausua` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD CONSTRAINT `tbl_usuario_rol` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_tipo_producto`
--
ALTER TABLE `tbl_tipo_producto`
  ADD CONSTRAINT `tbl_usuario_tipo_producto` FOREIGN KEY (`creado_por`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_persona_usuario` FOREIGN KEY (`id_persona`) REFERENCES `tbl_personas` (`id_personas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_rol_usuario` FOREIGN KEY (`id_rol`) REFERENCES `tbl_roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `tbl_cliente_venta` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_venta` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
