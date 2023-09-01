BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QTR') THEN
			
			SELECT 1;
			
		END IF;

	END IF;

END


UPDATE FROM admin.admin_permisos_roles_rutas
WHERE aprr_fk_rol_id = ''

UPDATE admin.admin_rutas
SET ar_fk_categoria  	= '8ecd72dd-f729-43c0-9642-8d30864aef44';
WHERE ar_fk_categoria 	= '';