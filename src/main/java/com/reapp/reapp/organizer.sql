	IF(i_tipo = 'I') THEN
		
		IF(i_operacion = 'INR') THEN -- INSERTAR NUEVO REGISTRO
			
			INSERT INTO admin.admin_permisos_roles_rutas_acciones (aprra_id, aprra_estado, aprra_fk_aprr_id, aprra_fk_ara_id)
			VALUES (i_aprr_id, i_aprra_estado, i_aprra_fk_aprr_id, i_aprra_fk_ara_id);
			
		END IF;
		
	END IF;