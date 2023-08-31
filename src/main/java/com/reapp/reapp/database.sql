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
  `alr_excepcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_logs_requests: ~206 rows (aproximadamente)
DELETE FROM `admin_logs_requests`;
INSERT INTO `admin_logs_requests` (`alr_req_id`, `alr_fecha`, `alr_tipo`, `alr_usuario`, `alr_valor_1`, `alr_valor_2`, `alr_estado`, `alr_excepcion`) VALUES
	('62feb9e4-d936-434d-8cc3-abd5f237c79d', '2023-08-30 23:43:08', 'RUTA', '378b7237-ce03-459e-9698-a4d118c6ee2b', 'IndexComponent', '', NULL, NULL),
	('a3b514e6-caa5-44ab-be21-dadf676a0802', '2023-08-30 23:43:08', 'RUTA', '378b7237-ce03-459e-9698-a4d118c6ee2b', 'DashboardComponent', '', NULL, NULL),
	('b88ebb69-ab94-454e-863e-f3d80d323e70', '2023-08-30 23:43:08', 'ACCION', '378b7237-ce03-459e-9698-a4d118c6ee2b', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('5c47c963-e899-46ee-8265-6b026a23ac43', '2023-08-30 23:47:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('e503e7c0-4207-453a-87d4-b3caba462747', '2023-08-30 23:47:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('48fb523b-e178-4642-b6e7-81d123498a9b', '2023-08-30 23:47:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('595bc16d-d131-4d3b-a253-1eaa3a5822ae', '2023-08-30 23:47:36', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('2db839fb-2193-4e85-a191-13d428493a89', '2023-08-30 23:47:36', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('64cac7e1-0d6b-43af-80a9-0ec376d49be2', '2023-08-30 23:47:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('aef02a3a-1caf-4421-b44a-3600ae1293b0', '2023-08-30 23:47:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('18359dda-0280-44fc-93dd-587a5a42ee02', '2023-08-30 23:47:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('cd606654-3c74-4516-8977-9a8924b0ec7e', '2023-08-30 23:47:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('3dfa43af-d2be-46e4-af48-67df53e032e0', '2023-08-30 23:48:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('737cc720-624d-4e53-b20e-20eb600e7c17', '2023-08-30 23:48:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('72bd2d3e-e59d-4cb3-87db-66ab009d532f', '2023-08-30 23:48:51', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'crear', NULL, NULL),
	('ec6de5c6-4b57-4d72-8ec0-b9f29caa91b1', '2023-08-30 23:48:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('30fc9636-c1ca-45e2-a33a-f66f470aa0b2', '2023-08-30 23:48:53', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('f49e7bea-1c15-498e-ad10-3c7584da9d2c', '2023-08-30 23:49:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('74eb6621-55b6-4347-ad06-a72ea818ce48', '2023-08-30 23:49:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('d192ac4c-000f-4af7-84d7-f50c714e7e79', '2023-08-30 23:49:44', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('7deaa271-1bd3-4b29-a466-8af76bf9f606', '2023-08-30 23:49:44', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('4b17174f-c199-4f59-99bd-d4414b4d4e6c', '2023-08-30 23:50:35', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL),
	('b40def07-5516-455f-ac49-a42ba0a2cea8', '2023-08-30 23:52:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('f3a19ba9-09a2-432b-9e63-0dc07db65357', '2023-08-30 23:52:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('e067b894-1bb2-45c4-a76f-ee86aeb39beb', '2023-08-30 23:52:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('4906927b-7be2-45a5-bba1-791a4f30a1bc', '2023-08-30 23:52:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('894d8ae2-3bb2-42f0-9e5b-fe9b0335c2d8', '2023-08-30 23:52:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL),
	('ddd4e109-449c-45da-a33d-ecb1be7dac79', '2023-08-30 23:54:07', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL),
	('023a4bc7-e0ec-481f-af83-b1d213677f64', '2023-08-30 23:57:21', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('99244bd3-8dd9-482b-a326-2af28a7ecd2e', '2023-08-30 23:57:21', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('20290559-45e8-48bf-9c55-698013145bbd', '2023-08-30 23:58:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'crear', NULL, NULL),
	('b7e52b54-49fc-482f-a196-d83fa093a004', '2023-08-30 23:58:44', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('bcddec59-1b81-4131-8a47-3cc13ca8ce02', '2023-08-30 23:59:51', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'crear', NULL, NULL),
	('7b147cd4-4c60-4bc9-bebf-f31bf69b8292', '2023-08-30 23:59:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('7d8d4203-02c1-4ac2-8453-97e87bceea45', '2023-08-31 00:00:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'crear', NULL, NULL),
	('a6f4f712-e1c2-4657-83b9-796bf7e51931', '2023-08-31 00:00:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('c4892935-8579-47f4-bbbc-8c496b79907b', '2023-08-31 00:00:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('e827523a-d550-4d0b-9af2-b589f319d5a9', '2023-08-31 00:00:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('f99bd1d2-b5bf-482e-8977-80b6708498e0', '2023-08-31 00:01:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'crear', NULL, NULL),
	('a4b56a01-8de5-4d7c-9ab4-9d24ffb06ced', '2023-08-31 00:01:02', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('e3a3844e-db4d-4547-a5a8-cb99e1730cd5', '2023-08-31 00:01:19', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('29a255e8-98d3-4d37-9f0d-93f0d1a96352', '2023-08-31 00:01:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('dc6172e9-9c6f-4ce5-909e-36ddb4b4eaf8', '2023-08-31 00:01:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'agregar', NULL, NULL),
	('3a292ac4-37ba-4ec4-bd1d-6b0e5dca5bab', '2023-08-31 00:01:30', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('3d2f54e7-4180-4ec0-847b-9334d101fa13', '2023-08-31 00:01:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('45850013-6285-434b-aa33-e46a4acf422e', '2023-08-31 00:01:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('30d1550d-26a6-47b1-bb8f-ce9215860fbf', '2023-08-31 00:01:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('7d53eb36-5376-4bd0-9d80-2edaf3cc7569', '2023-08-31 00:01:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('cd14dc6a-afa3-429d-9a12-e60373e03d39', '2023-08-31 00:01:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('aeba857a-6699-482a-bad3-96a39186f630', '2023-08-31 00:01:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('1e9d518a-2fa9-4d1b-83aa-b0532538618a', '2023-08-31 00:01:46', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('36517ba5-ace1-4dc0-812c-271f0b4abfa3', '2023-08-31 00:01:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('ea0107bf-2036-4c65-aba0-720f54d55682', '2023-08-31 00:03:32', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('c4e776a5-e74c-4b38-8415-c06187a7d3c0', '2023-08-31 00:03:32', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('9743419a-504e-40e9-90e0-01614a1e9cc4', '2023-08-31 00:03:41', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('6441082d-826e-4b52-9eec-3d80e8415178', '2023-08-31 00:03:41', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('60e12fa1-1ee1-41cf-afe8-c94ec141a565', '2023-08-31 00:03:48', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL),
	('f5db6c8f-ad82-4a5e-9bb3-90cc61904098', '2023-08-31 00:03:50', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL),
	('5dcf1e40-3590-4dc4-8cba-4fd445a5e50d', '2023-08-31 00:04:06', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'actualizar', NULL, NULL),
	('d97efd65-7ce4-449f-b804-65cbb9ec6b29', '2023-08-31 00:04:07', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('f4746fbe-c201-4ecb-a698-777c9c58a83d', '2023-08-31 00:04:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('11ac19f1-0184-4956-8501-3ec7634689ae', '2023-08-31 00:04:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('a120aa9d-cb4e-4b15-8115-c5e7ed9e25b5', '2023-08-31 00:04:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('457f252a-7cfe-4e48-ad85-2719bfa9a3a8', '2023-08-31 00:05:25', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('ca9e9a25-8a84-4fdc-a9ce-1323ba2c1cc9', '2023-08-31 00:05:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('2421034d-ec20-43c8-8ec3-528f41c992d7', '2023-08-31 00:05:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('8052c695-3eed-4a42-85e7-8f440f201171', '2023-08-31 00:05:26', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('9375a459-01c7-4589-ba49-5a1c73712ffa', '2023-08-31 00:05:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('db028a96-3877-45f4-a23a-ba9d3584e946', '2023-08-31 00:05:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('e0e867f1-3601-403e-a7a2-4a146ec9a622', '2023-08-31 00:05:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('77fb9968-c04e-4ea0-b6d7-55ffd20aa36f', '2023-08-31 00:05:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('3fa9a57d-e4b0-43ec-9766-1191477f4111', '2023-08-31 00:05:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('d6d08eaf-9ab2-4b33-aa6c-2140e13363dc', '2023-08-31 00:05:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('fecad90b-334d-41a5-8d6f-5140b5d8670d', '2023-08-31 00:05:37', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('14a3c677-2a5a-417f-92c4-f28ea74a578c', '2023-08-31 00:05:37', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('56969076-bad7-47d8-97fc-b46c1f6c3343', '2023-08-31 00:05:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('bf8c1bc9-2630-4caa-9be0-adce4bfc8b4d', '2023-08-31 00:05:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('320cad60-2ec2-4865-b6eb-370c9d71a47d', '2023-08-31 00:05:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('c6def6ca-09b3-4d7f-bb22-0a957a4bd8ed', '2023-08-31 00:05:55', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('ce9077f3-ee2a-432b-bdb8-ce0937a7d85e', '2023-08-31 00:05:55', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('b1b6567c-8b7b-4b1d-a0a8-122a9e54c37c', '2023-08-31 00:05:59', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('ff1785d0-3702-4834-8d32-6d78c10e869e', '2023-08-31 00:06:09', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('b1a37378-c0e3-44b1-a8f9-4739a13df13b', '2023-08-31 00:06:09', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('06c1e2f7-8ab4-405c-bfdb-b33c527e162d', '2023-08-31 00:06:09', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('8bd3caf3-8a3f-493d-b3a8-7d36a3ed1164', '2023-08-31 00:06:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('b8da8539-a0a0-47ce-b613-a6a038471154', '2023-08-31 00:06:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('940ec41a-b98f-4911-9fbf-ef48fddf1aab', '2023-08-31 00:06:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('db3cf60d-32c6-4968-91f3-c7e2add460e8', '2023-08-31 00:06:12', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('f4828a56-17a5-4941-bf57-b33dab70e3d3', '2023-08-31 00:06:14', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('f1b1495d-3130-45c9-9eb0-1938d2c09f74', '2023-08-31 00:06:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('a350ba32-7252-4141-94bf-be8e37aa0d2e', '2023-08-31 00:06:14', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('1e38e8ba-6a22-4779-a531-5ff03a672b64', '2023-08-31 00:06:14', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('17298aa5-9767-4136-9b8b-853f13c9a75d', '2023-08-31 00:06:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('80dd49f6-53af-4a01-8255-9de81c2d2c19', '2023-08-31 00:06:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('53bdfaf1-327e-4921-9732-dab68ed818e9', '2023-08-31 00:06:17', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('4e5d67b2-99c2-4185-9fb5-ec9e82955e93', '2023-08-31 00:06:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('0f67ec2f-316b-4d77-8d67-89b316ba467a', '2023-08-31 00:06:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('69ffc6b2-05d6-4cc7-aab5-0bb64c450c67', '2023-08-31 00:06:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('358ff28c-caae-45e3-a679-e88899926910', '2023-08-31 00:06:33', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('79958c05-5c1b-4239-a88c-165e3acb4c40', '2023-08-31 00:06:33', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('8b62d5d1-263f-4a2a-8259-c9eaefb36cb8', '2023-08-31 00:06:34', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('a9d7c0e3-240a-4747-a6b5-6b70449a5a68', '2023-08-31 00:07:39', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('9ef917db-00f4-4b57-80fe-b3407dc89ab5', '2023-08-31 00:07:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('d2858342-5777-4b43-a3be-16195e00de18', '2023-08-31 00:07:39', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('2501d20d-1f09-4af5-a49e-5f65852503e9', '2023-08-31 00:07:46', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('37924fd3-7aee-4bf0-9a20-351e80034fdc', '2023-08-31 00:08:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('ecc3efc3-e8de-455d-a9f5-a7c69634e9af', '2023-08-31 00:08:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('c9ba339b-b570-426c-ac5b-cb1d6685d719', '2023-08-31 00:08:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('083ebb3d-4c32-4224-ae17-717b668c74c0', '2023-08-31 00:08:11', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('e27d5b66-e519-4450-aaa9-67ba2fed409e', '2023-08-31 00:08:11', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('45a34b2e-35de-4f96-8c5f-82011e0e18d1', '2023-08-31 00:08:12', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('8ebac7a9-e879-4d35-82d4-c6e505605b90', '2023-08-31 00:08:19', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('ce173f67-3c80-4ae9-a504-026d487e5d4f', '2023-08-31 00:08:19', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('b8124f42-30d5-48f1-8547-87e6987309cc', '2023-08-31 00:08:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('5e115a05-022a-4bc4-85ff-5a2f0470b302', '2023-08-31 00:08:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('ed9b74d2-2379-4c56-aec6-94165052a3da', '2023-08-31 00:08:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('15e8a10b-a9c6-4a7f-b196-56244ad99a97', '2023-08-31 00:08:25', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('f6beefa7-0043-4732-bf27-fc2dcf1dc2c0', '2023-08-31 00:08:25', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('f6c302f6-ff31-458d-8a51-b2479427de4b', '2023-08-31 00:08:26', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('fdc088a8-53a2-4f33-813a-8aff93f1e03c', '2023-08-31 00:08:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('8555ef98-cadd-4c14-b1e7-e86f18ee644f', '2023-08-31 00:08:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('d7cc2309-9dad-4c7d-9414-975c7d303d09', '2023-08-31 00:08:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('97bb98e1-0742-4695-9e16-559cf6229ee3', '2023-08-31 00:08:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('d5d4fdc3-d6f2-45da-8e1a-b76e611a6297', '2023-08-31 00:08:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('24378973-057e-4c23-a388-e615c8ab5868', '2023-08-31 00:08:40', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('8d362db5-c668-46e7-a0d5-769e8e05a7de', '2023-08-31 00:08:43', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('0310713e-8ef9-4d40-956b-3b314992c9ca', '2023-08-31 00:08:43', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('04b91efa-64e3-4204-8ec7-76a548a6f71b', '2023-08-31 00:08:44', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('7e3abe75-38a9-4a7e-89f8-cd8ad1c447be', '2023-08-31 00:08:44', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('c839bc6b-0ce4-4421-918f-9edeecb6b527', '2023-08-31 00:08:45', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('4c505169-3f8d-4bcf-a8e2-8f5c81a21532', '2023-08-31 00:08:52', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('f171da89-01f1-436a-87de-99aae9d8215a', '2023-08-31 00:08:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('0cd8a8a2-e27c-4495-92b6-7b2c265b9c56', '2023-08-31 00:08:52', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('3eb6625b-6aed-41eb-af7f-792f09b22e2a', '2023-08-31 00:08:54', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('172632ac-ec18-458b-a11a-49b45816d85b', '2023-08-31 00:09:05', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('f2d31640-d8ac-4049-b574-5a0a9f7eb580', '2023-08-31 00:09:05', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('6b24dea6-e1be-4c0f-be98-6c3e789d8404', '2023-08-31 00:09:05', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('921f7b10-8400-4349-ab4f-ab8f83f2f5af', '2023-08-31 00:09:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('5eb8c0ae-8bbd-468b-8c73-9585f401dcf2', '2023-08-31 00:09:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('bcd0b52c-e3f3-46e0-80e5-a95868f0a3f7', '2023-08-31 00:09:08', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('79430c73-a1d2-40fd-88c7-be81b82f0b5d', '2023-08-31 00:09:08', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('f1fa2b63-4578-4cf3-bfa0-e84831048168', '2023-08-31 00:09:10', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('9679f119-b956-42ab-a855-ecec48e7cd91', '2023-08-31 00:09:18', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('ca45e8b0-d917-433e-9654-fde418b4625d', '2023-08-31 00:09:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('81f8c838-49e5-440c-9e8c-63c7c86ec4a1', '2023-08-31 00:09:19', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL),
	('26a642a1-fcc0-49d8-b293-0e8691f2ac69', '2023-08-31 00:09:19', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL),
	('b39d8325-e116-474a-9455-8b428a687ebf', '2023-08-31 00:09:20', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('0f06aa24-272b-4cd2-aede-fb47bb44ef6c', '2023-08-31 00:09:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('48d0bf54-66b1-473a-ac3e-1a6dff25cdb2', '2023-08-31 00:09:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('c7466e02-3fea-413a-aee8-dd6f440ce1b6', '2023-08-31 00:09:30', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('234db68d-22c8-48b5-862c-a432025ae3b5', '2023-08-31 00:09:31', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('6c28b652-68ae-4363-bb86-5f734783c314', '2023-08-31 00:09:31', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('394003c9-436b-4cfa-bea9-556e95a8e9ce', '2023-08-31 00:09:32', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL),
	('5679f644-7cde-4337-8198-87ca152b4ec9', '2023-08-31 00:09:32', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL),
	('4630bde8-a39d-4326-8124-646ea29a826a', '2023-08-31 00:09:33', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('962a4a18-6d0d-4cc6-8852-da33bc238220', '2023-08-31 00:09:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('8af28a26-f14a-41f4-b0f7-b134c595805f', '2023-08-31 00:09:40', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('88f93a0a-54af-4a1b-89ba-ebcd19623e33', '2023-08-31 00:09:40', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('d255f4d2-6d2c-47a0-b2a3-68bf7849ffa4', '2023-08-31 00:09:57', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('04799bef-71f9-4a78-ac43-22d5ec9d475b', '2023-08-31 00:09:57', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('0e85e5b1-24d5-48d8-b5ef-27b72d94ab41', '2023-08-31 00:09:58', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('3c37e750-96ee-41d3-a97b-f21040b1b4ab', '2023-08-31 00:10:01', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('3830b9be-451c-421b-9f7d-14b3dccb4305', '2023-08-31 00:10:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('16eb9b7b-2c88-4c7b-a511-4de42d3fde68', '2023-08-31 00:10:01', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('a7f7887e-4263-40d2-a381-117bb372f0ca', '2023-08-31 00:10:03', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('f531892e-a436-4d4d-9675-fe28d77635ce', '2023-08-31 00:10:03', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('2ee9095c-cbc3-4400-ba96-ff241716c6c7', '2023-08-31 00:10:03', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('27c39686-763c-4fdd-bc21-5a9f1dfdebd8', '2023-08-31 00:10:03', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('54b6d03d-1b87-416b-9403-3d3effe3e795', '2023-08-31 00:10:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('d523477f-8691-4ad5-a45a-e5a192052664', '2023-08-31 00:10:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('d1ac67f4-2e01-4ebb-a367-6a2557154df9', '2023-08-31 00:10:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('594adbbe-1100-4d25-88da-113b306699be', '2023-08-31 00:10:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('c81f709a-2ddc-4014-adfc-a041edbe5e45', '2023-08-31 00:10:04', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL),
	('1d16ef87-3b1b-4840-b2c0-90647e97cf9c', '2023-08-31 00:10:04', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL),
	('c38bd330-5001-4893-b8eb-d7fc00a0bbcd', '2023-08-31 00:10:05', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('f623d959-47b2-4de2-bd4d-8f7189d4c5bb', '2023-08-31 00:10:15', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('ac3a6884-ef2f-479d-ba4a-7694c99a5c3a', '2023-08-31 00:10:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('d6b9ce06-6c3d-4c07-b2ec-d97425c9b472', '2023-08-31 00:10:15', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('0090d489-0a46-4591-a152-635959c02ef7', '2023-08-31 00:10:17', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('7843a7e5-a396-4a71-959a-460d16bc8b99', '2023-08-31 00:10:18', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'IndexComponent', '', NULL, NULL),
	('069eccee-5268-440e-8e95-71e0b719daae', '2023-08-31 00:10:18', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('bcb0a591-3b35-45b5-9588-1dcfdd5f199b', '2023-08-31 00:10:18', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorIndex', 'listarRutas', NULL, NULL),
	('af29eb77-a13d-4b55-9a33-4bf5b2d8a5a5', '2023-08-31 00:10:20', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('df5d3168-cf5a-42ba-a1a4-83a138a1023c', '2023-08-31 00:10:20', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('b7a1ad0a-badf-430f-b287-850129513bcb', '2023-08-31 00:10:21', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('825c8927-808a-4783-87e5-9b4f987d3856', '2023-08-31 00:10:21', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('45e08b0b-1e40-467c-bef6-a07a398a3760', '2023-08-31 00:10:22', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('38e8bfd0-25e0-4575-b173-4fe0d44282b8', '2023-08-31 00:10:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('0ba0838f-37ec-434c-87be-3b375091c364', '2023-08-31 00:10:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('d0dc0d7f-e744-40a5-9ad3-be7d6f39e9b2', '2023-08-31 00:10:23', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('1c4ff01e-1ea9-409b-8ea4-f0fc5970067e', '2023-08-31 00:10:23', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('06f203b4-db67-4303-9e87-0aec60b3dcb0', '2023-08-31 00:10:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('16adccb6-c63f-437d-8090-d8ffd10140cb', '2023-08-31 00:10:24', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('fc227590-d3db-484d-a03b-046d1ea93358', '2023-08-31 00:10:24', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'DashboardComponent', '', NULL, NULL),
	('67a011e5-df29-4b70-b31d-bea51bf8ddef', '2023-08-31 00:10:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'PermisosRolesRutasComponent', '', NULL, NULL),
	('8c3ed2ff-b7f3-4c4c-aa19-2319f8b8f3b8', '2023-08-31 00:10:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorPermisoRolesRuta', 'listar', NULL, NULL),
	('6157fada-aa17-4765-b92d-ef5d53ebc541', '2023-08-31 00:10:27', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosComponent', '', NULL, NULL),
	('c8fa0ef0-da47-4848-8851-e366757864a3', '2023-08-31 00:10:27', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuarios', 'listar', NULL, NULL),
	('00e9c843-d601-473b-b39e-18977cf0e82e', '2023-08-31 00:10:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasComponent', '', NULL, NULL),
	('9305f66e-e2f5-4453-bfd2-8e0711cf8f34', '2023-08-31 00:10:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutas', 'listar', NULL, NULL),
	('4e10848b-aea9-4df4-b34f-519a6c018f74', '2023-08-31 00:10:28', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasCategoriasComponent', '', NULL, NULL),
	('e5e45495-5d28-4467-8b6f-90304ebce590', '2023-08-31 00:10:28', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasCategoria', 'listar', NULL, NULL),
	('c8e5327c-9628-496b-b135-0b6b21eed744', '2023-08-31 00:10:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'RutasAccionesComponent', '', NULL, NULL),
	('f046c527-9cfe-4497-bf55-3ae7df8bfc50', '2023-08-31 00:10:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorRutasAcciones', 'listar', NULL, NULL),
	('ba27d875-b608-4aff-bc73-32bcc27bc114', '2023-08-31 00:10:29', 'RUTA', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'UsuariosRolesComponent', '', NULL, NULL),
	('d96b6e95-a080-434e-a718-e4f41ceee62b', '2023-08-31 00:10:29', 'ACCION', 'a330e7bf-1c4d-4709-a331-6353a44621a4', 'ControladorUsuariosRoles', 'listar', NULL, NULL);

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

-- Volcando datos para la tabla admin.admin_permisos_roles_rutas: ~13 rows (aproximadamente)
DELETE FROM `admin_permisos_roles_rutas`;
INSERT INTO `admin_permisos_roles_rutas` (`aprr_id`, `aprr_fk_rol_id`, `aprr_fk_ruta_id`) VALUES
	('f783d9ac-e700-46c3-b680-9ea7375d17b2', '19fd172e-30dd-4af0-85b0-a59cb03788b9', '3938b044-26ae-4079-81d0-734d248afa75'),
	('4798498b-1d73-470d-a77c-1eaffda96214', '47037fa4-818a-4557-8d89-97b550e5dc41', '3938b044-26ae-4079-81d0-734d248afa75'),
	('51dcda56-39eb-42c3-a777-f585665e2087', '47037fa4-818a-4557-8d89-97b550e5dc41', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb'),
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

-- Volcando datos para la tabla admin.admin_rutas: ~10 rows (aproximadamente)
DELETE FROM `admin_rutas`;
INSERT INTO `admin_rutas` (`ar_id`, `ar_orden`, `ar_componente`, `ar_titulo`, `ar_ruta`, `ar_icono`, `ar_color_1`, `ar_color_2`, `ar_fk_categoria`) VALUES
	('3938b044-26ae-4079-81d0-734d248afa75', 0, 'UsuariosComponent', 'Usuarios', 'usuarios', 'ri-user-3-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('3f7de9ab-d611-475e-a290-62161a2d9856', 1, 'RutasComponent', 'Rutas', 'rutas', 'ri-organization-chart', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('45ea42d1-5802-4c91-9944-875d1f3e3641', 1, 'DashboardComponent', 'Dashboard', '/', 'ri-dashboard-fill', '#FFFFFF', '#FFFFFF', '27f129f4-a5b0-4436-9ff8-0c102f180b56'),
	('46f69391-e307-4e49-92fe-be7c3ef78def', 15, 'UsuariosRolesComponent', 'Usuarios Roles', 'usuarios-roles', 'ri-shield-user-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('6ff6db35-6edd-42e8-b130-e431050c5bf8', 12, 'pruebaComponentedd', 'Prueba', 'prueba', 'ri-shield-user-fill', '#FFFFFF', '#FFFFFF', '0974258b-7b27-4328-9115-b663c5b5d85c'),
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
	('f91dd081-ca36-4d1e-81c9-cffb9e131b12', 1, 'Ajustes', 'ajustes', 'ri-arrow-right-up-fill', '#FFFFFF', '#FFFFFF'),
	('85b96a17-6252-428c-ba9c-49df337f52f3', 2, 'Index', 'index', 'ri-flag-2-fill', '#FFFFFF', '#FFFFFF'),
	('27f129f4-a5b0-4436-9ff8-0c102f180b56', 0, 'Inicio', '', 'ri-home-2-fill', '#FFFFFF', '#FFFFFF'),
	('0974258b-7b27-4328-9115-b663c5b5d85c', 3, 'Permisos', 'permisos', 'ri-shield-keyhole-fill', '#FFFFFF', '#FFFFFF');

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
  KEY `FK_usuario_rol` (`au_fk_aur_id`),
  CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`au_fk_aur_id`) REFERENCES `admin_usuarios_roles` (`aur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios: ~3 rows (aproximadamente)
DELETE FROM `admin_usuarios`;
INSERT INTO `admin_usuarios` (`au_id`, `au_nombre`, `au_apellido`, `au_username`, `au_password`, `au_correo`, `au_correo_lower`, `au_pass_key`, `au_estado`, `au_fk_aur_id`) VALUES
	('173dad68-d1d3-4237-8a2c-26f5b4660061', 'Test2', 'prueba2', 'test2', '$2a$10$FCgp61o/01GtpSvi4H7Kiea7soyrPvpUc58MBEqv/sMi476mnHGCu', 'test2@test.com', 'test2@test.com', '462e5393-be70-4ef6-9c4d-d958b87cc9af', 'A', '19fd172e-30dd-4af0-85b0-a59cb03788b9'),
	('378b7237-ce03-459e-9698-a4d118c6ee2b', 'Prueba', 'Prueba2', 'username', '$2a$10$MDAR53WmtbWZ1xF/ae31ne/lvTOgXnz/o12AFKOsYN2Vph7.HyDua', 'correo@corre.txt', 'correo@corre.txt', '9a2be4b9-798d-4b63-b816-43f0149ca5e7', 'A', '47037fa4-818a-4557-8d89-97b550e5dc41'),
	('a330e7bf-1c4d-4709-a331-6353a44621a4', 'Prueba', 'Test', 'test1', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', 'test1@test.com', '90f03640-a7ec-4cce-a023-cc07e353c3e3', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817');

-- Volcando estructura para tabla admin.admin_usuarios_roles
DROP TABLE IF EXISTS `admin_usuarios_roles`;
CREATE TABLE IF NOT EXISTS `admin_usuarios_roles` (
  `aur_id` varchar(50) NOT NULL,
  `aur_nombre` varchar(50) NOT NULL,
  UNIQUE KEY `aur_id` (`aur_id`) USING BTREE,
  UNIQUE KEY `aur_nombre` (`aur_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios_roles: ~3 rows (aproximadamente)
DELETE FROM `admin_usuarios_roles`;
INSERT INTO `admin_usuarios_roles` (`aur_id`, `aur_nombre`) VALUES
	('5d258050-5ee3-4954-8ec4-1b010355b817', 'ADMIN'),
	('19fd172e-30dd-4af0-85b0-a59cb03788b9', 'DEVELOPER'),
	('47037fa4-818a-4557-8d89-97b550e5dc41', 'PRUEBA');

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
  KEY `indice_2` (`aut_id`,`aut_fecha`),
  KEY `FK_token_usuario_id` (`aut_fk_usuario_id`),
  CONSTRAINT `FK_token_usuario_id` FOREIGN KEY (`aut_fk_usuario_id`) REFERENCES `admin_usuarios` (`au_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios_tokens: ~37 rows (aproximadamente)
DELETE FROM `admin_usuarios_tokens`;
INSERT INTO `admin_usuarios_tokens` (`aut_id`, `aut_fecha`, `aut_tipo`, `aut_estado`, `aut_token1`, `aut_token2`, `aut_fk_usuario_id`) VALUES
	('15a34508-ef07-4d91-99a4-955223f77b03', '2023-08-07 14:25:48', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIxNWEzNDUwOC1lZjA3LTRkOTEtOTlhNC05NTUyMjNmNzdiMDMiLCJwYXNzX2tleSI6ImI3YThhYWY1LTk3ZTItNGZmZC1hOTY3LTM4NDkxM2RhNTVhMiIsImlhdCI6MTY5MTQzNjM0OCwiZXhwIjoxNjkxNDQzNTQ4fQ.jf_ujXgXo0vuEhLkZD67S1uJGwV3mvskWM3ZRQo-Y0c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIxNWEzNDUwOC1lZjA3LTRkOTEtOTlhNC05NTUyMjNmNzdiMDMiLCJwYXNzX2tleSI6ImI3YThhYWY1LTk3ZTItNGZmZC1hOTY3LTM4NDkxM2RhNTVhMiIsImlhdCI6MTY5MTQzMDE2MywiZXhwIjoxNjkxNDM3MzYzfQ.O0kCkSwn06CbktrttCxetqcemDF2TihCjpTLykJK7h4', 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('1dc6380d-38f4-407e-ab33-65d25493a7d8', '2023-08-31 00:08:19', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIxZGM2MzgwZC0zOGY0LTQwN2UtYWIzMy02NWQyNTQ5M2E3ZDgiLCJwYXNzX2tleSI6ImI2NDgzZjJlLTg5NzktNDQ4OS1hMTBlLTUzNzc1MDQxYjJiNiIsImlhdCI6MTY5MzQ1ODQ5OSwiZXhwIjoxNjkzNDY1Njk5fQ.9eAcRNjn0FEAlVsIMjGroCf3NUPekS-eM1z354hYImQ', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('262a915d-a460-4561-9d57-156da4a57e3b', '2023-08-01 14:41:20', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyNjJhOTE1ZC1hNDYwLTQ1NjEtOWQ1Ny0xNTZkYTRhNTdlM2IiLCJwYXNzX2tleSI6IjA0YzA5NzIzLTg4ODItNDI2YS1iN2Y1LTYwYWZjMjU3NjU2MyIsImlhdCI6MTY5MDkxODg4MCwiZXhwIjoxNjkwOTI2MDgwfQ.W1C1hvEl3fVYhhZTs1-0-batM2LRPbCQufVHznfuAXA', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('2740c4fd-ded0-4d28-8bd3-a3344d851f40', '2023-08-30 23:47:24', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyNzQwYzRmZC1kZWQwLTRkMjgtOGJkMy1hMzM0NGQ4NTFmNDAiLCJwYXNzX2tleSI6IjQzYmE3N2EwLTg0NGYtNDdlZC1hNTExLWMyNTYzOGQwZjY3YSIsImlhdCI6MTY5MzQ1NzI0NCwiZXhwIjoxNjkzNDY0NDQ0fQ.Cx2yatecp8WssJu55Mua66XcBiPiXZnSv1PgfAPkenM', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('2ae14fd0-f404-4cf6-bf76-012b6b2e9af0', '2023-08-31 00:08:40', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyYWUxNGZkMC1mNDA0LTRjZjYtYmY3Ni0wMTJiNmIyZTlhZjAiLCJwYXNzX2tleSI6IjkwZjAzNjQwLWE3ZWMtNGNjZS1hMDIzLWNjMDdlMzUzYzNlMyIsImlhdCI6MTY5MzQ1ODUyMCwiZXhwIjoxNjkzNDY1NzIwfQ.Kfp_3C1W0qFENu5PdHJIWY2lu5aIklHzEANYahQyynM', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('2f27fb8d-81df-4481-98df-2375a45a23f5', '2023-08-30 23:36:38', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyZjI3ZmI4ZC04MWRmLTQ0ODEtOThkZi0yMzc1YTQ1YTIzZjUiLCJwYXNzX2tleSI6ImY2NzI2YzhlLWI2ODItNDM4My04ZWIyLTllOTk2N2ZmZDJiOSIsImlhdCI6MTY5MzQ1NjU5OCwiZXhwIjoxNjkzNDYzNzk4fQ.LF0qhZstTWIlHgrOLGnqqxwbm6R2BqqfSRXFIHC1YQk', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('2fcdae9a-8e6a-4ce4-8cb4-bbf306550132', '2023-08-28 21:30:26', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyZmNkYWU5YS04ZTZhLTRjZTQtOGNiNC1iYmYzMDY1NTAxMzIiLCJwYXNzX2tleSI6IjQzNTQ5NzQ2LWZkOWEtNDAwOC1hYmZlLTkxMTg0ZWIzMGFkZiIsImlhdCI6MTY5MzI3NjIyNiwiZXhwIjoxNjkzMjgzNDI2fQ.pfd9DS0IIXTnEoiRIoRIu4-hT0XthNa8fldQHe5sa5c', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('3024f466-1475-48b4-8982-17dd1293937a', '2023-08-28 22:33:53', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIzMDI0ZjQ2Ni0xNDc1LTQ4YjQtODk4Mi0xN2RkMTI5MzkzN2EiLCJwYXNzX2tleSI6Ijc3YTc2MDM1LWE3ZDktNDNmYy05OTE1LThlNDUxNDdjZTU3NiIsImlhdCI6MTY5MzI4MDAzMywiZXhwIjoxNjkzMjg3MjMzfQ.jnK_8Ilwvwy6h4AQ7klYbTglnXDLJ9dY3j68pn_AVec', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('389f48e4-fc05-435a-b297-14f2352abf2e', '2023-08-28 22:24:21', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIzODlmNDhlNC1mYzA1LTQzNWEtYjI5Ny0xNGYyMzUyYWJmMmUiLCJwYXNzX2tleSI6IjZiYTQ5MmU0LTJmYjEtNDdhOC1hZWEyLWIzZjQ3MmQwZGYzNSIsImlhdCI6MTY5MzI3OTQ2MSwiZXhwIjoxNjkzMjg2NjYxfQ.uWkvMQOXgw_J2ECpAnHRUClzjpcxS7A1B-5W2HRRiGM', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('43c3e024-8fca-4f06-9593-8b5bfa9ae585', '2023-08-31 00:05:39', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI0M2MzZTAyNC04ZmNhLTRmMDYtOTU5My04YjViZmE5YWU1ODUiLCJwYXNzX2tleSI6IjdiZjllOWRlLTY5MTktNGFmNC1iY2U5LWE4ODkyMTAyYjA5YiIsImlhdCI6MTY5MzQ1ODMzOSwiZXhwIjoxNjkzNDY1NTM5fQ.VFmlovJZnD22F0Toq6_HbRF1BqgteoDWNdmTHpGn340', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('449326f7-ca4f-464b-9d10-1da1f05b353d', '2023-08-30 23:38:26', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiMzc4YjcyMzctY2UwMy00NTllLTk2OTgtYTRkMTE4YzZlZTJiIiwidG9rZW5faWQiOiI0NDkzMjZmNy1jYTRmLTQ2NGItOWQxMC0xZGExZjA1YjM1M2QiLCJwYXNzX2tleSI6IjA0ZmYzMDExLThlOTMtNDNmZi04NzZiLTg0N2EzOTNmYzQxYSIsImlhdCI6MTY5MzQ1NjcwNiwiZXhwIjoxNjkzNDYzOTA2fQ.R1bBie3NGkSkTlCRnpCLzPDM394RQJ13uR4rVhTZ-ZQ', NULL, '378b7237-ce03-459e-9698-a4d118c6ee2b'),
	('460d619c-09b3-4da6-8e23-4a64d384296c', '2023-08-30 23:39:19', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI0NjBkNjE5Yy0wOWIzLTRkYTYtOGUyMy00YTY0ZDM4NDI5NmMiLCJwYXNzX2tleSI6IjA0NGQ3OTg0LWE4NGEtNGU1OC04NzM1LTI3NGZmOGM2NTEyNiIsImlhdCI6MTY5MzQ1Njc1OSwiZXhwIjoxNjkzNDYzOTU5fQ.R99L4Jj65wj_mi6lwhojnZE9eByz9Rm79Gd-aUxzFkA', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('6778da3d-2d65-49f7-8e6d-23a7b826da7e', '2023-08-30 22:23:03', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI2Nzc4ZGEzZC0yZDY1LTQ5ZjctOGU2ZC0yM2E3YjgyNmRhN2UiLCJwYXNzX2tleSI6ImQ3ZmM3MWIzLWVjY2MtNDI2Mi1iMzllLTFkYjgxZWZmOWEwMCIsImlhdCI6MTY5MzQ1MjE4MywiZXhwIjoxNjkzNDU5MzgzfQ.lnWEVPanVZwY_KWfcS6VdzCe7mbcor5MrcKrW-v5BSU', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('6ea39896-1a01-414b-bedc-dcaf7ae1aaba', '2023-08-28 22:34:59', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI2ZWEzOTg5Ni0xYTAxLTQxNGItYmVkYy1kY2FmN2FlMWFhYmEiLCJwYXNzX2tleSI6ImFkYTAxMTI3LTMzZmEtNGIwMi1hNTE1LTIxM2U3YTQ4MjJlYyIsImlhdCI6MTY5MzI4MDA5OSwiZXhwIjoxNjkzMjg3Mjk5fQ.7plLXu2jhTcM264EesRGgy0dPMM1VRdgue4CL-0OhM8', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('8a07528a-2943-4d34-aa6e-0906abe77fcb', '2023-08-28 23:13:55', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI4YTA3NTI4YS0yOTQzLTRkMzQtYWE2ZS0wOTA2YWJlNzdmY2IiLCJwYXNzX2tleSI6IjMyNDA0NWEwLTUxMTctNGMwMS05NzFjLWI5MDdlOGU2MjhmZCIsImlhdCI6MTY5MzI4MjQzNSwiZXhwIjoxNjkzMjg5NjM1fQ.Tv_VT6D6ZsXTZ7h5MagXIJ7AZu3blWAlqPVBdQvHyLs', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('8aa36cb7-e2bc-495b-b3b5-4bddd3ca4eff', '2023-08-28 22:31:26', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI4YWEzNmNiNy1lMmJjLTQ5NWItYjNiNS00YmRkZDNjYTRlZmYiLCJwYXNzX2tleSI6IjI1NDQyMmQxLWFhYzEtNDk2Yi04Y2ExLThlZmE1MmE4ZGVmMCIsImlhdCI6MTY5MzI3OTg4NiwiZXhwIjoxNjkzMjg3MDg2fQ.HW7tH_TYfOxbG3NNJCnxa9KfpaaDmdCbpNfSfZfy0BM', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('92576ca3-4f0a-4a55-9364-24511ac73895', '2023-07-28 12:15:26', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI5MjU3NmNhMy00ZjBhLTRhNTUtOTM2NC0yNDUxMWFjNzM4OTUiLCJwYXNzX2tleSI6ImI3NWQxNjRlLWYxNDAtNDlmOS1hYjU2LWIzMmU4ZjdmMGE2OCIsImlhdCI6MTY5MDU2NDUyNiwiZXhwIjoxNjkwNTY0NzA2fQ.ilXWGQgJKO3IwCn9B-qcH0wh0GsYqEcJyQwmgSLm4Y0', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('95b1d79c-b91c-462b-823f-81ce4998e804', '2023-08-01 12:30:30', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI5NWIxZDc5Yy1iOTFjLTQ2MmItODIzZi04MWNlNDk5OGU4MDQiLCJwYXNzX2tleSI6ImU3OGMxY2ViLTNlYTItNGMxMy1iOWU4LTQ4ZWRiZTczMTQwMyIsImlhdCI6MTY5MDkxMTAzMCwiZXhwIjoxNjkwOTE4MjMwfQ.Dudc4hUlQ_zx0YhGSDczqxLVFBnPet-MEJQVfZQ80s0', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('989aecae-e044-4ef2-b2a1-0d9b3783373e', '2023-07-31 14:22:24', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI5ODlhZWNhZS1lMDQ0LTRlZjItYjJhMS0wZDliMzc4MzM3M2UiLCJwYXNzX2tleSI6ImYyZTNmNWRkLWY5Y2UtNDM3ZC04ZmUxLTY4ZDI2ZjZiNjgzNSIsImlhdCI6MTY5MDgzMTM0NCwiZXhwIjoxNjkwODM4NTQ0fQ.rnf5SSSODGTD6jC1Y9ZOn_M_Xob3kydQY0MVTG55DCQ', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('a0c15a5c-ec18-44d2-a565-27db725ecd08', '2023-08-31 00:01:46', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJhMGMxNWE1Yy1lYzE4LTQ0ZDItYTU2NS0yN2RiNzI1ZWNkMDgiLCJwYXNzX2tleSI6IjA1OTdlNDQ3LTljMDUtNDUxNy04ZjZiLTA5Nzk4NTk3YzFjMSIsImlhdCI6MTY5MzQ1ODEwNiwiZXhwIjoxNjkzNDY1MzA2fQ.YgaXuBteSbmeImtWTbWlJubky34lhi4GbtKPHuF9m3Y', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('a46b8f9c-f90b-4967-8bd1-6eb060a119f8', '2023-08-28 22:30:50', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJhNDZiOGY5Yy1mOTBiLTQ5NjctOGJkMS02ZWIwNjBhMTE5ZjgiLCJwYXNzX2tleSI6ImM3YzQxMDIzLTM1NTItNDdkOS1hOTFmLTUyYzg5MjU4NjM2MCIsImlhdCI6MTY5MzI3OTg1MCwiZXhwIjoxNjkzMjg3MDUwfQ.BxtqT71g8hvfFWV6_3PwV39W-u8G-jDSP0wsoXmkmiU', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b2c2bbda-c06f-47e2-a348-27858132d49b', '2023-08-30 23:39:46', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiMzc4YjcyMzctY2UwMy00NTllLTk2OTgtYTRkMTE4YzZlZTJiIiwidG9rZW5faWQiOiJiMmMyYmJkYS1jMDZmLTQ3ZTItYTM0OC0yNzg1ODEzMmQ0OWIiLCJwYXNzX2tleSI6ImJiMTJjYzEwLTNjNzgtNDRkYy05N2ViLWJhYmE2ZjgxNTYzNCIsImlhdCI6MTY5MzQ1Njc4NiwiZXhwIjoxNjkzNDYzOTg2fQ.PxMDbpaU9k-bGmyP_srOLxPZ2DeILBIMT7Tt2pkX5PI', NULL, '378b7237-ce03-459e-9698-a4d118c6ee2b'),
	('b345c9a5-0174-4b25-a13b-8e4f2e926fcb', '2023-08-28 23:14:09', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiMzQ1YzlhNS0wMTc0LTRiMjUtYTEzYi04ZTRmMmU5MjZmY2IiLCJwYXNzX2tleSI6IjcxMjY0NjkyLTQwMTUtNDU3MS1hZWU3LWNmYmQyMmIyYjA4YSIsImlhdCI6MTY5MzI4MjQ0OSwiZXhwIjoxNjkzMjg5NjQ5fQ.wC4ID_2AQARuOiWAF29s2CKE5xenVD-wZzk7id8K-68', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b57d3b3d-2928-4731-892f-80c490717e76', '2023-07-28 11:52:15', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNTdkM2IzZC0yOTI4LTQ3MzEtODkyZi04MGM0OTA3MTdlNzYiLCJwYXNzX2tleSI6IjAzNDU5NGE3LTUwYjItNDFmYS1hMmEyLWJkYWEzNjk1MDRiNyIsImlhdCI6MTY5MDU2MzEzNSwiZXhwIjoxNjkwNTYzMzE1fQ.W02PnhqJqneMtbmo63mcT5Nk8_shOXgWv4mrqSqcJ4', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b65a4bd2-2fae-4d5e-8287-c2057cfe50da', '2023-07-28 12:05:52', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNjVhNGJkMi0yZmFlLTRkNWUtODI4Ny1jMjA1N2NmZTUwZGEiLCJwYXNzX2tleSI6ImI1NGUxMjEzLWFjZDUtNDEwZC05Nzg3LTc0OWMyZTcyMDQzMiIsImlhdCI6MTY5MDU2Mzk1MiwiZXhwIjoxNjkwNTY0MTMyfQ.9goOkEiUF7h2luMH6AcgQwx30KlVNMVmv4JSTQplTnY', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b96a06f9-a25a-4e0d-92c4-f70df824810d', '2023-08-07 14:28:27', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiMTczZGFkNjgtZDFkMy00MjM3LThhMmMtMjZmNWI0NjYwMDYxIiwidG9rZW5faWQiOiJiOTZhMDZmOS1hMjVhLTRlMGQtOTJjNC1mNzBkZjgyNDgxMGQiLCJwYXNzX2tleSI6IjQ2MmU1MzkzLWJlNzAtNGVmNi05YzRkLWQ5NThiODdjYzlhZiIsImlhdCI6MTY5MTQzNjUwNywiZXhwIjoxNjkxNDQzNzA3fQ.fWfRUKPvwqa6CmvgV49neqBhYvFX_tO98Pnm-3xV6pw', NULL, '173dad68-d1d3-4237-8a2c-26f5b4660061'),
	('c3260166-7a37-4351-9e2a-a1310f7ce9da', '2023-07-28 11:49:20', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjMzI2MDE2Ni03YTM3LTQzNTEtOWUyYS1hMTMxMGY3Y2U5ZGEiLCJwYXNzX2tleSI6ImM0NjY2MDI2LTNjYWUtNDA1Ni05MWQ5LThkMjQ2MDNkNzQ3MiIsImlhdCI6MTY5MDU2Mjk2MCwiZXhwIjoxNjkwNTYzMTQwfQ.wUYCq-XC_DTrWT4uiVJjeKPsI4A6Gs6BK1FOxNwDXM', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjMzI2MDE2Ni03YTM3LTQzNTEtOWUyYS1hMTMxMGY3Y2U5ZGEiLCJwYXNzX2tleSI6ImM0NjY2MDI2LTNjYWUtNDA1Ni05MWQ5LThkMjQ2MDNkNzQ3MiIsImlhdCI6MTY5MDU2MjgyMywiZXhwIjoxNjkwNTYzMDAzfQ.QvUNaD2auBhTtkui8ZNyETIFNl7av2q-kv0b05VcJPU', 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('c8947b1f-9a5d-4ab9-8b64-2282ec54c044', '2023-08-28 22:34:46', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjODk0N2IxZi05YTVkLTRhYjktOGI2NC0yMjgyZWM1NGMwNDQiLCJwYXNzX2tleSI6IjJhYjMwOTQ4LTA5ZjMtNDE1Yy1hNzM3LTZjYTExYTc2NmFjYSIsImlhdCI6MTY5MzI4MDA4NiwiZXhwIjoxNjkzMjg3Mjg2fQ.96gNugzDD8xKODatcxGBvdls07QqLThoY_jjFisScMk', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('d2baebba-ec91-4b30-8fc1-56cf80d35064', '2023-08-07 14:28:49', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJkMmJhZWJiYS1lYzkxLTRiMzAtOGZjMS01NmNmODBkMzUwNjQiLCJwYXNzX2tleSI6ImQwNDI2ZDA2LTg4OTMtNDhkYy1iMTI0LWIwOGQ2NWNmYWY1ZCIsImlhdCI6MTY5MTQzNjUyOSwiZXhwIjoxNjkxNDQzNzI5fQ.E-ZXl8DQYQBaGoL8Ew2Le4qzVOUn7wPlCY9v8kff3WI', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('d8db0262-da18-4f67-8b8a-143093e00a2b', '2023-08-28 22:36:01', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJkOGRiMDI2Mi1kYTE4LTRmNjctOGI4YS0xNDMwOTNlMDBhMmIiLCJwYXNzX2tleSI6ImU1YTU5ZWQ0LTAyZWEtNDI1OS05YzA1LWUwNDQwZmVhZmU2YyIsImlhdCI6MTY5MzI4MDE2MSwiZXhwIjoxNjkzMjg3MzYxfQ.tZHfYRvuQhCD5MEOMcGCTyj9ksXoscrEwrqE_Y6-YRw', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('d94fc3d9-bcd5-4d9e-a866-f92fb9e5a3f3', '2023-07-31 14:15:33', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJkOTRmYzNkOS1iY2Q1LTRkOWUtYTg2Ni1mOTJmYjllNWEzZjMiLCJwYXNzX2tleSI6IjBjYzNlNTg0LTBlNDYtNDM3OS1iYzEyLWIyY2E2Yzk0OTI4MCIsImlhdCI6MTY5MDgzMDkzMywiZXhwIjoxNjkwODQxNzMzfQ.scfYNie8tOELta41tl4X-YuIvppwlkNQU0_Le-MZ4JU', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('dedce86a-bbce-4003-aa2f-88c12b993eca', '2023-08-30 23:42:12', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiMzc4YjcyMzctY2UwMy00NTllLTk2OTgtYTRkMTE4YzZlZTJiIiwidG9rZW5faWQiOiJkZWRjZTg2YS1iYmNlLTQwMDMtYWEyZi04OGMxMmI5OTNlY2EiLCJwYXNzX2tleSI6IjlhMmJlNGI5LTc5OGQtNGI2My1iODE2LTQzZjAxNDljYTVlNyIsImlhdCI6MTY5MzQ1NjkzMiwiZXhwIjoxNjkzNDY0MTMyfQ.MjGgMZhkGk-gWgl5ozmBNHefalhnJYR2hY8jk20uqtM', NULL, '378b7237-ce03-459e-9698-a4d118c6ee2b'),
	('dfcfdabc-1ace-4a7f-955f-1a4dff223622', '2023-07-28 11:50:31', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJkZmNmZGFiYy0xYWNlLTRhN2YtOTU1Zi0xYTRkZmYyMjM2MjIiLCJwYXNzX2tleSI6ImY5YmI3OTY4LThkNWYtNDYyMS1iZDBlLTE1ODZiZGM2YTliMCIsImlhdCI6MTY5MDU2MzAzMSwiZXhwIjoxNjkwNTYzMjExfQ.Rvk5INmpNtspWLyR2O7M-tTdygpVGq0UGSdOmhieW4', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('f3739298-3ed4-4867-98e7-7d4615c982c8', '2023-07-31 14:21:02', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJmMzczOTI5OC0zZWQ0LTQ4NjctOThlNy03ZDQ2MTVjOTgyYzgiLCJwYXNzX2tleSI6IjdmMjUyMzFiLWZkMDEtNDJlOC05ZTBjLWI0YzJmMDY2MWJkYyIsImlhdCI6MTY5MDgzMTI2MiwiZXhwIjoxNjkwODQyMDYyfQ.aGkvS41N_kH-Jr-JVeNyY9DIWUqdpXodTlLzhlph_Lo', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('fbb49f14-2c75-4b8e-9be3-e3da895e2681', '2023-08-28 22:35:17', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJmYmI0OWYxNC0yYzc1LTRiOGUtOWJlMy1lM2RhODk1ZTI2ODEiLCJwYXNzX2tleSI6ImY3MWM5NDlhLWJiNmUtNDM1Zi1iZGZmLWUzNDQ2NDE1Y2U4NiIsImlhdCI6MTY5MzI4MDExNywiZXhwIjoxNjkzMjg3MzE3fQ.C8L5UvnPwzzdCiFEy3YU1G5hPnBCIQFNO2mnD8C_RBs', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('fbe265d5-8bdd-455e-a68a-3d3186bb7fad', '2023-07-31 14:11:30', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJmYmUyNjVkNS04YmRkLTQ1NWUtYTY4YS0zZDMxODZiYjdmYWQiLCJwYXNzX2tleSI6IjQ5YTU4YTZhLTY3OGUtNDUxYy05Zjk5LTA5MjM5MWJmOGZjOSIsImlhdCI6MTY5MDgzMDY5MCwiZXhwIjoxNjkwODMwODcwfQ.OsbDdVKAgVcSnx1F26ah3beUe9sn1JeIgJaAXfSutvI', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('fec10b10-8165-4a02-ac2f-2cab8613e80e', '2023-08-30 22:18:16', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJmZWMxMGIxMC04MTY1LTRhMDItYWMyZi0yY2FiODYxM2U4MGUiLCJwYXNzX2tleSI6Ijc3Y2Q0MjhiLWI2ZTUtNGExYi1hMjBmLTE0NzhhZWQyZTU3YiIsImlhdCI6MTY5MzQ1MTg5NiwiZXhwIjoxNjkzNDU5MDk2fQ.3T9ImFZznZmGjf7n0ORlhMkW38urk_-txRLYU-s4BqA', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4');

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

-- Volcando datos para la tabla auth.permiso_roles_rutas: ~2 rows (aproximadamente)
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

-- Volcando datos para la tabla auth.rutas_general: ~2 rows (aproximadamente)
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

-- Volcando datos para la tabla auth.tokens_users: ~63 rows (aproximadamente)
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
