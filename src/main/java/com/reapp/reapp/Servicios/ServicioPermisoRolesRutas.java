package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloPermisoRolRuta;

@Service
public class ServicioPermisoRolesRutas {

    public Boolean crear(ModeloPermisoRolRuta permiso, String id) throws CustomException {

        String query = "{CALL auth.sp_permisos_roles_rutas(?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INP");
            cst.setString(3, id);
            cst.setString(4, permiso.getRol_id());
            cst.setString(5, permiso.getRuta_id());
            cst.setString(6, permiso.getEstado());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioPermisoRolesRutas");
            errorGeneral.setMetodo("crear");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioPermisoRolesRutas");
            errorGeneral.setMetodo("crear");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloPermisoRolRuta obtenerPorId(String ruta_id) throws CustomException {

        String query = "{CALL auth.sp_permisos_roles_rutas(?,?,?,?,?,?)}";
        ModeloPermisoRolRuta permiso = new ModeloPermisoRolRuta();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QPRRI");
            cst.setString(3, ruta_id);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                permiso.setId(rs.getString("prr_id"));
                permiso.setEstado(rs.getString("prr_estado"));
                permiso.setRol_nombre(rs.getString("rol_nombre"));
                permiso.setTitulo_ruta(rs.getString("rug_titulo"));
                permiso.setTitulo_categoria(rs.getString("ru_titulo"));
            }

        } catch (SQLException e) {
            System.out.println(e);
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
            System.out.println(e);

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
        return permiso;
    }

}
