package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloPermisoRolRutaAccion;
import com.reapp.reapp.Modelos.ModeloRutaAccion;

@Service
public class ServicioPermisoRolesRutasAcciones {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioPermisoRolesRutasAcciones";
    private static final String sp = "{CALL admin.sp_admin_permisos_roles_rutas_acciones(?,?,?,?,?)}";

    private static final String obtenerPorId = "obtenerPorId";
    private static final String crear = "crear";

    public Boolean crear(ModeloPermisoRolRutaAccion permiso, String id) throws CustomException {

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, id);
            cst.setString(4, permiso.getRol_ruta_id());
            cst.setString(5, permiso.getRuta_accion_id());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {
            System.out.println(e);
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido crear el permiso de la accion al rol especifico");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(crear);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(crear);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloPermisoRolRutaAccion obtenerPorId(String id) throws CustomException {

        ModeloPermisoRolRutaAccion permiso = new ModeloPermisoRolRutaAccion();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QPID");
            cst.setString(3, id);
            cst.setString(4, null);
            cst.setString(5, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                permiso.setId(rs.getString("aprra_id"));
                permiso.setRol_ruta_id(rs.getString("aprra_fk_aprr_id"));
                permiso.setRuta_accion_id(rs.getString("aprra_fk_ara_id"));
            }

        } catch (SQLException e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido obtener el permiso Rol-Ruta por el id!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(obtenerPorId);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral
                    .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(obtenerPorId);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return permiso;
    }

}
