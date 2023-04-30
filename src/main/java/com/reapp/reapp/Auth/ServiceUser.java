package com.reapp.reapp.Auth;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServiceUser {

    public ModeloUser obtenerPorEmail(String user_email) throws CustomException {

        String query = "{CALL auth.sp_usuarios_consultas(?,?,?)}";
        ModeloUser usuario = new ModeloUser();
        Boolean exist = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "VUE");
            cst.setString(3, user_email);
            exist = cst.execute();

            if (!exist) {
                throw new SQLException("Credenciales invalidas!", "S1000", 1000);
            }

            cst.setString(1, "Q");
            cst.setString(2, "LOGIN");
            cst.setString(3, user_email);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                usuario.setId(rs.getString("id"));
                usuario.setUsername(rs.getString("correo"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setPassword(rs.getString("password"));
                usuario.setPass_key(rs.getString("pass_key"));
                usuario.setEstado(rs.getString("estado"));
                usuario.setRol_id(rs.getString("FK_rol"));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error en las variables");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("getUserByEmail");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {
            System.out.println(e.getMessage());
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, de persitir contacte a un administrador!");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("getUserByEmail");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return usuario;
    }

    public Boolean registro(ModeloUser user) throws CustomException {

        String query = "{CALL auth.sp_usuarios(?,?,?,?,?,?,?,?,?)}";
        Boolean resp = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INU");
            cst.setString(3, user.getId());
            cst.setString(4, user.getUsername());
            cst.setString(5, user.getNombre());
            cst.setString(6, user.getPassword());
            cst.setString(7, user.getCorreo_lower());
            cst.setString(8, user.getPass_key());
            cst.setString(9, user.getRol_id());
            cst.execute();
            resp = true;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getMessage());
            errorGeneral.setMessageExt("Datos invalidos");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("registro");
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);

        } catch (Exception e) {
            System.out.println(e.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error interno. De persitir contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("registro");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        }

        return resp;
    }

    public boolean compararContrasena(String plainPass, String passwordEncrypt) throws CustomException {

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        boolean result = false;

        try {
            result = encoder.matches(plainPass, passwordEncrypt);
            if (!result) {
                throw new Exception("Credenciales invalidas!");
            }

        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Credenciales invalidas!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("comparePassword");

            result = false;
            throw new CustomException("", errorGeneral, e);

        }

        return true;
    }

    public ModeloUser obtenerPorId(String id) throws CustomException {

        ModeloUser usuario = new ModeloUser();
        String query = "{CALL auth.sp_usuarios_consultas(?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "CUID");
            cst.setString(3, id);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                usuario.setId(rs.getString("id"));
                usuario.setUsername(rs.getString("correo"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setPass_key(rs.getString("pass_key"));
                usuario.setEstado(rs.getString("estado"));
                usuario.setRol_id(rs.getString("rol_id"));
                usuario.setRol_nombre(rs.getString("rol_nombre"));

            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Consulta SQL");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);

        } catch (Exception e) {
            System.out.println(e.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error interno. De persitir contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        }

        return usuario;
    }

    public ModeloUser ingreso(ModeloUser user, String pass_key) throws CustomException {

        ModeloUser usuario = new ModeloUser();
        String query = "{CALL auth.sp_usuarios(?,?,?,?,?,?,?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "U");
            cst.setString(2, "UNL");
            cst.setString(3, user.getId());
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, pass_key);
            cst.setString(9, null);

            cst.execute();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Consulta SQL");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("getUserById");
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);

        } catch (Exception e) {
            System.out.println(e.getMessage());

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error interno. De persitir contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("getUserById");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        }

        return usuario;
    }

}