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
import com.reapp.reapp.Enum.EnumParametros;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServicioParametros {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioParametros";
    private static final String sp = "{CALL admin.sp_admin_parametros(?,?)}";

    private static final String token_intervalo = "token_intervalo";

    public String buscarParametro(EnumParametros parametro) throws CustomException {

        String valor = "";
        String ap_nombre = "";

        switch (parametro) {
            case TOKEN_EXPIRACION_INTERVALO:
                ap_nombre = "QPTUI";
                break;
            case TOKEN_EXPIRACION_VALOR:
                ap_nombre = "QPTUV";
                break;
            default:
                ap_nombre = "Q";
                break;
        }

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {
            cst.setString(1, "Q");
            cst.setString(2, ap_nombre);
            ResultSet rs = cst.executeQuery();
            while (rs.next()) {
                valor = rs.getString("ap_valor");
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
            errorGeneral.setMetodo(token_intervalo);
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
            errorGeneral.setMetodo(token_intervalo);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

        return valor;
    }

}
