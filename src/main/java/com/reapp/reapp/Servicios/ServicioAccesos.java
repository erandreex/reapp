package com.reapp.reapp.Servicios;

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

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;

@Service
public class ServicioAccesos {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioAccesos";
    private static final String sp = "{CALL admin.sp_admin_accesos(?,?,?,?,?)}";

    private static final String m_ruta = "ruta";

    public Boolean ruta(String componente, String rol_id) throws CustomException {

        Boolean respuesta = false;
        String respuestaDb = "0";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QVARC");
            cst.setString(3, componente);
            cst.setString(4, rol_id);
            cst.setString(5, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                respuestaDb = rs.getString(1);
            }

            if (!respuestaDb.equalsIgnoreCase("0")) {
                respuesta = true;
            }

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

    public void controladorEndpoint(String controlador, String endpoint) throws CustomException {

        String respuesta = "0";
        ModeloUsuario user = new ModeloUsuario();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            user = (ModeloUsuario) authentication.getPrincipal();

            cst.setString(1, "Q");
            cst.setString(2, "QVCM2");
            cst.setString(3, user.getRol_id());
            cst.setString(4, controlador);
            cst.setString(5, endpoint);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                respuesta = rs.getString(1);
            }

            if (respuesta.equals("0")) {
                throw new Exception("Acceso no valido!");
            }

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

    }

}
