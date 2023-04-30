package com.reapp.reapp.Permisos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Auth.ModeloUser;
import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServicioPermiso {

    public Boolean validarRuta(String componente, String rol_id) throws CustomException {

        String query = "{CALL auth.sp_permisos_consultas(?,?,?,?)}";
        Boolean respuesta = false;
        String validacion = "0";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QVR");
            cst.setString(3, componente);
            cst.setString(4, rol_id);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                validacion = rs.getString(1);
            }

            if (validacion.equals("0")) {
                throw new Exception("Error");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido obtener el rol!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioPermisoRolesRutas");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            System.out.println(e.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioPermisoRolesRutas");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

        return respuesta;
    }
}
