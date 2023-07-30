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
	('TOKEN_EXPIRACION_INTERVALO', 'minutos'),
	('TOKEN_EXPIRACION_VALOR', '3');

-- Volcando estructura para tabla admin.admin_permisos_roles_acciones
DROP TABLE IF EXISTS `admin_permisos_roles_acciones`;
CREATE TABLE IF NOT EXISTS `admin_permisos_roles_acciones` (
  `apra_id` varchar(50) NOT NULL,
  `apra_fk_rol_id` varchar(50) NOT NULL,
  `apra_fk_ara_id` varchar(50) NOT NULL,
  UNIQUE KEY `apra_id` (`apra_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_permisos_roles_acciones: ~1 rows (aproximadamente)
DELETE FROM `admin_permisos_roles_acciones`;
INSERT INTO `admin_permisos_roles_acciones` (`apra_id`, `apra_fk_rol_id`, `apra_fk_ara_id`) VALUES
	('1c739355-51e1-4c4b-8868-fca894b257c1', '5d258050-5ee3-4954-8ec4-1b010355b817', 'a7846cc9-dbeb-472a-9adc-c7055dda6da1');

-- Volcando estructura para tabla admin.admin_permisos_roles_rutas
DROP TABLE IF EXISTS `admin_permisos_roles_rutas`;
CREATE TABLE IF NOT EXISTS `admin_permisos_roles_rutas` (
  `aprr_id` varchar(50) NOT NULL,
  `aprr_fk_rol_id` varchar(50) NOT NULL,
  `aprr_fk_ruta_id` varchar(50) NOT NULL,
  UNIQUE KEY `aprr_id` (`aprr_id`),
  UNIQUE KEY `indice unico` (`aprr_fk_rol_id`,`aprr_fk_ruta_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_permisos_roles_rutas: ~8 rows (aproximadamente)
DELETE FROM `admin_permisos_roles_rutas`;
INSERT INTO `admin_permisos_roles_rutas` (`aprr_id`, `aprr_fk_rol_id`, `aprr_fk_ruta_id`) VALUES
	('3c653504-53c0-4b38-9941-670780c100a5', '5d258050-5ee3-4954-8ec4-1b010355b817', '3938b044-26ae-4079-81d0-734d248afa75'),
	('0c891b72-7a0a-4d11-a8d9-54087b74f431', '5d258050-5ee3-4954-8ec4-1b010355b817', '3f7de9ab-d611-475e-a290-62161a2d9856'),
	('0b993f3f-fabe-46e7-bf86-b0e582f54bc8', '5d258050-5ee3-4954-8ec4-1b010355b817', '46f69391-e307-4e49-92fe-be7c3ef78def'),
	('eda77a5d-2579-4341-a5de-26a1b9c0e591', '5d258050-5ee3-4954-8ec4-1b010355b817', '53cc74a5-0efb-4d98-b975-7c8451583b0c'),
	('1c47c49b-4965-4d0d-94bc-cc7e261bd7e8', '5d258050-5ee3-4954-8ec4-1b010355b817', '7c9950b7-a114-4477-a655-24fc68a10b09'),
	('5078a03d-6bdd-4808-b4b7-7cc37076d257', '5d258050-5ee3-4954-8ec4-1b010355b817', '84d5bca9-3bcd-4f82-ae42-6ea23dcf0522'),
	('9b231720-d358-4c72-9fbf-2886fd63d5ab', '5d258050-5ee3-4954-8ec4-1b010355b817', 'b5f5267e-87fa-4678-97ca-6ad4584725d3'),
	('4200f87e-dc5b-4adf-8c08-a37e1177de6f', '5d258050-5ee3-4954-8ec4-1b010355b817', 'bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb');

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

-- Volcando datos para la tabla admin.admin_rutas: ~7 rows (aproximadamente)
DELETE FROM `admin_rutas`;
INSERT INTO `admin_rutas` (`ar_id`, `ar_orden`, `ar_componente`, `ar_titulo`, `ar_ruta`, `ar_icono`, `ar_color_1`, `ar_color_2`, `ar_fk_categoria`) VALUES
	('3938b044-26ae-4079-81d0-734d248afa75', 0, 'UsuariosComponent', 'Usuarios', 'usuarios', 'ri-user-3-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('3f7de9ab-d611-475e-a290-62161a2d9856', 1, 'RutasComponent', 'Rutas', 'rutas', 'ri-organization-chart', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('46f69391-e307-4e49-92fe-be7c3ef78def', 15, 'UsuariosRolesComponent', 'Usuarios Roles', 'usuarios-roles', 'ri-shield-user-fill', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('7c9950b7-a114-4477-a655-24fc68a10b09', 2, 'RutasCategoriasComponent', 'Rutas Categorias', 'rutas-categorias', 'ri-mind-map', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('84d5bca9-3bcd-4f82-ae42-6ea23dcf0522', 0, 'RutasAccionesComponent', 'Rutas Acciones', 'rutas-acciones', 'ri-key-line', '#FFFFFF', '#FFFFFF', 'f91dd081-ca36-4d1e-81c9-cffb9e131b93'),
	('bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb', 0, 'IndexComponent', 'Index', '', 'ri-flag-2-fill', '#FFFFFF', '#FFFFFF', '85b96a17-6252-428c-ba9c-49df337f52f3'),
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

-- Volcando datos para la tabla admin.admin_rutas_acciones: ~1 rows (aproximadamente)
DELETE FROM `admin_rutas_acciones`;
INSERT INTO `admin_rutas_acciones` (`ara_id`, `ara_controlador`, `ara_endpoint`, `ara_metodo`, `ara_estado`, `ara_fk_ruta_id`, `ara_descripcion`) VALUES
	('2045ace9-1c00-4cf4-b948-7ef4a386103c', 'Prueba', 'ewfwef', 'GET', 'V', '46f69391-e307-4e49-92fe-be7c3ef78def', 'wefwef'),
	('d1b107f2-2fd4-4f48-ba6e-bc4599e41b69', 'Prueba', 'wqfdqwefwef', 'POST', 'V', '3f7de9ab-d611-475e-a290-62161a2d9856', 'wef');

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

-- Volcando datos para la tabla admin.admin_rutas_categorias: ~4 rows (aproximadamente)
DELETE FROM `admin_rutas_categorias`;
INSERT INTO `admin_rutas_categorias` (`arc_id`, `arc_orden`, `arc_titulo`, `arc_ruta`, `arc_icono`, `arc_color_1`, `arc_color_2`) VALUES
	('f91dd081-ca36-4d1e-81c9-cffb9e131b93', 5, 'Administracion', 'administracion', 'ri-settings-5-fill', '#FFFFFF', '#FFFFFF'),
	('f91dd081-ca36-4d1e-81c9-cffb9e131b12', 1, 'Ajustes', 'ajustes', 'ri-arrow-right-up-fill', '#FFFFFF', '#FFFFFF'),
	('85b96a17-6252-428c-ba9c-49df337f52f3', 2, 'Index', '', 'ri-flag-2-fill', '#FFFFFF', '#FFFFFF');

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

-- Volcando datos para la tabla admin.admin_usuarios: ~15 rows (aproximadamente)
DELETE FROM `admin_usuarios`;
INSERT INTO `admin_usuarios` (`au_id`, `au_nombre`, `au_apellido`, `au_username`, `au_password`, `au_correo`, `au_correo_lower`, `au_pass_key`, `au_estado`, `au_fk_aur_id`) VALUES
	('0d316219-0207-49a2-a3a4-888d114c4d77', 'nombretrhtyh', 'apellidotyjy', 'usernamewerfeqd', '$2a$10$TrFJngCRprKWsJ7pVm.uX.tEo031wFV9vKEMPS6kfGzd338Uh9ebG', 'correowewerwer@text.com', 'correowewerwer@text.com', '3153af5a-534b-46ab-8f7a-b5fd7c3f990c', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('2e3ee09e-6ea7-4911-b8a1-9fe0dc70863c', 'nombrerg', 'apellidogrg', 'usernamergrgrg', '$2a$10$V7XSGvl6CuCkcPwxeNSzl.9Nd9X.0yfJLGfWn.Fuwfkt0ghMtY9hG', 'correorg', 'correorg', '64c2a1c9-18b9-416e-85af-bcee7ae6566a', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('384f39e3-ba3d-4f93-a196-c90e6d82e439', 'nombretyjtyj54yq2', 'apellidotyjtyj45ye', 'usernametyjtyjtyj45yr', '$2a$10$TJmX1.wj7Uyr5NBnh2aCA.sL.IGiVsSfnUqNXOJiWlYXlnpn0XT4a', 'correo@gtetx45ytthd.con', 'correo@gtetx45ytthd.con', 'caf09b23-2fd0-41b4-af7d-02d4c728e4a2', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('49d28d27-9a75-482b-9f8f-cdb353508842', 'nombreerg', 'apellidoergerg', 'usernameergerg', '$2a$10$I/7a3E0.n2Xcj.iw4aOSJe3qKxT24nXqQ6PNxpv1IMDDLYEW4w8TO', 'correoergerg', 'correoergerg', '8b3de7e2-c210-4a33-834b-b78d02517a8d', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('4f8f4ef3-279a-4d01-9eda-ec1ee6aeb268', 'nombretyjj', 'apellidotyjtyj', 'usernametyjtyj', '$2a$10$RZxpk1T9IXniQ3gB5v688u/j8Yae7Jg/MNxaS9hPVoIsbEg6Siahi', 'correotyjtyjtyj', 'correotyjtyjtyj', '438f027f-a6bd-4367-8b04-6fd62d1663fe', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('5af0baf4-df1d-4978-b18c-d43fb82ab415', 'nombre', 'apellido', 'username', '$2a$10$vGJSe1yYyoagxevBq/7nleCJDAVBX0Kvp7E.PIg7UialS3ZhGZ3Ia', 'correo', 'correo', '61719d97-5764-49f7-a229-52222bb1992d', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('6460bd9b-12ed-4a5d-97dc-e4815aad20b1', 'nombretyjtyj', 'apellidotyjtyj', 'usernametyjtyjtyj', '$2a$10$LU5xFTzVttYsYXf4GaCABekIPKjlrnsUmVL3.I6mSZgp4g4Z4U7CO', 'correo@gtetxhd.con', 'correo@gtetxhd.con', '435394f3-ed11-4ce6-9828-0b86aa074e32', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('6c36e4aa-3a51-4175-b86a-a70acfe01960', 'nombretyjtyj54y', 'apellidotyjtyj45y', 'usernametyjtyjtyj45y', '$2a$10$oaRboIHzDO3yKG5ammCXPOasoZ3tlY/hEHFeFELVe2VY3/SDBbNFK', 'correo@gtetx45yhd.con', 'correo@gtetx45yhd.con', '927a65e8-cc2f-41c5-a47e-caa9bc8dddc9', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('a330e7bf-1c4d-4709-a331-6353a44621a4', 'Prueba', 'Test', 'test1', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', 'test1@test.com', 'b75d164e-f140-49f9-ab56-b32e8f7f0a68', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('b581f2b1-f140-4808-b522-ecd245cba13a', 'nombrere', 'apellidor4', 'username4r4r', '$2a$10$ZKKdHq5Zo.BeNgRKNXoDXePK4Ywx7LdPqTVn6Nl02PmxSJSHQ7qwS', 'correo4rr4@text.com', 'correo4rr4@text.com', 'ae50e875-8a8f-4383-b73b-13ace0518e6e', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('c2503c65-b05f-4790-8149-27b11a98495c', 'nombretyh', 'apellidotyhtyh', 'usernametyhtyh', '$2a$10$3TxCI5nhpjhP28a31YUlIOc4gG/gU7UhjwE/DDM/mclADmtTnmvK.', 'correotyh', 'correotyh', 'daff10bc-e516-4e27-b126-4d0cc6b1f3d7', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('d8861a63-4788-4b67-98fa-27be0b9ad870', 'nombrehhh', 'apellidohhh', 'usernamehhh', '$2a$10$QzkQQBohP2QHJ/J0yJiL3.reyjouLCu/dhyLqqe2zLs9TmlYC5Ae2', 'correohhhh', 'correohhhh', 'fdcfd460-7004-4c82-b581-3fa226ff878c', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('e43746bb-3466-45fd-9a4f-bf4e9935ee45', 'Prueba', 'apellidoewfwf', 'usernamewef', '$2a$10$i6Ms5wnRjJoXjZLA34Wnd.HXgrlVvZSI.iVuy..D9VnIe/sJMOWSy', 'correowefwef', 'correowefwef', '92fb1f21-0cec-4438-952f-683595885d25', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('e78146a6-9ace-4814-852c-d745f3d681cf', 'nombreergf', 'apellidoweertf', 'usernameey554f', '$2a$10$B6o2ZUjbFg24GIeHW6e0ne71GbpSxmrk8wetb1OKXMfIwpVqbZwfW', 'correo45y45y45yf@texts.com', 'correo45y45y45yf@texts.com', 'fbca3792-3f0a-4c96-8813-2dfdf48d866c', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817'),
	('f18e420d-ab5a-484c-849a-cd042ad6b3c0', 'nombreerg', 'apellidoweert', 'usernameey554', '$2a$10$0To3/TAZaV4bJXHBTQXgTeXBNdroiARRd/qQIWTV6D/S9I1tA65N.', 'correo45y45y45y@texts.com', 'correo45y45y45y@texts.com', '9a285dab-d949-4d11-9938-e96bafdbebdc', 'A', '5d258050-5ee3-4954-8ec4-1b010355b817');

-- Volcando estructura para tabla admin.admin_usuarios_roles
DROP TABLE IF EXISTS `admin_usuarios_roles`;
CREATE TABLE IF NOT EXISTS `admin_usuarios_roles` (
  `aur_id` varchar(50) NOT NULL,
  `aur_nombre` varchar(50) NOT NULL,
  UNIQUE KEY `aur_id` (`aur_id`) USING BTREE,
  UNIQUE KEY `aur_nombre` (`aur_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla admin.admin_usuarios_roles: ~1 rows (aproximadamente)
DELETE FROM `admin_usuarios_roles`;
INSERT INTO `admin_usuarios_roles` (`aur_id`, `aur_nombre`) VALUES
	('5d258050-5ee3-4954-8ec4-1b010355b817', 'ADMIN');

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

-- Volcando datos para la tabla admin.admin_usuarios_tokens: ~5 rows (aproximadamente)
DELETE FROM `admin_usuarios_tokens`;
INSERT INTO `admin_usuarios_tokens` (`aut_id`, `aut_fecha`, `aut_tipo`, `aut_estado`, `aut_token1`, `aut_token2`, `aut_fk_usuario_id`) VALUES
	('92576ca3-4f0a-4a55-9364-24511ac73895', '2023-07-28 12:15:26', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiI5MjU3NmNhMy00ZjBhLTRhNTUtOTM2NC0yNDUxMWFjNzM4OTUiLCJwYXNzX2tleSI6ImI3NWQxNjRlLWYxNDAtNDlmOS1hYjU2LWIzMmU4ZjdmMGE2OCIsImlhdCI6MTY5MDU2NDUyNiwiZXhwIjoxNjkwNTY0NzA2fQ.ilXWGQgJKO3IwCn9B-qcH0wh0GsYqEcJyQwmgSLm4Y0', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b57d3b3d-2928-4731-892f-80c490717e76', '2023-07-28 11:52:15', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNTdkM2IzZC0yOTI4LTQ3MzEtODkyZi04MGM0OTA3MTdlNzYiLCJwYXNzX2tleSI6IjAzNDU5NGE3LTUwYjItNDFmYS1hMmEyLWJkYWEzNjk1MDRiNyIsImlhdCI6MTY5MDU2MzEzNSwiZXhwIjoxNjkwNTYzMzE1fQ.W02PnhqJqneMtbmo63mcT5Nk8_shOXgWv4mrqSqcJ4', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('b65a4bd2-2fae-4d5e-8287-c2057cfe50da', '2023-07-28 12:05:52', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJiNjVhNGJkMi0yZmFlLTRkNWUtODI4Ny1jMjA1N2NmZTUwZGEiLCJwYXNzX2tleSI6ImI1NGUxMjEzLWFjZDUtNDEwZC05Nzg3LTc0OWMyZTcyMDQzMiIsImlhdCI6MTY5MDU2Mzk1MiwiZXhwIjoxNjkwNTY0MTMyfQ.9goOkEiUF7h2luMH6AcgQwx30KlVNMVmv4JSTQplTnY', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('c3260166-7a37-4351-9e2a-a1310f7ce9da', '2023-07-28 11:49:20', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjMzI2MDE2Ni03YTM3LTQzNTEtOWUyYS1hMTMxMGY3Y2U5ZGEiLCJwYXNzX2tleSI6ImM0NjY2MDI2LTNjYWUtNDA1Ni05MWQ5LThkMjQ2MDNkNzQ3MiIsImlhdCI6MTY5MDU2Mjk2MCwiZXhwIjoxNjkwNTYzMTQwfQ.wUYCq-XC_DTrWT4uiVJjeKPsI4A6Gs6BK1FOxNwDXM', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJjMzI2MDE2Ni03YTM3LTQzNTEtOWUyYS1hMTMxMGY3Y2U5ZGEiLCJwYXNzX2tleSI6ImM0NjY2MDI2LTNjYWUtNDA1Ni05MWQ5LThkMjQ2MDNkNzQ3MiIsImlhdCI6MTY5MDU2MjgyMywiZXhwIjoxNjkwNTYzMDAzfQ.QvUNaD2auBhTtkui8ZNyETIFNl7av2q-kv0b05VcJPU', 'a330e7bf-1c4d-4709-a331-6353a44621a4'),
	('dfcfdabc-1ace-4a7f-955f-1a4dff223622', '2023-07-28 11:50:31', 'JWT', 'A', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoiYTMzMGU3YmYtMWM0ZC00NzA5LWEzMzEtNjM1M2E0NDYyMWE0IiwidG9rZW5faWQiOiJkZmNmZGFiYy0xYWNlLTRhN2YtOTU1Zi0xYTRkZmYyMjM2MjIiLCJwYXNzX2tleSI6ImY5YmI3OTY4LThkNWYtNDYyMS1iZDBlLTE1ODZiZGM2YTliMCIsImlhdCI6MTY5MDU2MzAzMSwiZXhwIjoxNjkwNTYzMjExfQ.Rvk5INmpNtspWLyR2O7M-tTdygpVGq0UGSdOmhieW4', NULL, 'a330e7bf-1c4d-4709-a331-6353a44621a4');

-- Volcando estructura para procedimiento admin.sp_admin_accesos
DROP PROCEDURE IF EXISTS `sp_admin_accesos`;
DELIMITER //
CREATE PROCEDURE `sp_admin_accesos`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_variable_1` VARCHAR(50),
	IN `i_variable_2` VARCHAR(50),
	IN `i_variable_3` VARCHAR(50)
)
BEGIN


	IF(i_tipo = 'Q') THEN
		
		IF(i_operacion = 'QVARC') THEN -- QUERY VALIDACION RUTA COMPONENTE ROL
			
			SELECT 1
			FROM admin.admin_permisos_roles_rutas, admin.admin_rutas
			WHERE 	ar_componente 			= i_variable_1 -- COMPONENTE
			AND		ar_id	 					= aprr_fk_ruta_id
			AND		aprr_fk_rol_id 		= i_variable_2;	-- ROL
			
		END IF;
		
		IF(i_operacion = 'QVCMR') THEN -- QUERY VALIDACION CONTROLADOR METODO ROL
			
			SELECT 1
			FROM ADMIN.admin_rutas_acciones ara, 
			ADMIN.admin_permisos_roles_rutas aprr, 
			ADMIN.admin_permisos_roles_rutas_acciones aprra
			WHERE ara.ara_controlador = i_variable_2
			AND ara.ara_metodo = i_variable_3
			AND ara.ara_id = aprra.aprra_fk_ara_id
			AND aprra.aprra_fk_aprr_id = aprr.aprr_id
			AND aprr.aprr_fk_rol_id = i_variable_1;
		
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
			AND 		aprr_estado = 'A';
			
		END IF;
				
	END IF;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento admin.sp_admin_permisos_roles_acciones
DROP PROCEDURE IF EXISTS `sp_admin_permisos_roles_acciones`;
DELIMITER //
CREATE PROCEDURE `sp_admin_permisos_roles_acciones`(
	IN `i_tipo` CHAR(5),
	IN `i_operacion` CHAR(5),
	IN `i_apra_id` VARCHAR(50),
	IN `i_apra_fk_rol_id` VARCHAR(50),
	IN `i_apra_fk_ara_id` VARCHAR(50)
)
BEGIN


	IF(i_tipo = 'Q') THEN
		
		IF(i_operacion = 'QPID') THEN -- INSERTAR NUEVO REGISTRO
			
			SELECT apra_id, apra_fk_rol_id, apra_fk_ara_id 
			FROM admin.admin_permisos_roles_rutas_acciones
			WHERE apra_id = i_apra_id;
			
		END IF;
		
	END IF;
	

	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin.admin_permisos_roles_rutas_acciones (apra_id, apra_fk_rol_id, apra_fk_ara_id)
			VALUES (i_apra_id, i_apra_fk_rol_id, i_aprra_fk_ara_id);
			
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
		
			SELECT aprr_id, aur.aur_id, aur.aur_nombre, arc.arc_titulo, ar.ar_id, ar.ar_titulo
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
		
			SELECT aprr_id, aur.aur_id, aur.aur_nombre, arc.arc_titulo, ar.ar_titulo
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
