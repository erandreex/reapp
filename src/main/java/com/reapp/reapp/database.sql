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

-- Volcando datos para la tabla admin.admin_logs_requests: ~0 rows (aproximadamente)
DELETE FROM `admin_logs_requests`;

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

-- Volcando datos para la tabla admin.admin_permisos_roles_rutas: ~15 rows (aproximadamente)
DELETE FROM `admin_permisos_roles_rutas`;
INSERT INTO `admin_permisos_roles_rutas` (`aprr_id`, `aprr_fk_rol_id`, `aprr_fk_ruta_id`) VALUES
	('4b19b69e-63f4-4204-8575-8048a2031bbe', '0066a50b-78bc-4a58-9240-d2928b4220f1', '45ea42d1-5802-4c91-9944-875d1f3e3641'),
	('e0398347-e578-47e9-a943-31dfaffecf9b', '0066a50b-78bc-4a58-9240-d2928b4220f1', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb'),
	('b5b01b6f-fb15-4c14-a50e-0dff85efb5f1', '5d258050-5ee3-4954-8ec4-1b010355b817', '2a2ffc5f-8b48-455c-aae7-dbc7dce6273e'),
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
	('2a2ffc5f-8b48-455c-aae7-dbc7dce6273e', 1, 'DashboardBaseComponent', 'Construccion1', 'dash1', 'ri-bar-chart-box-fill', '#FFFFFF', '#FFFFFF', '18cdb8c0-e9f1-42bf-b76a-29775bc7a021'),
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

-- Volcando datos para la tabla admin.admin_rutas_acciones: ~20 rows (aproximadamente)
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

-- Volcando datos para la tabla admin.admin_rutas_categorias: ~6 rows (aproximadamente)
DELETE FROM `admin_rutas_categorias`;
INSERT INTO `admin_rutas_categorias` (`arc_id`, `arc_orden`, `arc_titulo`, `arc_ruta`, `arc_icono`, `arc_color_1`, `arc_color_2`) VALUES
	('f91dd081-ca36-4d1e-81c9-cffb9e131b93', 5, 'Administracion', 'administracion', 'ri-settings-5-fill', '#FFFFFF', '#FFFFFF'),
	('18cdb8c0-e9f1-42bf-b76a-29775bc7a021', 4, 'Dashboards', 'dashboard', 'ri-dashboard-fill', '#FFFFFF', '#FFFFFF'),
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
	('a330e7bf-1c4d-4709-a331-6353a44621a4', 'Prueba', 'Test', 'test1', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', 'test1@test.com', '9eb51c63-5fa6-4d0b-a2f0-5a65820d1ad0', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
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

-- Volcando datos para la tabla admin.admin_usuarios_tokens: ~12 rows (aproximadamente)
DELETE FROM `admin_usuarios_tokens`;
INSERT INTO `admin_usuarios_tokens` (`aut_id`, `aut_fecha`, `aut_tipo`, `aut_estado`, `aut_token1`, `aut_token2`, `aut_fk_usuario_id`) VALUES
	('07a6845b-b021-46a1-aaa5-3991667c203f', '2023-09-03 22:36:09', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIwN2E2ODQ1Yi1iMDIxLTQ2YTEtYWFhNS0zOTkxNjY3YzIwM2YiLCJwYXNzX2tleSI6IjEzYTU4NTVlLTI3N2MtNGEzYS04ZjMzLWE2NTczNzQzZGMwYyIsImlhdCI6MTY5Mzc5ODU2OSwiZXhwIjoxNjkzODA1NzY5fQ.UpJnhBzHgowJ36ilGfun2HUE7JI2h5Uo5AxjgKKR3eA', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('213f3cb8-9824-43e4-a356-8a53f0e8cdc9', '2023-09-10 11:53:27', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiIyMTNmM2NiOC05ODI0LTQzZTQtYTM1Ni04YTUzZjBlOGNkYzkiLCJwYXNzX2tleSI6ImIzNTUyZjVlLWFlZDUtNDBiNy1iYzhiLTk4MTFhMGU2NmQ4OCIsImlhdCI6MTY5NDM2NDgwNywiZXhwIjoxNjk0MzcyMDA3fQ.3OEYWmpyeR5kbL1w3xThPpuJ77uIQz1tCid8zqe9_v4', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('75af8614-af7b-487c-a358-f13880dd19e4', '2023-09-03 10:02:32', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI3NWFmODYxNC1hZjdiLTQ4N2MtYTM1OC1mMTM4ODBkZDE5ZTQiLCJwYXNzX2tleSI6IjFkMGQ1ZWYwLWMwMzItNGNlOC04OGUxLTZjNjY2YzUyNGFkZSIsImlhdCI6MTY5Mzc1MzM1MiwiZXhwIjoxNjkzNzYwNTUyfQ.CmRp9P3Xuw-GS-umAp19mJGhey0Z2MsABBCtd7C3lPk', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('7723c72a-ce31-408c-b11e-894081962275', '2023-09-03 13:00:03', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI3NzIzYzcyYS1jZTMxLTQwOGMtYjExZS04OTQwODE5NjIyNzUiLCJwYXNzX2tleSI6ImRhZmMxNDY5LWFjMzctNGI2MS05ODY1LWNjOWVhNGZhNmU0MiIsImlhdCI6MTY5Mzc2NDAwMywiZXhwIjoxNjkzNzcxMjAzfQ.uKQu6KnQgk3-JCYveJ-9tBubaMUM2dvpGlcP3Q4rCBg', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('880d03e6-0370-4564-b792-159fd298fb6f', '2023-08-31 20:17:00', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI4ODBkMDNlNi0wMzcwLTQ1NjQtYjc5Mi0xNTlmZDI5OGZiNmYiLCJwYXNzX2tleSI6IjQwYzE0NzNjLTEyZDEtNDk2NC05NDBiLTU0ZWVjZjVlMmFjZSIsImlhdCI6MTY5MzUzMTAyMCwiZXhwIjoxNjkzNTM4MjIwfQ.Kwhx0_mRSLxzUPor71whYlQBiwFsX2_i-MVmumXMyhk', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('93ad2161-abbe-4a24-b26a-1f6d7c21b2cc', '2023-09-10 14:01:45', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI5M2FkMjE2MS1hYmJlLTRhMjQtYjI2YS0xZjZkN2MyMWIyY2MiLCJwYXNzX2tleSI6IjdiYWExZTcwLTJjMjQtNDZlYi1hNDlmLTIwNTY4NmM2MjdmOSIsImlhdCI6MTY5NDM3MjUwNSwiZXhwIjoxNjk0Mzc5NzA1fQ.hl4Epz_EK7x3TV3rA6sCo9c6XijCR5WLHGBveEFVvYw', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('a1fba2ff-9d01-44d9-a269-0e40aaf54ee6', '2023-08-31 20:16:16', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJhMWZiYTJmZi05ZDAxLTQ0ZDktYTI2OS0wZTQwYWFmNTRlZTYiLCJwYXNzX2tleSI6IjJmZDA4YzY0LTY4MjQtNGI1YS1iOWNjLWRhODMxMWZmMDlhNiIsImlhdCI6MTY5MzUzMDk3NiwiZXhwIjoxNjkzNTM4MTc2fQ.U7K6iss_6xoNmyJJSC4nBKhLmnce2W-wz31raoFa-m8', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('a7f9d072-afcb-4025-b874-84e1011d6845', '2023-09-11 18:21:55', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJhN2Y5ZDA3Mi1hZmNiLTQwMjUtYjg3NC04NGUxMDExZDY4NDUiLCJwYXNzX2tleSI6ImQ2ZDNiYWVhLTA5OTItNDk1My1hNTA0LWM1YWQwNDlhY2U0ZSIsImlhdCI6MTY5NDQ3NDUxNSwiZXhwIjoxNjk0NDgxNzE1fQ.o4oET6Tc6qfqtlGyAk_7BEcvQvCMbNRVsovBiuEDanU', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b3c788b2-8f26-4d92-9ee8-a995498c7aca', '2023-09-12 20:27:57', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiM2M3ODhiMi04ZjI2LTRkOTItOWVlOC1hOTk1NDk4YzdhY2EiLCJwYXNzX2tleSI6IjllYjUxYzYzLTVmYTYtNGQwYi1hMmYwLTVhNjU4MjBkMWFkMCIsImlhdCI6MTY5NDU2ODQ3NywiZXhwIjoxNjk0NTc1Njc3fQ.FemUUL3BYqhr5UKCI67iitWhD2SL6dwDg4d9eqEDUtc', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiM2M3ODhiMi04ZjI2LTRkOTItOWVlOC1hOTk1NDk4YzdhY2EiLCJwYXNzX2tleSI6IjllYjUxYzYzLTVmYTYtNGQwYi1hMmYwLTVhNjU4MjBkMWFkMCIsImlhdCI6MTY5NDU2MjgyNSwiZXhwIjoxNjk0NTcwMDI1fQ.3PqCbO-hSDeNjtYVOfQKRlJA9hcr5jSaC1LtWa58Vuk', 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b5078acc-5750-4806-9463-b0c752ba4429', '2023-08-31 19:24:12', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNTA3OGFjYy01NzUwLTQ4MDYtOTQ2My1iMGM3NTJiYTQ0MjkiLCJwYXNzX2tleSI6ImZmODE1NDMyLWI3NTAtNGVlMy1iN2IzLWEzYmFhZDEwNmM2YSIsImlhdCI6MTY5MzUyNzg1MiwiZXhwIjoxNjkzNTM1MDUyfQ.4dZ9rqHwhukw8NGQKksTM5y9rZ0XNO57ug4rjcy4-sc', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('cc43b04b-c658-412b-8440-2ba946dff2db', '2023-09-11 21:37:11', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjYzQzYjA0Yi1jNjU4LTQxMmItODQ0MC0yYmE5NDZkZmYyZGIiLCJwYXNzX2tleSI6ImFlZTIzNGE5LTRkNzMtNDI2OC1iZTUwLWE3OWRjYTk5MzgzZSIsImlhdCI6MTY5NDQ4NjIzMSwiZXhwIjoxNjk0NDkzNDMxfQ.ARkgH7Lv09TFTFEl4AwdRUbPiS2WZPWx0Nd-4jaDK94', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjYzQzYjA0Yi1jNjU4LTQxMmItODQ0MC0yYmE5NDZkZmYyZGIiLCJwYXNzX2tleSI6ImFlZTIzNGE5LTRkNzMtNDI2OC1iZTUwLWE3OWRjYTk5MzgzZSIsImlhdCI6MTY5NDQ4MDgxOSwiZXhwIjoxNjk0NDg4MDE5fQ.fUYqL9f0zCanK4XnWnv8xcIJxx9uLApGv4fKz0lf6bY', 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
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


-- Volcando estructura de base de datos para admin_bitacora
DROP DATABASE IF EXISTS `admin_bitacora`;
CREATE DATABASE IF NOT EXISTS `admin_bitacora` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `admin_bitacora`;

-- Volcando estructura para tabla admin_bitacora.bitacora_cpu
DROP TABLE IF EXISTS `bitacora_cpu`;
CREATE TABLE IF NOT EXISTS `bitacora_cpu` (
  `cpu_servidor` varchar(50) DEFAULT NULL,
  `cpu_fecha` datetime DEFAULT NULL,
  `cpu_valor` int(11) DEFAULT NULL,
  KEY `indice_1` (`cpu_servidor`,`cpu_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_bitacora.bitacora_cpu: ~0 rows (aproximadamente)
DELETE FROM `bitacora_cpu`;

-- Volcando estructura para evento admin_bitacora.rutina
DROP EVENT IF EXISTS `rutina`;
DELIMITER //
CREATE EVENT `rutina` ON SCHEDULE EVERY 1 MINUTE STARTS '2023-09-09 20:49:32' ENDS '2023-09-30 00:03:33' ON COMPLETION NOT PRESERVE DISABLE DO BEGIN

	SET @w_fecha = (SELECT NOW());

	START TRANSACTION;
	
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor1', @w_fecha, FLOOR(1 + RAND() * (100 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor2', @w_fecha, FLOOR(1 + RAND() * (100 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor3', @w_fecha, FLOOR(1 + RAND() * (100 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor4', @w_fecha, FLOOR(1 + RAND() * (50 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor5', @w_fecha, FLOOR(1 + RAND() * (50 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor6', @w_fecha, FLOOR(1 + RAND() * (50 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor7', @w_fecha, FLOOR(1 + RAND() * (25 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor8', @w_fecha, FLOOR(1 + RAND() * (25 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor9', @w_fecha, FLOOR(1 + RAND() * (25 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor10', @w_fecha, FLOOR(1 + RAND() * (75 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor11', @w_fecha, FLOOR(1 + RAND() * (75 - 1 +1)));
		CALL admin_bitacora.sp_admin_bitacora_cpu('I', 'INR', 'servidor12', @w_fecha, FLOOR(1 + RAND() * (75 - 1 +1)));
		
	COMMIT ;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_bitacora.sp_admin_bitacora_cons_grafica
DROP PROCEDURE IF EXISTS `sp_admin_bitacora_cons_grafica`;
DELIMITER //
CREATE PROCEDURE `sp_admin_bitacora_cons_grafica`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_rutina` VARCHAR(100),
	IN `i_fecha` DATETIME,
	IN `i_cant_registros` INT
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QP') THEN
			
			SET @w_contador = 0;

			CREATE TEMPORARY TABLE IF NOT EXISTS devuelveDatosTMP AS (SELECT cpu_servidor, cpu_fecha, cpu_valor from admin_bitacora.bitacora_cpu where 1=0);
			
			SET @w_fecha_fin = (SELECT DATE_FORMAT(i_fecha, '%Y-%m-%d %H:%i:00'));
			SET @w_fecha_ini = (SELECT DATE_SUB(@w_fecha_fin, INTERVAL 1 MINUTE));
			
			SET @w_fecha_fin_calc = @w_fecha_fin;
			SET @w_fecha_ini_calc = @w_fecha_ini;
			
			WHILE @w_contador < CAST(i_cant_registros as unsigned) Do 
			
				IF EXISTS (SELECT 1 FROM admin_bitacora.bitacora_cpu WHERE cpu_servidor = i_rutina AND cpu_fecha BETWEEN @w_fecha_ini_calc AND @w_fecha_fin_calc) THEN
			
					INSERT INTO devuelveDatosTMP
					SELECT  cpu_servidor, @w_fecha_fin_calc, cpu_valor
					FROM  	admin_bitacora.bitacora_cpu
					WHERE 	cpu_servidor = i_rutina 
					AND 	cpu_fecha BETWEEN @w_fecha_ini_calc AND @w_fecha_fin_calc
					ORDER BY cpu_fecha DESC
					LIMIT 1;
				ELSE 
					INSERT INTO devuelveDatosTMP
					VALUES(i_rutina, @w_fecha_fin_calc, 0);
				END if;
			
				SET @w_contador = @w_contador + 1;
				SET @w_fecha_fin_calc = (SELECT DATE_SUB(@w_fecha_fin_calc, INTERVAL 1 MINUTE));
				SET @w_fecha_ini_calc = (SELECT DATE_SUB(@w_fecha_ini_calc, INTERVAL 1 MINUTE));
			
			END WHILE;
			
			SELECT * FROM devuelveDatosTMP
			order by cpu_fecha;
			
			DROP TEMPORARY TABLE IF EXISTS  devuelveDatosTMP;
			
		END IF;

	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_bitacora.sp_admin_bitacora_cpu
DROP PROCEDURE IF EXISTS `sp_admin_bitacora_cpu`;
DELIMITER //
CREATE PROCEDURE `sp_admin_bitacora_cpu`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_servidor` VARCHAR(50),
	IN `i_fecha` DATETIME,
	IN `i_valor` INT
)
BEGIN

	IF (i_tipo = 'I') THEN
	
		IF (i_operacion = 'INR') THEN
			
			INSERT INTO admin_bitacora.bitacora_cpu (cpu_servidor, cpu_fecha, cpu_valor)
			VALUES (i_servidor, i_fecha, i_valor);
			
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


-- Volcando estructura de base de datos para admin_dashboards
DROP DATABASE IF EXISTS `admin_dashboards`;
CREATE DATABASE IF NOT EXISTS `admin_dashboards` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `admin_dashboards`;

-- Volcando estructura para tabla admin_dashboards.admin_dashboards
DROP TABLE IF EXISTS `admin_dashboards`;
CREATE TABLE IF NOT EXISTS `admin_dashboards` (
  `ad_id` varchar(50) DEFAULT NULL,
  `ad_nombre` varchar(50) DEFAULT NULL,
  `ad_tipo` varchar(50) DEFAULT NULL,
  `ad_tamano` varchar(50) DEFAULT NULL,
  `ad_componente_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_dashboards.admin_dashboards: ~1 rows (aproximadamente)
DELETE FROM `admin_dashboards`;
INSERT INTO `admin_dashboards` (`ad_id`, `ad_nombre`, `ad_tipo`, `ad_tamano`, `ad_componente_id`) VALUES
	('1', 'prueba', 'grafica', '1x1', '1');

-- Volcando estructura para tabla admin_dashboards.admin_graficas_config
DROP TABLE IF EXISTS `admin_graficas_config`;
CREATE TABLE IF NOT EXISTS `admin_graficas_config` (
  `agc_id` varchar(50) DEFAULT NULL,
  `agc_nombre` varchar(50) DEFAULT NULL,
  `agc_titulo` varchar(50) DEFAULT NULL,
  `agc_cant_registros` int(11) DEFAULT NULL,
  `agc_tipo_registros` varchar(10) DEFAULT NULL,
  `agc_label_y` varchar(50) DEFAULT NULL,
  `agc_stacked` varchar(5) DEFAULT 'false',
  `agc_background` varchar(50) DEFAULT NULL,
  `agc_max_tick_limit` int(11) DEFAULT NULL,
  `agc_max_suggested` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_dashboards.admin_graficas_config: ~4 rows (aproximadamente)
DELETE FROM `admin_graficas_config`;
INSERT INTO `admin_graficas_config` (`agc_id`, `agc_nombre`, `agc_titulo`, `agc_cant_registros`, `agc_tipo_registros`, `agc_label_y`, `agc_stacked`, `agc_background`, `agc_max_tick_limit`, `agc_max_suggested`) VALUES
	('1', 'Grafica CPU', 'CPU', 30, 'mm', 'Consumo CPU', 'false', '#FFFFFF', 4, 100),
	('2', 'Grafica CPU 2', 'CPU', 30, 'mm', 'Consumo CPU', 'false', '#FFFFFF', 4, 100),
	('3', 'Grafica CPU 3', 'CPU', 30, 'mm', 'Consumo CPU', 'false', '#FFFFFF', 4, 100),
	('4', 'Grafica CPU 4', 'CPU', 30, 'mm', 'Consumo CPU', 'false', '#FFFFFF', 4, 100);

-- Volcando estructura para tabla admin_dashboards.admin_graficas_datasets
DROP TABLE IF EXISTS `admin_graficas_datasets`;
CREATE TABLE IF NOT EXISTS `admin_graficas_datasets` (
  `agd_grafica_id` varchar(50) DEFAULT NULL,
  `agd_dataset_id` varchar(50) DEFAULT NULL,
  `agd_dataset_posicion` int(11) DEFAULT NULL,
  `agd_proc_nombre` varchar(10) DEFAULT NULL,
  `agd_proc_tipo` varchar(100) DEFAULT NULL,
  `agd_proc_operacion` varchar(100) DEFAULT NULL,
  `agd_rutina` varchar(100) DEFAULT NULL,
  `agd_dataset_label` varchar(100) DEFAULT NULL,
  `agd_tipo_principal` varchar(10) DEFAULT 'line',
  `agd_tipo_secundario` varchar(10) DEFAULT 'line',
  `agd_fondo_color` varchar(10) DEFAULT NULL,
  `agd_borde_color` varchar(10) DEFAULT NULL,
  `agd_borde_tamano` varchar(2) DEFAULT '3',
  `agd_punto_color_fondo` varchar(10) DEFAULT '#000000',
  `agd_punto_color_hover` varchar(10) DEFAULT '#000000',
  `agd_punto_color_borde` varchar(10) DEFAULT '#000000',
  `agd_punto_tamano` varchar(50) DEFAULT '2',
  `agd_stack` int(11) DEFAULT 0,
  `agd_fill` varchar(10) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_dashboards.admin_graficas_datasets: ~10 rows (aproximadamente)
DELETE FROM `admin_graficas_datasets`;
INSERT INTO `admin_graficas_datasets` (`agd_grafica_id`, `agd_dataset_id`, `agd_dataset_posicion`, `agd_proc_nombre`, `agd_proc_tipo`, `agd_proc_operacion`, `agd_rutina`, `agd_dataset_label`, `agd_tipo_principal`, `agd_tipo_secundario`, `agd_fondo_color`, `agd_borde_color`, `agd_borde_tamano`, `agd_punto_color_fondo`, `agd_punto_color_hover`, `agd_punto_color_borde`, `agd_punto_tamano`, `agd_stack`, `agd_fill`) VALUES
	('1', '1', 1, 'CPU', 'Q', 'QP', 'servidor1', 'servidor1', 'line', 'line', '#ff4ac9', '#ff7dd8', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('1', '2', 2, 'CPU', 'Q', 'QP', 'servidor2', 'servidor2', 'line', 'line', '#FFFFFF', '#ffc300', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('1', '3', 3, 'CPU', 'Q', 'QP', 'servidor3', 'servidor3', 'line', 'line', '#1e6091', '#168aad', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('3', '7', 1, 'CPU', 'Q', 'QP', 'servidor7', 'servidor7', 'line', 'line', '#fa188a', '#ffa5a1', '2', '#000000', '#000000', '#000000', '1', 0, 'true'),
	('2', '5', 2, 'CPU', 'Q', 'QP', 'servidor5', 'servidor5', 'line', 'line', '#a2d729', '#a2d729', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('2', '6', 3, 'CPU', 'Q', 'QP', 'servidor6', 'servidor6', 'line', 'line', '#fa824c', '#fa824c', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('2', '4', 1, 'CPU', 'Q', 'QP', 'servidor4', 'servidor4', 'line', 'line', '#b3b300', '#7d7d00', '2', '#000000', '#000000', '#000000', '1', 0, 'false'),
	('3', '8', 2, 'CPU', 'Q', 'QP', 'servidor8', 'servidor8', 'line', 'line', '#2dffac', '#2dffac', '2', '#000000', '#000000', '#000000', '1', 0, 'true'),
	('3', '9', 3, 'CPU', 'Q', 'QP', 'servidor9', 'servidor9', 'line', 'line', '#1aa1b4', '#1aa1b4', '2', '#000000', '#000000', '#000000', '1', 0, 'true'),
	('4', '10', 1, 'CPU', 'Q', 'QP', 'servidor10', 'servidor10', 'line', 'line', '#00bfed', '#0072c7', '2', '#000000', '#000000', '#000000', '1', 0, 'true');

-- Volcando estructura para tabla admin_dashboards.admin_graficas_procedimientos
DROP TABLE IF EXISTS `admin_graficas_procedimientos`;
CREATE TABLE IF NOT EXISTS `admin_graficas_procedimientos` (
  `agp_proc_nombre` varchar(50) NOT NULL,
  `agp_proc_almacenado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin_dashboards.admin_graficas_procedimientos: ~1 rows (aproximadamente)
DELETE FROM `admin_graficas_procedimientos`;
INSERT INTO `admin_graficas_procedimientos` (`agp_proc_nombre`, `agp_proc_almacenado`) VALUES
	('CPU', 'call admin_bitacora.sp_admin_bitacora_cons_grafica(i_tipo,i_operacion,i_rutina,i_fecha,i_cant_registros)');

-- Volcando estructura para procedimiento admin_dashboards.sp_admin_dashboards
DROP PROCEDURE IF EXISTS `sp_admin_dashboards`;
DELIMITER //
CREATE PROCEDURE `sp_admin_dashboards`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(50)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QLCC') THEN
			
			SELECT 	ad_id, ad_nombre, ad_tipo, ad_tamano, ad_componente_id FROM admin_dashboards.admin_dashboards
			WHERE 	ad_nombre = i_variable_1;
			
		END IF;

	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_dashboards.sp_admin_graficas_consultas
DROP PROCEDURE IF EXISTS `sp_admin_graficas_consultas`;
DELIMITER //
CREATE PROCEDURE `sp_admin_graficas_consultas`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(50)
)
BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QGDID') THEN
			
			SELECT 
				agd_grafica_id,
				agd_dataset_id,
				agd_dataset_posicion,
				agd_proc_nombre,
				agd_proc_tipo,
				agd_proc_operacion,
				agd_rutina,
				agd_dataset_label,
				agd_tipo_principal,
				agd_tipo_secundario,
				agd_fondo_color,
				agd_borde_color,
				agd_borde_tamano,
				agd_punto_color_fondo,
				agd_punto_color_hover,
				agd_punto_color_borde,
				agd_punto_tamano,
				agd_stack,
				agd_fill
			FROM admin_dashboards.admin_graficas_datasets
			WHERE agd_grafica_id = i_variable_1;
			
		END IF;
		
		IF (i_operacion = 'QGCID') THEN
			
			SELECT 
				agc_id,
				agc_nombre,
				agc_titulo,
				agc_cant_registros,
				agc_tipo_registros,
				agc_label_y,
				agc_stacked,
				agc_background,
				agc_max_tick_limit,
				agc_max_suggested
			FROM admin_dashboards.admin_graficas_config
			WHERE agc_id = i_variable_1;
			
		END IF;
		
	END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento admin_dashboards.sp_admin_graficas_procedimientos
DROP PROCEDURE IF EXISTS `sp_admin_graficas_procedimientos`;
DELIMITER //
CREATE PROCEDURE `sp_admin_graficas_procedimientos`(
	IN `i_proc_nombre` VARCHAR(50),
	IN `i_tipo` TEXT,
	IN `i_operacion` TEXT,
	IN `i_rutina` TEXT,
	IN `i_fecha` DATETIME,
	IN `i_cant_registros` INT
)
BEGIN

	SET @proc_almacenado = '';

	SELECT 
		agp_proc_almacenado
	INTO
		@proc_almacenado
	FROM admin_dashboards.admin_graficas_procedimientos
	WHERE agp_proc_nombre = i_proc_nombre;


	IF(SELECT IF(@proc_almacenado LIKE '%i_tipo%', TRUE, FALSE) = TRUE) THEN

		SET @proc_almacenado = (SELECT REPLACE(@proc_almacenado, 'i_tipo', CONCAT("'", i_tipo, "'")));

	END IF;

	IF(SELECT IF(@proc_almacenado LIKE '%i_operacion%', TRUE, FALSE) = TRUE) THEN

		SET @proc_almacenado = (SELECT REPLACE(@proc_almacenado, 'i_operacion', CONCAT("'", i_operacion, "'")));

	END IF;

	IF(SELECT IF(@proc_almacenado LIKE '%i_rutina%', TRUE, FALSE) = TRUE) THEN

		SET @proc_almacenado = (SELECT REPLACE(@proc_almacenado, 'i_rutina', CONCAT("'", i_rutina, "'")));

	END IF;

	IF(SELECT IF(@proc_almacenado LIKE '%i_fecha%', TRUE, FALSE) = TRUE) THEN

		SET @proc_almacenado = (SELECT REPLACE(@proc_almacenado, 'i_fecha', CONCAT("'", i_fecha, "'")));

	END IF;

	IF(SELECT IF(@proc_almacenado LIKE '%i_cant_registros%', TRUE, FALSE) = TRUE) THEN

		SET @proc_almacenado = (SELECT REPLACE(@proc_almacenado, 'i_cant_registros', CONCAT("'", i_cant_registros, "'")));

	END IF;

	PREPARE statment FROM @proc_almacenado;
	EXECUTE statment;
	DEALLOCATE PREPARE statment; 

END//
DELIMITER ;


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
