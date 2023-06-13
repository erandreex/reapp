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
import com.reapp.reapp.Modelos.ModeloRuta;

@Service
public class ServicioPermisosConsultas {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioPermisosConsultas";
    private static final String sp = "{CALL admin.sp_admin_permisos_consultas(?,?,?)}";

    private static final String rutas = "rutas";

    public List<ModeloRuta> rutas(String rol_id) throws CustomException {

        List<ModeloRuta> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QLRPR");
            cst.setString(3, rol_id);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ModeloRuta pro = new ModeloRuta();

                pro.setCategoria_id(rs.getString("arc_id"));
                pro.setCategoria_orden(rs.getString("arc_orden"));
                pro.setCategoria_titulo(rs.getString("arc_titulo"));
                pro.setCategoria_ruta(rs.getString("arc_ruta"));
                pro.setCategoria_icono(rs.getString("arc_icono"));
                pro.setCategoria_color_1(rs.getString("arc_color_1"));
                pro.setCategoria_color_2(rs.getString("arc_color_2"));

                pro.setRuta_id(rs.getString("ar_id"));
                pro.setRuta_orden(rs.getString("ar_orden"));
                pro.setRuta_componente(rs.getString("ar_componente"));
                pro.setRuta_titulo(rs.getString("ar_titulo"));
                pro.setRuta_ruta(rs.getString("ar_ruta"));
                pro.setRuta_icono(rs.getString("ar_icono"));
                pro.setRuta_color_1(rs.getString("ar_color_1"));
                pro.setRuta_color_2(rs.getString("ar_color_2"));
                pro.setRuta_categoria(rs.getString("ar_fk_categoria"));

                lista.add(pro);
            }

        } catch (SQLException e) {

            System.out.println(e);
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se han podido obtener las rutas segun el rol del usuario!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(rutas);
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
            errorGeneral.setMetodo(rutas);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

}
