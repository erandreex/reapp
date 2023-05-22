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
public class ServicioToken {

    private static final String sp = "{CALL admin.sp_admin_usuarios_tokens(?,?,?,?,?,?)}";
    private static final String tipo = "servicio";
    private static final String clase = "ServicioToken";

    private static final String obtenerPorId = "obtenerPorId";
    private static final String crear = "crear";

    public ModeloToken obtenerPorId(ModeloUsuario user, String token_id) throws CustomException {

        ModeloToken tokenDB = new ModeloToken();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {
            cst.setString(1, "Q");
            cst.setString(2, "QTID");
            cst.setString(3, token_id);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            ResultSet rs = cst.executeQuery();
            while (rs.next()) {
                tokenDB.setId(rs.getString("aut_id"));
                tokenDB.setFecha(rs.getString("aut_fecha"));
                tokenDB.setTipo(rs.getString("aut_tipo"));
                tokenDB.setEstado(rs.getString("aut_estado"));
                tokenDB.setToken(rs.getString("aut_token"));
                tokenDB.setUsuario_id(rs.getString("aut_fk_usuario_id"));
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error al obtener el token");
            errorGeneral.setMessageExt("Error al obtener el token, favor ingrese nuevamente!");
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
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Conexion SQL");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(obtenerPorId);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return tokenDB;
    }

    public void crear(String user_id, String token, String token_id) throws CustomException {

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "CU");
            cst.setString(2, "CUT");
            cst.setString(3, token_id);
            cst.setString(4, "JWT");
            cst.setString(5, token);
            cst.setString(6, user_id);
            cst.execute();

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error al registrar el token");
            errorGeneral.setMessageExt("Error al registrar el token, favor ingrese nuevamente!");
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
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Conexion SQL");
            errorGeneral
                    .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(crear);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

    }

    public void actualizar(ModeloClaims claims, String token) throws CustomException {

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "CU");
            cst.setString(2, "CUT");
            cst.setString(3, claims.getToken_id());
            cst.setString(4, "JWT");
            cst.setString(5, token);
            cst.setString(6, claims.getUsuario_id());
            cst.execute();

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error al registrar el token");
            errorGeneral.setMessageExt("Error al actualizar el token, favor ingrese nuevamente!");
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
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Conexion SQL");
            errorGeneral
                    .setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(crear);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
    }

}
