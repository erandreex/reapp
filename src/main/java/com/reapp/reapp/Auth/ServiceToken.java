package com.reapp.reapp.Auth;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServiceToken {

    @Value("${JWT.config.interval}")
    private String intervalConfig;

    @Value("${JWT.config.number}")
    private int numberConfig;

    public ModeloToken findByToken(ModeloUser user, String token_id) throws CustomException {

        String query = "{CALL auth.sp_tokens(?,?,?,?,?,?,?,?,?,?)}";
        ModeloToken tokenDB = new ModeloToken();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QUVT");
            cst.setString(3, token_id);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, user.getId());
            cst.setString(8, null);
            cst.setString(9, intervalConfig);
            cst.setInt(10, numberConfig);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                tokenDB.setId(rs.getString("to_id"));
                tokenDB.setUser_id(rs.getString("to_user_id"));
                tokenDB.setDate(rs.getString("to_date"));
                tokenDB.setTokenType(rs.getString("to_type"));
                tokenDB.setRevoked(rs.getString("to_revoked"));
                tokenDB.setToken(rs.getString("to_token"));
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Mensaje externo");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("TokenService");
            errorGeneral.setMetodo("findByToken");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            System.out.println(e);

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Error Conexion SQL");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("TokenService");
            errorGeneral.setMetodo("findByToken");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return tokenDB;
    }

    public Boolean registerToken(ModeloUser user, String token, String token_id) {

        String query = "{CALL auth.sp_tokens(?,?,?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INT");
            cst.setString(3, token_id);
            cst.setString(4, token);
            cst.setString(5, "BEARER");
            cst.setString(6, "F");
            cst.setString(7, user.getId());
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);

            respuesta = cst.execute();

        } catch (Exception e) {
            respuesta = false;
            System.out.println("Error 2: " + e.getMessage());
        }
        return respuesta;
    }

}
