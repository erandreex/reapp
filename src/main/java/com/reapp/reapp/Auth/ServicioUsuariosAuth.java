package com.reapp.reapp.Auth;

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
import com.reapp.reapp.Modelos.ModeloUsuario;

@Service
public class ServicioUsuariosAuth {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioUsuariosAuth";
    private static final String sp = "{CALL admin.sp_admin_usuarios_consultas(?,?,?)}";

    private static final String m_obtenerPorUsernameOCorreo = "obtenerPorUsernameOCorreo";
    private static final String m_obtenerPorEmail = "obtenerPorEmail";
    private static final String m_obtenerPorUsername = "obtenerPorUsername";

    public ModeloUsuario obtenerPorEmail(String user_email) throws CustomException {

        ModeloUsuario usuario = new ModeloUsuario();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {
            usuario.setId("1");
            cst.setString(1, "Q");
            cst.setString(2, "QCL");
            cst.setString(3, user_email.toLowerCase());

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                usuario.setId(rs.getString("au_id"));
                usuario.setNombre("au_nombre");
                usuario.setApellido("au_apellido");
                usuario.setUsername(rs.getString("au_username"));
                usuario.setPassword(rs.getString("au_password"));
                usuario.setCorreo(rs.getString("au_correo"));
                usuario.setCorreo_lower(rs.getString("au_correo_lower"));
                usuario.setPass_key(rs.getString("au_pass_key"));
                usuario.setEstado(rs.getString("au_estado"));
                usuario.setRol_id(rs.getString("au_fk_aur_id"));
            }

            if (usuario.getId().equals("1")) {
                throw new Exception("Credenciales invalidas!");
            }

        } catch (SQLException e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido iniciar sesion, intentelo mas tarde!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorEmail);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorEmail);
            errorGeneral.setError(e);
            if (e.getMessage().contains("Credenciales invalidas!")) {
                errorGeneral.setMessageExt("Credenciales invalidas!");
                errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
                errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            } else {
                errorGeneral
                        .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
                errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
                errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            }
            throw new CustomException("", errorGeneral, e);
        }
        return usuario;
    }

    public ModeloUsuario obtenerPorUsername(String username) throws CustomException {

        ModeloUsuario usuario = new ModeloUsuario();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            usuario.setId("1");
            cst.setString(1, "Q");
            cst.setString(2, "QU");
            cst.setString(3, username);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                usuario.setId(rs.getString("au_id"));
                usuario.setNombre("au_nombre");
                usuario.setApellido("au_apellido");
                usuario.setUsername(rs.getString("au_username"));
                usuario.setPassword(rs.getString("au_password"));
                usuario.setCorreo(rs.getString("au_correo"));
                usuario.setCorreo_lower(rs.getString("au_correo_lower"));
                usuario.setPass_key(rs.getString("au_pass_key"));
                usuario.setEstado(rs.getString("au_estado"));
                usuario.setRol_id(rs.getString("au_fk_aur_id"));
            }

            if (usuario.getId().equals("1")) {
                throw new Exception("Credenciales invalidas!");
            }

        } catch (SQLException e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido iniciar sesion, intentelo mas tarde!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorUsername);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorUsername);
            errorGeneral.setError(e);
            if (e.getMessage().contains("Credenciales invalidas!")) {
                errorGeneral.setMessageExt("Credenciales invalidas!");
                errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
                errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            } else {
                errorGeneral
                        .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
                errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
                errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            }
            throw new CustomException("", errorGeneral, e);
        }
        return usuario;
    }

    public ModeloUsuario obtenerPorUsernameOCorreo(String variable) throws CustomException {

        ModeloUsuario usuario = new ModeloUsuario();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            usuario.setId("1");

            cst.setString(1, "Q");
            cst.setString(2, "QUUC");
            cst.setString(3, variable);
            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                usuario.setId(rs.getString("au_id"));
                usuario.setNombre("au_nombre");
                usuario.setApellido("au_apellido");
                usuario.setUsername(rs.getString("au_username"));
                usuario.setPassword(rs.getString("au_password"));
                usuario.setCorreo(rs.getString("au_correo"));
                usuario.setCorreo_lower(rs.getString("au_correo_lower"));
                usuario.setPass_key(rs.getString("au_pass_key"));
                usuario.setEstado(rs.getString("au_estado"));
                usuario.setRol_id(rs.getString("au_fk_aur_id"));
            }

            if (usuario.getId().equals("1")) {
                throw new Exception("Credenciales invalidas!");
            }

        } catch (SQLException e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido iniciar sesion, intentelo mas tarde!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorUsernameOCorreo);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_obtenerPorUsernameOCorreo);
            errorGeneral.setError(e);
            if (e.getMessage().contains("Credenciales invalidas!")) {
                errorGeneral.setMessageExt("Credenciales invalidas!");
                errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
                errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            } else {
                errorGeneral
                        .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
                errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
                errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            }
            throw new CustomException("", errorGeneral, e);
        }

        return usuario;
    }

    public ModeloUsuario obtenerPorId(String id) throws CustomException {

        ModeloUsuario usuario = new ModeloUsuario();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "CUID");
            cst.setString(3, id);
            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                usuario.setId(rs.getString("au_id"));
                usuario.setNombre("au_nombre");
                usuario.setApellido("au_apellido");
                usuario.setUsername(rs.getString("au_username"));
                usuario.setPassword(rs.getString("au_password"));
                usuario.setCorreo(rs.getString("au_correo"));
                usuario.setCorreo_lower(rs.getString("au_correo_lower"));
                usuario.setPass_key(rs.getString("au_pass_key"));
                usuario.setEstado(rs.getString("au_estado"));
                usuario.setRol_id(rs.getString("au_fk_aur_id"));
            }
        } catch (SQLException ex) {
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

}