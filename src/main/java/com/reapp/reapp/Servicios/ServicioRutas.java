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
import com.reapp.reapp.Modelos.ModeloExternoRuta;
import com.reapp.reapp.Modelos.ModeloExternoRutaCategoria;
import com.reapp.reapp.Modelos.ModeloRuta;
import com.reapp.reapp.Modelos.ModeloRutaGeneral;

@Service
public class ServicioRutas {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioRutas";
    private static final String sp = "{CALL admin.sp_admin_rutas(?,?,?,?,?,?,?,?,?,?,?)}";

    private static final String listar = "listar";
    private static final String crear = "crear";
    private static final String actualizar = "actualizar";
    private static final String remover = "remover";
    private static final String obtenerPorId = "obtenerPorId";

    public List<ModeloRutaGeneral> listar() throws CustomException {

        List<ModeloRutaGeneral> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRT");
            cst.setString(3, null);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);
            cst.setString(11, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ModeloRutaGeneral pro = new ModeloRutaGeneral();

                pro.setCategoria_id(rs.getString("arc_id"));
                pro.setCategoria_titulo(rs.getString("arc_titulo"));

                pro.setId(rs.getString("ar_id"));
                pro.setOrden(rs.getString("ar_orden"));
                pro.setComponente(rs.getString("ar_componente"));
                pro.setTitulo(rs.getString("ar_titulo"));
                pro.setRuta(rs.getString("ar_ruta"));
                pro.setIcono(rs.getString("ar_icono"));
                pro.setColor_1(rs.getString("ar_color_1"));
                pro.setColor_2(rs.getString("ar_color_2"));

                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener las rutas, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listar);
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
            errorGeneral.setMetodo(listar);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public Boolean crear(ModeloRutaGeneral ruta, String id) throws CustomException {

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, id);
            cst.setString(4, ruta.getOrden());
            cst.setString(5, ruta.getComponente());
            cst.setString(6, ruta.getTitulo());
            cst.setString(7, ruta.getRuta());
            cst.setString(8, ruta.getIcono());
            cst.setString(9, ruta.getColor_1());
            cst.setString(10, ruta.getColor_2());
            cst.setString(11, ruta.getCategoria_id());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido crear la ruta");
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
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(crear);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean actualizar(ModeloRutaGeneral ruta) throws CustomException {

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "U");
            cst.setString(2, "UR");
            cst.setString(3, ruta.getId());
            cst.setString(4, ruta.getOrden());
            cst.setString(5, ruta.getComponente());
            cst.setString(6, ruta.getTitulo());
            cst.setString(7, ruta.getRuta());
            cst.setString(8, ruta.getIcono());
            cst.setString(9, ruta.getColor_1());
            cst.setString(10, ruta.getColor_2());
            cst.setString(11, ruta.getCategoria_id());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido actualizar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(actualizar);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(actualizar);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean remover(ModeloRutaGeneral ruta) throws CustomException {

        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "D");
            cst.setString(2, "DR");
            cst.setString(3, ruta.getId());
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);
            cst.setString(11, null);
            cst.execute();

            respuesta = true;

        } catch (SQLException e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No ha sido posible remover la ruta, asegurese de que ningun componente dependa de ella");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(remover);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(remover);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloRuta obtenerPorId(String id) throws CustomException {

        ModeloRuta ruta = new ModeloRuta();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRID");
            cst.setString(3, id);
            cst.setInt(4, 0);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);
            cst.setString(11, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ruta.setCategoria_id(rs.getString("arc_id"));
                ruta.setCategoria_titulo(rs.getString("arc_titulo"));
                ruta.setCategoria_ruta(rs.getString("arc_ruta"));
                ruta.setCategoria_icono(rs.getString("arc_icono"));
                ruta.setCategoria_color_1(rs.getString("arc_color_1"));
                ruta.setCategoria_color_2(rs.getString("arc_color_2"));
                ruta.setCategoria_orden(rs.getString("arc_orden"));

                ruta.setRuta_id(rs.getString("ar_id"));
                ruta.setRuta_orden(rs.getString("ar_orden"));
                ruta.setRuta_componente(rs.getString("ar_componente"));
                ruta.setRuta_titulo(rs.getString("ar_titulo"));
                ruta.setRuta_ruta(rs.getString("ar_ruta"));
                ruta.setRuta_icono(rs.getString("ar_icono"));
                ruta.setRuta_color_1(rs.getString("ar_color_1"));
                ruta.setRuta_color_2(rs.getString("ar_color_2"));
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No ha sido posible obtener la ruta por el id, favor contactar a un administrador con el codigo de referencia");
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
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(obtenerPorId);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

        return ruta;
    }

    // EXTERNOS

    public List<ModeloExternoRuta> externolistarRutas() throws CustomException {

        List<ModeloExternoRuta> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(sp);) {

            cst.setString(1, "E");
            cst.setString(2, "EQR");
            cst.setString(3, null);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);
            cst.setString(11, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloExternoRuta pro = new ModeloExternoRuta();

                pro.setId(rs.getString("ar_id"));
                pro.setTitulo(rs.getString("ar_titulo"));
                pro.setCategoria_id(rs.getString("ar_fk_categoria"));

                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener las rutas, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listar);
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
            errorGeneral.setMetodo(listar);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    // EXTERNOS

}
