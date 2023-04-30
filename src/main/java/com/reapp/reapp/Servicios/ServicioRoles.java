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
import com.reapp.reapp.Modelos.ModeloRol;

@Service
public class ServicioRoles {

    public Boolean crear(ModeloRol rol, String id) throws CustomException {

        String query = "{CALL auth.sp_usuarios_rol(?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, id);
            cst.setString(4, rol.getNombre());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido crear el rol");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRoles");
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("crear");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloRol obtenerPorId(String ruta_id) throws CustomException {

        String query = "{CALL auth.sp_usuarios_rol(?,?,?,?)}";
        ModeloRol ruta = new ModeloRol();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRID");
            cst.setString(3, ruta_id);
            cst.setString(4, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ruta.setId(rs.getString("rol_id"));
                ruta.setNombre(rs.getString("rol_nombre"));
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
            errorGeneral.setClase("ServicioRoles");
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return ruta;
    }

    public List<ModeloRol> lista() throws CustomException {

        String query = "{CALL auth.sp_usuarios_rol(?,?,?,?)}";
        List<ModeloRol> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QTR");
            cst.setString(3, null);
            cst.setString(4, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ModeloRol pro = new ModeloRol();
                pro.setId(rs.getString("rol_id"));
                pro.setNombre(rs.getString("rol_nombre"));
                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("lista");
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("lista");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public Boolean actualizar(ModeloRol rol) throws CustomException {

        String query = "{CALL auth.sp_usuarios_rol(?,?,?,?)}";

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "U");
            cst.setString(2, "URCID");
            cst.setString(3, rol.getId());
            cst.setString(4, rol.getNombre());
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("actualizar");
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("actualizar");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean remover(ModeloRol rol) throws CustomException {

        String query = "{CALL auth.sp_usuarios_rol(?,?,?,?)}";

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "D");
            cst.setString(2, "DRCID");
            cst.setString(3, rol.getId());
            cst.setString(4, null);
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido remover, asegurese que ninguna ruta general dependa de la categoria!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("remover");
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
            errorGeneral.setClase("ServicioRoles");
            errorGeneral.setMetodo("remover");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

}
