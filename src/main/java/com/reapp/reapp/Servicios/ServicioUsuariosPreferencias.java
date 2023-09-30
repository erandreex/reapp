package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Modelos.ModeloUsuarioPreferenciaTema;

@Service
public class ServicioUsuariosPreferencias {

    private final String tipo = "Servicio";
    private final String clase = "ServicioUsuariosPreferencias";
    private final String sp_consulta = "{CALL admin.sp_admin_usuarios_preferencias_consultas(?,?,?,?)}";

    private final String m_listar = "ingreso";

    public Map<String, String> listarPreferencias(ModeloUsuario user, List<String> lista) throws CustomException {
        Map<String, String> respuesta = new HashMap<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp_consulta);) {

            for (String valor : lista) {
                cst.setString(1, "Q");
                cst.setString(2, "QP");
                cst.setString(3, user.getId());
                cst.setString(4, valor);
                ResultSet rs = cst.executeQuery();

                while (rs.next()) {
                    respuesta.put(valor, rs.getString("aup_valor"));
                }
            }

        } catch (SQLException ex) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getSQLState() + " " + ex.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener las preferencias del usuario, favor contacte a un administrador con el codigo de referencia!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_listar);
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
            errorGeneral.setMetodo(m_listar);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        }

        return respuesta;
    }

    public String valorPreferencia(ModeloUsuario user, String valor) throws CustomException {

        String respuesta = "";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp_consulta);) {

            cst.setString(1, "Q");
            cst.setString(2, "QP");
            cst.setString(3, user.getId());
            cst.setString(4, valor);
            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                respuesta = rs.getString("aup_valor");
            }

        } catch (SQLException ex) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getSQLState() + " " + ex.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener las preferencias del usuario, favor contacte a un administrador con el codigo de referencia!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_listar);
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
            errorGeneral.setMetodo(m_listar);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        }

        return respuesta;
    }

    public ModeloUsuarioPreferenciaTema listarTema(String nombre) throws CustomException {

        String query = "{CALL admin.sp_admin_tema_consultas(?,?,?)}";

        ModeloUsuarioPreferenciaTema tema = new ModeloUsuarioPreferenciaTema();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QPN");
            cst.setString(3, nombre);
            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                tema.setId(rs.getString("at_id"));
                tema.setNombre(rs.getString("at_nombre"));
                tema.setSiderbar_backgroud_1(rs.getString("at_siderbar_backgroud_1"));
                tema.setSiderbar_backgroud_2(rs.getString("at_siderbar_backgroud_2"));
                tema.setSidebar_text_color(rs.getString("at_sidebar_text_color"));
                tema.setSidebar_icon_color(rs.getString("at_sidebar_icon_color"));
                tema.setSidebar_border_color(rs.getString("at_sidebar_border_color"));

            }

        } catch (SQLException ex) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getSQLState() + " " + ex.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener el tema del usuario, favor contacte a un administrador con el codigo de referencia!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(m_listar);
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
            errorGeneral.setMetodo(m_listar);
            errorGeneral.setError(e);
            throw new CustomException("", errorGeneral, e);
        }

        return tema;
    }

}
