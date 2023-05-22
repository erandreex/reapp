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
import com.reapp.reapp.Modelos.ModeloUsuario;

@Service
public class ServicioUsuarios {

    private final String tipo = "Servicio";
    private final String clase = "ServicioUsuarios";
    private final String sp = "{CALL admin.sp_admin_usuarios(?,?,?,?,?,?,?,?,?,?,?,?)}";

    private final String m_ingreso = "ingreso";
    private final String m_registro = "registro";

    public void ingreso(ModeloUsuario user, String pass_key) throws CustomException {

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "U");
            cst.setString(2, "UPK");
            cst.setString(3, user.getId());
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, pass_key);
            cst.setString(11, null);
            cst.setString(12, null);
            cst.execute();

        } catch (SQLException ex) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getSQLState() + " " + ex.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido actualizar el pass key, favor contacte a un administrador con el codigo de referencia!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_ingreso);
            errorGeneral.setError(ex);
            throw new CustomException("", errorGeneral, ex);
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
            errorGeneral.setMetodo(m_ingreso);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        }

    }

    public void registro(ModeloUsuario user) throws CustomException {

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, user.getId());
            cst.setString(4, user.getNombre());
            cst.setString(5, user.getApellido());
            cst.setString(6, user.getUsername());
            cst.setString(7, user.getPassword());
            cst.setString(8, user.getCorreo());
            cst.setString(9, user.getCorreo_lower());
            cst.setString(10, user.getPass_key());
            cst.setString(11, user.getEstado());
            cst.setString(12, user.getRol_id());
            cst.execute();

        } catch (SQLException ex) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getMessage());
            errorGeneral.setMessageExt("Datos invalidos");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_registro);
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);

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
            errorGeneral.setMetodo(m_registro);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        }

    }

}
