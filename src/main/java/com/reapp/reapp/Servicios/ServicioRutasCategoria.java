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
import com.reapp.reapp.Modelos.ModeloRutaCategoria;

@Service
public class ServicioRutasCategoria {

    public Boolean crear(ModeloRutaCategoria ruta, String id) throws CustomException {

        String query = "{CALL auth.sp_rutas_categorias(?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, id);
            cst.setString(4, ruta.getTitulo());
            cst.setString(5, ruta.getRuta());
            cst.setString(6, ruta.getIcon());
            cst.setString(7, ruta.getColor_1());
            cst.setString(8, ruta.getColor_2());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("crear");
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
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("crear");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloRutaCategoria obtenerPorId(String ruta_id) throws CustomException {

        String query = "{CALL auth.sp_rutas_categorias(?,?,?,?,?,?,?,?)}";
        ModeloRutaCategoria ruta = new ModeloRutaCategoria();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRID");
            cst.setString(3, ruta_id);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ruta.setId(rs.getString("ru_id"));
                ruta.setTitulo(rs.getString("ru_titulo"));
                ruta.setRuta(rs.getString("ru_ruta"));
                ruta.setIcon(rs.getString("ru_icon"));
                ruta.setColor_1(rs.getString("ru_color_1"));
                ruta.setColor_2(rs.getString("ru_color_2"));
            }

        } catch (SQLException e) {
            System.out.println(e);
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido obtener la ruta!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        } catch (Exception e) {
            System.out.println(e);

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return ruta;
    }

    public Boolean actualizar(ModeloRutaCategoria ruta) throws CustomException {

        String query = "{CALL auth.sp_rutas_categorias(?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "U");
            cst.setString(2, "URCID");
            cst.setString(3, ruta.getId());
            cst.setString(4, ruta.getTitulo());
            cst.setString(5, ruta.getRuta());
            cst.setString(6, ruta.getIcon());
            cst.setString(7, ruta.getColor_1());
            cst.setString(8, ruta.getColor_2());
            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("actualizar");
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
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("actualizar");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean remover(ModeloRutaCategoria ruta) throws CustomException {

        String query = "{CALL auth.sp_rutas_categorias(?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "D");
            cst.setString(2, "DRCID");
            cst.setString(3, ruta.getId());
            cst.setString(4, ruta.getTitulo());
            cst.setString(5, ruta.getRuta());
            cst.setString(6, ruta.getIcon());
            cst.setString(7, ruta.getColor_1());
            cst.setString(8, ruta.getColor_2());

            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido remover, asegurese que ninguna ruta general dependa de la categoria!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("remover");
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
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("remover");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public List<ModeloRutaCategoria> lista() throws CustomException {

        String query = "{CALL auth.sp_rutas_categorias(?,?,?,?,?,?,?,?)}";
        List<ModeloRutaCategoria> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QTRC");
            cst.setString(3, null);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ModeloRutaCategoria pro = new ModeloRutaCategoria();
                pro.setId(rs.getString("ru_id"));
                pro.setTitulo(rs.getString("ru_titulo"));
                pro.setRuta(rs.getString("ru_ruta"));
                pro.setIcon(rs.getString("ru_icon"));
                pro.setColor_1(rs.getString("ru_color_1"));
                pro.setColor_2(rs.getString("ru_color_2"));
                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("remover");
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
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel1");
            errorGeneral.setMetodo("remover");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

}
