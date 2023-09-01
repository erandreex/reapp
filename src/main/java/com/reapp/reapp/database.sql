-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.10-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para admin
DROP DATABASE IF EXISTS `admin`;
CREATE DATABASE IF NOT EXISTS `admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `admin`;

-- Volcando estructura para tabla admin.admin_logs_requests
DROP TABLE IF EXISTS `admin_logs_requests`;
CREATE TABLE IF NOT EXISTS `admin_logs_requests` (
  `alr_req_id` varchar(50) NOT NULL DEFAULT '',
  `alr_fecha` datetime NOT NULL,
  `alr_tipo` varchar(50) NOT NULL,
  `alr_usuario` varchar(50) NOT NULL,
  `alr_valor_1` varchar(50) NOT NULL,
  `alr_valor_2` varchar(50) NOT NULL,
  `alr_estado` varchar(50) DEFAULT NULL,
  `alr_excepcion` text DEFAULT NULL,
  `alr_header` text DEFAULT NULL,
  `alr_body` text DEFAULT NULL,
  `alr_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_logs_requests: ~412 rows (aproximadamente)
DELETE FROM `admin_logs_requests`;
INSERT INTO `admin_logs_requests` (`alr_req_id`, `alr_fecha`, `alr_tipo`, `alr_usuario`, `alr_valor_1`, `alr_valor_2`, `alr_estado`, `alr_excepcion`, `alr_header`, `alr_body`, `alr_path`) VALUES
	('1a4098d6-3b5a-4032-9fd2-edf1109f8b8e', '2023-08-31 18:30:29', 'RUTA', '493b5805-5ec2-4710-a692-85fbb82bfd35', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2eb2aa9c-55fb-4b11-902d-9a46c93defdc', '2023-08-31 18:30:29', 'ACCION', '493b5805-5ec2-4710-a692-85fbb82bfd35', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('96cd34e5-6a8d-47d8-bb05-1e18afc4ea53', '2023-08-31 18:30:29', 'RUTA', '493b5805-5ec2-4710-a692-85fbb82bfd35', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('71114a07-ba21-4880-9be1-b45f514cb7aa', '2023-08-31 18:31:06', 'RUTA', '493b5805-5ec2-4710-a692-85fbb82bfd35', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('cb7d6ceb-024a-48c0-bc1b-23a6cfd290e8', '2023-08-31 18:31:06', 'ACCION', '493b5805-5ec2-4710-a692-85fbb82bfd35', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('e0d983b4-725e-46d1-aa23-6c1753db88ae', '2023-08-31 18:31:31', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('42a5921f-2dab-4f79-9cb9-719c8171a808', '2023-08-31 18:31:31', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('fec04d75-d86a-411e-bcd1-010bf04ed403', '2023-08-31 18:31:31', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('336f78b8-001b-4d92-9245-633c1e565a38', '2023-08-31 18:55:17', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f1e13181-77f5-48eb-a1d9-328e3f39ed32', '2023-08-31 18:55:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('b9dc351c-f834-46a8-a214-9b054e5cc1a1', '2023-08-31 18:58:32', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ff239554-e65a-4364-8e13-65d437ce91e3', '2023-08-31 18:58:32', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c047281f-728c-4bdd-8801-e94e44571a93', '2023-08-31 18:58:34', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('73613440-89a4-4957-8235-ad9fd3ca35c6', '2023-08-31 18:58:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('95594cf0-0ea0-4510-8776-47a16bf22d08', '2023-08-31 19:08:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f6f14876-2cf6-4feb-8c6e-0812a3cfec02', '2023-08-31 19:08:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('cfc1d338-d2e3-46f8-9855-8d0ca658dc24', '2023-08-31 19:08:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('8442351e-4d55-4e1f-b511-5cdfea4ce37e', '2023-08-31 19:08:48', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ac957363-b679-45cd-824a-54756681de0d', '2023-08-31 19:08:48', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ff631654-2c98-45fc-8475-c3c267d22a71', '2023-08-31 19:08:48', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c6ddb728-0c81-416a-9b9b-9826ab513294', '2023-08-31 19:08:48', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5585f06e-5ffc-461c-9e64-dca76215090b', '2023-08-31 19:08:54', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('429b6718-9f2b-44ab-a1db-eb42491c3a4d', '2023-08-31 19:08:54', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4a07aae8-23da-4255-9d78-bc7b5b075b1d', '2023-08-31 19:08:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4f5eeb98-6ad2-47cf-8215-d0e8fee12dc4', '2023-08-31 19:08:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('30ebdc40-d26c-4fcf-ab51-d4d074c5b93f', '2023-08-31 19:08:56', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ca7f08d6-93a3-491c-865f-7bef9f25bb64', '2023-08-31 19:08:56', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('98c51134-f118-4e8c-b53f-133c74db84d0', '2023-08-31 19:17:48', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'registro', NULL, NULL, NULL, NULL, NULL),
	('895dc146-399d-4494-8ccb-897463c1b963', '2023-08-31 19:17:49', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('74a6bc8c-13f3-456a-a01e-8065d4224dd1', '2023-08-31 19:17:51', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5cd774f5-af8f-4930-9d09-91fb32bdc7c7', '2023-08-31 19:17:53', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2846d997-da7a-434c-b3b9-b0672f940cfc', '2023-08-31 19:17:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4fc1a0e3-da49-42df-b871-2b3601f3f889', '2023-08-31 19:17:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('67bb7d9c-9a4b-4254-87fd-3fe640c51e7f', '2023-08-31 19:17:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('57d77afe-9d53-4c8c-8f7b-0c8dd10ccbdb', '2023-08-31 19:18:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('e4215c83-e568-4c27-a2a5-a6f4343741d2', '2023-08-31 19:18:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0cb249aa-dcf6-4b51-8958-58467e6b993a', '2023-08-31 19:18:49', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('021af381-ff50-468c-887e-c972ccccff7d', '2023-08-31 19:18:49', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9e5c6825-8cb3-4633-ba3c-d36ad23fc053', '2023-08-31 19:19:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b47de59a-d0d4-4afe-a256-50d1225164f0', '2023-08-31 19:19:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('962860a7-c353-4a69-8719-1f61bd2cebaa', '2023-08-31 19:19:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('29911f8d-f14e-4a8f-9e63-7eaa8c9cff74', '2023-08-31 19:19:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e3cae619-dfa8-4fff-9533-ffe855dd9d2c', '2023-08-31 19:19:10', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('950e27a4-991f-42f2-9584-239c5fa97763', '2023-08-31 19:19:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('f37b184c-035d-4f82-b0a3-ab0d3b966419', '2023-08-31 19:19:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('d2b84ebe-3bb4-448d-aed8-ccbad0ca399c', '2023-08-31 19:19:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ac145646-a3a0-4f7a-8aba-c1a921c8b8eb', '2023-08-31 19:19:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'crear', NULL, NULL, NULL, NULL, NULL),
	('3c5a7c3e-1243-4795-90e3-2ccaca43401d', '2023-08-31 19:19:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('93f1e1ee-5ba1-41f7-bdfa-db75cddb1449', '2023-08-31 19:19:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('a4298c3d-07b9-47c7-b20f-331911309a0e', '2023-08-31 19:19:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1f871f23-5133-4513-97d6-4f1cf438f4bb', '2023-08-31 19:20:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'registro', NULL, NULL, NULL, NULL, NULL),
	('c69a7a85-5627-4002-8aaf-84f1071c5775', '2023-08-31 19:20:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ce8bdbc3-2195-4348-80e9-22b36acf389c', '2023-08-31 19:20:13', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('253b664f-794f-4935-ba4b-a023faa0673b', '2023-08-31 19:20:26', 'RUTA', 'd2910a8a-a1f6-437e-97c9-d4d279c4d994', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c62ce1b7-8b2d-428c-b7df-55fb17edc171', '2023-08-31 19:20:26', 'RUTA', 'd2910a8a-a1f6-437e-97c9-d4d279c4d994', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('35d6521f-9b6a-489c-9491-6d98f9048476', '2023-08-31 19:20:26', 'ACCION', 'd2910a8a-a1f6-437e-97c9-d4d279c4d994', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('c6b188c3-05e7-4e86-a51b-5f4e35ba6311', '2023-08-31 19:24:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2a3bad9a-f40f-41ed-9909-0856357396ee', '2023-08-31 19:24:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c287a861-ac08-4bc5-b744-e27d9f5019f2', '2023-08-31 19:24:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('1fffd8e4-b101-4709-b461-b83573c0ff6d', '2023-08-31 19:24:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('10604fde-ff02-4f3f-af9b-fab3ed10b9f5', '2023-08-31 19:24:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('796c4ce0-604e-44e4-80da-4b5e677ea87d', '2023-08-31 19:24:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2b11ea74-f15d-4c91-99e0-c2bae7b58ca4', '2023-08-31 19:24:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1c924a27-ab03-4cc1-ac05-9f499b4326c8', '2023-08-31 19:24:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('a7e119a6-84db-488b-914e-79178a74c98f', '2023-08-31 19:24:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e9acc716-9cd4-4cea-937b-e0d91a7c95f3', '2023-08-31 19:24:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('8a3cb524-3f8b-418e-b824-466662767f36', '2023-08-31 19:24:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2ddc6ff0-6bb8-4ddf-843d-e1d57e9ec47d', '2023-08-31 19:24:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('16b2c893-a463-4f2d-84f5-bbcecc4b2885', '2023-08-31 19:24:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c7355c22-7237-41b8-b5e7-b154157b522e', '2023-08-31 19:24:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('04d8046c-fa68-47f6-960b-acff8ac17e17', '2023-08-31 19:24:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('132facb9-7ebe-40fb-82d2-314bd974752c', '2023-08-31 19:24:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('345c170c-ea43-4f11-91d4-f74b3470a293', '2023-08-31 19:24:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('07f23c4b-2200-40b2-903e-08fb2dcb96ee', '2023-08-31 19:24:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('28aa13d1-fe56-4e65-a9c3-f4a59a2f8bfa', '2023-08-31 19:24:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('398240c3-31d6-4e49-b19e-b8154f272c02', '2023-08-31 19:25:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('cb5cd143-68f1-4a19-8c44-43a588dc18ad', '2023-08-31 19:25:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e0e5cc53-821f-4b21-a1e3-60ff2d0f519d', '2023-08-31 19:25:09', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c16235c9-124d-4132-9423-b28f5fea940e', '2023-08-31 19:25:09', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('66a89bc4-c407-452b-bf88-c1ef06c633c3', '2023-08-31 19:25:10', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('39f76195-38cb-4175-8067-4ca6831f9e1c', '2023-08-31 19:25:10', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0a54ffe6-5971-4780-9145-acd5277761c8', '2023-08-31 19:25:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('8ffa2ccb-1b5d-4f9e-8194-73a38b30547d', '2023-08-31 19:25:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('723b1f9b-cc48-4f41-853e-f0a1ffdc7232', '2023-08-31 19:25:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('048a598b-975f-4b50-95b1-5b353e9a9cd9', '2023-08-31 19:25:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('81105078-2ed9-45db-a09e-0170d659cb13', '2023-08-31 19:25:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2cb2d737-ac75-4fcd-a214-e4baeee0f32a', '2023-08-31 19:25:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('58145c2a-f8de-4ca9-ab83-0b727623a865', '2023-08-31 19:25:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('75a0ea43-4584-45c3-a13b-17a3133bd7ad', '2023-08-31 19:25:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1d1ff2e9-093e-4109-82d1-1e49ff17e25a', '2023-08-31 19:25:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ffb087cb-b415-48ac-92d5-c902dc8952ce', '2023-08-31 19:25:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e2572410-a427-480f-a340-f3cb331cf766', '2023-08-31 19:25:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0279c7cc-0bc1-4271-a821-80e67ffebb90', '2023-08-31 19:25:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('135c965a-458f-4a82-ad30-1e08b72628b2', '2023-08-31 19:25:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('d00098cc-05cc-4d18-bcb6-f940a1bca26e', '2023-08-31 19:25:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('489e9ddc-711e-4fac-b0ce-3c31b0cf81a1', '2023-08-31 19:25:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f62e4cb1-d8ed-4e86-84bb-cd96275b1c8f', '2023-08-31 19:25:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c28b46be-c4f5-4da9-b842-18e3f88e6dfe', '2023-08-31 19:25:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1750df7e-5717-4d2c-b708-fce967dac179', '2023-08-31 19:39:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'crear', NULL, NULL, NULL, NULL, NULL),
	('ac956cc6-22eb-497e-823a-8c1f2492af72', '2023-08-31 19:39:58', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e256e60d-a7de-404f-9798-64e1fd8c3574', '2023-08-31 19:47:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('372640b5-cf86-4810-b176-b171e66f9ba9', '2023-08-31 19:47:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4c51042b-5810-4e51-976a-4fb05dff50f3', '2023-08-31 19:48:59', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('639beed5-390e-4943-b92a-20af448788a0', '2023-08-31 19:49:09', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('71ec8590-8326-4753-a14b-db3131cdafc4', '2023-08-31 19:49:09', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5358ef65-cafd-4ddf-9c1b-4670dab0c23f', '2023-08-31 19:49:10', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('833a90ac-45be-4196-b44e-50f05d58f9e6', '2023-08-31 19:49:10', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('8a755353-7d5c-4429-a3ad-4561438c2f50', '2023-08-31 19:49:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('3f468f50-a0b8-4c56-a9ae-41e34b5a6793', '2023-08-31 19:49:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('df28feee-f6bc-4708-913b-496d08ff2049', '2023-08-31 19:49:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('c2ea170e-f57a-4828-bb33-06e8bde6a26f', '2023-08-31 19:49:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('bbf90f94-98fd-4542-987e-646e146d11a2', '2023-08-31 19:49:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'crear', NULL, NULL, NULL, NULL, NULL),
	('86e547fb-3cb8-4be9-a266-20fd4d0325af', '2023-08-31 19:49:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ab7f1220-796c-4f37-a335-0512a546c862', '2023-08-31 19:50:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('386d4574-1c70-4b8a-b969-724368bfc564', '2023-08-31 19:50:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('d4669290-c90d-40b2-a3d7-d3a29535d4a9', '2023-08-31 19:50:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'registro', NULL, NULL, NULL, NULL, NULL),
	('605b26e3-d39c-4483-9bcd-b017bc121282', '2023-08-31 19:50:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('43b2e4d6-b0af-4c33-8897-578d99bcb8cb', '2023-08-31 19:50:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('93ae691c-7c4b-4204-a134-ba576d9c51f4', '2023-08-31 19:50:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('9e7e9dd9-4e8d-45ea-9b80-c302686fc7a7', '2023-08-31 19:50:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ddc6d1a1-1405-4cdd-8952-db04e1684abf', '2023-08-31 19:50:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('b53d2c80-83c8-4f2e-86a9-26970a5bee7b', '2023-08-31 19:50:31', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e86e92ac-d693-4211-8d16-2fcb1b699ee7', '2023-08-31 19:50:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('d72ea050-0885-4e94-844b-c827b10d7c9a', '2023-08-31 19:50:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('d848d304-f01d-441d-9970-67fa8a4678e9', '2023-08-31 19:50:42', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('031463ee-98f7-4090-88ca-bc0830beef3d', '2023-08-31 19:50:42', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e4f0bf37-ee49-477a-b071-788555d3b791', '2023-08-31 19:50:54', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('5f6a7935-0bb8-4f97-97f3-cb2b1aeacbef', '2023-08-31 19:50:54', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2535526e-2c17-4377-9b3d-c150f3d60796', '2023-08-31 19:51:06', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('3cf36000-bf10-4976-b95a-89a4fd95889a', '2023-08-31 19:51:06', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('87dc5d79-d66c-4a61-a9d4-349069fff776', '2023-08-31 19:51:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'crear', NULL, NULL, NULL, NULL, NULL),
	('ec50f162-28ce-4f78-945b-90d94587e602', '2023-08-31 19:51:13', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('60632034-5362-4b84-be6f-e44a531f6f60', '2023-08-31 19:51:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6f795428-0ce0-418e-96df-65e3c62f0651', '2023-08-31 19:51:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ef880e11-edb8-45ee-b351-d1322c5dd033', '2023-08-31 19:51:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'registro', NULL, NULL, NULL, NULL, NULL),
	('b40aa489-8395-43da-8bed-626ae3b716aa', '2023-08-31 19:51:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('82d889c9-e8b2-41dd-babe-7e1603a55da1', '2023-08-31 19:51:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1a4fc6b7-4de7-4512-a40a-fd7e229a3e9b', '2023-08-31 19:51:32', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'registro', NULL, NULL, NULL, NULL, NULL),
	('d81a7438-ffc7-4152-adbc-5e41ce026c6a', '2023-08-31 19:51:33', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4c1de972-66f2-4088-a2c5-e1223038c0f4', '2023-08-31 19:51:33', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('acb4bdd5-8479-4001-9176-651eb542ae3c', '2023-08-31 19:51:36', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('093bd118-891f-4216-9952-95c42274b6a3', '2023-08-31 19:51:36', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('01fce377-92b1-406a-b5d0-6308432ae055', '2023-08-31 19:51:38', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('22ad0cb3-afa0-4c67-a0fb-6d29c1f2a8ea', '2023-08-31 19:51:38', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9d359a8a-9030-4cf0-9434-498b201ea108', '2023-08-31 19:51:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('db3995b2-d6a2-4499-aaaf-5c43eb161208', '2023-08-31 19:51:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2ac3d4b1-5c5f-496c-b43e-d855c6e55c75', '2023-08-31 19:51:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('6daaeb3b-6c60-4568-9f4f-e4c91bc70262', '2023-08-31 19:51:47', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('772e9018-2471-4c83-a07b-d07a1c33ae71', '2023-08-31 19:51:50', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('bcd26535-4306-489a-8ac5-ab89d8457f5c', '2023-08-31 19:51:50', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0141c029-12b4-4c25-92af-433b41545133', '2023-08-31 19:51:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('e662a790-f1fc-4140-bfdf-7b415a2a60d1', '2023-08-31 19:51:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2a08ca05-4e7f-4077-869c-18dc5033f21b', '2023-08-31 19:55:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('0b00c368-4e1b-43ce-b288-f73478875e87', '2023-08-31 19:55:13', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('4fa613c6-8325-4af8-8d26-ea3bc8e738e7', '2023-08-31 19:55:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('ecbc9be0-7e5d-46da-bf7f-7b3178332342', '2023-08-31 19:55:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'remover', NULL, NULL, NULL, NULL, NULL),
	('e136130f-6dda-4148-88af-a122478cecd2', '2023-08-31 19:56:03', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('86901e93-b878-4073-9440-f405cf98d6ae', '2023-08-31 19:56:03', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9a4eea93-2a3d-4774-9089-b3b1f7d085cd', '2023-08-31 19:56:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('222aea7e-ef05-483a-bb91-7b659a404dca', '2023-08-31 19:56:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('84913a6e-b1c8-47ef-be3a-0cd8b3c3d5e2', '2023-08-31 19:56:13', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b0c38155-7496-43d5-878a-e81d7b058294', '2023-08-31 19:56:13', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c5e6b6aa-4298-40ac-b280-c03209fd9a88', '2023-08-31 19:58:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('15852f2e-2c60-49b2-8652-9aba16e4ee1f', '2023-08-31 19:58:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('7c9b762b-e82e-4fce-b1aa-4ccaee050d3a', '2023-08-31 19:58:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b02420bd-ee2c-4367-a9ad-7241c4b7fb2b', '2023-08-31 19:58:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('78d58479-1c52-40ea-a8d5-d2d25d59c0c7', '2023-08-31 19:58:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b2aad456-a052-4fb9-b75e-7f928b74eadd', '2023-08-31 19:58:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('776a07d2-3998-4f7a-a377-0e48d5ef15d0', '2023-08-31 19:58:47', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('51f73896-8a58-43e4-84ce-d35180ba76d0', '2023-08-31 19:58:47', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7f43434c-0187-4753-8b14-3d1056a75c72', '2023-08-31 19:58:48', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0357af97-554f-40ae-bb64-1b409f003169', '2023-08-31 19:58:48', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('22369e3b-3fb0-407a-9fea-c94b175beb2f', '2023-08-31 19:58:53', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c4b524fb-bc08-4952-b4a4-f6ac72a097ef', '2023-08-31 19:58:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6ee621d1-3822-43c8-a446-d55b5e5d20b6', '2023-08-31 19:58:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ad54b349-a5d6-4a59-91d3-c07806ffa964', '2023-08-31 19:59:17', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('96ecaec0-4dde-4363-9bfd-d228aa9a6a1b', '2023-08-31 19:59:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2f4b7c54-3902-4eeb-befd-a7503106c20e', '2023-08-31 19:59:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('bced2d48-3e5b-46e4-809e-279c849cee21', '2023-08-31 19:59:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('3d00c3ad-1fc0-48e7-b117-a8bc42ef19e7', '2023-08-31 19:59:25', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6fded3e5-7cb0-49c5-ac98-6c79451f40dc', '2023-08-31 19:59:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('a810d9d9-96d5-4819-85a2-18d013be0c64', '2023-08-31 20:05:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('828b299d-e72c-4afb-ba57-6b462083f156', '2023-08-31 20:05:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('a541b280-7ee9-42e1-82b0-1ad760c1fe61', '2023-08-31 20:06:20', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b33d047f-74dd-4abb-a902-c706b528a9bd', '2023-08-31 20:06:20', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ef5226fd-9e4a-4867-a814-efb0159ce149', '2023-08-31 20:06:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'agregar', NULL, NULL, NULL, NULL, NULL),
	('046a3961-609c-4e2a-9699-062bb473c3a8', '2023-08-31 20:06:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('8cdfaa95-7190-4486-8831-082a42b7c5f6', '2023-08-31 20:06:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('55b9e782-d553-4689-9de6-680451ee13c0', '2023-08-31 20:06:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0286e41d-7995-4bba-bd20-782e87de1489', '2023-08-31 20:06:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('5ad9ceaa-b94e-4063-9556-b33df0a63819', '2023-08-31 20:06:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('939e1ae3-902f-4c57-b748-d08f62f3f4d2', '2023-08-31 20:06:52', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('27595fda-1e6e-445f-b6db-7e0a0e93bd39', '2023-08-31 20:06:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('d79bc7de-93af-4cd5-b966-6f4c2724d3e8', '2023-08-31 20:06:58', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('7f0cb6f5-ae72-43eb-8fab-261228d0fcc6', '2023-08-31 20:06:58', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('01cb6f53-4290-49f1-a254-7bca7939c96d', '2023-08-31 20:07:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f774b1c3-773f-485d-99c5-eb354a693423', '2023-08-31 20:07:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('00dc838b-ebb7-4af0-88ee-4f1093046048', '2023-08-31 20:07:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('4756a040-3753-425e-8d18-f2407700353f', '2023-08-31 20:07:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('a7029c06-6b65-4c1e-a800-f4f047d61db3', '2023-08-31 20:07:34', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('12bd316a-746e-43ec-b051-178d4aee9095', '2023-08-31 20:07:34', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ec14b129-4af0-440f-88a6-f9ed688b4837', '2023-08-31 20:07:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('67bb542c-fada-4013-af8f-880625f6d0a3', '2023-08-31 20:07:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('16f84e37-df34-41f6-b6d5-5e1fe823cc79', '2023-08-31 20:07:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c76011d6-502d-4a8d-81d1-4023b8e7b9fc', '2023-08-31 20:07:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6dd9c218-5f59-4fce-af57-2b071ccf2dab', '2023-08-31 20:10:14', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c178a141-0263-4519-89ba-f65df88ef4f1', '2023-08-31 20:10:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('769b55f2-fb16-4888-8da9-648d777aaee5', '2023-08-31 20:16:07', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('da282951-e303-4216-8b60-46b7f686e16d', '2023-08-31 20:16:16', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b1dd9372-8b88-4a67-8465-8a58f066c765', '2023-08-31 20:16:16', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('5235d5c2-3954-4eb4-ac32-b722245fbae3', '2023-08-31 20:16:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('cfa39747-0657-4702-87eb-2e0ce71583ea', '2023-08-31 20:16:20', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('1f290d5f-6931-497e-b804-7bc5f613fe92', '2023-08-31 20:16:20', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('66d9164d-41ab-4e5d-b74e-f9b62584f5f7', '2023-08-31 20:16:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('caa973f5-4031-4d74-be09-a1db72e18645', '2023-08-31 20:17:00', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('9b7c3297-08e5-46c8-bdc4-91a4b27997fe', '2023-08-31 20:17:00', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6490a26b-445e-4321-89b5-a87bd0b18afd', '2023-08-31 20:17:00', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('577be4a4-6838-41f3-8fc0-b041d169631d', '2023-08-31 20:17:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('888cccce-460b-4dda-8633-4c47e33fc7f6', '2023-08-31 20:17:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c1b4bf9b-22e7-4245-a29a-7f77ce5e4913', '2023-08-31 20:17:06', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('b3b693e8-0fcf-474f-b364-d31764608a4a', '2023-08-31 20:17:21', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('8a7d4f0e-5d1d-42fd-9afc-939499f68c58', '2023-08-31 20:21:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('e30758ca-67e2-455e-bab1-b50768fb0b50', '2023-08-31 20:21:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c7ea6bf3-6553-4a03-bd8f-5046e484fb28', '2023-08-31 20:21:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('5654a3e5-5811-4855-a9fe-e569e49cc92d', '2023-08-31 20:21:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('cfe65861-c4d5-49f4-8499-feaacb53013e', '2023-08-31 20:21:53', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('de9c25b4-cb60-4487-85e8-caf61cf13c38', '2023-08-31 20:21:53', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6d6c2a7b-8575-4fb0-9198-167f550a35b9', '2023-08-31 20:21:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('d4f5586b-989e-4d33-a9a3-4590f4bd2137', '2023-08-31 20:21:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2c6d6551-723c-4991-b0d9-4c92cdd9036c', '2023-08-31 20:22:10', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('afbf557d-7405-4599-ba5d-1917bcd61998', '2023-08-31 20:22:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('ca61507f-56de-474d-972f-e64529ffc3e1', '2023-08-31 20:22:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('60504172-fa29-4724-a86c-91571caf274e', '2023-08-31 20:22:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('082027c6-1109-450c-9e0a-1c260eb13d7f', '2023-08-31 20:33:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('607576b7-d736-4f43-85ba-9b5ae6046b8d', '2023-08-31 20:33:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4de5e141-c6a0-4978-9594-ecb8689cb343', '2023-08-31 20:33:41', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c26dc675-863b-4706-a915-85ed36652308', '2023-08-31 20:33:41', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('2107e994-2bdc-41a2-ade2-a811ce92d8e1', '2023-08-31 20:33:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('369ff7a6-98be-46c4-bab9-c5ebd3ee050e', '2023-08-31 20:33:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5203c48d-3d5c-493d-873c-67f40121269e', '2023-08-31 20:34:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('e7c8c57e-6e37-463e-906b-abc895507592', '2023-08-31 20:34:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('f044f883-983f-4af7-b16b-cf502b55b891', '2023-08-31 20:34:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('05e67ddb-007d-419c-899a-ec4e5a3a84cf', '2023-08-31 20:34:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9ae1e338-4712-4c7f-afef-8deaff85e739', '2023-08-31 20:34:14', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('90a8e054-bea1-4209-aab6-9ca4b13e70cd', '2023-08-31 20:34:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7589b573-39ad-4aa6-af26-4a588c3c5dee', '2023-08-31 20:34:17', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4eb5fddf-fa00-4d78-84ed-d83ef4b1d528', '2023-08-31 20:34:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('382afbed-5ad7-4498-87db-568eacd0646b', '2023-08-31 20:35:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'crear', NULL, NULL, NULL, NULL, NULL),
	('7683a3f0-299d-4505-962d-09e29bd0ea20', '2023-08-31 20:35:58', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('eb2f13d4-b9a0-4d0c-9ca1-62f54bdaa8f9', '2023-08-31 20:35:59', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0c73e0b8-4925-4af1-9864-f3060c41a346', '2023-08-31 20:36:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('eed05fff-7d41-4ccd-8fe5-2fd4fd9c0678', '2023-08-31 20:36:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5dd2af0f-38b4-412f-a1bb-edbddb446b5c', '2023-08-31 20:36:20', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('d6dc0d2a-d969-443f-a8f9-c9ca1608ebb4', '2023-08-31 20:49:33', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'crear', NULL, NULL, NULL, NULL, NULL),
	('3aeb9b50-4aaa-4ee3-8ff9-a16a7bb41ab4', '2023-08-31 20:49:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ee0a745b-23e5-4ef4-93d5-2316ee7ce04c', '2023-08-31 20:49:35', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('159e90ac-5983-4636-8cc5-332c95150bbf', '2023-08-31 20:49:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c4df7f80-ca44-4b1f-b122-64a6e29d835a', '2023-08-31 20:49:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('12778fe1-722c-4889-8ecf-c59d7d5fcc00', '2023-08-31 20:49:58', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL, NULL, NULL, NULL),
	('6d5097bb-4800-4323-9f55-f2513225f11a', '2023-08-31 20:49:59', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('3134f49b-ec98-4038-b735-fa30d594c5c4', '2023-08-31 20:50:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('75789ad3-8c8f-42f5-86bb-b72c57c563d9', '2023-08-31 20:50:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0ea21a20-c524-44fa-bfe3-48506cea72ed', '2023-08-31 20:50:07', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'agregar', NULL, NULL, NULL, NULL, NULL),
	('1c1a62d5-adbc-440e-b912-4eecc0650d50', '2023-08-31 20:50:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('3cdbfae1-67be-4a9e-86af-d69c6c6ab35b', '2023-08-31 20:50:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('66b2f29e-746a-47e0-adbf-98ac5d89933c', '2023-08-31 20:50:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('687ba9c4-a8f4-47d0-83cf-e2b8fd42d85d', '2023-08-31 20:50:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('aa545629-d311-47d2-a878-b3df642affd2', '2023-08-31 20:50:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7736d0d3-fbb4-4162-9bab-c18f3f5b2423', '2023-08-31 20:50:16', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('51039ef7-4d7f-43ee-92f3-bcaaba1fddeb', '2023-08-31 20:50:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('679c08da-6995-4818-9cf9-c88ca054f82f', '2023-08-31 20:50:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL, NULL, NULL, NULL),
	('1eb7f4cc-e858-49e6-b0c2-f97ea061eb1c', '2023-08-31 20:50:56', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL, NULL, NULL, NULL),
	('923318e4-d76b-425f-a27f-30af1a5aa3e1', '2023-08-31 20:50:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('b22fd192-a003-4342-8b04-cfb28fdb6edc', '2023-08-31 20:51:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('8209b6f1-0a42-42a7-8eaa-cd278a0825c2', '2023-08-31 20:51:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('1aa5bb24-2a1d-4e59-8b7f-adf75a33d2c5', '2023-08-31 20:51:02', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('4a5f42e3-70d1-433f-b5f1-2d5aaa9148f1', '2023-08-31 20:51:02', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e9ac9e11-a655-4454-a36a-974292445b6f', '2023-08-31 20:51:05', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2df6fe7a-7cc1-44e4-a033-94e28432063b', '2023-08-31 20:51:05', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6ad639f5-34e6-4c60-82b9-86f4455d0765', '2023-08-31 20:51:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'agregar', NULL, NULL, NULL, NULL, NULL),
	('c504b3bd-0b96-447b-98b7-e5194be8f56b', '2023-08-31 20:51:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('8a0e0cd7-ecba-4db0-a951-4e5d0ad5b792', '2023-08-31 20:51:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('97366cc5-6f21-4d31-9cf6-8bc5c5abd63f', '2023-08-31 20:51:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f9cfd4d1-3e6e-4aa3-8988-9316cf2da666', '2023-08-31 20:51:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('0dde0f1c-df84-4e70-9209-2c04f04493c7', '2023-08-31 20:51:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('57e27885-02a6-40d5-bff3-694292b73bd7', '2023-08-31 20:51:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('83a1aaa4-bed2-42f0-a506-1b82946f991d', '2023-08-31 20:51:22', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6ff7d753-6035-4b16-9b87-b3a7da6837cd', '2023-08-31 20:51:22', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('d0573e94-5fdb-4239-80ce-4a6d81a3417c', '2023-08-31 20:51:22', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL, NULL, NULL, NULL),
	('83552152-57b9-458b-90ad-b52752c275f1', '2023-08-31 20:51:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('25bc56f8-c38a-4c57-a7b2-30aef3d93a94', '2023-08-31 20:51:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('030d6fdc-0b38-4ae2-b621-b8e2c990d2fd', '2023-08-31 20:51:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('1fc7312b-8832-42b8-8b88-292db726d1d3', '2023-08-31 20:51:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('61acdd3c-fdff-407d-b450-e9dd51f4ab58', '2023-08-31 20:51:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4b49bcd8-a785-4a9b-8304-82650e0f772f', '2023-08-31 20:51:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('75405143-6bc4-48b1-a1be-85232616af7a', '2023-08-31 20:51:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('9418c5f4-fffc-4f2f-a168-ddad57b527bb', '2023-08-31 20:51:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4b96531a-8fec-4a0c-a40d-d29d7ab4bb72', '2023-08-31 20:51:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0ec2a16b-9512-4225-b9ad-2ed255ae4174', '2023-08-31 20:51:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7ec3ce8f-fa57-4b18-9520-5ef26da2a727', '2023-08-31 20:51:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('635d2d2b-dc24-47cf-b052-a022c8ba0a9c', '2023-08-31 20:51:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('d813fba9-acce-4cc7-a7d0-f668b1931151', '2023-08-31 20:51:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('a11d86ef-20da-499a-b16d-6e85eb9ddeeb', '2023-08-31 20:51:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4ab1b2ca-9da3-49cf-b9c2-add58f38f6ed', '2023-08-31 20:51:34', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('7bbc3323-d4f7-4083-bbcd-52de975be2f4', '2023-08-31 20:51:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('587d5276-0bd7-4236-b374-3881438ec7f9', '2023-08-31 20:51:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'remover', NULL, NULL, NULL, NULL, NULL),
	('25a1ea16-aba4-420b-9185-91cb1b729307', '2023-08-31 20:51:41', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('337076cb-223e-42ae-bfd9-5186974a9eec', '2023-08-31 20:51:42', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('83f4837d-79d0-4718-8109-fde3eb27a6de', '2023-08-31 20:51:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('cb5c1847-4250-4fea-a2f1-130d58596a64', '2023-08-31 20:51:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('95f90e76-62a6-4a25-8078-9d5fef6df9d1', '2023-08-31 20:51:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('0b730b14-f04a-4f0b-b8dd-01b4909addf3', '2023-08-31 20:51:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ec61abc0-a689-44ab-81b1-a6072b77bd6e', '2023-08-31 20:52:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f720fc99-9860-48ee-943a-65392c0ccd8b', '2023-08-31 20:52:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('f859a646-26f6-4945-88e1-d6df5738ac14', '2023-08-31 20:52:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('89497917-881d-4fc3-bf51-dabe916efce9', '2023-08-31 20:52:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7c3036ab-cd35-425b-93b5-0ab82a9e8740', '2023-08-31 20:52:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('09ef8d95-084c-4a53-9019-c8db956cfd25', '2023-08-31 20:52:13', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e21eb687-a10d-4b15-871b-423f9dfafd47', '2023-08-31 20:52:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e8891762-04b3-4d5a-b774-ee881acc4034', '2023-08-31 20:52:16', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0529c59b-7d43-43f3-9b42-1ae64fbcb979', '2023-08-31 20:52:16', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4f169f72-0f2b-4c88-800e-cd3773f9a92f', '2023-08-31 20:52:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('9d6ea9a4-f5cb-45d8-99f9-f9fb1c31a8a2', '2023-08-31 20:52:16', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('488c830c-00f6-4564-a41a-273089cfb5e3', '2023-08-31 20:52:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('5760580d-1dd4-4308-aca4-41aec925dda0', '2023-08-31 20:52:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e666a63e-5829-4be4-bc8f-ff833726ba2e', '2023-08-31 20:52:51', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('55301580-f0e5-407a-80cd-ff82578d1e0f', '2023-08-31 20:52:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9e590d62-cace-4512-9b68-bbb390ad5060', '2023-08-31 20:53:02', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('fa5e8c67-85c8-457d-b233-4b3754d53b47', '2023-08-31 20:53:03', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('1d7588ac-e51b-4e4d-8bcf-396ace93eae0', '2023-08-31 20:53:06', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('32740874-1daf-4a2c-81e5-468e9b47a7d2', '2023-08-31 20:53:06', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c8adca44-3f21-4fff-8531-03ba17f3ebd9', '2023-08-31 20:53:06', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('d4a645b3-4420-40fc-952c-51de843614b6', '2023-08-31 20:53:06', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ecbda8b4-6916-4a64-8a5e-e60e9b70b49b', '2023-08-31 20:53:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('c92680de-c2cc-4f48-bbf8-9b11b5dbaed2', '2023-08-31 20:53:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('caaf7753-27d8-4fa6-a01f-4539a487467c', '2023-08-31 20:53:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'remover', NULL, NULL, NULL, NULL, NULL),
	('61f58898-d2a1-4f0f-b22d-37fe63877c99', '2023-08-31 20:53:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('bdcf557b-3f35-4b64-b77c-a22d68c65708', '2023-08-31 20:53:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('ba39e6ba-45a8-4cd3-b6fd-8796b51fc355', '2023-08-31 20:53:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('e4ea60d4-c162-45a1-ba63-1cf3adaa7cb0', '2023-08-31 20:53:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('8c042cac-bff3-41be-a146-0209045a7f18', '2023-08-31 20:53:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('ddd4d0fe-6dd4-462c-ac26-41dfd007eae7', '2023-08-31 20:53:35', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL, NULL, NULL, NULL),
	('0134775f-aeb3-41d8-80cf-64560896e8a8', '2023-08-31 20:53:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('05b92be5-5bda-4d78-bb9f-b24600b27bea', '2023-08-31 20:53:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6f92b19d-3bbd-485f-98a2-438d1f4e740e', '2023-08-31 20:53:38', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('ee959697-5fec-44f4-9246-65aca5528f3e', '2023-08-31 20:53:38', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('686f99eb-8476-4a56-89a8-d35d7c5c5e99', '2023-08-31 20:53:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('b7e8e25e-31be-4dc4-949a-771dfd058ac2', '2023-08-31 20:53:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9e3882e2-faf0-4183-80c2-4c19c4083fa8', '2023-08-31 20:53:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('36e28c0c-da47-4cd6-b2d2-29479f63aee1', '2023-08-31 20:53:40', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('9548c6ed-848d-4ea2-a100-9a0bba202e74', '2023-08-31 20:53:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('1006a69d-16fc-49b0-ac70-112b07c3c195', '2023-08-31 20:53:40', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c7eceec8-ffd9-4510-8c51-a55a3a96a601', '2023-08-31 20:55:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('90038dde-92b2-49d2-907f-70ef2b0b6177', '2023-08-31 20:55:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6759de50-3153-4334-be5c-b955adcc09a8', '2023-08-31 20:55:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('58be4dc1-54c0-462b-8c08-67f8a2811f35', '2023-08-31 20:55:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('53abdfd9-80e8-40a6-8586-06e377796418', '2023-08-31 20:55:18', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('823e5aa8-a5a3-40f4-87df-1a8f0f7b3115', '2023-08-31 20:55:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('6115b676-8955-480f-9dcb-82dd39ef820a', '2023-08-31 20:55:19', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('39ae8eb1-89f7-46d7-bdf9-c81f7d2fe329', '2023-08-31 20:55:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('dd9b669d-682b-4bc9-b601-4dba2b686d2d', '2023-08-31 20:55:21', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('1c5ea965-4f44-43cc-ba72-f13ae1d3ad5d', '2023-08-31 20:55:21', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('efcd417d-b09f-4b8c-b2db-389ece0ffcc7', '2023-08-31 20:55:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('dd5735b4-9938-4021-ae7e-4f0a4f7fd18c', '2023-08-31 20:55:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('3aa6cbdb-8cc7-41ca-a670-0b124ccd3ec8', '2023-08-31 20:55:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('c843a18b-51b0-4d0c-a454-4c15f325f241', '2023-08-31 20:55:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('f96b579b-4f5b-4e12-a4d4-40a511ab630f', '2023-08-31 20:55:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('472aff8b-2297-4f9d-8312-4a3fa3e2b59d', '2023-08-31 20:55:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('f5b0d944-e4c0-4fdd-a9f1-a49296d74575', '2023-08-31 20:55:41', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('7562e0ae-a1e7-4bf3-a0d1-c92eee589ada', '2023-08-31 20:55:41', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('5d2ed425-c99c-4a09-a722-2cc7e2fffc3a', '2023-08-31 20:55:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('aaea5f09-4465-4157-88a3-100131718737', '2023-08-31 20:55:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('c67dada5-6c5c-4ee3-9771-2e9e07d9843b', '2023-08-31 20:55:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2a7d0801-ce5c-4721-8b50-14c4d65fd26b', '2023-08-31 20:55:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('58bea9ab-26f7-4f1e-994c-277748b4ebd5', '2023-08-31 20:55:44', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('2e50e985-06f2-4721-b2c0-fab190b5054c', '2023-08-31 20:55:44', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('85e8cc18-f91c-4594-b212-c214abf3fe51', '2023-08-31 20:55:52', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('9c12ce22-4c43-4c5c-bfd3-7575bd502184', '2023-08-31 20:55:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('e7c28140-80c0-43d5-8a64-9cf351169732', '2023-08-31 20:56:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'remover', NULL, NULL, NULL, NULL, NULL),
	('be0a27a8-819b-4a8c-b31b-7b2890d2a40e', '2023-08-31 20:56:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('fc8d6a76-4577-47b0-a7cb-8f5c05748723', '2023-08-31 20:56:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('3dd0f356-1c97-4bd8-908c-484c9a5908f1', '2023-08-31 20:56:35', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('fa27ff1c-e334-4fd4-afa9-71ca7618d078', '2023-08-31 20:56:35', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('6ace5524-2cc6-40af-90a9-103804035fb1', '2023-08-31 20:56:35', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('6cd37d88-fdd3-46cd-b985-5d5f205d67e6', '2023-08-31 20:56:35', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('924e4c00-03ba-43d4-a3c5-b41336a39003', '2023-08-31 20:56:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4aaa61d2-bf70-44fb-b547-6b9b9f43cb02', '2023-08-31 20:56:40', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('79cf0125-64b7-4de2-a23f-15a556a1d46e', '2023-08-31 20:56:41', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('203b1d58-d25d-4857-bb52-71a86379c61e', '2023-08-31 20:56:41', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('287c4642-ca80-4615-a892-b004fc6eba2c', '2023-08-31 20:56:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('1ecb7374-0c71-4b4b-866f-9c129f1431a4', '2023-08-31 20:56:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL, NULL, NULL, NULL),
	('05cd7ddd-02d9-4bd4-812f-593c5c7c67f2', '2023-08-31 20:56:44', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('d618fca6-56cf-432d-8eb1-5a3727599676', '2023-08-31 20:56:44', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('60b1f1cc-b585-4970-9936-64d2dfd74af5', '2023-08-31 20:56:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('403e43f4-b44d-491c-976b-f297d86a819e', '2023-08-31 20:56:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('dd2d8ed8-2d16-4a7c-84a2-de544d65ac14', '2023-08-31 20:56:45', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('83b4199c-55c8-4212-8e7a-d29510718e41', '2023-08-31 20:56:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL, NULL, NULL, NULL),
	('4e837fec-fcc4-4dc6-a5a5-866189110bd3', '2023-08-31 20:56:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL, NULL, NULL, NULL),
	('4b2815fa-00aa-49a2-8512-46236ca7ded9', '2023-08-31 20:56:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL, NULL, NULL, NULL),
	('bf814f5c-780c-4f37-bd14-f693ba266aee', '2023-08-31 20:56:56', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL, NULL, NULL, NULL),
	('260d0f25-6de3-44ae-8fbe-4673b7f0ae18', '2023-08-31 20:56:56', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL, NULL, NULL, NULL),
	('a9f5cf25-e7f4-4ede-b494-0c415b1fc9fb', '2023-08-31 20:56:57', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('26b3d26a-f1a0-4ca8-a16b-6713888c9e2c', '2023-08-31 20:56:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('7c8d4877-1d00-4544-86bd-0384504046ac', '2023-08-31 20:57:10', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('510d2309-7705-4712-b819-57f901d3d184', '2023-08-31 20:57:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0265284d-7431-4687-bb65-020009e53509', '2023-08-31 20:57:13', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL, NULL, NULL, NULL),
	('feb707ec-6b57-4608-babe-bc6e2277cf44', '2023-08-31 20:57:13', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL, NULL, NULL, NULL),
	('a5d0e2a5-422c-4592-bc02-51d71af84288', '2023-08-31 20:57:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL, NULL, NULL, NULL),
	('0939fe49-7e59-44ad-af3c-0e395cde0e4d', '2023-08-31 20:57:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('0682c321-7a50-495d-8e19-6e750ce4f63c', '2023-08-31 20:57:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL, NULL, NULL, NULL),
	('6132b804-18ec-4a11-869d-a88b2f6900d4', '2023-08-31 20:57:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL),
	('f9c54667-92b1-488e-bbcb-f732768edd61', '2023-08-31 20:57:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL, NULL, NULL, NULL);

-- Volcando estructura para tabla admin.admin_opciones
DROP TABLE IF EXISTS `admin_opciones`;
CREATE TABLE IF NOT EXISTS `admin_opciones` (
  `ao_nombre` varchar(50) NOT NULL,
  `ao_valor` varchar(50) NOT NULL,
  KEY `ao_nombre` (`ao_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_opciones: ~4 rows (aproximadamente)
DELETE FROM `admin_opciones`;
INSERT INTO `admin_opciones` (`ao_nombre`, `ao_valor`) VALUES
	('METODOS_HTTP', 'GET'),
	('METODOS_HTTP', 'POST'),
	('METODOS_HTTP', 'PUT'),
	('METODOS_HTTP', 'DELETE');

-- Volcando estructura para tabla admin.admin_parametros
DROP TABLE IF EXISTS `admin_parametros`;
CREATE TABLE IF NOT EXISTS `admin_parametros` (
  `ap_nombre` varchar(100) NOT NULL,
  `ap_valor` varchar(100) NOT NULL,
  UNIQUE KEY `ap_nombre` (`ap_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_parametros: ~2 rows (aproximadamente)
DELETE FROM `admin_parametros`;
INSERT INTO `admin_parametros` (`ap_nombre`, `ap_valor`) VALUES
	('TOKEN_EXPIRACION_INTERVALO', 'horas'),
	('TOKEN_EXPIRACION_VALOR', '2');

-- Volcando estructura para tabla admin.admin_permisos_roles_rutas
DROP TABLE IF EXISTS `admin_permisos_roles_rutas`;
CREATE TABLE IF NOT EXISTS `admin_permisos_roles_rutas` (
  `aprr_id` varchar(50) NOT NULL,
  `aprr_fk_rol_id` varchar(50) NOT NULL,
  `aprr_fk_ruta_id` varchar(50) NOT NULL,
  UNIQUE KEY `aprr_id` (`aprr_id`),
  UNIQUE KEY `indice unico` (`aprr_fk_rol_id`,`aprr_fk_ruta_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_permisos_roles_rutas: ~12 rows (aproximadamente)
DELETE FROM `admin_permisos_roles_rutas`;
INSERT INTO `admin_permisos_roles_rutas` (`aprr_id`, `aprr_fk_rol_id`, `aprr_fk_ruta_id`) VALUES
	('4b19b69e-63f4-4204-8575-8048a2031bbe', '0066a50b-78bc-4a58-9240-d2928b4220f1', '45ea42d1-5802-4c91-9944-875d1f3e3641'),
	('e0398347-e578-47e9-a943-31dfaffecf9b', '0066a50b-78bc-4a58-9240-d2928b4220f1', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb'),
	('3c653504-53c0-4b38-9941-670780c100a5', '5d258050-5ee3-4954-8ec4-1b010355b817', '3938b044-26ae-4079-81d0-734d248afa75'),
	('0c891b72-7a0a-4d11-a8d9-54087b74f431', '5d258050-5ee3-4954-8ec4-1b010355b817', '3f7de9ab-d611-475e-a290-62161a2d9856'),
	('ead32b9d-d63c-4e93-bedc-eafaa3c40403', '5d258050-5ee3-4954-8ec4-1b010355b817', '45ea42d1-5802-4c91-9944-875d1f3e3641'),
	('0b993f3f-fabe-46e7-bf86-b0e582f54bc8', '5d258050-5ee3-4954-8ec4-1b010355b817', '46f69391-e307-4e49-92fe-be7c3ef78def'),
	('eda77a5d-2579-4341-a5de-26a1b9c0e591', '5d258050-5ee3-4954-8ec4-1b010355b817', '53cc74a5-0efb-4d98-b975-7c8451583b0c'),
	('1c47c49b-4965-4d0d-94bc-cc7e261bd7e8', '5d258050-5ee3-4954-8ec4-1b010355b817', '7c9950b7-a114-4477-a655-24fc68a10b09'),
	('5078a03d-6bdd-4808-b4b7-7cc37076d257', '5d258050-5ee3-4954-8ec4-1b010355b817', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522'),
	('9b231720-d358-4c72-9fbf-2886fd63d5ab', '5d258050-5ee3-4954-8ec4-1b010355b817', 'b5f5267e-87fa-4678-97ca-6ad4584725d3'),
	('4200f87e-dc5b-4adf-8c08-a37e1177de6f', '5d258050-5ee3-4954-8ec4-1b010355b817', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb'),
	('4200f87e-dc5b-4adf-8c08-a37e1177de6x', '5d258050-5ee3-4954-8ec4-1b010355b817', 'c2b74d49-f958-4ea1-ac43-a4b4a4ad2158');

-- Volcando estructura para tabla admin.admin_rutas
DROP TABLE IF EXISTS `admin_rutas`;
CREATE TABLE IF NOT EXISTS `admin_rutas` (
  `ar_id` varchar(50) NOT NULL,
  `ar_orden` int(10) unsigned NOT NULL,
  `ar_componente` varchar(50) NOT NULL,
  `ar_titulo` varchar(50) NOT NULL,
  `ar_ruta` varchar(50) NOT NULL,
  `ar_icono` varchar(50) NOT NULL,
  `ar_color_1` varchar(50) NOT NULL,
  `ar_color_2` varchar(50) DEFAULT NULL,
  `ar_fk_categoria` varchar(50) NOT NULL,
  UNIQUE KEY `ar_id` (`ar_id`),
  UNIQUE KEY `ar_titulo_ara_categoria` (`ar_titulo`,`ar_fk_categoria`),
  UNIQUE KEY `ar_ruta_ara_categoria` (`ar_ruta`,`ar_fk_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_rutas: ~9 rows (aproximadamente)
DELETE FROM `admin_rutas`;
INSERT INTO `admin_rutas` (`ar_id`, `ar_orden`, `ar_componente`, `ar_titulo`, `ar_ruta`, `ar_icono`, `ar_color_1`, `ar_color_2`, `ar_fk_categoria`) VALUES
	('3938b044-26ae-4079-81d0-734d248afa75', 0, 'UsuariosComponent', 'Usuarios', 'usuarios', 'ri-user-3-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('3f7de9ab-d611-475e-a290-62161a2d9856', 1, 'RutasComponent', 'Rutas', 'rutas', 'ri-organization-chart', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('45ea42d1-5802-4c91-9944-875d1f3e3641', 1, 'DashboardComponent', 'Inicio', '/', 'ri-dashboard-fill', '#FFFFFF', '#FFFFFF', '27f129f4-a5b0-4436-9ff8-0c102f180b56'),
	('46f69391-e307-4e49-92fe-be7c3ef78def', 15, 'UsuariosRolesComponent', 'Usuarios Roles', 'usuarios-roles', 'ri-shield-user-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('7c9950b7-a114-4477-a655-24fc68a10b09', 2, 'RutasCategoriasComponent', 'Rutas Categorias', 'rutas-categorias', 'ri-mind-map', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 0, 'RutasAccionesComponent', 'Rutas Acciones', 'rutas-acciones', 'ri-key-line', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb', 0, 'IndexComponent', 'Index', '', 'ri-flag-2-fill', '#FFFFFF', '#FFFFFF', '85b96a17-6252-428c-ba9c-49df337f52f3'),
	('c2b74d49-f958-4ea1-ac43-a4b4a4ad2158', 5, 'PermisosRolesRutasComponent', 'Roles Rutas', 'roles-rutas', 'ri-shield-user-fill', '#FFFFFF', '#FFFFFF', '0974258b-7b27-4328-9115-b663c5b5d85c'),
	('c6c1466e-aa89-4c78-9580-3365a6ae49db', 0, 'pruebaComponente', 'titulo', 'ruta', 'icono', 'color_1', 'color_2', '8f8c746b-98ef-4cbb-9ac5-ce1313fe3cf6');

-- Volcando estructura para tabla admin.admin_rutas_acciones
DROP TABLE IF EXISTS `admin_rutas_acciones`;
CREATE TABLE IF NOT EXISTS `admin_rutas_acciones` (
  `ara_id` varchar(50) NOT NULL,
  `ara_controlador` varchar(50) NOT NULL,
  `ara_endpoint` varchar(50) DEFAULT NULL,
  `ara_metodo` varchar(50) NOT NULL,
  `ara_estado` varchar(1) NOT NULL DEFAULT 'V',
  `ara_fk_ruta_id` varchar(50) NOT NULL,
  `ara_descripcion` text NOT NULL,
  UNIQUE KEY `ara_id` (`ara_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_rutas_acciones: ~22 rows (aproximadamente)
DELETE FROM `admin_rutas_acciones`;
INSERT INTO `admin_rutas_acciones` (`ara_id`, `ara_controlador`, `ara_endpoint`, `ara_metodo`, `ara_estado`, `ara_fk_ruta_id`, `ara_descripcion`) VALUES
	('17dc7e50-f25f-445b-9d94-794f4d6bca7a', 'ControladorPermisoRolesRuta', 'remover', 'POST', 'V', 'c2b74d49-f958-4ea1-ac43-a4b4a4ad2158', 'Remover el permiso de un rol sobre una ruta'),
	('35184de1-84e1-4138-b539-7612bbb2f01f', 'ControladorUsuariosRoles', 'crear', 'POST', 'V', '46f69391-e307-4e49-92fe-be7c3ef78def', 'Agregar nuevo rol'),
	('49aafaef-987d-4a07-802e-6a118ad46fb4', 'ControladorRutas', 'remover', 'POST', 'V', '3f7de9ab-d611-475e-a290-62161a2d9856', 'Remover una ruta'),
	('5757258d-4d3e-4339-b892-f664e28e6c2d', 'ControladorRutasCategoria', 'actualizar', 'POST', 'V', '7c9950b7-a114-4477-a655-24fc68a10b09', 'Actualizar la categoría de rutas'),
	('58c95eed-3cd4-44e1-9875-492a06bc7297', 'ControladorPermisoRolesRuta', 'listar', 'GET', 'V', 'c2b74d49-f958-4ea1-ac43-a4b4a4ad2158', 'Listar los permisos de los roles rutas'),
	('6f8a9a61-3223-4b41-99ea-7bfc1edd266e', 'ControladorRutasAcciones', 'listar', 'GET', 'V', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 'Listas todas las acciones de las rutas'),
	('75ce4120-5292-4df3-a1b3-20f698fbfb3c', 'ControladorUsuarios', 'listar', 'GET', 'V', '3938b044-26ae-4079-81d0-734d248afa75', 'Listar todos los usuarios'),
	('8189ddfd-e33f-4f2f-bc14-032499da06aa', 'ControladorPermisoRolesRuta', 'agregar', 'POST', 'V', 'c2b74d49-f958-4ea1-ac43-a4b4a4ad2158', 'Agregar permiso a un rol sobre una ruta'),
	('8e10141f-5e1f-4469-8289-0aaaeeb312dc', 'ControladorRutasCategoria', 'listar', 'GET', 'V', '7c9950b7-a114-4477-a655-24fc68a10b09', 'Listar todas las categorías de las rutas'),
	('8f6035e3-ccc0-413e-a2d3-bc4eb249a4e8', 'ControladorRutasAcciones', 'remover', 'POST', 'V', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 'Remover una acción de una ruta'),
	('99362cb5-7f52-4171-820b-91d51fe3b0eb', 'ControladorRutasCategoria', 'crear', 'POST', 'V', '7c9950b7-a114-4477-a655-24fc68a10b09', 'Crear una categoría para rutas'),
	('9ed08b35-7b7b-4abc-ad72-ab71472f6f2f', 'ControladorRutas', 'crear', 'POST', 'V', '3f7de9ab-d611-475e-a290-62161a2d9856', 'Crear rutas'),
	('ae7dc360-45cf-42f8-8408-93b03806ae2d', 'ControladorRutas', 'listar', 'GET', 'V', '3f7de9ab-d611-475e-a290-62161a2d9856', 'Listar todas las rutas'),
	('b35d7297-88fc-4c81-b6d5-1a57c62a933e', 'ControladorUsuariosRoles', 'remover', 'POST', 'V', '46f69391-e307-4e49-92fe-be7c3ef78def', 'Remover el rol'),
	('d151d41e-a3f8-45b0-9900-3e106ec438cf', 'ControladorRutasAcciones', 'crear', 'POST', 'V', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 'Agregar acción a una ruta'),
	('d34c6716-7fe4-401d-bf84-be181851e349', 'ControladorRutas', 'actualizar', 'POST', 'V', '3f7de9ab-d611-475e-a290-62161a2d9856', 'Actualizar una ruta'),
	('d3ec363c-9574-42fe-8233-f73111ea495d', 'ControladorUsuariosRoles', 'actualizar', 'POST', 'V', '46f69391-e307-4e49-92fe-be7c3ef78def', 'Actualizar el nombre del rol'),
	('d83b4ecd-53cf-4f09-bb16-3a9353637a43', 'ControladorRutasAcciones', 'actualizar', 'POST', 'V', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 'Actualizar la acción de una ruta'),
	('e5111993-3b37-44fe-8dcb-dd26f19521d5', 'ControladorIndex', 'listarRutas', 'GET', 'V', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb', 'Listar rutas del usuario en el index'),
	('e9b625f7-dd55-47c1-97ca-b4f1af5c1961', 'ControladorRutasCategoria', 'remover', 'POST', 'V', '7c9950b7-a114-4477-a655-24fc68a10b09', 'Remover una categoría de ruta'),
	('f0e9f2b1-e98c-4ea7-ac3f-71d9049b32a6', 'ControladorUsuariosRoles', 'listar', 'GET', 'V', '46f69391-e307-4e49-92fe-be7c3ef78def', 'Listar los roles de los usuarios'),
	('f5f7c514-0872-44a3-8333-c1bf292142dd', 'ControladorUsuarios', 'registro', 'POST', 'V', '3938b044-26ae-4079-81d0-734d248afa75', 'Registro de usuarios');

-- Volcando estructura para tabla admin.admin_rutas_categorias
DROP TABLE IF EXISTS `admin_rutas_categorias`;
CREATE TABLE IF NOT EXISTS `admin_rutas_categorias` (
  `arc_id` varchar(50) NOT NULL,
  `arc_orden` int(11) unsigned NOT NULL,
  `arc_titulo` varchar(50) NOT NULL,
  `arc_ruta` varchar(50) NOT NULL,
  `arc_icono` varchar(50) NOT NULL,
  `arc_color_1` varchar(50) NOT NULL,
  `arc_color_2` varchar(50) DEFAULT NULL,
  UNIQUE KEY `arc_titulo` (`arc_titulo`) USING BTREE,
  UNIQUE KEY `arc_ruta` (`arc_ruta`) USING BTREE,
  UNIQUE KEY `arc_id` (`arc_id`) USING BTREE,
  UNIQUE KEY `arc_orden` (`arc_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_rutas_categorias: ~5 rows (aproximadamente)
DELETE FROM `admin_rutas_categorias`;
INSERT INTO `admin_rutas_categorias` (`arc_id`, `arc_orden`, `arc_titulo`, `arc_ruta`, `arc_icono`, `arc_color_1`, `arc_color_2`) VALUES
	('f91dd081-ca36-4d1e-81c9-cffb9e131b93', 5, 'Administracion', 'administracion', 'ri-settings-5-fill', '#FFFFFF', '#FFFFFF'),
	('85b96a17-6252-428c-ba9c-49df337f52f3', 2, 'Index', '', 'ri-flag-2-fill', '#FFFFFF', '#FFFFFF'),
	('27f129f4-a5b0-4436-9ff8-0c102f180b56', 0, 'Inicio', '/', 'ri-home-2-fill', '#FFFFFF', '#FFFFFF'),
	('0974258b-7b27-4328-9115-b663c5b5d85c', 3, 'Permisos', 'permisos', 'ri-shield-keyhole-fill', '#FFFFFF', '#FFFFFF'),
	('8ecd72dd-f729-43c0-9642-8d30864aef44', 15, 'Sin categoria', '/sin-categoria', 'ri-question-mark', '#FFFFFF', '#FFFFFF');

-- Volcando estructura para tabla admin.admin_usuarios
DROP TABLE IF EXISTS `admin_usuarios`;
CREATE TABLE IF NOT EXISTS `admin_usuarios` (
  `au_id` varchar(50) NOT NULL,
  `au_nombre` varchar(50) NOT NULL,
  `au_apellido` varchar(50) NOT NULL,
  `au_username` varchar(50) NOT NULL,
  `au_password` varchar(500) NOT NULL,
  `au_correo` varchar(100) NOT NULL,
  `au_correo_lower` varchar(100) NOT NULL,
  `au_pass_key` varchar(50) NOT NULL,
  `au_estado` varchar(1) NOT NULL DEFAULT 'A',
  `au_fk_aur_id` varchar(50) NOT NULL,
  UNIQUE KEY `us_id` (`au_id`) USING BTREE,
  UNIQUE KEY `au_correo_lower` (`au_correo_lower`),
  UNIQUE KEY `au_username` (`au_username`),
  KEY `FK_aur_rol` (`au_fk_aur_id`),
  CONSTRAINT `FK_aur_rol` FOREIGN KEY (`au_fk_aur_id`) REFERENCES `admin_usuarios_roles` (`aur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios: ~4 rows (aproximadamente)
DELETE FROM `admin_usuarios`;
INSERT INTO `admin_usuarios` (`au_id`, `au_nombre`, `au_apellido`, `au_username`, `au_password`, `au_correo`, `au_correo_lower`, `au_pass_key`, `au_estado`, `au_fk_aur_id`) VALUES
	('442506d3-036f-4712-8d35-24bc21be5097', 'nombre', 'apellido', 'usernameqwd', '$2a$10$lRHYMUJrz7zDrhUcHNlPW.R4G.38cGu1cvsLI/epTtfzRx5hVtzdy', 'correoqwdqwdwqd', 'correoqwdqwdwqd', '366a6f34-555e-4edc-94c8-633d844f70af', 'A', '0066a50b-78bc-4a58-9240-d2928b4220f1'),
	('90f90e94-cdd9-4daf-8b5d-01c516650556', 'nombre', 'apellido', 'username1', '$2a$10$E10SItli0HGc0Kjf78QiPeOfZq.YCDNVxB4mOobKPE87vB4RO2nVy', 'correoergerg', 'correoergerg', '65a73c92-94ad-4e2f-8ebf-c46cebe6a28f', 'A', '0066a50b-78bc-4a58-9240-d2928b4220f1'),
	('a330e7bf-1c4d-4709-a331-6353a44621a4', 'Prueba', 'Test', 'test1', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', 'test1@test.com', '40c1473c-12d1-4964-940b-54eecf5e2ace', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('f72a5bbd-0a94-4a99-9886-e77d5eb2a9c9', 'nombre', 'apellido', 'dwwd', '$2a$10$f.zdOfkvQxNWEeDNVJLHb.CbY6pA7nPnFrZ.bwVIpEgj0cs21Qs36', 'rg', 'rg', 'a1c684c2-115b-4edb-9fb2-00c62102fa95', 'A', '0066a50b-78bc-4a58-9240-d2928b4220f1');

-- Volcando estructura para tabla admin.admin_usuarios_roles
DROP TABLE IF EXISTS `admin_usuarios_roles`;
CREATE TABLE IF NOT EXISTS `admin_usuarios_roles` (
  `aur_id` varchar(50) NOT NULL,
  `aur_nombre` varchar(50) NOT NULL,
  UNIQUE KEY `aur_id` (`aur_id`) USING BTREE,
  UNIQUE KEY `aur_nombre` (`aur_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios_roles: ~2 rows (aproximadamente)
DELETE FROM `admin_usuarios_roles`;
INSERT INTO `admin_usuarios_roles` (`aur_id`, `aur_nombre`) VALUES
	('5d258050-5ee3-4954-8ec4-1b010355b817', 'ADMIN'),
	('0066a50b-78bc-4a58-9240-d2928b4220f1', 'DEFAULT');

-- Volcando estructura para tabla admin.admin_usuarios_tokens
DROP TABLE IF EXISTS `admin_usuarios_tokens`;
CREATE TABLE IF NOT EXISTS `admin_usuarios_tokens` (
  `aut_id` varchar(50) NOT NULL,
  `aut_fecha` datetime NOT NULL,
  `aut_tipo` varchar(25) NOT NULL,
  `aut_estado` varchar(1) NOT NULL,
  `aut_token1` text NOT NULL,
  `aut_token2` text DEFAULT NULL,
  `aut_fk_usuario_id` varchar(50) NOT NULL,
  UNIQUE KEY `aut_id` (`aut_id`),
  KEY `indice_2` (`aut_id`,`aut_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios_tokens: ~4 rows (aproximadamente)
DELETE FROM `admin_usuarios_tokens`;
INSERT INTO `admin_usuarios_tokens` (`aut_id`, `aut_fecha`, `aut_tipo`, `aut_estado`, `aut_token1`, `aut_token2`, `aut_fk_usuario_id`) VALUES
	('880d03e6-0370-4564-b792-159fd298fb6f', '2023-08-31 20:17:00', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI4ODBkMDNlNi0wMzcwLTQ1NjQtYjc5Mi0xNTlmZDI5OGZiNmYiLCJwYXNzX2tleSI6IjQwYzE0NzNjLTEyZDEtNDk2NC05NDBiLTU0ZWVjZjVlMmFjZSIsImlhdCI6MTY5MzUzMTAyMCwiZXhwIjoxNjkzNTM4MjIwfQ.Kwhx0_mRSLxzUPor71whYlQBiwFsX2_i-MVmumXMyhk', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('a1fba2ff-9d01-44d9-a269-0e40aaf54ee6', '2023-08-31 20:16:16', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJhMWZiYTJmZi05ZDAxLTQ0ZDktYTI2OS0wZTQwYWFmNTRlZTYiLCJwYXNzX2tleSI6IjJmZDA4YzY0LTY4MjQtNGI1YS1iOWNjLWRhODMxMWZmMDlhNiIsImlhdCI6MTY5MzUzMDk3NiwiZXhwIjoxNjkzNTM4MTc2fQ.U7K6iss_6xoNmyJJSC4nBKhLmnce2W-wz31raoFa-m8', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b5078acc-5750-4806-9463-b0c752ba4429', '2023-08-31 19:24:12', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNTA3OGFjYy01NzUwLTQ4MDYtOTQ2My1iMGM3NTJiYTQ0MjkiLCJwYXNzX2tleSI6ImZmODE1NDMyLWI3NTAtNGVlMy1iN2IzLWEzYmFhZDEwNmM2YSIsImlhdCI6MTY5MzUyNzg1MiwiZXhwIjoxNjkzNTM1MDUyfQ.4dZ9rqHwhukw8NGQKksTM5y9rZ0XNO57ug4rjcy4-sc', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('ec0e9ce1-a296-4c2c-8294-f722b4664f2d', '2023-08-31 19:08:46', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJlYzBlOWNlMS1hMjk2LTRjMmMtODI5NC1mNzIyYjQ2NjRmMmQiLCJwYXNzX2tleSI6IjlhMWZhNDJiLWY5NDktNDQ2ZS04YTQzLWI2NGRkMGFhZjY0YiIsImlhdCI6MTY5MzUyNjkyNiwiZXhwIjoxNjkzNTM0MTI2fQ.AU4l4k0tA91NBoLvRq0EX7WHzB6ko18qcF2EZgKmxc0', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4');

-- Volcando estructura para procedimiento admin.sp_admin_accesos
DROP PROCEDURE IF EXISTS `sp_admin_accesos`;
DELIMITER //
CREATE PROCEDURE `sp_admin_accesos`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_req_id` VARCHAR(50),
	IN `i_usuario_id` VARCHAR(50),
	IN `i_rol_id` VARCHAR(50),
	IN `i_componente` VARCHAR(50),
	IN `i_controlador` VARCHAR(50),
	IN `i_endpoint` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
	
		IF(i_operacion = 'QVARC') THEN -- QUERY VALIDACION RUTA COMPONENTE ROL
			
			SELECT 1
			FROM admin.admin_permisos_roles_rutas, admin.admin_rutas
			WHERE 	ar_componente 			= i_componente -- COMPONENTE
			AND		ar_id	 					= aprr_fk_ruta_id
			AND		aprr_fk_rol_id 		= i_rol_id;	-- ROL
			
			CALL ADMIN.sp_admin_logs_requests('I', 'INR', i_req_id, NOW(), 'RUTA', i_usuario_id, i_componente, '');
			
		END IF;
		
		
		IF(i_operacion = 'QVCM') THEN -- QUERY VALIDACION CONTROLADOR METODO ROL
			
			SELECT 1
			FROM admin.admin_rutas_acciones ara,
			admin.admin_permisos_roles_rutas aprr
			WHERE ara.ara_controlador = i_controlador
			AND ara.ara_endpoint = i_endpoint
			AND ara.ara_fk_ruta_id = aprr.aprr_fk_ruta_id
			AND aprr.aprr_fk_rol_id = i_rol_id;
			
			
			CALL ADMIN.sp_admin_logs_requests('I', 'INR', i_req_id, NOW(), 'ACCION', i_usuario_id, i_controlador, i_endpoint);
			
		END IF;
				
	END IF;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_logs_requests
DROP PROCEDURE IF EXISTS `sp_admin_logs_requests`;
DELIMITER //
CREATE PROCEDURE `sp_admin_logs_requests`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_req_id` VARCHAR(50),
	IN `i_alr_fecha` DATETIME,
	IN `i_alr_tipo` VARCHAR(50),
	IN `i_alr_usuario` VARCHAR(50),
	IN `i_alr_valor_1` VARCHAR(50),
	IN `i_alr_valor_2` VARCHAR(50)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QTR') THEN
			
			SELECT 1;
			
		END IF;

	END IF;
	
	IF (i_tipo = 'I') THEN
	
		IF (i_operacion = 'INR') THEN
			
			INSERT INTO admin.admin_logs_requests (alr_req_id, alr_fecha, alr_tipo, alr_usuario, alr_valor_1, alr_valor_2)
			VALUES (i_req_id, i_alr_fecha, i_alr_tipo, i_alr_usuario, i_alr_valor_1, i_alr_valor_2);
			
		END IF;

	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_opciones
DROP PROCEDURE IF EXISTS `sp_admin_opciones`;
DELIMITER //
CREATE PROCEDURE `sp_admin_opciones`(
	IN `i_tipo` VARCHAR(50),
	IN `i_operacion` VARCHAR(50),
	IN `i_variable` VARCHAR(50)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QPN') THEN
			
			SELECT ao_nombre, ao_valor FROM admin.admin_opciones
			WHERE ao_nombre = i_variable;
			
		END IF;

	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_parametros
DROP PROCEDURE IF EXISTS `sp_admin_parametros`;
DELIMITER //
CREATE PROCEDURE `sp_admin_parametros`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF (i_operacion = 'QPTUI') THEN -- QUERY PARAMETRO USUARIO EXPIRACION INTERVALO
			
			SELECT ap_valor from admin.admin_parametros WHERE ap_nombre = 'TOKEN_EXPIRACION_INTERVALO'; 
		
		END IF;
		
		IF (i_operacion = 'QPTUV') THEN -- QUERY PARAMETRO USUARIO EXPIRACION VALOR
			
			SELECT ap_valor from admin.admin_parametros WHERE ap_nombre = 'TOKEN_EXPIRACION_VALOR'; 
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_permisos_consultas
DROP PROCEDURE IF EXISTS `sp_admin_permisos_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_permisos_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_operacion = 'QLRPR') THEN -- QUERY LISTA RUTAS POR ROL
			
			SELECT arc_id, arc_orden, arc_titulo, arc_ruta, arc_icono, arc_color_1, arc_color_2, ar_id, ar_orden, ar_componente, ar_titulo, ar_ruta, ar_icono, ar_color_1, ar_color_2, ar_fk_categoria
			FROM admin.admin_permisos_roles_rutas, admin.admin_usuarios_roles, admin.admin_rutas, admin.admin_rutas_categorias
			WHERE 	aur_id = i_variable_1 -- ROL
			AND		aur_id = aprr_fk_rol_id
			AND		aprr_fk_ruta_id = ar_id
			AND		ar_fk_categoria = arc_id
			AND 		arc_titulo NOT IN ('Index');
			
		END IF;
				
	END IF;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_permisos_roles_rutas
DROP PROCEDURE IF EXISTS `sp_admin_permisos_roles_rutas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_permisos_roles_rutas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(6),
	IN `i_aprr_id` VARCHAR(50),
	IN `i_aprr_fk_rol_id` VARCHAR(50),
	IN `i_aprr_fk_ruta_id` VARCHAR(50)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF(i_operacion = 'QTP') THEN
		
			SELECT aprr.aprr_id, aur.aur_id, aur.aur_nombre, arc.arc_titulo, ar.ar_id, ar.ar_titulo
			FROM admin.admin_permisos_roles_rutas aprr, ADMIN.admin_usuarios_roles aur, ADMIN.admin_rutas_categorias arc, ADMIN.admin_rutas ar 
			WHERE aprr_fk_rol_id = aur.aur_id
			AND 	aprr_fk_ruta_id = ar.ar_id
			AND   ar.ar_fk_categoria = arc.arc_id;
		
		END IF;
	
		IF(i_operacion = 'QPRRSI') THEN
		
			SELECT aprr_id, aprr_fk_rol_id, aprr_fk_ruta_id
			FROM admin.admin_permisos_roles_rutas 
			WHERE aprr_id = i_aprr_id;
		
		END IF;
		
		IF(i_operacion = 'QPID') THEN
		
			SELECT aprr.aprr_id, aur.aur_id, aur.aur_nombre, arc.arc_titulo, ar.ar_titulo
			FROM admin.admin_permisos_roles_rutas aprr, ADMIN.admin_usuarios_roles aur, ADMIN.admin_rutas_categorias arc, ADMIN.admin_rutas ar 
			WHERE aprr_id = i_aprr_id
			AND 	aprr_fk_rol_id = aur.aur_id
			AND 	aprr_fk_ruta_id = ar.ar_id
			AND   ar.ar_fk_categoria = arc.arc_id;
		
		END IF;
	
	END IF;

	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin.admin_permisos_roles_rutas (aprr_id, aprr_fk_rol_id, aprr_fk_ruta_id)
			VALUES (i_aprr_id, i_aprr_fk_rol_id, i_aprr_fk_ruta_id);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'IU') THEN
		
		IF(i_operacion = 'IUR') THEN -- INSERTAR NUEVO REGISTRO
		
		
			IF( (SELECT COUNT(*) FROM admin.admin_permisos_roles_rutas WHERE aprr_id = i_aprr_id) = 1) THEN 
			 
				UPDATE admin.admin_permisos_roles_rutas 
				SET 	aprr_fk_rol_id  = i_aprr_fk_rol_id,
						aprr_fk_ruta_id = i_aprr_fk_ruta_id
				WHERE aprr_id = i_aprr_id;
				
			ELSE
				INSERT INTO admin.admin_permisos_roles_rutas (aprr_id, aprr_fk_rol_id, aprr_fk_ruta_id)
				VALUES (i_aprr_id, i_aprr_fk_rol_id, i_aprr_fk_ruta_id);

			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_operacion = 'DRU') THEN -- INSERTAR NUEVO REGISTRO
		
			IF( (SELECT COUNT(*) FROM admin.admin_permisos_roles_rutas WHERE aprr_id = i_aprr_id) = 1) THEN 
			 
				DELETE FROM admin.admin_permisos_roles_rutas 
				WHERE aprr_id = i_aprr_id;
				
			END IF;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_rutas
DROP PROCEDURE IF EXISTS `sp_admin_rutas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_rutas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_ar_id` VARCHAR(50),
	IN `i_ar_orden` INT,
	IN `i_ar_componente` VARCHAR(50),
	IN `i_ar_titulo` VARCHAR(50),
	IN `i_ar_ruta` VARCHAR(50),
	IN `i_ar_icono` VARCHAR(50),
	IN `i_ar_color_1` VARCHAR(50),
	IN `i_ar_color_2` VARCHAR(50),
	IN `i_ar_fk_categoria` VARCHAR(50)
)
BEGIN


	IF(i_tipo = 'Q') THEN
		
		IF(i_operacion = 'QRT') THEN -- QUERY RUTAS TODAS
			
			SELECT arc_id, arc_titulo,
            ar_id, ar_orden, ar_componente, ar_titulo, ar_ruta, ar_icono, ar_color_1, ar_color_2, ar_fk_categoria
            FROM admin.admin_rutas, admin.admin_rutas_categorias
            WHERE arc_id = ar_fk_categoria;
			
		END IF;
		
		IF(i_operacion = 'QRID') THEN -- QUERY RUTA POR ID
			
			SELECT arc_id, arc_orden, arc_titulo, arc_ruta, arc_icono, arc_color_1, arc_color_2,
			ar_id, ar_orden, ar_componente, ar_titulo, ar_ruta, ar_icono, ar_color_1, ar_color_2, ar_fk_categoria
			FROM admin.admin_rutas, admin.admin_rutas_categorias
			WHERE ar_id = i_ar_id
         AND ar_fk_categoria = arc_id; 
			
		END IF;
	
	END IF;


	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin.admin_rutas (ar_id, ar_orden, ar_componente, ar_titulo, ar_ruta, ar_icono, ar_color_1, ar_color_2, ar_fk_categoria)
			VALUES (i_ar_id, i_ar_orden, i_ar_componente, i_ar_titulo, i_ar_ruta, i_ar_icono, i_ar_color_1, i_ar_color_2, i_ar_fk_categoria);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_operacion = 'UR') THEN -- UPDATE REGISTRO
		
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas WHERE ar_id = i_ar_id) = 1) THEN
			
				UPDATE admin.admin_rutas
				SET ar_orden         	= i_ar_orden,
					ar_componente 	    	= i_ar_componente,  
					ar_titulo 				= i_ar_titulo,
					ar_ruta 					= i_ar_ruta,
					ar_icono					= i_ar_icono,
					ar_color_1				= i_ar_color_1,
					ar_color_2 		    	= i_ar_color_2,
					ar_fk_categoria 		= i_ar_fk_categoria
				WHERE 
					ar_id = i_ar_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_operacion = 'DR') THEN -- DELETE REGISTRO
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas WHERE ar_id = i_ar_id) = 1) THEN
			
				DELETE FROM admin.admin_permisos_roles_rutas
				WHERE aprr_fk_ruta_id = i_ar_id;
			
				DELETE FROM admin.admin_rutas
				WHERE ar_id = i_ar_id;
			
			END IF;
			
	    END IF;
		
	END IF;
	
		-- EXTERNOS
	
	IF(i_tipo = 'E') THEN
		
		IF(i_operacion = 'EQR') THEN -- RUTAS
		
			SELECT ar_id, ar_titulo, ar_fk_categoria
			FROM admin.admin_rutas;
			
	    END IF;
		
	END IF;
	
	-- EXTERNOS
	

	

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_rutas_acciones
DROP PROCEDURE IF EXISTS `sp_admin_rutas_acciones`;
DELIMITER //
CREATE PROCEDURE `sp_admin_rutas_acciones`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_ara_id` VARCHAR(50),
	IN `i_ara_controlador` VARCHAR(50),
	IN `i_ara_endpoint` VARCHAR(50),
	IN `i_ara_metodo` VARCHAR(50),
	IN `i_ara_estado` VARCHAR(1),
	IN `i_ara_fk_ruta_id` VARCHAR(50),
	IN `i_ara_descripcion` TEXT
)
BEGIN

	IF(i_tipo = 'Q') THEN
	
		IF(i_operacion = 'QLT') THEN -- QUERY LISTAR TODOS
			
			SELECT ara_id, ara_controlador, ara_endpoint, ara_metodo, ara_estado, ara_descripcion
			FROM admin.admin_rutas_acciones;
			
		END IF;
		
		IF(i_operacion = 'QRAID') THEN -- QUERY RUTA ACCION ID
			
			SELECT arc.arc_titulo, arc.arc_id, ar.ar_titulo, ar.ar_id, ara_id, ara_controlador, ara_endpoint, ara_metodo, ara_estado, ara_descripcion
			FROM admin.admin_rutas_acciones ara, admin.admin_rutas ar, admin.admin_rutas_categorias arc
			WHERE 
						ara_id = i_ara_id
			AND		ara.ara_fk_ruta_id = ar.ar_id
			AND 		ar.ar_fk_categoria = arc.arc_id;
			
		END IF;
		
		IF(i_operacion = 'QPRU') THEN -- QUERY RUTA ACCION ID
			
			SELECT arc.arc_titulo, arc.arc_id, ar.ar_titulo, ar.ar_id, ara_id, ara_controlador, ara_endpoint, ara_metodo, ara_estado, ara_descripcion
			FROM admin.admin_rutas_acciones ara, admin.admin_rutas ar, admin.admin_rutas_categorias arc
			WHERE 
						ara.ara_fk_ruta_id = ar.ar_id
			AND 		ar.ar_fk_categoria = arc.arc_id;
			
		END IF;
		
	
	END IF;


	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin.admin_rutas_acciones (ara_id, ara_controlador, ara_endpoint, ara_metodo, ara_fk_ruta_id, ara_descripcion)
			VALUES (i_ara_id, i_ara_controlador, i_ara_endpoint, i_ara_metodo, i_ara_fk_ruta_id, i_ara_descripcion);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_operacion = 'UR') THEN -- UPDATE REGISTRO
		
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas_acciones WHERE ara_id = i_ara_id) = 1) THEN
			
				UPDATE admin.admin_rutas_acciones
				SET 
					ara_controlador        = i_ara_controlador,
					ara_endpoint        		= i_ara_endpoint,
					ara_metodo 	    			= i_ara_metodo,
					ara_estado 	    			= i_ara_estado,
					ara_fk_ruta_id 			= i_ara_fk_ruta_id,
					ara_descripcion 			= i_ara_descripcion
				WHERE 
					ara_id = i_ara_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_operacion = 'DR') THEN -- DELETE REGISTRO
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas_acciones WHERE ara_id = i_ara_id) = 1) THEN
			
				DELETE FROM admin.admin_rutas_acciones
				WHERE ara_id = i_ara_id;
			
			END IF;
			
	    END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_rutas_categorias
DROP PROCEDURE IF EXISTS `sp_admin_rutas_categorias`;
DELIMITER //
CREATE PROCEDURE `sp_admin_rutas_categorias`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_arc_id` VARCHAR(50),
	IN `i_arc_orden` INT,
	IN `i_arc_titulo` VARCHAR(50),
	IN `i_arc_ruta` VARCHAR(50),
	IN `i_arc_icono` VARCHAR(50),
	IN `i_arc_color_1` VARCHAR(50),
	IN `i_arc_color_2` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_operacion = 'QRCID') THEN -- QUERY RUTA CATEGORIA 
			
			SELECT arc_id, arc_orden, arc_titulo, arc_ruta, arc_icono, arc_color_1, arc_color_2 
			FROM admin.admin_rutas_categorias 
			WHERE arc_id = i_arc_id;
			
		END IF;
		
		IF(i_operacion = 'QTRC') THEN -- QUERY TODAS RUTAS CATEGORIAS
			
			SELECT arc_id, arc_orden, arc_titulo, arc_ruta, arc_icono, arc_color_1, arc_color_2
			FROM admin.admin_rutas_categorias;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVA RUTA
			
			INSERT INTO admin.admin_rutas_categorias (arc_id, arc_orden, arc_titulo, arc_ruta, arc_icono, arc_color_1, arc_color_2)
			VALUES (i_arc_id, i_arc_orden, i_arc_titulo, i_arc_ruta, i_arc_icono, i_arc_color_1, i_arc_color_2);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_operacion = 'URCID') THEN -- UPDATE RUTA CATEGORIA 2
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas_categorias WHERE arc_id = i_arc_id) = 1) THEN
	
				UPDATE admin.admin_rutas_categorias
				SET 
					arc_orden			= i_arc_orden,
					arc_titulo 			= i_arc_titulo,
					arc_ruta 			= i_arc_ruta,
					arc_icono 			= i_arc_icono,
					arc_color_1			= i_arc_color_1,
					arc_color_2 		= i_arc_color_2
			
				WHERE 
					arc_id = i_arc_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_operacion = 'DRCID') THEN -- DELETE RUTA NIVEL 1
		
		
			IF((SELECT COUNT(*) FROM admin.admin_rutas_categorias WHERE arc_id = i_arc_id) = 1) THEN
			
			
				UPDATE admin.admin_rutas
				SET ar_fk_categoria  	= '8ecd72dd-f729-43c0-9642-8d30864aef44'
				WHERE ar_fk_categoria 	= i_arc_id;
			
				DELETE FROM admin.admin_rutas_categorias
				WHERE arc_id = i_arc_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	-- EXTERNOS
	
	IF(i_tipo = 'E') THEN
		
		IF(i_operacion = 'EQC') THEN -- RUTAS CATEGORIAS
		
			SELECT arc_id, arc_titulo FROM admin.admin_rutas_categorias;
			
	    END IF;
		
	END IF;
	
	-- EXTERNOS

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_usuarios
DROP PROCEDURE IF EXISTS `sp_admin_usuarios`;
DELIMITER //
CREATE PROCEDURE `sp_admin_usuarios`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_au_id` VARCHAR(50),
	IN `i_au_nombre` VARCHAR(50),
	IN `i_au_apellido` VARCHAR(50),
	IN `i_au_username` VARCHAR(50),
	IN `i_au_password` VARCHAR(500),
	IN `i_au_correo` VARCHAR(100),
	IN `i_au_correo_lower` VARCHAR(100),
	IN `i_au_pass_key` VARCHAR(50),
	IN `i_au_estado` VARCHAR(1),
	IN `i_au_fk_aur_id` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'I') THEN
	
		IF(i_operacion = 'INR') THEN
			
			INSERT INTO admin.admin_usuarios (au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id)
			VALUES (i_au_id, i_au_nombre, i_au_apellido, i_au_username, i_au_password, i_au_correo, LOWER(i_au_correo_lower), i_au_pass_key, 'A', i_au_fk_aur_id);
			
		END IF;
		
	END IF;
	
	
	IF(i_tipo = 'U') THEN

		IF(i_operacion = 'UPK') THEN -- Actualizar PASS_KEY
			
			UPDATE admin.admin_usuarios
			SET 		au_pass_key = i_au_pass_key
			WHERE 	au_id = i_au_id;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_usuarios_consultas
DROP PROCEDURE IF EXISTS `sp_admin_usuarios_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_usuarios_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
	
	
		IF(i_operacion = 'QTU') THEN -- CONSULTA POR USERNAME
			
			SELECT au_id, au_nombre, au_apellido, au_username, au_correo, au_estado, au_fk_aur_id FROM admin.admin_usuarios;
			
		END IF;
	
		IF(i_operacion = 'QUUC') THEN -- QUERY USUARIO POR USERNAME O CORREO
		
			IF((SELECT 1 FROM admin.admin_usuarios WHERE au_username = i_variable) = 1) THEN
				
				SELECT au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id FROM admin.admin_usuarios WHERE au_username = i_variable;
			
			ELSE
		
				SELECT au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id FROM admin.admin_usuarios WHERE au_correo_lower = LOWER(i_variable);
			
			END IF;
			
		END IF;
	

	
		IF(i_operacion = 'CUID') THEN -- CONSULTA POR ID
			
			SELECT au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id FROM admin.admin_usuarios WHERE au_id = i_variable;
			
		END IF;
	
		IF(i_operacion = 'QCL') THEN -- CONSULTA POR CORREO LOWER
			
			SELECT au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id FROM admin.admin_usuarios WHERE au_correo_lower = i_variable;
			
		END IF;
		
	
		IF(i_operacion = 'QU') THEN -- CONSULTA POR USERNAME
			
			SELECT au_id, au_nombre, au_apellido, au_username, au_password, au_correo, au_correo_lower, au_pass_key, au_estado, au_fk_aur_id FROM admin.admin_usuarios WHERE au_username = i_variable;
			
		END IF;
	
	END IF;
    
END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_usuarios_roles
DROP PROCEDURE IF EXISTS `sp_admin_usuarios_roles`;
DELIMITER //
CREATE PROCEDURE `sp_admin_usuarios_roles`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_aur_id` VARCHAR(50),
	IN `i_aur_nombre` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
	   IF(i_operacion = 'QTR') THEN -- CONSULTA TODOS ROLES
			
		   SELECT aur_id, aur_nombre FROM admin.admin_usuarios_roles;
			
		END IF;
		
		IF(i_operacion = 'QER') THEN -- CONSULTA TODOS ROLES
			
		   SELECT aur_id, aur_nombre FROM admin.admin_usuarios_roles;
			
		END IF;
		
		IF(i_operacion = 'QRID') THEN -- CONSULTA ROL POR ID
			
			SELECT aur_id, aur_nombre FROM admin.admin_usuarios_roles WHERE aur_id = i_aur_id;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO ROL
			
			INSERT INTO admin.admin_usuarios_roles (aur_id, aur_nombre)
			VALUES (i_aur_id, i_aur_nombre);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_operacion = 'URID') THEN -- UPDATE ROL POR ID
		
		
			IF((SELECT 1 FROM admin.admin_usuarios_roles WHERE aur_id = i_aur_id) = 1) THEN
			
				UPDATE admin.admin_usuarios_roles
				SET 
					aur_nombre 		= i_aur_nombre
				WHERE 
					aur_id = i_aur_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_operacion = 'DRID') THEN -- DELETE ROL POR ID		
		
			IF((SELECT COUNT(*) FROM admin.admin_usuarios_roles WHERE aur_id = i_aur_id) = 1) THEN
			
				
				UPDATE admin.admin_usuarios us
				SET 
					au_fk_aur_id = '0066a50b-78bc-4a58-9240-d2928b4220f1'
				WHERE 
					au_fk_aur_id = i_aur_id;
					
				DELETE FROM admin.admin_permisos_roles_rutas
				WHERE aprr_fk_rol_id = i_aur_id;
			
				DELETE FROM admin.admin_usuarios_roles
				WHERE aur_id = i_aur_id;
			
			END IF;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_usuarios_tokens
DROP PROCEDURE IF EXISTS `sp_admin_usuarios_tokens`;
DELIMITER //
CREATE PROCEDURE `sp_admin_usuarios_tokens`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_aut_id` VARCHAR(50),
	IN `i_aut_tipo` VARCHAR(20),
	IN `i_aut_token1` TEXT,
	IN `i_aut_token2` TEXT,
	IN `i_aut_fk_usuario_id` VARCHAR(50)
)
BEGIN


	SET @w_intervalo = (SELECT ap_valor from admin.admin_parametros WHERE ap_nombre = 'TOKEN_EXPIRACION_INTERVALO');
	SET @w_valor = (SELECT ap_valor from admin.admin_parametros WHERE ap_nombre = 'TOKEN_EXPIRACION_VALOR');

	if(@w_intervalo = 'segundos') THEN
		SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (@w_valor) SECOND));
	END IF;
	
	if(@w_intervalo = 'minutos') THEN
		SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (@w_valor) MINUTE));
	END IF;
	
	if(@w_intervalo = 'horas') THEN
		SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (@w_valor) HOUR));
	END IF;
	
	if(@w_intervalo = 'dias') THEN
		SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (@w_valor) DAY));
	END IF;
	
	IF(i_tipo = 'Q')THEN
	
		IF(i_operacion = 'QTID')THEN
		
			SELECT aut_id, aut_fecha, aut_tipo, aut_estado, aut_token1, aut_token2, aut_fk_usuario_id FROM admin.admin_usuarios_tokens
	      WHERE aut_id = i_aut_id
			AND aut_fecha > @fecha_revisar;
	
		END IF;
		
	END IF;
	
	IF(i_tipo = 'CU')THEN
	
		IF(i_operacion = 'CUT')THEN
		
			IF((SELECT 1 FROM admin.admin_usuarios_tokens WHERE aut_id = i_aut_id AND  aut_fecha >= @fecha_revisar AND aut_estado = 'A') = 1) THEN
				
				UPDATE admin.admin_usuarios_tokens
				SET 
					aut_token1 = i_aut_token1,
					aut_token2 = i_aut_token2,
					aut_fecha 	= NOW()
				WHERE
					aut_id = i_aut_id;
				
			ELSE
		
				INSERT INTO admin.admin_usuarios_tokens(
				aut_id,
				aut_fecha,
				aut_tipo,
				aut_estado,
				aut_token1,
				aut_fk_usuario_id)
				VALUES(
				i_aut_id,
				NOW(),
				i_aut_tipo,
				'A',
				i_aut_token1,
				i_aut_fk_usuario_id
				);
				
			END IF;
	
		END IF;
		
	END IF;
	
	
	

END//
DELIMITER ;


-- Volcando estructura de base de datos para admin_avisos
DROP DATABASE IF EXISTS `admin_avisos`;
CREATE DATABASE IF NOT EXISTS `admin_avisos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `admin_avisos`;

-- Volcando estructura para tabla admin_avisos.admin_avisos
DROP TABLE IF EXISTS `admin_avisos`;
CREATE TABLE IF NOT EXISTS `admin_avisos` (
  `aac_id` varchar(50) NOT NULL,
  `acc_config_tipo` varchar(50) NOT NULL,
  `acc_config_nombre` varchar(200) NOT NULL,
  `acc_meta_fecha_creacion` datetime NOT NULL,
  `acc_meta_ultima_ejecucion` datetime DEFAULT NULL,
  `acc_config_intervalo` varchar(50) NOT NULL,
  `acc_config_valor` int(11) NOT NULL,
  `acc_config_mensaje` text NOT NULL,
  `acc_ejecucion_tipo` varchar(50) NOT NULL,
  `acc_ejecucion_servidor` varchar(50) NOT NULL,
  `acc_ejecucion_comando` text NOT NULL,
  `acc_respuesta_estado` varchar(50) NOT NULL,
  `acc_respuesta_config` varchar(50) NOT NULL,
  `acc_respuesta_cantidad_col` int(11) NOT NULL DEFAULT 0,
  `acc_respuesta_tipo` varchar(50) NOT NULL,
  `acc_respuesta_comparacion` varchar(50) NOT NULL,
  `acc_respuesta_esperada` varchar(100) NOT NULL,
  `acc_correo_destinatarios` varchar(500) NOT NULL,
  `acc_accion_tipo` varchar(50) NOT NULL,
  `acc_accion_compenente_id` varchar(50) NOT NULL,
  `acc_bandera_accion` varchar(2) NOT NULL,
  `acc_bandera_enviar_correo` varchar(2) NOT NULL,
  `acc_bandera_activo` varchar(2) NOT NULL,
  UNIQUE KEY `aac_id` (`aac_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_avisos.admin_avisos: ~0 rows (aproximadamente)
DELETE FROM `admin_avisos`;

-- Volcando estructura para procedimiento admin_avisos.sp_admin_avisos
DROP PROCEDURE IF EXISTS `sp_admin_avisos`;
DELIMITER //
CREATE PROCEDURE `sp_admin_avisos`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_aac_id` VARCHAR(50),
	IN `i_acc_config_tipo` VARCHAR(50),
	IN `i_acc_config_nombre` VARCHAR(200),
	IN `i_acc_meta_ultima_ejecucion` DATETIME,
	IN `i_acc_config_intervalo` VARCHAR(50),
	IN `i_acc_config_valor` INT,
	IN `i_acc_config_mensaje` TEXT,
	IN `i_acc_ejecucion_tipo` VARCHAR(50),
	IN `i_acc_ejecucion_servidor` VARCHAR(50),
	IN `i_acc_ejecucion_comando` TEXT,
	IN `i_acc_respuesta_estado` VARCHAR(50),
	IN `i_acc_respuesta_config` VARCHAR(50),
	IN `i_acc_respuesta_cantidad_col` INT,
	IN `i_acc_respuesta_tipo` VARCHAR(50),
	IN `i_acc_respuesta_comparacion` VARCHAR(50),
	IN `i_acc_respuesta_esperada` VARCHAR(100),
	IN `i_acc_correo_destinatarios` VARCHAR(500),
	IN `i_acc_accion_tipo` VARCHAR(50),
	IN `i_acc_accion_componente_id` VARCHAR(50),
	IN `i_acc_bandera_accion` VARCHAR(2),
	IN `i_acc_bandera_enviar_correo` VARCHAR(2),
	IN `i_acc_bandera_activo` VARCHAR(2)
)
BEGIN

	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin_avisos.admin_avisos (
				aac_id,
				acc_config_tipo,
				acc_config_nombre,
				acc_meta_fecha_creacion,
				acc_config_intervalo,
				acc_config_valor,
				acc_config_mensaje,
				acc_ejecucion_tipo,
				acc_ejecucion_servidor,
				acc_ejecucion_comando,
				acc_respuesta_estado,
				acc_respuesta_config,
				acc_respuesta_cantidad_col,
				acc_respuesta_tipo,
				acc_respuesta_comparacion,
				acc_respuesta_esperada,
				acc_correo_destinatarios,
				acc_accion_tipo,
				acc_accion_compenente_id,
				acc_bandera_accion,
				acc_bandera_enviar_correo,
				acc_bandera_activo
			) VALUES (
				i_aac_id,
				i_acc_config_tipo,
				i_acc_config_nombre,
				NOW(),
				i_acc_config_intervalo,
				i_acc_config_valor,
				i_acc_config_mensaje,
				i_acc_ejecucion_tipo,
				i_acc_ejecucion_servidor,
				i_acc_ejecucion_comando,
				i_acc_respuesta_estado,
				i_acc_respuesta_config,
				i_acc_respuesta_cantidad_col,
				i_acc_respuesta_tipo,
				i_acc_respuesta_comparacion,
				i_acc_respuesta_esperada,
				i_acc_correo_destinatarios,
				i_acc_accion_tipo,
				i_acc_accion_compenente_id,
				i_acc_bandera_accion,
				i_acc_bandera_enviar_correo,
				i_acc_bandera_activo
			);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_operacion = 'URAID') THEN -- UPDATE REGISTRO AVISO POR ID
			
			UPDATE admin_avisos.admin_avisos
			SET
				acc_config_tipo 				= i_acc_config_tipo,
				acc_config_nombre 				= i_acc_config_nombre,
				acc_config_intervalo 			= i_acc_config_intervalo,
				acc_config_valor 				= i_acc_config_valor,
				acc_config_mensaje 				= i_acc_config_mensaje,
				acc_ejecucion_tipo 				= i_acc_ejecucion_tipo,
				acc_ejecucion_servidor 			= i_acc_ejecucion_servidor,
				acc_ejecucion_comando 			= i_acc_ejecucion_comando,
				acc_respuesta_estado 			= i_acc_respuesta_estado,
				acc_respuesta_config 			= i_acc_respuesta_config,
				acc_respuesta_cantidad_col 		= i_acc_respuesta_cantidad_col,
				acc_respuesta_tipo 				= i_acc_respuesta_tipo,
				acc_respuesta_comparacion 		= i_acc_respuesta_comparacion,
				acc_acc_respuesta_esperada 		= i_acc_respuesta_esperada,
				acc_correo_destinatarios 		= i_acc_correo_destinatarios,
				acc_accion_tipo 				= i_acc_accion_tipo,
				acc_accion_compenente_id 		= i_acc_accion_compenente_id,
				acc_bandera_accion 				= i_acc_bandera_accion,
				acc_bandera_enviar_correo 		= i_acc_bandera_enviar_correo,
				acc_bandera_activo 			= i_acc_bandera_activo
			WHERE
				aac_id = i_aac_id;
			
		END IF;
		
	END IF;
	

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_avisos.sp_admin_avisos_consultas
DROP PROCEDURE IF EXISTS `sp_admin_avisos_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_avisos_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(100)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QTR') THEN -- QUERY TODOS REGISTROS
			
			SELECT 
				aac_id, 
				acc_config_tipo, 
				acc_config_nombre, 
				acc_meta_fecha_creacion, 
				acc_meta_ultima_ejecucion, 
				acc_config_intervalo, 
				acc_config_valor, 
				acc_config_mensaje, 
				acc_ejecucion_tipo, 
				acc_ejecucion_servidor, 
				acc_ejecucion_comando, 
				acc_respuesta_estado, 
				acc_respuesta_config, 
				acc_respuesta_cantidad_col, 
				acc_respuesta_tipo, 
				acc_respuesta_comparacion, 
				acc_respuesta_esperada,
				acc_correo_destinatarios, 
				acc_accion_tipo, 
				acc_accion_compenente_id, 
				acc_bandera_accion, 
				acc_bandera_enviar_correo, 
				acc_bandera_activo
			FROM admin_avisos.admin_avisos;
			
		END IF;
		
		IF (i_operacion = 'QTAA') THEN -- QUERY TODOS AVISOS ACTIVOS
			
			SELECT 
				aac_id, 
				acc_config_tipo, 
				acc_config_nombre, 
				acc_meta_fecha_creacion, 
				acc_meta_ultima_ejecucion, 
				acc_config_intervalo, 
				acc_config_valor, 
				acc_config_mensaje, 
				acc_ejecucion_tipo, 
				acc_ejecucion_servidor, 
				acc_ejecucion_comando, 
				acc_respuesta_estado, 
				acc_respuesta_config, 
				acc_respuesta_cantidad_col, 
				acc_respuesta_tipo, 
				acc_respuesta_comparacion,
				acc_respuesta_esperada, 
				acc_correo_destinatarios, 
				acc_accion_tipo, 
				acc_accion_compenente_id, 
				acc_bandera_accion, 
				acc_bandera_enviar_correo, 
				acc_bandera_activo
			FROM admin_avisos.admin_avisos
			WHERE acc_bandera_activo = 'SI';
		
		END IF;

	END IF;

END//
DELIMITER ;


-- Volcando estructura de base de datos para admin_cargo
DROP DATABASE IF EXISTS `admin_cargo`;
CREATE DATABASE IF NOT EXISTS `admin_cargo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `admin_cargo`;

-- Volcando estructura para tabla admin_cargo.admin_cargo_crontabs_config
DROP TABLE IF EXISTS `admin_cargo_crontabs_config`;
CREATE TABLE IF NOT EXISTS `admin_cargo_crontabs_config` (
  `accc_nombre` varchar(100) DEFAULT NULL,
  `accc_estado` char(3) DEFAULT NULL,
  `accc_descripcion` varchar(500) DEFAULT NULL,
  `accc_fecha_ult_ejecucion` datetime DEFAULT NULL,
  `accc_minuto` varchar(200) DEFAULT NULL,
  `accc_hora` varchar(100) DEFAULT NULL,
  `accc_dia_mes` varchar(100) DEFAULT NULL,
  `accc_mes` varchar(50) DEFAULT NULL,
  `accc_dia_semana` varchar(25) DEFAULT NULL,
  `accc_servidor` varchar(100) DEFAULT NULL,
  `accc_puerto` varchar(10) DEFAULT NULL,
  `accc_endpoint` varchar(200) DEFAULT NULL,
  `accc_proceso` varchar(50) NOT NULL,
  `accc_timeout` varchar(10) DEFAULT NULL,
  `accc_variable_1` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_2` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_3` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_4` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_5` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_6` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_7` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_8` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_9` varchar(500) NOT NULL DEFAULT 'N/A',
  `accc_variable_10` varchar(500) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_cargo.admin_cargo_crontabs_config: ~0 rows (aproximadamente)
DELETE FROM `admin_cargo_crontabs_config`;

-- Volcando estructura para procedimiento admin_cargo.sp_admin_cargo_crontabs_config
DROP PROCEDURE IF EXISTS `sp_admin_cargo_crontabs_config`;
DELIMITER //
CREATE PROCEDURE `sp_admin_cargo_crontabs_config`()
BEGIN

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_cargo.sp_admin_cargo_crontabs_config_consultas
DROP PROCEDURE IF EXISTS `sp_admin_cargo_crontabs_config_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_cargo_crontabs_config_consultas`()
BEGIN

END//
DELIMITER ;


-- Volcando estructura de base de datos para auth
DROP DATABASE IF EXISTS `auth`;
CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `auth`;

-- Volcando estructura para tabla auth.permiso_roles_rutas
DROP TABLE IF EXISTS `permiso_roles_rutas`;
CREATE TABLE IF NOT EXISTS `permiso_roles_rutas` (
  `prr_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `FK_rol` varchar(50) COLLATE armscii8_bin NOT NULL,
  `FK_ruta` varchar(50) COLLATE armscii8_bin NOT NULL,
  `prr_estado` varchar(50) COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`prr_id`),
  UNIQUE KEY `Permiso unico` (`FK_rol`,`FK_ruta`),
  KEY `FK2_rol_ruta` (`FK_ruta`) USING BTREE,
  CONSTRAINT `FK1_rol` FOREIGN KEY (`FK_rol`) REFERENCES `roles_usuarios` (`rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK2_ruta` FOREIGN KEY (`FK_ruta`) REFERENCES `rutas_general` (`rug_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.permiso_roles_rutas: ~1 rows (aproximadamente)
DELETE FROM `permiso_roles_rutas`;
INSERT INTO `permiso_roles_rutas` (`prr_id`, `FK_rol`, `FK_ruta`, `prr_estado`) VALUES
	('9d6e010e-d5af-42b6-84b2-ec9efcf9249b', '5d258050-5ee3-4954-8ec4-1b010355b817', 'ec0e9ca5-67b1-4bd9-8523-f977bf680db7', 'V'),
	('fa7afad8-0808-4337-bdd1-9326e43797e8', '5d258050-5ee3-4954-8ec4-1b010355b817', '114629ab-0687-46c3-b55e-bc5bea34e29c', 'V');

-- Volcando estructura para tabla auth.roles_usuarios
DROP TABLE IF EXISTS `roles_usuarios`;
CREATE TABLE IF NOT EXISTS `roles_usuarios` (
  `rol_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rol_nombre` varchar(50) COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.roles_usuarios: ~1 rows (aproximadamente)
DELETE FROM `roles_usuarios`;
INSERT INTO `roles_usuarios` (`rol_id`, `rol_nombre`) VALUES
	('5d258050-5ee3-4954-8ec4-1b010355b817', 'ADMIN');

-- Volcando estructura para tabla auth.rutas_categorias
DROP TABLE IF EXISTS `rutas_categorias`;
CREATE TABLE IF NOT EXISTS `rutas_categorias` (
  `ru_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_titulo` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_ruta` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_icon` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_color_1` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_color_2` varchar(50) COLLATE armscii8_bin NOT NULL,
  `ru_order` int(11) NOT NULL,
  PRIMARY KEY (`ru_id`),
  UNIQUE KEY `ru_titulo` (`ru_titulo`),
  UNIQUE KEY `ru_ruta` (`ru_ruta`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.rutas_categorias: ~2 rows (aproximadamente)
DELETE FROM `rutas_categorias`;
INSERT INTO `rutas_categorias` (`ru_id`, `ru_titulo`, `ru_ruta`, `ru_icon`, `ru_color_1`, `ru_color_2`, `ru_order`) VALUES
	('58af8ed3-78c6-4fb7-a66d-fe5c2415bc73', 'Configuracion', 'configuraciones', 'fa-solid fa-gear', '#FFFFFF', '#FFFFFF', 1),
	('6a331351-e1a5-484a-a2db-a32b13c317ae', 'Inicio', '', 'fa-solid fa-house', '#FFFFFF', '#FFFFFF', 0);

-- Volcando estructura para tabla auth.rutas_general
DROP TABLE IF EXISTS `rutas_general`;
CREATE TABLE IF NOT EXISTS `rutas_general` (
  `rug_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_fk_categoria` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_componente` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_titulo` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_ruta` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_icon` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_color_1` varchar(50) COLLATE armscii8_bin NOT NULL,
  `rug_color_2` varchar(50) COLLATE armscii8_bin DEFAULT NULL,
  `rug_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`rug_id`) USING BTREE,
  KEY `FK__rutas_nivel_1` (`rug_fk_categoria`) USING BTREE,
  CONSTRAINT `FK_categoria` FOREIGN KEY (`rug_fk_categoria`) REFERENCES `rutas_categorias` (`ru_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.rutas_general: ~1 rows (aproximadamente)
DELETE FROM `rutas_general`;
INSERT INTO `rutas_general` (`rug_id`, `rug_fk_categoria`, `rug_componente`, `rug_titulo`, `rug_ruta`, `rug_icon`, `rug_color_1`, `rug_color_2`, `rug_order`) VALUES
	('114629ab-0687-46c3-b55e-bc5bea34e29c', '58af8ed3-78c6-4fb7-a66d-fe5c2415bc73', 'rutas', 'Rutas', 'rutas', 'fa-solid fa-sitemap', '#FFFFFF', '#FFFFFF', 0),
	('ec0e9ca5-67b1-4bd9-8523-f977bf680db7', '6a331351-e1a5-484a-a2db-a32b13c317ae', 'IndexComponent', 'Dashboard', '', 'dashboard', 'color_1', 'color_2', 0);

-- Volcando estructura para procedimiento auth.sp_permisos_consultas
DROP PROCEDURE IF EXISTS `sp_permisos_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_permisos_consultas`(
	IN `i_tipo` VARCHAR(50),
	IN `i_tipo_operacion` VARCHAR(50),
	IN `i_variable_1` VARCHAR(50),
	IN `i_variable_2` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_tipo_operacion = 'QVR') THEN -- CONSULTA VALIDAR RUTA
		
			SELECT per.prr_id, per.prr_estado, rol.rol_nombre, rut.rug_titulo, cat.ru_titulo
			FROM auth.permiso_roles_rutas per, auth.roles_usuarios rol, auth.rutas_general rut, auth.rutas_categorias cat
			WHERE rol.rol_id = i_variable_2
			AND 	rut.rug_componente = i_variable_1
			AND	per.FK_rol 	= rol.rol_id
			AND	per.FK_ruta = rut.rug_id
			AND	rut.rug_fk_categoria = cat.ru_id;
		
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_permisos_roles_rutas
DROP PROCEDURE IF EXISTS `sp_permisos_roles_rutas`;
DELIMITER //
CREATE PROCEDURE `sp_permisos_roles_rutas`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_rol_id` VARCHAR(50),
	IN `i_ruta_id` VARCHAR(50),
	IN `i_estado` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_tipo_operacion = 'QPRRI') THEN -- QUERY PERMISO ROL RUTA POR ID
		
			SELECT per.prr_id, per.prr_estado, rol.rol_nombre, rut.rug_titulo, cat.ru_titulo
			FROM auth.permiso_roles_rutas per, auth.roles_usuarios rol, auth.rutas_general rut, auth.rutas_categorias cat
			WHERE per.prr_id 	= i_id 
			AND	per.FK_rol 	= rol.rol_id
			AND	per.FK_ruta = rut.rug_id
			AND	rut.rug_fk_categoria = cat.ru_id;
			
		END IF;
		
		IF(i_tipo_operacion = 'QVR') THEN -- CONSULTA VALIDAR RUTA
		
			SELECT per.prr_id, per.prr_estado, rol.rol_nombre, rut.rug_titulo, cat.ru_titulo
			FROM auth.permiso_roles_rutas per, auth.roles_usuarios rol, auth.rutas_general rut, auth.rutas_categorias cat
			WHERE rut.rug_componente = i_variable_1
			AND	per.FK_rol 	= rol.rol_id
			AND	per.FK_ruta = rut.rug_id
			AND	rut.rug_fk_categoria = cat.ru_id;
		
		END IF;
		
	END IF;

	

	IF(i_tipo = 'I') THEN
		
		IF(i_tipo_operacion = 'INP') THEN -- INSERTAR NUEVO PERMISO
			
			INSERT INTO auth.permiso_roles_rutas (prr_id, FK_rol, FK_ruta, prr_estado)
			VALUES (i_id, i_rol_id, i_ruta_id, i_estado);
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_rutas_categorias
DROP PROCEDURE IF EXISTS `sp_rutas_categorias`;
DELIMITER //
CREATE PROCEDURE `sp_rutas_categorias`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_titulo` VARCHAR(50),
	IN `i_ruta` VARCHAR(50),
	IN `i_icon` VARCHAR(50),
	IN `i_color_1` VARCHAR(50),
	IN `i_color_2` VARCHAR(50),
	IN `i_order` INT
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_tipo_operacion = 'QRID') THEN
			
			SELECT ru_id, ru_titulo, ru_ruta, ru_icon, ru_color_1, ru_color_2, ru_order 
			FROM auth.rutas_categorias 
			WHERE ru_id = i_id;
			
		END IF;
		
		IF(i_tipo_operacion = 'QTRC') THEN
			
			SELECT ru_id, ru_titulo, ru_ruta, ru_icon, ru_color_1, ru_color_2, ru_order
			FROM auth.rutas_categorias;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'I') THEN
		
		IF(i_tipo_operacion = 'INR') THEN -- INSERTAR NUEVA RUTA
			
			INSERT INTO auth.rutas_categorias (ru_id, ru_titulo, ru_ruta, ru_icon, ru_color_1, ru_color_2, ru_order)
			VALUES (i_id, i_titulo, i_ruta, i_icon, i_color_1, i_color_2, i_order);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_tipo_operacion = 'URCID') THEN -- UPDATE RUTA CATEGORIA 2
		
		
			IF((SELECT COUNT(*) FROM auth.rutas_categorias WHERE ru_id = i_id) = 1) THEN
			
				UPDATE auth.rutas_categorias
				SET 
					ru_titulo 		= i_titulo,
					ru_ruta 			= i_ruta,
					ru_icon 			= i_icon,
					ru_color_1		= i_color_1,
					ru_color_2 		= i_color_2,
					ru_order			= i_order
				WHERE 
					ru_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_tipo_operacion = 'DRCID') THEN -- DELETE RUTA NIVEL 1
		
		
			IF((SELECT COUNT(*) FROM auth.rutas_categorias WHERE ru_id = i_id) = 1) THEN
			
				DELETE FROM auth.rutas_categorias
				WHERE ru_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_rutas_consultas
DROP PROCEDURE IF EXISTS `sp_rutas_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_rutas_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
	
		IF(i_tipo_operacion = 'QRXR') THEN -- RUTAS POR ROL
		
			SELECT cat.ru_id, cat.ru_titulo, cat.ru_ruta, cat.ru_icon, cat.ru_color_1, cat.ru_color_2, ru.rug_id, ru.rug_titulo, ru.rug_ruta, ru.rug_icon, ru.rug_color_1, ru.rug_color_2, ru.rug_componente
			FROM auth.permiso_roles_rutas per, auth.roles_usuarios rol, auth.rutas_general ru, auth.rutas_categorias cat
			WHERE rol.rol_id = i_variable_1
			AND	rol.rol_id = per.FK_rol
			AND	per.FK_ruta = ru.rug_id
			AND 	per.prr_estado = 'V'
			AND	ru.rug_fk_categoria = cat.ru_id;
		
		END IF;
	
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_rutas_general
DROP PROCEDURE IF EXISTS `sp_rutas_general`;
DELIMITER //
CREATE PROCEDURE `sp_rutas_general`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_fk_categoria` VARCHAR(50),
	IN `i_titulo` VARCHAR(50),
	IN `i_ruta` VARCHAR(50),
	IN `i_icon` VARCHAR(50),
	IN `i_color_1` VARCHAR(50),
	IN `i_color_2` VARCHAR(50),
	IN `i_componente` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_tipo_operacion = 'QRGCT') THEN -- QUERY CONSULTA RUTA 2
			
			SELECT cat.ru_id, cat.ru_titulo, cat.ru_ruta, cat.ru_icon, cat.ru_color_1, cat.ru_color_2, 
			ru.rug_id, ru.rug_fk_categoria, ru.rug_titulo, ru.rug_ruta, ru.rug_icon, ru.rug_color_1, ru.rug_color_2, ru.rug_componente
			FROM auth.rutas_general ru, auth.rutas_categorias cat
			WHERE cat.ru_id = ru.rug_fk_categoria;
			
		END IF;
		
		IF(i_tipo_operacion = 'QRGID') THEN -- QUERY CONSULTA RUTA 2
			
			SELECT cat.ru_id, cat.ru_titulo, cat.ru_ruta, cat.ru_icon, cat.ru_color_1, cat.ru_color_2, 
			ru.rug_id, ru.rug_fk_categoria, ru.rug_titulo, ru.rug_ruta, ru.rug_icon, ru.rug_color_1, ru.rug_color_2, ru.rug_componente
			FROM auth.rutas_general ru, auth.rutas_categorias cat
			WHERE cat.ru_id = ru.rug_fk_categoria
			AND ru.rug_id = i_id;
			
		END IF;
	
	END IF;
	
	IF(i_tipo = 'I') THEN
		
		IF(i_tipo_operacion = 'INR') THEN -- INSERTAR NUEVA RUTA
			
			INSERT INTO auth.rutas_general (rug_id, rug_fk_categoria, rug_componente, rug_titulo, rug_ruta, rug_icon, rug_color_1, rug_color_2)
			VALUES (i_id, i_fk_categoria, i_componente, i_titulo, i_ruta, i_icon, i_color_1, i_color_2);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_tipo_operacion = 'UR2') THEN -- UPDATE RUTA 2
		
		
			IF((SELECT COUNT(*) FROM auth.rutas_general WHERE rug_id = i_id) = 1) THEN
			
				UPDATE auth.rutas_general
				SET 
					rug_fk_categoria 	= i_fk_categoria,
					rug_componente 	= i_componente,  
					rug_titulo 			= i_titulo,
					rug_ruta 			= i_ruta,
					rug_icon 			= i_icon,
					rug_color_1			= i_color_1,
					rug_color_2 		= i_color_2
				WHERE 
					rug_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_tipo_operacion = 'DRGID') THEN -- UPDATE RUTA 2
		
		
			IF((SELECT COUNT(*) FROM auth.rutas_general WHERE rug_id = i_id) = 1) THEN
			
				DELETE FROM auth.rutas_general
				WHERE rug_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_tokens
DROP PROCEDURE IF EXISTS `sp_tokens`;
DELIMITER //
CREATE PROCEDURE `sp_tokens`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_token` TEXT,
	IN `i_type` VARCHAR(50),
	IN `i_revoked` CHAR(1),
	IN `i_user_id` VARCHAR(50),
	IN `i_date` DATETIME,
	IN `i_interval` VARCHAR(50),
	IN `i_number` INT
)
BEGIN

	IF(i_tipo = 'Q')THEN
	
		IF(i_tipo_operacion = 'QUVT')THEN
		
			if(i_interval = 'segundos') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) SECOND));
			END IF;
			
			if(i_interval = 'minutos') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) MINUTE));
			END IF;
			
			if(i_interval = 'horas') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) HOUR));
			END IF;
			
			if(i_interval = 'dias') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) DAY));
			END IF;
		
			SELECT t.to_id, t.to_token, t.to_type, t.to_revoked, t.to_user_id, t.to_date FROM auth.tokens_users t
	      WHERE t.to_date > @fecha_revisar
			AND t.to_user_id = i_user_id
	      AND t.to_id = i_id
			LIMIT 1;
	
		END IF;
		
	END IF;
	
	IF(i_tipo = 'CU')THEN
	
		IF(i_tipo_operacion = 'CUT')THEN
		
			IF(i_interval = 'segundos') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) SECOND));
			END IF;
			
			IF(i_interval = 'minutos') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) MINUTE));
			END IF;
			
			IF(i_interval = 'horas') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) HOUR));
			END IF;
			
			IF(i_interval = 'dias') THEN
				SET @fecha_revisar = (SELECT DATE_SUB(NOW(), INTERVAL (i_number) DAY));
			END IF;
		
			IF((SELECT 1 FROM auth.tokens_users t WHERE t.to_date >= @fecha_revisar AND t.to_user_id = i_user_id AND t.to_id = i_id) = 1) THEN
				
				UPDATE auth.tokens_users
				SET 
					to_token = i_token,
					to_date 	= NOW()
				WHERE 
						t.to_date >= @fecha_revisar 
				AND 	t.to_user_id = i_user_id 
				AND 	t.to_id = i_id;
				
			ELSE
		
				INSERT INTO auth.tokens_users(
				to_id,
				to_user_id,
				to_date,
				to_type,
				to_revoked,
				to_token)
				VALUES(
				i_id,
				i_user_id,
				NOW(),
				i_type,
				i_revoked,
				i_token
				);
				
			END IF;
	
		END IF;
	
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_usuarios
DROP PROCEDURE IF EXISTS `sp_usuarios`;
DELIMITER //
CREATE PROCEDURE `sp_usuarios`(
	IN `i_operacion` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_correo` VARCHAR(100),
	IN `i_nombre` VARCHAR(50),
	IN `i_password` VARCHAR(500),
	IN `i_correo_lower` VARCHAR(100),
	IN `i_pass_key` VARCHAR(500),
	IN `i_id_rol` VARCHAR(50)
)
BEGIN

	IF(i_operacion = 'I') THEN
	
		IF(i_tipo_operacion = 'INU') THEN
			
			INSERT INTO auth.usuarios (id, correo, nombre, password, correo_lower, pass_key, FK_rol)
			VALUES (i_id, i_correo, i_nombre, i_password, LOWER(i_correo_lower), i_pass_key, i_id_rol);
			
		END IF;
		
	END IF;
	
	IF(i_operacion = 'U') THEN
	
		IF(i_tipo_operacion = 'UNL') THEN
			
			UPDATE auth.usuarios us
			SET us.pass_key = i_pass_key
			WHERE id = i_id;
			
		END IF;
		
	END IF;
	
	IF(i_operacion = 'Q') THEN
	
		IF(i_tipo_operacion = 'QUBE') THEN
			
			SELECT id, correo, nombre, PASSWORD, estado, pass_key, FK_rol FROM auth.usuarios p WHERE p.correo_lower = i_correo_lower;
			
		END IF;
		
	
		IF(i_tipo_operacion = 'LOGIN') THEN
			
			SELECT id, correo, nombre, PASSWORD, estado, pass_key, FK_rol FROM auth.usuarios p WHERE p.correo_lower = i_correo_lower;
			
		END IF;
	
		IF(i_tipo_operacion = 'VUE') THEN
			
			SELECT 1 FROM auth.usuarios p WHERE p.correo_lower = i_correo_lower LIMIT 1;
			
		END IF;
		
		IF(i_tipo_operacion = 'CUID') THEN
			
			SELECT *  FROM auth.usuarios WHERE id = i_id;
			
		END IF;
		
	END IF;
	
	
	IF(i_operacion = 'U') THEN
	
		IF(i_tipo_operacion = 'UPK') THEN
			
			UPDATE auth.usuarios
			SET pass_key = i_pass_key
			WHERE id = i_id;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_usuarios_consultas
DROP PROCEDURE IF EXISTS `sp_usuarios_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_usuarios_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_variable` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
	
		IF(i_tipo_operacion = 'QUBE') THEN
			
			SELECT id, correo, nombre, PASSWORD, estado, pass_key, FK_rol FROM auth.usuarios p WHERE p.correo_lower = i_variable;
			
		END IF;
		
	
		IF(i_tipo_operacion = 'LOGIN') THEN
			
			SELECT id, correo, nombre, PASSWORD, estado, pass_key, FK_rol FROM auth.usuarios p WHERE p.correo_lower = i_variable;
			
		END IF;
	
		IF(i_tipo_operacion = 'VUE') THEN
			
			SELECT 1 FROM auth.usuarios p WHERE p.correo_lower = i_variable LIMIT 1;
			
		END IF;
		
		IF(i_tipo_operacion = 'CUID') THEN
			
			SELECT usr.id, usr.correo, usr.nombre, usr.pass_key, usr.estado, rol.rol_nombre, rol.rol_id
			FROM auth.usuarios usr, auth.roles_usuarios rol 
			WHERE id = i_variable 
			AND usr.FK_rol = rol.rol_id;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento auth.sp_usuarios_rol
DROP PROCEDURE IF EXISTS `sp_usuarios_rol`;
DELIMITER //
CREATE PROCEDURE `sp_usuarios_rol`(
	IN `i_tipo` CHAR(5),
	IN `i_tipo_operacion` CHAR(5),
	IN `i_id` VARCHAR(50),
	IN `i_nombre` VARCHAR(50)
)
BEGIN

	IF(i_tipo = 'Q') THEN
		
		IF(i_tipo_operacion = 'QTR') THEN -- CONSULTA TODOS ROLES
			
			SELECT rol_id, rol_nombre FROM auth.roles_usuarios;
			
		END IF;
		
		IF(i_tipo_operacion = 'QRID') THEN -- CONSULTA ROL POR ID
			
			SELECT rol_id, rol_nombre FROM auth.roles_usuarios WHERE rol_id;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'I') THEN
		
		IF(i_tipo_operacion = 'INR') THEN -- INSERTAR NUEVO ROL
			
			INSERT INTO auth.roles_usuarios (rol_id, rol_nombre)
			VALUES (i_id, i_nombre);
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'U') THEN
		
		IF(i_tipo_operacion = 'URCID') THEN -- UPDATE ROL POR ID
		
		
			IF((SELECT COUNT(*) FROM auth.roles_usuarios WHERE rol_id = i_id) = 1) THEN
			
				UPDATE auth.roles_usuarios
				SET 
					rol_nombre 		= i_nombre
				WHERE 
					rol_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;
	
	IF(i_tipo = 'D') THEN
		
		IF(i_tipo_operacion = 'DRCID') THEN -- DELETE ROL POR ID		
		
			IF((SELECT COUNT(*) FROM auth.roles_usuarios WHERE rol_id = i_id) = 1) THEN
			
				DELETE FROM auth.roles_usuarios
				WHERE rol_id = i_id;
			
			END IF;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para tabla auth.tokens_users
DROP TABLE IF EXISTS `tokens_users`;
CREATE TABLE IF NOT EXISTS `tokens_users` (
  `to_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `to_user_id` varchar(50) COLLATE armscii8_bin NOT NULL,
  `to_date` datetime NOT NULL,
  `to_type` varchar(50) COLLATE armscii8_bin NOT NULL,
  `to_revoked` char(1) COLLATE armscii8_bin NOT NULL,
  `to_token` text COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`to_id`),
  KEY `token_indice_1` (`to_date`,`to_user_id`,`to_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.tokens_users: ~52 rows (aproximadamente)
DELETE FROM `tokens_users`;
INSERT INTO `tokens_users` (`to_id`, `to_user_id`, `to_date`, `to_type`, `to_revoked`, `to_token`) VALUES
	('044edfc3-3ff2-4817-b566-528bd0779554', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:25:24', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjA0NGVkZmMzLTNmZjItNDgxNy1iNTY2LTUyOGJkMDc3OTU1NCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJlNDM3ZDZjYy02YWVlLTQyNmMtYjZkYS01ZDIwMzJkNDEwMWEiLCJpYXQiOjE2ODIxMDUxMjQsImV4cCI6MTY4MjEyMzEyNH0.qGSX0akcabz3QaB8eprs0fd4pSmBP8T9AMjxjCTd1L0'),
	('13a70f9b-a01e-42f2-9e7a-ec9be1b3aeeb', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:39:26', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjEzYTcwZjliLWEwMWUtNDJmMi05ZTdhLWVjOWJlMWIzYWVlYiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1ZTU3NmU1OC0zY2E1LTRhNTMtOGVlMi03MzZhNmQxNzI0NjgiLCJpYXQiOjE2ODIxMDk1NjYsImV4cCI6MTY4MjEyNzU2Nn0.Fs7v4sL7whbaMDUm1K31SSj9PiuZF0VnFY5S0UIsoOI'),
	('160b66ce-6a8e-4bf0-b393-2a4f1b111c2a', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:41:07', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjE2MGI2NmNlLTZhOGUtNGJmMC1iMzkzLTJhNGYxYjExMWMyYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiYjNmZTQxMS01ODQwLTRjZmQtYWVkMy1hMjZkMTgzZjcxN2UiLCJpYXQiOjE2ODIxMDI0NjcsImV4cCI6MTY4MjEyMDQ2N30.3jDGypgJwLkHeUMOhLWc-2NBygDgEsQ0wF0DcD4Pcn4'),
	('16a60d55-7965-43dc-9f3a-5415bad11fab', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:39:48', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjE2YTYwZDU1LTc5NjUtNDNkYy05ZjNhLTU0MTViYWQxMWZhYiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1MTkwZmFlZi1hZmEwLTQ5MDItOGM5ZS1jMTYwY2Q5NjZmZjAiLCJpYXQiOjE2ODIxMDIzODgsImV4cCI6MTY4MjEyMDM4OH0.5RkyYdB55aJaQTa3uN_BYEHhawK9JGU3lmMk_47MCBM'),
	('26aa0f84-aa7d-4117-83db-4c03a86cd2b3', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:10:27', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjI2YWEwZjg0LWFhN2QtNDExNy04M2RiLTRjMDNhODZjZDJiMyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI3Mzk5M2Y0Mi1iMDc2LTQ0NjUtOWMyMS1hZjBjMTM3MjA1ODIiLCJpYXQiOjE2ODIxMDQyMjcsImV4cCI6MTY4MjEyMjIyN30.mAYRgH1VW5exVEtjGo-d-BjVRSPvldznhi0kLBuvoJ4'),
	('29d01f1d-5417-47c8-969f-e7facf7ce2e9', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:26:32', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjI5ZDAxZjFkLTU0MTctNDdjOC05NjlmLWU3ZmFjZjdjZTJlOSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJjMGFkNDYzMi04ODIyLTQ0NjQtODYxMy01YjMzMmE0ZWQ1NWQiLCJpYXQiOjE2ODIxMDg3OTIsImV4cCI6MTY4MjEyNjc5Mn0.6-xSYz9QXeRQg9CyKgoTZZcOdovvEG_iBxxGrRYPgD4'),
	('2ba1a072-4e28-4404-a39d-99e0f7bf1f11', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:38:35', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjJiYTFhMDcyLTRlMjgtNDQwNC1hMzlkLTk5ZTBmN2JmMWYxMSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJlYjQyNThlNy00ZTUwLTRmNTktOWY1Ni04NWYyMmFmYTE5ZWMiLCJpYXQiOjE2ODIxMDk1MTUsImV4cCI6MTY4MjEyNzUxNX0.wsuGdyCpsofNMz1ecw5TRXG3pX9vtMdmaoSO5FCihQA'),
	('2fba329a-37c3-4d6c-bbea-c62dd03a7aa2', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-24 10:02:44', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjJmYmEzMjlhLTM3YzMtNGQ2Yy1iYmVhLWM2MmRkMDNhN2FhMiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiZTVkOWQ5OC1mMjA1LTRkOGMtYWM3YS0wZTlkMjQyZjAzYmIiLCJpYXQiOjE2ODIzNDg1NjQsImV4cCI6MTY4MjM2NjU2NH0.DL0V6MeG6b0QxKKXpPSDN7h1XpidK78R5HX3_ALPKrA'),
	('2fd738e2-2697-4a7e-b299-00bb21d61219', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:40:20', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjJmZDczOGUyLTI2OTctNGE3ZS1iMjk5LTAwYmIyMWQ2MTIxOSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI0NmI5ZWI5ZC1hMDI0LTRiOWItOGNjYS04YWNiNTUyMDJiZDgiLCJpYXQiOjE2ODIxMDk2MjAsImV4cCI6MTY4MjEyNzYyMH0.EvwxW8UqF8YUITK2ibPnaAVjKaEahA1pNSr6KQR_HdU'),
	('36cdef91-d961-466c-9cd5-8f2861cb60df', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 08:42:38', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjM2Y2RlZjkxLWQ5NjEtNDY2Yy05Y2Q1LThmMjg2MWNiNjBkZiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI4ZDYzYmExZC0xNmY1LTRlNDUtOGYyZC0yODk3YzM0NDc1OTkiLCJpYXQiOjE2ODIwODQ1NTgsImV4cCI6MTY4MjEwMjU1OH0.Owv2Oet_q3wPOrf96eYQ9UundZ8MQo6W2Z3_8SMFceQ'),
	('37ba8ead-e07e-4c10-bdc6-d0ed69007ed1', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:42:28', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjM3YmE4ZWFkLWUwN2UtNGMxMC1iZGM2LWQwZWQ2OTAwN2VkMSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI0NzMwYThmMy1hOTJkLTQ2ZWEtOTg2YS1lZjEyMjg0NThmYmQiLCJpYXQiOjE2ODIxMDI1NDgsImV4cCI6MTY4MjEyMDU0OH0.Wqn-qO1iAObCfnUD0RyNSl31BgJQSkt9frtCD0THFEM'),
	('39e75e84-07b5-4b0b-bc6c-f512d8173d08', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-25 16:15:34', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjM5ZTc1ZTg0LTA3YjUtNGIwYi1iYzZjLWY1MTJkODE3M2QwOCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIyZGZhNTgzMC1mMWQ2LTRkNDYtOGQzYi1jM2IwMTUxZDMwY2UiLCJpYXQiOjE2ODI0NTczMzQsImV4cCI6MTY4MjQ3NTMzNH0.G1xuadExasgfwX66B3e2XEw-s529KHpNU_amqjQnLW8'),
	('39ff22a7-f2fc-4776-8d7f-e124415944a1', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 10:08:28', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjM5ZmYyMmE3LWYyZmMtNDc3Ni04ZDdmLWUxMjQ0MTU5NDRhMSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJjYTZmZDk3MC1jOWY2LTQ0MjMtOTAyNi00MzY2MGU4MjBmNjYiLCJpYXQiOjE2ODIwODk3MDgsImV4cCI6MTY4MjEwNzcwOH0.hR7pRHvSoUdbJJxK7A4cGDA6rHwBB8Y5jVEyhIHtdqQ'),
	('3dbc367a-6f28-4478-8157-c4e34e99bb54', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 12:52:09', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjNkYmMzNjdhLTZmMjgtNDQ3OC04MTU3LWM0ZTM0ZTk5YmI1NCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIzY2QxODZjNi04OTU2LTRjZjctODlhOC0wYWJhZWZhOTE3MzgiLCJpYXQiOjE2ODI4NzcxMjksImV4cCI6MTY4Mjg5NTEyOX0.fjW9GXHUsZ2xjay_bhmg-sv0HGMvnho3Qky_42QmS6c'),
	('3e86f1b7-28fb-4866-8dd9-0b7fb99efd1d', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:07:07', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjNlODZmMWI3LTI4ZmItNDg2Ni04ZGQ5LTBiN2ZiOTllZmQxZCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1NTY4ZmYyOS1jZDcxLTQzNzQtYWUwMi05M2QzMmZjNDI1Y2IiLCJpYXQiOjE2ODIxMDQwMjcsImV4cCI6MTY4MjEyMjAyN30.ZDNqNuQbhUD3cRsPqR369HOLR6y0LGR4BV8HpoEj0gc'),
	('405aa565-985a-4b4e-8dd0-7be9868ba20e', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 10:25:37', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjQwNWFhNTY1LTk4NWEtNGI0ZS04ZGQwLTdiZTk4NjhiYTIwZSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI3MjIwYjdlMC0xY2NhLTQzMjQtOGQ5NC05ZjQyY2U4NzY1ZTUiLCJpYXQiOjE2ODI4NjgzMzcsImV4cCI6MTY4Mjg4NjMzN30.lyryXvLsJJJANPZRV-bh-CjTKoZFs_8pSoveJNLiL9o'),
	('4391a5c3-b4f5-4b66-929b-dfeb9eae0c6c', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-23 17:54:08', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjQzOTFhNWMzLWI0ZjUtNGI2Ni05MjliLWRmZWI5ZWFlMGM2YyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI0MTA3OTJlNy05MzMyLTQwMzctYjE4Ni03YTZkNWY4NTI2ODIiLCJpYXQiOjE2ODIyOTA0NDgsImV4cCI6MTY4MjMwODQ0OH0.6nKy6FcMNOjy2BkLhL6pGlsOBjLw0jUUcOSx6gjPuTc'),
	('470d9928-14cc-4519-b90d-e88f720dcd5f', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-29 10:00:07', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjQ3MGQ5OTI4LTE0Y2MtNDUxOS1iOTBkLWU4OGY3MjBkY2Q1ZiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI3NjBiNGJkNC00ODk0LTQ5MTctYjhlZi1kOGI4YWU2YjZhNGQiLCJpYXQiOjE2ODI3ODA0MDcsImV4cCI6MTY4Mjc5ODQwN30.DoKjD_YmwQZtdSFXEDW-2-lAQ_fikznTqbbpzPKZq7A'),
	('47860468-e7dc-4ad9-9221-b353358cf837', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-28 10:26:14', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjQ3ODYwNDY4LWU3ZGMtNGFkOS05MjIxLWIzNTMzNThjZjgzNyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1MDhiMGIxOS1iZTk4LTQ5NTctYTgwZC0yN2Q3NmM4YWIwZGUiLCJpYXQiOjE2ODI2OTU1NzQsImV4cCI6MTY4MjcxMzU3NH0.yaJkWTgaeLd0m-2FozfTWJ-M6NbWx2SFhoCRIC7eUBU'),
	('4a905a13-6623-44d5-85fb-974fdc562732', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:50:34', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjRhOTA1YTEzLTY2MjMtNDRkNS04NWZiLTk3NGZkYzU2MjczMiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJmNzg3ZWM3ZS1jOWY3LTRkMDMtYTEwMC1hZjAzYTU3ZGY5MjUiLCJpYXQiOjE2ODIxMDMwMzQsImV4cCI6MTY4MjEyMTAzNH0.fwxG0p1IzVEzobquEDc3vn34seFsgXUYUadj8QNe1nc'),
	('510fd69d-31c5-4696-a640-4b8f3c8fb4d2', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-24 00:21:19', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjUxMGZkNjlkLTMxYzUtNDY5Ni1hNjQwLTRiOGYzYzhmYjRkMiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1OTMwNTZiMi1iMTZlLTQ4YTAtYTIyZi1jNmY0ZjVkZmJkOTUiLCJpYXQiOjE2ODIzMTM2NzksImV4cCI6MTY4MjMzMTY3OX0.8s4m2xfTbAryM1VqZZ-3TBFvLxp_pR1gVXaJ44jTmUI'),
	('5496ec7e-efeb-4cb7-a2eb-59c8e567af23', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:12:55', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjU0OTZlYzdlLWVmZWItNGNiNy1hMmViLTU5YzhlNTY3YWYyMyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI4MGE3OTBlMi03YzE5LTQ4MTYtOWVjYi1iNzMxZjEyNWNhYzgiLCJpYXQiOjE2ODIxMDQzNzUsImV4cCI6MTY4MjEyMjM3NX0.yW1It74yoZn6Z1TNVhkt6Sfe58prRerr4NKTSjw0eDA'),
	('58b558b2-db28-4f12-a2e5-f93bdb7c0afa', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:08:53', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjU4YjU1OGIyLWRiMjgtNGYxMi1hMmU1LWY5M2JkYjdjMGFmYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhNzU3MGIzNy1kZGMwLTQ1ZGEtYWRjYy1iMTI5NDM5OTk4NGYiLCJpYXQiOjE2ODIxMDQxMzMsImV4cCI6MTY4MjEyMjEzM30._8WebO5f51e1DziM2pk_UB7BId-QdsPlUYpNyAj3-LE'),
	('60259262-fd22-4e7b-a078-d1865b6a9843', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 10:55:52', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjYwMjU5MjYyLWZkMjItNGU3Yi1hMDc4LWQxODY1YjZhOTg0MyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJkY2M0MzIwYy00YTQ1LTQzMjQtOWFkMi00MjQwMmJmY2VkY2EiLCJpYXQiOjE2ODI4NzAxNTIsImV4cCI6MTY4Mjg3MDI3Mn0.F7dVDPMex_M-5VY1HUzwypBfMmi5L29TVudjeMjgU84'),
	('6485dcf1-3798-4409-86ed-76b7fc69df0f', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 16:00:13', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjY0ODVkY2YxLTM3OTgtNDQwOS04NmVkLTc2YjdmYzY5ZGYwZiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhYWJiOGEzOS0yNDhkLTQ3ZTAtYjllYS1lNDFhOTQ4YTA4OTYiLCJpYXQiOjE2ODIxMTA4MTMsImV4cCI6MTY4MjEyODgxM30.Zk2iMhmxB5YGYbJNQgdPYnXMIa_k-6q_iFJSQ0bjNNY'),
	('6723b573-cfc0-4502-a989-dbe861c59225', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:07:51', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjY3MjNiNTczLWNmYzAtNDUwMi1hOTg5LWRiZTg2MWM1OTIyNSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI0NWFkZGI1OS0yNTgzLTQ3ODYtODdmZi1kMmIxNmM1NzdiY2UiLCJpYXQiOjE2ODIxMDQwNzEsImV4cCI6MTY4MjEyMjA3MX0.qdgL-mcjSTcvuHcI-Q-e99AmrBfWaYltX26mJ70_Y-0'),
	('675e3021-327c-4823-af3c-963f3f2114ef', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-05-20 11:02:28', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjY3NWUzMDIxLTMyN2MtNDgyMy1hZjNjLTk2M2YzZjIxMTRlZiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI4OTY0NTNkYy1iNDc0LTQ4NGYtYTk1My1lYjM3YmE4MWRiZWIiLCJpYXQiOjE2ODQ1OTg1NDgsImV4cCI6MTY4NDYxNjU0OH0.uJ3kqkUd9EYVd3fysjON2oNBLOyZhKqYBe5nuxkICM0'),
	('69d6be22-4a7f-4bab-975e-132162d7e071', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:43:51', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjY5ZDZiZTIyLTRhN2YtNGJhYi05NzVlLTEzMjE2MmQ3ZTA3MSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiY2Y3NWM1Mi02MDliLTQ5NzMtYmYxNi0zNzJkZjA4N2IxMjYiLCJpYXQiOjE2ODIxMDk4MzEsImV4cCI6MTY4MjEyNzgzMX0.cXvxUfjIC4eLxfvknvftnTxYgBqUXI90AHYS1YPpQAE'),
	('6b3f1ed4-8591-4d16-b09c-54d61282516d', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-20 11:14:46', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjZiM2YxZWQ0LTg1OTEtNGQxNi1iMDljLTU0ZDYxMjgyNTE2ZCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIzNmFlYTUyNy1kNzQyLTRjN2QtYTRkMS1jNDA1YTU0MGJlN2IiLCJzdWIiOiJ0ZXN0MUB0ZXN0LmNvbSIsImlhdCI6MTY4MjAwNzI4NiwiZXhwIjoxNjgyMDI1Mjg2fQ.GGZhqBiDw_VUXVym4D0uf3wi3yzVAE7A8LZ0-N1ks3I'),
	('82842bff-6cc5-4909-a3b6-52a781686e0a', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:05:27', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjgyODQyYmZmLTZjYzUtNDkwOS1hM2I2LTUyYTc4MTY4NmUwYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIxMGU2NmM3ZS1lYmNlLTQzYjYtOTI1Ny1jMmRiNDRjZGM2OWEiLCJpYXQiOjE2ODIxMDM5MjcsImV4cCI6MTY4MjEyMTkyN30.ug2-88tusfNF4LHqVFiiJuVpAqvs6055X-pm2jvGhpA'),
	('841cd2ea-e6b8-43bf-9848-4badb091919a', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-24 15:07:18', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijg0MWNkMmVhLWU2YjgtNDNiZi05ODQ4LTRiYWRiMDkxOTE5YSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJmODZkODRiZS05MDhhLTQ2NWYtOWQzZC1hMmFhMDk3NzNjYTgiLCJpYXQiOjE2ODIzNjY4MzgsImV4cCI6MTY4MjM4NDgzOH0._Z-M-D-3ewasFG-WI0itoepF58_C0fTj0UUnM-BN3Ko'),
	('88ab0f9d-29d6-4594-9b59-9258067df95e', '1bd64709-20ae-4bde-9b82-ddc2fb2186ff', '2023-04-21 13:18:46', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijg4YWIwZjlkLTI5ZDYtNDU5NC05YjU5LTkyNTgwNjdkZjk1ZSIsImlkIjoiMWJkNjQ3MDktMjBhZS00YmRlLTliODItZGRjMmZiMjE4NmZmIiwicGFzc19rZXkiOiJiNjEyNTZkNC0wOTkzLTRkZTAtODYyNC1mZWQ2YTYyYmQ2NDIiLCJzdWIiOiJ0ZXN0MkB0ZXN0LmNvbSIsImlhdCI6MTY4MjEwMTEyNiwiZXhwIjoxNjgyMTE5MTI2fQ.X7g9OzBrf2EQLO4-wqtUkbiJrsOpprGmd0amDb1jUO4'),
	('89553953-9cf3-4291-a14c-8ed7c330f129', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:52:29', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijg5NTUzOTUzLTljZjMtNDI5MS1hMTRjLThlZDdjMzMwZjEyOSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhOGY4ZGIyNy1mNTRkLTQzZjctYWQ3My1iMjNmNmVhNmRmNzAiLCJpYXQiOjE2ODIxMDMxNDksImV4cCI6MTY4MjEyMTE0OX0.6fd7GtQp8elkMGWMcVNwFvWvwKA0guexV3u9bMq2y8w'),
	('8ad9a10a-7a8e-49d0-9676-5cd2a66837ce', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:01:12', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjhhZDlhMTBhLTdhOGUtNDlkMC05Njc2LTVjZDJhNjY4MzdjZSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI5MDYzMzNlMS0yMzMyLTQ4MmEtODI1MC1kYzE2Y2MzODU3YTAiLCJpYXQiOjE2ODIxMDM2NzIsImV4cCI6MTY4MjEyMTY3Mn0.hAiVRHEIJWh6PtoS5UM0iSjNoTAqI3vyPLYUkly6ERM'),
	('901a7323-c620-4dab-836e-72f5da85b988', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:02:01', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjkwMWE3MzIzLWM2MjAtNGRhYi04MzZlLTcyZjVkYTg1Yjk4OCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJmODEyN2FjOC04MGVkLTRiNTUtOTEyOS1iMWFhZWNiYWZmNDAiLCJpYXQiOjE2ODIxMDM3MjEsImV4cCI6MTY4MjEyMTcyMX0.zxf6b6v74BrPUVZKfcU8wwag_HwB5ysPgCYBnchm4KE'),
	('90448c18-b07e-4084-b6bd-af4177696b63', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-05-20 10:55:06', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjkwNDQ4YzE4LWIwN2UtNDA4NC1iNmJkLWFmNDE3NzY5NmI2MyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJmODc4ODM2ZS1jNjgzLTRmZDAtYTAyMi00ZWM1ZTRhNjA0Y2MiLCJpYXQiOjE2ODQ1OTgxMDYsImV4cCI6MTY4NDYxNjEwNn0.kf2RTB1u-9G0Cb-elRabLTnvsRziwvRBAM6MgMrNbkU'),
	('95bfd345-c039-4d4c-9cfd-127121bfa185', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 12:43:02', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijk1YmZkMzQ1LWMwMzktNGQ0Yy05Y2ZkLTEyNzEyMWJmYTE4NSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIzYzdlYWZjYS1kMDBlLTQxNjQtODRiYy02OTkzZDRmNjQ2MGUiLCJpYXQiOjE2ODI4NzY1ODIsImV4cCI6MTY4Mjg5NDU4Mn0.uY9Xi--8jwEJirHgbRV89vp7tTerjYBYArgKVzpUjZE'),
	('965661c3-39ea-4cf5-946f-3d8178420d57', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:38:14', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijk2NTY2MWMzLTM5ZWEtNGNmNS05NDZmLTNkODE3ODQyMGQ1NyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIwYWI4N2E5OS03MjhkLTRmZGMtYTE5Yy0zZjhiNGNmNWIwMDIiLCJpYXQiOjE2ODIxMDk0OTQsImV4cCI6MTY4MjEyNzQ5NH0.I2mZAKhoUpZfaFI149Sb-1ZTST4PaaokBn0VKRk3e_w'),
	('98d35d69-5c0f-4706-9759-e790387a66aa', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-24 00:09:08', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijk4ZDM1ZDY5LTVjMGYtNDcwNi05NzU5LWU3OTAzODdhNjZhYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJjMjc4YTdlZS00MzZiLTRhOTMtYTAzMS1mY2YwODE5ZmJlYzgiLCJpYXQiOjE2ODIzMTI5NDgsImV4cCI6MTY4MjMzMDk0OH0.Epjid87llMwf_E8_NSVKP42LbNxd0rttl0nI7s5opN8'),
	('99b606e9-ff1c-4c7e-8f56-d223290d66fa', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:25:22', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6Ijk5YjYwNmU5LWZmMWMtNGM3ZS04ZjU2LWQyMjMyOTBkNjZmYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhOWRkMzg2MS01YWY2LTQxYzItYTYwZC0zNWJmYjNiY2E3YjgiLCJpYXQiOjE2ODIxMDUxMjIsImV4cCI6MTY4MjEyMzEyMn0.KS0Eb-IQDq_EDAugb3z2pY6vYQXFQWxJrFsjWgpTpK8'),
	('9e85abb0-22d3-41f7-be34-ad41b3dd52fa', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-05-20 12:24:46', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6IjllODVhYmIwLTIyZDMtNDFmNy1iZTM0LWFkNDFiM2RkNTJmYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI5Nzc4M2RiMS05N2ZkLTRmYWMtOWRhMi00NjBkMGE0NWUzZTYiLCJpYXQiOjE2ODQ2MDM0ODYsImV4cCI6MTY4NDYyMTQ4Nn0.v89QdVMSB_9WOGwRIKoGSCebfOQ3__KCXlhyC2itAlI'),
	('a4b90ae9-3fab-4d7d-ad2d-d0f9a9931ccc', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:32:03', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImE0YjkwYWU5LTNmYWItNGQ3ZC1hZDJkLWQwZjlhOTkzMWNjYyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI0NTE1MjQ1ZC01OGI1LTQxYWUtYWYxNy0wM2NlYTk0M2IxZmYiLCJpYXQiOjE2ODIxMDkxMjMsImV4cCI6MTY4MjEyNzEyM30.fBaic-d_cW1QAhbhzVr4R2Ax4d-RksWJk8RbZfXhSy8'),
	('a50fc025-35c0-47c8-85c3-cac77b8fa861', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-22 12:41:28', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImE1MGZjMDI1LTM1YzAtNDdjOC04NWMzLWNhYzc3YjhmYTg2MSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI5NWRiZjQzYy1mZWRiLTQxYmUtOGRjOS1kMmNjMzg1MjUzY2IiLCJpYXQiOjE2ODIxODUyODgsImV4cCI6MTY4MjIwMzI4OH0.fMBHN0yx5jBKHWfk0EU0SRYOGXF_6nvttz8P3JG71Cg'),
	('adbf5d6f-bb62-456a-9eeb-7849834013f0', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:54:36', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImFkYmY1ZDZmLWJiNjItNDU2YS05ZWViLTc4NDk4MzQwMTNmMCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI2ZTljNTBlMS1iMTE5LTQ5YmYtYWZiNS0zMjEwNzM4MGExYjMiLCJpYXQiOjE2ODIxMDMyNzYsImV4cCI6MTY4MjEyMTI3Nn0.SPGzQGoAKzfdq3w_yxf2xGsdlCuji7dduRfGdEAY4D0'),
	('b5a56eec-e573-48d8-8d82-74d7b5842f59', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:08:31', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImI1YTU2ZWVjLWU1NzMtNDhkOC04ZDgyLTc0ZDdiNTg0MmY1OSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1MGMwMzYzYS1hOGU5LTQzMmMtYmJlMy1lNGQ0OWU4NzJlMDEiLCJpYXQiOjE2ODIxMDQxMTEsImV4cCI6MTY4MjEyMjExMX0.Q31hHlONa77fWs110xQM_CYotV3ylUsMU1JPADEvo_U'),
	('c0b82325-e8d3-497b-870d-191812a13c6a', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:26:34', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImMwYjgyMzI1LWU4ZDMtNDk3Yi04NzBkLTE5MTgxMmExM2M2YSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIyYzM3MmFkNi0wMWFiLTQ2NzMtODE4Mi1iYWQ2MTlhMDc3ZGIiLCJpYXQiOjE2ODIxMDUxOTQsImV4cCI6MTY4MjEyMzE5NH0.hy8ySMg8oH2xXtm3u1KMs5I13eAXrl_F1qxqbo3N2Po'),
	('c52dda8c-0635-40b1-8a30-ec3dc6a36391', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-29 10:28:00', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImM1MmRkYThjLTA2MzUtNDBiMS04YTMwLWVjM2RjNmEzNjM5MSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiMmQwMjllZC0yOWM5LTQ5ZWYtYTlhYi1kOTFmMTNmNWUyMmMiLCJpYXQiOjE2ODI3ODIwODAsImV4cCI6MTY4MjgwMDA4MH0.9z9V_NRz2XrPnaqRhTEOPnoZzIh2V4ieD5fKrVgjvaU'),
	('c6835286-738f-4d06-9a36-de3359442e0a', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:11:49', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImM2ODM1Mjg2LTczOGYtNGQwNi05YTM2LWRlMzM1OTQ0MmUwYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJkMjU2MGI4ZS1mMTJlLTQ3ZTItYmE0Yy0wNmZiOWY0MTY2MWIiLCJpYXQiOjE2ODIxMDQzMDksImV4cCI6MTY4MjEyMjMwOX0.Z0lKl_6WIO4rZphsLr9S-pOch_NJbwWkl2loSvfTamw'),
	('c87e1476-1ef9-4a0d-a1c5-341b11002770', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 16:00:02', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImM4N2UxNDc2LTFlZjktNGEwZC1hMWM1LTM0MWIxMTAwMjc3MCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiNGJmYjhmYy04ZTk0LTRlNmQtOTdkNS03MzU3ZDA2NzNmZmIiLCJpYXQiOjE2ODIxMTA4MDIsImV4cCI6MTY4MjEyODgwMn0.emMC9cYIh71LYd0cfp8xaSCA6KNGjOaErmyMmdWb0oc'),
	('cb44699a-2f8b-40a2-b8d7-2f3b45784ced', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-25 08:53:24', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImNiNDQ2OTlhLTJmOGItNDBhMi1iOGQ3LTJmM2I0NTc4NGNlZCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhNmRhOGRmMi0wYWY0LTRmNjktYjdiYS1mODhlZjgzZjBiYWYiLCJpYXQiOjE2ODI0MzA4MDQsImV4cCI6MTY4MjQ0ODgwNH0.dSAx7bqfT1_6e71WLlD1zAZPRF2c3QRYzub91NqnhUI'),
	('cba348c7-b430-4d1e-b661-73cd2b1560b3', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:25:27', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImNiYTM0OGM3LWI0MzAtNGQxZS1iNjYxLTczY2QyYjE1NjBiMyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJjZTdmMmZlZC02N2JhLTQzZTctYjU5Ni0yZDk0NDJjMjc4NWQiLCJpYXQiOjE2ODIxMDUxMjcsImV4cCI6MTY4MjEyMzEyN30.ws9teiEDIp-D9YRAnhqBVDQ_MKIExSpEb8tk_5wAUdc'),
	('d001bb04-ce6c-4913-b945-3063d494711d', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:09:32', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImQwMDFiYjA0LWNlNmMtNDkxMy1iOTQ1LTMwNjNkNDk0NzExZCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJiZjY5NzNmYy0wMGRlLTRmZDItYmU4NC00ZmE4OTU2Njk5ODEiLCJpYXQiOjE2ODIxMDQxNzIsImV4cCI6MTY4MjEyMjE3Mn0.9jL2Dd2NM2S9giBEH-RT4A0rAc8Rn2fwR3qNEcYZyfE'),
	('d164bcf2-3dde-4248-92b8-067f1809aaf4', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-22 12:42:22', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImQxNjRiY2YyLTNkZGUtNDI0OC05MmI4LTA2N2YxODA5YWFmNCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhNjFmNDJiMi00YzJlLTQxYTQtOGZmZC0yMTMyNTIxODIzNTkiLCJpYXQiOjE2ODIxODUzNDIsImV4cCI6MTY4MjIwMzM0Mn0.z2Q1gTMZUFFC-Aa_FNsRHfBZ8S5TXmvhf3vtZtIubl8'),
	('d5a31cf3-bc47-4c78-bad9-8bdb79415afb', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:15:30', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImQ1YTMxY2YzLWJjNDctNGM3OC1iYWQ5LThiZGI3OTQxNWFmYiIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI5YTEwMTI4ZC05YjdiLTQzMjYtODM3Ny00MTEzZDIxMzY0YmIiLCJpYXQiOjE2ODIxMDQ1MzAsImV4cCI6MTY4MjEyMjUzMH0.Hyp0zrke4VZoF-6AAaOqiobHvjU6I4nhmFGrjarvHqE'),
	('d79e2457-39b3-4b5f-b99c-30d2040172aa', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:15:58', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImQ3OWUyNDU3LTM5YjMtNGI1Zi1iOTljLTMwZDIwNDAxNzJhYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJmZmIzN2Y1Yy0yY2ZiLTQ1Y2UtOWZiNS04OThjZTZkMTUyZTkiLCJpYXQiOjE2ODIxMDQ1NTgsImV4cCI6MTY4MjEyMjU1OH0.Y27_RRRO27dJlx-4T-6Dj3HOzWmduRHWQWxpfPi8zds'),
	('dad92860-6f68-45e3-ad53-b264d5e893a1', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 15:26:36', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImRhZDkyODYwLTZmNjgtNDVlMy1hZDUzLWIyNjRkNWU4OTNhMSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJjNGFlYWE2Mi1iNWMzLTRkMjAtOTQ2Yi05YzdjYjQxOTJkNDQiLCJpYXQiOjE2ODIxMDg3OTYsImV4cCI6MTY4MjEyNjc5Nn0.bVbWgyPuOcsgsxRz2_X4sHXK-OthTmko3OAuyIHM3nI'),
	('df718216-7e46-451d-bb90-6b5cf6a90eba', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-22 10:39:02', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImRmNzE4MjE2LTdlNDYtNDUxZC1iYjkwLTZiNWNmNmE5MGViYSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI2YzdmYzcwNC01OTMwLTRjZTQtYmE5OC1lMDQ2Yzg4NDcxMTUiLCJpYXQiOjE2ODIxNzc5NDIsImV4cCI6MTY4MjE5NTk0Mn0.S3r5NQxdCntXGg2ENtrQ6rw-LUt8---oc93nhFmPKj0'),
	('e5bc5622-59b1-4969-8668-055ae63b0937', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-23 17:26:03', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImU1YmM1NjIyLTU5YjEtNDk2OS04NjY4LTA1NWFlNjNiMDkzNyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI5YjYzMmU1Zi0yYzYzLTQxMDctOWUxZi1iMTVlMDFiMmMxMzMiLCJpYXQiOjE2ODIyODg3NjMsImV4cCI6MTY4MjMwNjc2M30.bWfi2bFUCu0Llckg-HpUNTPzjZocRhB1LGvVgZtldtE'),
	('e7f91e66-d320-4fb1-9a54-07f3cf8cbc9d', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 10:46:38', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImU3ZjkxZTY2LWQzMjAtNGZiMS05YTU0LTA3ZjNjZjhjYmM5ZCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiIwMDM2NjY2Ny1kY2UzLTQyN2MtODFmZi1mMzBiZTA4OWU2ZjMiLCJpYXQiOjE2ODI4Njk1OTgsImV4cCI6MTY4Mjg2OTcxOH0.RS4qEJWrzyRPGn6_88NOvu_PNGRyjcdoYKtPtzbjAwg'),
	('e82dab9d-e8d9-4cde-b429-7008534ef344', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:00:27', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImU4MmRhYjlkLWU4ZDktNGNkZS1iNDI5LTcwMDg1MzRlZjM0NCIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiI1ZjliNDQxYy05NmM2LTQ4OWUtOGJiNS0zYjA0ZTIyZTE5NDMiLCJpYXQiOjE2ODIxMDM2MjcsImV4cCI6MTY4MjEyMTYyN30.ZwNsXeajCcSjMI4o1W5wnUjL5_uvFJH4hOPhfUD27FM'),
	('e96b078d-5eec-4107-9192-79a103bfb7f7', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 14:11:27', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImU5NmIwNzhkLTVlZWMtNDEwNy05MTkyLTc5YTEwM2JmYjdmNyIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJhMzQyNjQ3OS0wMGU0LTQ5ZmUtOWY3NS1iMDY1ODMyZDc1MDIiLCJpYXQiOjE2ODIxMDQyODcsImV4cCI6MTY4MjEyMjI4N30.l241IKJDa9u14NMByfJbsB81npx87qvEmn-Eb99nHQI'),
	('fe9427bb-8436-4807-b49c-4515483c5c51', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-30 10:46:33', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImZlOTQyN2JiLTg0MzYtNDgwNy1iNDljLTQ1MTU0ODNjNWM1MSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJkNjZkYmJjZi0zZjZmLTQ5MWUtOWIyMy1hZTNhMDJhOWM3NmUiLCJpYXQiOjE2ODI4Njk1OTMsImV4cCI6MTY4Mjg2OTcxM30.Nxl601FmZtmM83QnqASMatRXyKmCmyWYckTF5UNVoHo'),
	('ffc59100-1354-4d3c-87ad-035b3ce364b5', 'a330e7bf-1c4d-4709-a331-6353a44621a4', '2023-04-21 13:51:04', 'BEARER', 'F', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl9pZCI6ImZmYzU5MTAwLTEzNTQtNGQzYy04N2FkLTAzNWIzY2UzNjRiNSIsImlkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwicGFzc19rZXkiOiJkZmFhMjVhYy0wOTQwLTRhYjAtOTkyYy0xMGRiYzQyMmZhNzEiLCJpYXQiOjE2ODIxMDMwNjQsImV4cCI6MTY4MjEyMTA2NH0.4fjacNQeY4S3PoLF7X09w357DVYi6l-qDpQ2SO_ZhN8');

-- Volcando estructura para tabla auth.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` varchar(50) COLLATE armscii8_bin NOT NULL DEFAULT '',
  `correo` varchar(100) COLLATE armscii8_bin NOT NULL,
  `nombre` varchar(50) COLLATE armscii8_bin NOT NULL,
  `password` varchar(500) COLLATE armscii8_bin NOT NULL,
  `correo_lower` varchar(100) COLLATE armscii8_bin NOT NULL,
  `pass_key` varchar(500) COLLATE armscii8_bin NOT NULL,
  `estado` varchar(1) COLLATE armscii8_bin NOT NULL DEFAULT 'V',
  `FK_rol` varchar(50) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_unique` (`correo`),
  UNIQUE KEY `correo_lower_unique` (`correo_lower`),
  KEY `correo` (`correo_lower`),
  KEY `FK_rol` (`FK_rol`),
  CONSTRAINT `FK_rol` FOREIGN KEY (`FK_rol`) REFERENCES `roles_usuarios` (`rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla auth.usuarios: ~2 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id`, `correo`, `nombre`, `password`, `correo_lower`, `pass_key`, `estado`, `FK_rol`) VALUES
	('1bd64709-20ae-4bde-9b82-ddc2fb2186ff', 'test2@test.com', 'Test2', '$2a$10$gjY.Ce.bBbLiJCSpnJ2uA.h33Tn5wvucVjtLSTTnkuHp6FkEfJwpC', 'test2@test.com', 'b61256d4-0993-4de0-8624-fed6a62bd642', 'V', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('a330e7bf-1c4d-4709-a331-6353a44621a4', 'test1@test.com', 'Test', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', '9b60d7a1-db05-4f7b-9f6a-c700061a8f6c', 'V', '5d258050-5ee3-4954-8ec4-1b010355b817');


-- Volcando estructura de base de datos para cargo_crontab
DROP DATABASE IF EXISTS `cargo_crontab`;
CREATE DATABASE IF NOT EXISTS `cargo_crontab` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `cargo_crontab`;

-- Volcando estructura para tabla cargo_crontab.cargo_crontab_config
DROP TABLE IF EXISTS `cargo_crontab_config`;
CREATE TABLE IF NOT EXISTS `cargo_crontab_config` (
  `ccc_nombre` varchar(100) DEFAULT NULL,
  `ccc_estado` char(3) DEFAULT NULL,
  `ccc_descripcion` varchar(500) DEFAULT NULL,
  `ccc_fecha_ult_ejecucion` datetime DEFAULT NULL,
  `ccc_minuto` varchar(200) DEFAULT NULL,
  `ccc_hora` varchar(100) DEFAULT NULL,
  `ccc_dia_mes` varchar(100) DEFAULT NULL,
  `ccc_mes` varchar(50) DEFAULT NULL,
  `ccc_dia_semana` varchar(25) DEFAULT NULL,
  `ccc_servidor` varchar(100) DEFAULT NULL,
  `ccc_puerto` varchar(10) DEFAULT NULL,
  `ccc_endpoint` varchar(200) DEFAULT NULL,
  `ccc_proceso` varchar(50) NOT NULL,
  `ccc_timeout` varchar(10) DEFAULT NULL,
  `ccc_variable_1` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_2` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_3` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_4` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_5` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_6` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_7` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_8` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_9` varchar(500) NOT NULL DEFAULT 'N/A',
  `ccc_variable_10` varchar(500) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla cargo_crontab.cargo_crontab_config: ~0 rows (aproximadamente)
DELETE FROM `cargo_crontab_config`;

-- Volcando estructura para procedimiento cargo_crontab.sp_cargo_crontab_config
DROP PROCEDURE IF EXISTS `sp_cargo_crontab_config`;
DELIMITER //
CREATE PROCEDURE `sp_cargo_crontab_config`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5)
)
BEGIN

END//
DELIMITER ;

-- Volcando estructura para procedimiento cargo_crontab.sp_cargo_crontab_config_consultas
DROP PROCEDURE IF EXISTS `sp_cargo_crontab_config_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_cargo_crontab_config_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5)
)
BEGIN

/*SELECT
ccc_nombre,
ccc_estado,
ccc_descripcion,
ccc_fecha_ult_ejecucion,
ccc_minuto,
ccc_hora,
ccc_dia_mes,
ccc_mes,
ccc_dia_semana,
ccc_servidor,
ccc_puerto,
ccc_endpoint,
ccc_proceso,
ccc_timeout,
ccc_variable_1,
ccc_variable_2,
ccc_variable_3,
ccc_variable_4,
ccc_variable_5,
ccc_variable_6,
ccc_variable_7,
ccc_variable_8,
ccc_variable_9,
ccc_variable_10
FROM
cargo_crontab_config;*/

	IF(i_tipo = 'Q')THEN 
		
		IF(i_operacion = 'QCCC')THEN
		
		SELECT 1;
			
			/* SELECT
    			ccc_nombre,
			   ccc_descripcion,
			   ccc_fecha_ult_ejecucion,
			   ccc_minuto,
			   ccc_hora,
			   ccc_dia_mes,
			   ccc_mes,
			   ccc_dia_semana,
			   ccc_servidor,
			   ccc_puerto,
			   ccc_endpoint,
			   ccc_proceso,
			   ccc_timeout
			FROM
    			cargo_crontab_config
    		WHERE 
    			ccc_estado = 'V';
		
		*/
		END IF;
	
	END IF;

END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
