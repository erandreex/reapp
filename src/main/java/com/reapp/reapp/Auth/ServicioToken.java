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

    private static final String sp = "{CALL admin.sp_admin_usuarios_tokens(?,?,?,?,?,?,?,?)}";
    private static final String tipo = "servicio";
    private static final String clase = "ServicioToken";

    private static final String obtenerPorId = "obtenerPorId";

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
            cst.setString(7, null);
            cst.setString(8, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                tokenDB.setId(rs.getString("aut_id"));
                tokenDB.setFecha(rs.getString("aut_fecha"));
                tokenDB.setAut_tipo(rs.getString("aut_tipo"));
                tokenDB.setAut_estado(rs.getString("aut_estado"));
                tokenDB.setAut_token(rs.getString("aut_token"));
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

    public void crear(String user_id, String token, String token_id) {

        String query = "{CALL auth.sp_tokens(?,?,?,?,?,?,?,?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "CU");
            cst.setString(2, "CUT");
            cst.setString(3, token_id);
            cst.setString(4, token);
            cst.setString(5, "BEARER");
            cst.setString(6, "F");
            cst.setString(7, user_id);
            cst.setString(8, null);

            cst.execute();

        } catch (Exception e) {
            System.out.println("Error 2: " + e.getMessage());
        }
    }

    public void actualizar(Boolean control, ModeloClaims claims, String token) {

        if (control) {
            try (Connection mariaDB = ConexionMariaDB.getConexion();
                    CallableStatement cst = mariaDB.prepareCall(sp);) {

                cst.setString(1, "CU");
                cst.setString(2, "CUT");
                cst.setString(3, claims.getToken_id());
                cst.setString(4, null);
                cst.setString(5, null);
                cst.setString(6, null);
                cst.setString(7, token);
                cst.setString(8, claims.getUsuario_id());

                cst.execute();

            } catch (Exception e) {
                System.out.println("Error 2: " + e.getMessage());
            }
        }
    }

    private int obtenerExpiracion() {
        return 10;
    }

}
