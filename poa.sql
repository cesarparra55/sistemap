-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2018 a las 13:35:10
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `poa5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entities`
--

CREATE TABLE `entities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `funcion` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file_ptocuenta_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `punto_cuenta_creacion` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_regmercacta_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registro_mercantil_acta` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_actaconst_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acta_constitutiva` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_resolcreacion_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolucion_creacion` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rif` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision` text COLLATE utf8mb4_unicode_ci,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `file_estructorganizativa_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estructura_org` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_manualorg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manual_organizacion` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_manualnormproc_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manual_norm_proc` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependencia_presupuestaria` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_presupuestario` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion_financiera` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entities`
--

INSERT INTO `entities` (`id`, `name`, `tipo`, `funcion`, `description`, `file_ptocuenta_name`, `punto_cuenta_creacion`, `file_regmercacta_name`, `registro_mercantil_acta`, `file_actaconst_name`, `acta_constitutiva`, `file_resolcreacion_name`, `resolucion_creacion`, `rif`, `mision`, `vision`, `file_estructorganizativa_name`, `estructura_org`, `file_manualorg_name`, `manual_organizacion`, `file_manualnormproc_name`, `manual_norm_proc`, `dependencia_presupuestaria`, `codigo_presupuestario`, `identificacion_financiera`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'OCSPE', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Oficina Coordinadora de la Prestación de los Servicios Educativos. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(2, 'UCOCAR', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Unidad Naval Coordinadora de los Servicios de Carenado de la Armada. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(3, 'OCAMAR', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Oficina Coordinadora de Hidrografía y Navegación de la Armada ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(4, 'OCHINA', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Oficina Coordinadora de Apoyo Marítimo de la Armada. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(5, 'SAMALGUARN', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Servicio Autónomo de Mantenimiento de Lanchas de la Guardia Nacional. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(6, 'SAFAV', 'Órganos desconcentrados', 'Servicios desconcentrados', 'Servicio Autónomo de la Fuerza Aérea Venezolana. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', '', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(7, 'SEDEFANB ', 'Órganos desconcetrados', 'Servicios desconcentrados', 'Servicio Autónomo de Bienes y Servicios del Ejército. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(8, 'SASFANB ', 'Órganos desconcetrados', 'Servicios desconcentrados', 'Servicio Autónomo de la Salud de la Fuerza Armada. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(9, 'IPSFA', 'Entes Descentralizados', 'Institutos Autónomos todos', 'Instituto de Previsión Social de La Fuerza Armada', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123454321', 'Mision Z', 'Vision Z', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'Dependencia presupuestaria IPSFA', '12345678999', '1233344556688', 1, NULL, '2018-11-04 20:09:40'),
(10, 'IACFA', 'Entes Descentralizados', 'Institutos Autónomos', 'Instituto Autónomo, Círculo de las Fuerzas Armadas ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(11, 'IORFAN', 'Entes Descentralizados', 'Institutos Autónomos', 'Instituto de Oficiales de las Fuerzas Amadas en Situación de Retiro ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(12, 'UNEFA', 'Entes Descentralizados', 'Institutos Autónomos', 'Universidad Nacional Experimental de La Fuerza Armada ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(13, 'UMBV', 'Entes Descentralizados', 'Institutos Autónomos', 'Universidad Militar Bolivariana ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(14, 'SEGUROS HORIZONTE ', 'Entes Descentralizados ', 'Empresas del Estado ', 'Seguros Horizonte, C.A. ', '0', 'link al archivo ', '0', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'J-123456789 ', 'Mision ', 'Vision ', '', 'link al archivo ', '', 'link al archivo ', '', 'link al archivo ', 'dependencia_presupuestaria ', '123456789 ', '123456789 ', 1, NULL, NULL),
(15, 'FINANCIADORA DE PRIMAS HORIZONTE ', 'Entes Descentralizados ', 'Empresas del Estado ', 'Financiadora de Primas Horizonte, S.A. ', '0', 'link al archivo ', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(16, 'IFAMIL', 'Entes Descentralizados', 'Empresas del Estado', 'Viajes y Turismo Ifamil, C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(17, 'CAVIM', 'Entes Descentralizados', 'Empresas del Estado', 'Compañía Anónima Venezolana de Industrias Militares, C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(18, 'INVERSORA IPSFA', 'Entes Descentralizados', 'Empresas del Estado', 'Inversora Ipsfa, C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(19, 'EMSOVEN', 'Entes Descentralizados', 'Empresas del Estado', 'Empresa Mixta Socialista de Vehículos Venezolanos S.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(20, 'CONSTRUCTORA IPSFA', 'Entes Descentralizados', 'Empresas del Estado', 'Constructora Ipsfa, C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(21, 'EMILTRA', 'Entes Descentralizados', 'Empresas del Estado', 'Empresa Militar de Transporte de la Fuerza Armada Nacional Bolivariana C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(22, 'BANFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Banco de la Fuerza Armada Nacional Bolivariana C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(23, 'EMCOFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Empresa de Sistema de Comunicaciones de la Fuerza Armada Nacional Bolivariana C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(24, 'AGROFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Empresa Agropecuaria de la Fuerza Armada Nacional Bolivariana C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(25, 'TVFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Canal de Televisión Digital Abierta para la Fuerza Armada Nacional Bolivariana C.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(26, 'EMCOFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Fondo Misión Negro Primero S.A.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(27, 'EMSOVEN', 'Entes Descentralizados', 'Empresas del Estado', 'Empresa Mixta Bolivariana CANCORFANB, S.A,', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(28, 'FONDO DE INVERSION MISION NEGRO PRIMERO', 'Entes Descentralizados', 'Empresas del Estado', 'Compañía Anónima Militar de Industrias Mineras, Petrolíferas y de Gas (CAMIMPEG)', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(29, 'CANCORFANB', 'Entes Descentralizados', 'Empresas del Estado', 'Constructora de la Fuerza Armada Nacional Bolivariana (CONSTRUFANB, C.A)', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(30, 'COMPLEJO INDUSTRIAL TIUNA I', 'Entes Descentralizados', 'Empresas del Estado', 'Complejo Industrial Tiuna I, C.A', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(31, 'COMPLEJO INDUSTRIAL TIUNA II', 'Entes Descentralizados', 'Empresas del Estado', 'Complejo Agroindustrial Tiuna II C.A', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(32, 'CAMIMPEG', 'Entes Descentralizados', 'Fundaciones', 'Neumáticos del Alba,S.A (NEUMALBA, S.A)', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(33, 'IMPREFANB', 'Entes Descentralizados', 'Fundaciones', 'Imprenta de la Fuerza Armada Nacional Bolivariana, S.A. (IMPREFANB,S.A)', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(34, 'NEUMALBA', 'Entes Descentralizados', 'Fundaciones', 'Fundación de Cardiología Integral', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(35, 'FUNDASMIN', 'Entes Descentralizados', 'Fundaciones', 'Fundación de Atención Social del Ministerio del Poder Popular para la Defensa', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(36, 'FUNDACION MURONTO', 'Entes Descentralizados', 'Fundaciones', 'Centro de Innovación para el Desarrollo', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(37, 'FUNDACARDIN', 'Entes Descentralizados', 'Fundaciones', 'Fundación de Cardiología Integral', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(38, 'FUNDACION VICENTE SALIAS', 'Entes Descentralizados', 'Fundaciones', 'Fundación Vicente Salías.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(39, 'FUNDACION MUSEO AERONAUTICO', 'Entes Descentralizados', 'Fundaciones', 'Fundación Ecuestre del Ejército.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(40, 'FONDOEFA', 'Entes Descentralizados', 'Asociaciones Civiles', 'Fundación Museo Aeronáutico de la F.A.V.', '0', 'link al archivo', '0', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'J-123456789', 'Mision', 'Vision', '', 'link al archivo', '', 'link al archivo', '', 'link al archivo', 'dependencia_presupuestaria', '123456789', '123456789', 1, NULL, NULL),
(41, 'Aviacion', 'sagfsafg', 'swefswgasg', 'Aviones de guerra', NULL, NULL, '0', NULL, '', NULL, '', NULL, 'J-23423424', 'gergergerrg', 'wggdgkjyhkh', '', NULL, '', NULL, '', NULL, 'jhililijliljh', NULL, 'jhlijhilljljñjoñ', NULL, '2018-11-05 05:27:23', '2018-11-05 05:27:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entityusers`
--

CREATE TABLE `entityusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `entity_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entityusers`
--

INSERT INTO `entityusers` (`id`, `user_id`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 22, 2, NULL, NULL),
(2, 22, 8, NULL, NULL),
(3, 22, 20, NULL, NULL),
(4, 22, 33, NULL, NULL),
(5, 22, 37, NULL, NULL),
(6, 23, 1, NULL, NULL),
(7, 23, 3, NULL, NULL),
(8, 23, 5, NULL, NULL),
(9, 23, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2015_01_20_084450_create_roles_table', 1),
(34, '2015_01_20_084525_create_role_user_table', 1),
(35, '2015_01_24_080208_create_permissions_table', 1),
(36, '2015_01_24_080433_create_permission_role_table', 1),
(37, '2015_12_04_003040_add_special_role_column', 1),
(38, '2017_10_17_170735_create_permission_user_table', 1),
(39, '2018_01_16_214348_create_entities_table', 1),
(40, '2018_01_16_214348_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(2, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(3, 'Creación de Usuarios', 'users.create', 'Podría crear nuevos usuarios en el sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(4, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(5, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(6, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(7, 'Ver detalle de un rol', 'roles.show', 'Ve en detalle cada rol del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(8, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(9, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(10, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(16, 'Navegar Entes', 'entities.index', 'Lista y navega todos los entes del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(17, 'Ver detalle de un ente', 'entities.show', 'Ve en detalle cada ente del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(18, 'Creación de entes', 'entities.create', 'Podría crear nuevos entes en el sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(19, 'Edición de entes', 'entities.edit', 'Podría editar cualquier dato de un ente del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09'),
(20, 'Eliminar entes', 'entities.destroy', 'Podría eliminar cualquier entes del sistema', '2018-10-29 22:25:09', '2018-10-29 22:25:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 6, 2, '2018-10-30 17:40:40', '2018-10-30 17:40:40'),
(7, 16, 2, '2018-10-30 17:40:41', '2018-10-30 17:40:41'),
(8, 17, 2, '2018-10-30 17:40:41', '2018-10-30 17:40:41'),
(9, 18, 2, '2018-11-05 21:54:07', '2018-11-05 21:54:07'),
(10, 19, 2, '2018-11-05 21:54:07', '2018-11-05 21:54:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Autem quidem quasi velit amet et non sed.', 'Voluptate similique sequi animi sapiente ducimus sapiente.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(2, 'Sequi eos praesentium voluptatum eos.', 'Aliquam sapiente error tempora quos quibusdam odit aliquam.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(3, 'Veritatis laborum autem harum enim cum ut laudantium ipsam.', 'Consequatur aut suscipit quia aut minus modi accusamus.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(4, 'Voluptate error officiis dolores qui deleniti in soluta quia.', 'Quod culpa ea aliquam.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(5, 'Ratione laudantium non molestias iste.', 'Cupiditate porro non est facere.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(6, 'Nihil quia quia placeat dolor modi ut quasi eum.', 'Tempore ut magnam consequatur inventore assumenda.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(7, 'Itaque corrupti atque eum hic rerum eveniet.', 'Optio ipsum suscipit ea nobis distinctio.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(8, 'Dolores aliquam sit id error dolores voluptatibus.', 'Suscipit rerum qui nihil numquam.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(9, 'Error quo maxime accusantium qui nam ut accusantium.', 'Quis eos maxime ut libero nihil quas praesentium.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(10, 'Eum eos velit sit est.', 'Officiis et voluptatibus placeat officia ea enim.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(11, 'Incidunt dolor eos quos earum excepturi pariatur ut.', 'Iusto esse doloremque non libero ad commodi voluptatibus quas.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(12, 'Fugit error dolorem tenetur reprehenderit eveniet.', 'Repudiandae vel dignissimos rem sequi sapiente.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(13, 'Aspernatur ex repudiandae aperiam laborum sapiente voluptatem.', 'Ut culpa necessitatibus minima magnam corrupti.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(14, 'Veritatis ipsam culpa ea voluptas praesentium voluptas.', 'Doloribus ut tempore eos dolorem.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(15, 'Nulla sit voluptatem deserunt unde odio eum distinctio.', 'Voluptates nesciunt sint dolores impedit debitis quia.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(16, 'Qui expedita voluptatem omnis quam facilis delectus cum.', 'Dolores dolor repellendus est magni nobis voluptatem.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(17, 'Velit possimus et ea ab veritatis et.', 'Autem animi numquam et nesciunt.', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(18, 'Quod voluptatibus velit quia et quod.', 'Quia pariatur omnis illo asperiores.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(19, 'Voluptate dignissimos deleniti sed fuga sunt cum illo doloribus.', 'Omnis sed hic voluptates.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(20, 'Voluptate esse qui commodi.', 'Quia cum nobis et ratione commodi voluptatem.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(21, 'Dolor quia consequatur enim ipsa provident.', 'Veritatis optio deserunt voluptatibus eaque maiores blanditiis rem non.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(22, 'Consequatur est provident nisi minus voluptatem.', 'Autem accusamus et beatae recusandae aut laborum.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(23, 'Minus est odio nobis autem.', 'Similique recusandae et et accusantium.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(24, 'Dolorem maiores perferendis tempore itaque.', 'Ad ex accusamus dolores.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(25, 'Tempora in rem aut nihil et ut.', 'Qui non omnis autem quaerat.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(26, 'Aliquam rerum ut nesciunt qui.', 'Ipsum aut ratione fugiat repellat nihil quis aut.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(27, 'Cumque maiores delectus dolorum non eos alias fugiat.', 'Fugit reiciendis aliquid enim nostrum tenetur sed vitae.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(28, 'Necessitatibus est voluptatem rerum ab in voluptatem aut.', 'Illum quo sapiente excepturi magni aut molestias et.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(29, 'Iure laboriosam corporis magni rem et quisquam.', 'Dolores praesentium beatae blanditiis quis fugit molestiae omnis.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(30, 'Asperiores vel dolores voluptatem modi tenetur commodi voluptates.', 'Ex molestiae dolores qui quisquam quo ut voluptatem.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(31, 'A sit aut illo nam et minima est.', 'Qui animi animi minus quos.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(32, 'Et velit aliquam inventore.', 'Et id totam explicabo quibusdam.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(33, 'Et natus officiis voluptas illo dolor ducimus quas.', 'Id quaerat ea ex et sit voluptas et.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(34, 'Asperiores non eos ut eum voluptatum.', 'Placeat omnis quas et vitae reprehenderit doloremque.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(35, 'Earum velit pariatur rem velit.', 'Nihil vero quia consequatur sapiente.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(36, 'Omnis inventore quia nisi aliquam laborum quisquam laudantium.', 'Repudiandae vero quas consequatur fugit.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(37, 'Tenetur est magni sit est eum in aperiam.', 'Autem nam quo veritatis vel sint saepe possimus.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(38, 'Laboriosam nisi vel voluptatem ullam et voluptatem.', 'Facilis quaerat dolores a vero.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(39, 'Dolorem deleniti illo quia animi magni nostrum.', 'Tempora blanditiis eos ullam reiciendis sed.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(40, 'Et at numquam non dolorem et qui natus.', 'Magni enim et ab.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(41, 'Nobis et in dolorem cumque odio nesciunt.', 'Aut ea voluptas voluptas soluta suscipit vitae laudantium qui.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(42, 'Pariatur nesciunt omnis aut neque voluptatem rem veniam.', 'Minima optio eum ut magni eius quaerat ea.', '2018-10-29 22:25:12', '2018-10-29 22:25:12'),
(43, 'Officiis et fuga qui esse voluptatem.', 'Quos facilis ut blanditiis eaque.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(44, 'Vel itaque voluptas saepe nesciunt et laudantium.', 'Ut et assumenda aut modi totam.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(45, 'Labore autem nemo aut iure harum recusandae consequatur.', 'Rerum necessitatibus architecto sit.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(46, 'Illo id est cupiditate sit exercitationem est dicta sit.', 'Laboriosam animi et et.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(47, 'Distinctio expedita eaque ea aut aut eaque facilis.', 'Provident blanditiis iste aut libero inventore quo perspiciatis cum.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(48, 'Dolorum necessitatibus eaque ipsum optio esse.', 'Sunt modi nihil hic est voluptas.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(49, 'Eum molestiae consequatur nisi ipsa.', 'Illo est explicabo quod saepe doloribus assumenda.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(50, 'Repellat non ut magnam sit expedita dicta.', 'Hic sed saepe ad ipsam.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(51, 'Totam quia et doloribus et explicabo a.', 'Voluptatem minus sit cupiditate accusamus ad.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(52, 'Voluptatem sit ut doloremque aut.', 'Porro ut repellat et itaque corrupti labore.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(53, 'Consequuntur amet qui dignissimos quibusdam laudantium in.', 'Et aut eum laborum iste beatae ipsam.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(54, 'Fugiat voluptas non aut.', 'Nemo dolor neque odit aut et sint.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(55, 'Consequuntur ut necessitatibus totam ullam doloremque enim.', 'Nulla omnis debitis ut inventore.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(56, 'Pariatur provident recusandae dolor ipsum.', 'Dicta rem qui qui eum error.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(57, 'Omnis tempore et maxime consequatur hic atque.', 'Modi autem architecto velit.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(58, 'Explicabo fuga consequatur porro ut ad.', 'Fugiat necessitatibus inventore soluta repellendus.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(59, 'Consequuntur recusandae provident temporibus perspiciatis qui neque.', 'Vel quia laudantium culpa quia odit saepe et.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(60, 'Ratione corporis perspiciatis quia eum velit earum saepe hic.', 'Unde sint quam ipsa occaecati.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(61, 'Accusamus reprehenderit debitis aperiam.', 'Dolore eveniet necessitatibus deserunt aspernatur.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(62, 'Est qui laborum est molestiae.', 'Consequatur est explicabo quos error voluptatem saepe.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(63, 'Sit eius facere culpa est.', 'Pariatur id recusandae dolorum est quia.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(64, 'Quasi sequi aliquam ipsam voluptas.', 'Ut odio et hic mollitia sed et.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(65, 'Aut laborum ab quibusdam ab quo amet.', 'Nemo vel omnis laborum nesciunt veniam nihil.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(66, 'Mollitia exercitationem eligendi ut et.', 'Doloremque sint amet iusto consequatur vero.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(67, 'Eum eius impedit minima quia distinctio sit.', 'Est quia dolorem et perspiciatis quis.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(68, 'Blanditiis itaque libero unde provident eveniet itaque nobis.', 'Quos qui eos sequi molestiae.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(69, 'Libero est aut aut quasi dicta accusamus.', 'Itaque voluptas quia incidunt.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(70, 'Praesentium distinctio et sit explicabo odit.', 'Sit corrupti maxime dolorem tempora et quos et dolore.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(71, 'Non repellendus sit doloribus velit sint perferendis.', 'Consequatur qui earum praesentium quisquam mollitia distinctio tenetur voluptatem.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(72, 'Ut qui est quod dolore.', 'Iusto maxime voluptatem voluptatem dolor magnam corporis et.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(73, 'Vel sapiente aut commodi quae et.', 'Voluptas ut sed eaque quisquam ratione.', '2018-10-29 22:25:13', '2018-10-29 22:25:13'),
(74, 'Vel accusantium doloremque id labore.', 'Impedit deleniti dolorem quia veniam perferendis ab et qui.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(75, 'Quibusdam quas rerum consequatur recusandae quod fuga.', 'Quos recusandae necessitatibus fuga rerum.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(76, 'Est sed est qui rem adipisci rerum.', 'Nihil amet blanditiis ex dolor.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(77, 'Quia tempore molestiae cum ratione vero enim voluptatem.', 'Rerum quia qui facere eveniet delectus sit dolorem.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(78, 'Earum voluptatem quo eos veniam voluptas beatae.', 'Aut sed eligendi et vero quia temporibus non.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(79, 'Voluptatem nisi dolorem qui consequuntur voluptatem.', 'Quia explicabo quasi dolores id consequuntur atque.', '2018-10-29 22:25:14', '2018-10-29 22:25:14'),
(80, 'Minima omnis voluptatem illum consequatur est.', 'Maxime quis corrupti dolorem in officia atque aut.', '2018-10-29 22:25:14', '2018-10-29 22:25:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'slug', 'Control total del sistema', '2018-10-29 22:25:11', '2018-10-29 22:25:11', 'all-access'),
(2, 'Analista 1', 'entities.index', 'Solo puede visualizar entes/organos que le hayan sido asignados', '2018-10-30 17:40:39', '2018-11-05 21:54:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, '2018-10-29 18:29:21', '2018-10-29 18:29:25'),
(4, 2, 22, '2018-11-05 19:31:24', '2018-11-05 19:31:24'),
(5, 2, 23, '2018-11-05 20:34:43', '2018-11-05 20:34:43'),
(6, 2, 1, '2018-11-06 15:41:41', '2018-11-06 15:41:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laurianne VonRueden', 'lula.crooks@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QJXHy5sz0p', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(2, 'Markus Volkman', 'uhodkiewicz@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IN0SkdBZUc', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(3, 'Annetta Murphy V', 'vlemke@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rHoNP3hvf5', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(4, 'Dr. Ola Ward', 'pbreitenberg@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IDbpMnUjPR', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(5, 'Clemens Blick', 'gretchen56@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '71qhKKsIUE', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(6, 'Ms. Victoria Lesch', 'verdie.goodwin@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xvDQpyo6dp', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(7, 'Luciano Dooley I', 'tina.dibbert@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zOZgxvNW5H', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(8, 'Mustafa Buckridge V', 'turner57@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ln4FwOigtR', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(9, 'Jayne O\'Connell', 'adah.cronin@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KAThyHtp6j', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(10, 'Maci Crooks III', 'tromp.ilene@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZKrxOVQl1E', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(11, 'Lura Ferry', 'roma04@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'H5gTSB4Zqt', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(12, 'Gladyce Hudson Jr.', 'bnolan@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'frymxyuy0O', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(13, 'Kiera Bogan', 'brayan61@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fnATeJuzed', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(14, 'Delmer O\'Keefe', 'kboyer@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Db3TLO5fME', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(15, 'Jasen Bergnaum', 'arlie.pagac@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O3fn2J3IkV', '2018-10-29 22:25:10', '2018-10-29 22:25:10'),
(16, 'Prof. Darrin Shanahan MD', 'cletus08@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'feEqQro65q', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(17, 'Brannon Gottlieb', 'rhermann@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EtaH23Zz8c', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(18, 'Prof. Litzy Mayer III', 'donnelly.macey@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rm2SHz48hg', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(19, 'Lamont Thompson', 'dolores.howell@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'anhtAGnJ1n', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(20, 'Leonel Walter II', 'angie01@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AHSOnJHd8e', '2018-10-29 22:25:11', '2018-10-29 22:25:11'),
(21, 'Carlos Luis', 'carlos@mail.com', 1, '$2y$10$5XQk/d.EADgQd5nDHFfRmuNcozPatboGNXIjMV71pSlTxunYuYt5a', 'LsLQTfOwR2Ww8I32qJEXXaxsOpAlifl8EJMWLxJHFWwe6npjB8RlEuyytMAH', '2018-10-29 22:28:41', '2018-10-29 22:28:41'),
(22, 'batman', 'batman@mail.com', 2, '$2y$10$bvKxuAHSjz3eCD6qDlT/R.dMX69pg.aOX8eQA2Lz6xkGV8GPKl9qO', 'Z19NtTn2CGwh1Ez9be5lHpghzNKUbXmxDvDxnLut9AlRZzJQBlke60m9oGzw', '2018-11-05 19:31:02', '2018-11-05 19:31:02'),
(23, 'Cesar Parra', 'cesar@gmail.com', 2, '$2y$10$XRRLjaZ1yqDAx6CsuAKqDuEonSSt4OjeOzjSwJyGkBY/tnYG5zcs2', 'wmKG7SyXXC6d0EdOGDFYTkgmR2eYr6G9TYzXNukKSfNBKjB6X49slg8w7Oed', '2018-11-05 20:33:32', '2018-11-05 20:33:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entityusers`
--
ALTER TABLE `entityusers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `entityusers`
--
ALTER TABLE `entityusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
