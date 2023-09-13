BEGIN

	IF (i_tipo = 'Q') THEN
	
		IF (i_operacion = 'QTR') THEN
			
			SELECT 1;
			
		END IF;

	END IF;

END



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


call admin_bitacora.sp_admin_bitacora_cons_grafica(i_tipo,i_operacion,i_rutina,i_fecha,i_cant_registros);