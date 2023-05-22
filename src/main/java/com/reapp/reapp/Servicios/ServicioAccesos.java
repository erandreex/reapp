package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServicioAccesos {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioAccesos";
    private static final String sp = "{CALL admin.sp_admin_accesos(?,?,?,?)}";

    private static final String m_ruta = "ruta";

    public Boolean ruta(String componente, String rol_id) throws CustomException {

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QVARC");
            cst.setString(3, componente);
            cst.setString(4, rol_id);
            respuesta = cst.execute();

            if (!respuesta)
                throw new Exception("Acceso no valido!");

        } catch (SQLException e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No tiene permiso por acceder a esta ruta!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_ruta);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            if (e.getMessage().contains("Acceso no valido!")) {

                errorGeneral.setId(UUID.randomUUID().toString());
                errorGeneral.setDate(new Date());
                errorGeneral.setMessageInt(e.getMessage());
                errorGeneral.setMessageExt("Acceso no valido, no cuenta con los permisos suficientes!");
                errorGeneral.setStatus(HttpStatus.FORBIDDEN);
                errorGeneral.setCode(HttpStatus.FORBIDDEN.value());
                errorGeneral.setTipo(tipo);
                errorGeneral.setClase(clase);
                errorGeneral.setMetodo(m_ruta);
                errorGeneral.setError(e);

            } else {
                errorGeneral.setId(UUID.randomUUID().toString());
                errorGeneral.setDate(new Date());
                errorGeneral.setMessageInt(e.getMessage());
                errorGeneral
                        .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
                errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
                errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
                errorGeneral.setTipo(tipo);
                errorGeneral.setClase(clase);
                errorGeneral.setMetodo(m_ruta);
                errorGeneral.setError(e);
            }

            throw new CustomException("", errorGeneral, e);
        }

        return respuesta;
    }

}
