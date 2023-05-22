ALTER TABLE `admin_usuarios` ADD CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`au_fk_aur_id`) REFERENCES `admin_usuarios_roles` (`aur_id`) ON UPDATE NO ACTION ON DELETE NO ACTION;






-- SEED DE ENTRADA

-- INSERTAMOS LOS ROLES BASES
INSERT INTO `admin`.`admin_usuarios_roles` (`aur_id`, `aur_nombre`) VALUES ('5d258050-5ee3-4954-8ec4-1b010355b817', 'ADMIN');

-- INSETAMOS EL USUARIO BASE (PASSWORD) -> abcd1234

INSERT INTO `admin`.`admin_usuarios` (`au_id`, `au_nombre`, `au_apellido`, `au_username`, `au_password`, `au_correo`, `au_correo_lower`, `au_pass_key`, `au_fk_aur_id`) VALUES ('a330e7bf-1c4d-4709-a331-6353a44621a4', 'Prueba', 'Test', 'test1', '$2a$10$W3CX0EpFfeCaO0OskoWoOuSCGkf.6UEEkAKKslXwtGKKh3U9P11y6', 'test1@test.com', 'test1@test.com', '97783db1-97fd-4fac-9da2-460d0a45e3e6', '5d258050-5ee3-4954-8ec4-1b010355b817');


