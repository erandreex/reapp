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
import com.reapp.reapp.Modelos.ModeloRutaGeneral;

@Service
public class ServicioRutas {

    public List<ModeloRuta> listarxRol(String rol_id) throws CustomException {

        String query = "{CALL auth.sp_rutas_consultas(?,?,?)}";
        List<ModeloRuta> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRXR");
            cst.setString(3, rol_id);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloRuta pro = new ModeloRuta();

                pro.setCategoria_id(rs.getString("ru_id"));
                pro.setCategoria_titulo(rs.getString("ru_titulo"));
                pro.setCategoria_ruta(rs.getString("ru_ruta"));
                pro.setCategoria_icono(rs.getString("ru_icon"));
                pro.setCategoria_color_1(rs.getString("ru_color_1"));
                pro.setCategoria_color_2(rs.getString("ru_color_2"));

                pro.setGeneral_id(rs.getString("rug_id"));
                pro.setGeneral_titulo(rs.getString("rug_titulo"));
                pro.setGeneral_ruta(rs.getString("rug_ruta"));
                pro.setGeneral_icono(rs.getString("rug_icon"));
                pro.setGeneral_color_1(rs.getString("rug_color_1"));
                pro.setGeneral_color_2(rs.getString("rug_color_2"));
                pro.setGeneral_componente(rs.getString("rug_componente"));

                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se han podido obtener las rutas según el rol");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasGeneral");
            errorGeneral.setMetodo("listarxRol");
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
            errorGeneral.setClase("ServicioRutasGeneral");
            errorGeneral.setMetodo("listarxRol");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public List<ModeloRuta> listar() throws CustomException {

        String query = "{CALL auth.sp_rutas_general(?,?,?,?,?,?,?,?,?,?)}";
        List<ModeloRuta> lista = new ArrayList<>();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRGCT");
            cst.setString(3, null);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ModeloRuta pro = new ModeloRuta();

                pro.setCategoria_id(rs.getString("ru_id"));
                pro.setCategoria_titulo(rs.getString("ru_titulo"));
                pro.setCategoria_ruta(rs.getString("ru_ruta"));
                pro.setCategoria_icono(rs.getString("ru_icon"));
                pro.setCategoria_color_1(rs.getString("ru_color_1"));
                pro.setCategoria_color_2(rs.getString("ru_color_2"));

                pro.setGeneral_id(rs.getString("rug_id"));
                pro.setGeneral_titulo(rs.getString("rug_titulo"));
                pro.setGeneral_ruta(rs.getString("rug_ruta"));
                pro.setGeneral_icono(rs.getString("rug_icon"));
                pro.setGeneral_color_1(rs.getString("rug_color_1"));
                pro.setGeneral_color_2(rs.getString("rug_color_2"));
                pro.setGeneral_componente(rs.getString("rug_componente"));

                lista.add(pro);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta nivel 2");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("listar");
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
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("listar");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public Boolean crear(ModeloRutaGeneral ruta, String id) throws CustomException {

        String query = "{CALL auth.sp_rutas_general(?,?,?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "I");
            cst.setString(2, "INR");
            cst.setString(3, id);
            cst.setString(4, ruta.getFk_categoria());
            cst.setString(5, ruta.getTitulo());
            cst.setString(6, ruta.getRuta());
            cst.setString(7, ruta.getIcon());
            cst.setString(8, ruta.getColor_1());
            cst.setString(9, ruta.getColor_2());
            cst.setString(10, ruta.getComponente());

            cst.execute();
            respuesta = true;

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta nivel 2");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
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
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("crear");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean actualizar(ModeloRutaGeneral ruta) throws CustomException {

        String query = "{CALL auth.sp_rutas_general(?,?,?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "U");
            cst.setString(2, "UR2");
            cst.setString(3, ruta.getId());
            cst.setString(4, ruta.getFk_categoria());
            cst.setString(5, ruta.getTitulo());
            cst.setString(6, ruta.getRuta());
            cst.setString(7, ruta.getIcon());
            cst.setString(8, ruta.getColor_1());
            cst.setString(9, ruta.getColor_2());
            cst.setString(10, ruta.getComponente());

            cst.execute();
            respuesta = true;

        } catch (SQLException e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido ingresar la ruta nivel 2");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("actualizar");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("actualizar");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public Boolean remover(ModeloRutaGeneral ruta) throws CustomException {

        String query = "{CALL auth.sp_rutas_general(?,?,?,?,?,?,?,?,?,?)}";
        Boolean respuesta = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "D");
            cst.setString(2, "DRGID");
            cst.setString(3, ruta.getId());
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);

            cst.execute();
            respuesta = true;

        } catch (SQLException e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido eliminar la ruta del nivel 2");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("remover");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);

        } catch (Exception e) {
            respuesta = false;

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("Error interno, favor contactar a un administrador");
            errorGeneral.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
            errorGeneral.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("remover");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return respuesta;
    }

    public ModeloRuta obtenerPorId(String id) throws CustomException {

        String query = "{CALL auth.sp_rutas_general(?,?,?,?,?,?,?,?,?,?)}";
        ModeloRuta ruta = new ModeloRuta();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QRGID");
            cst.setString(3, id);
            cst.setString(4, null);
            cst.setString(5, null);
            cst.setString(6, null);
            cst.setString(7, null);
            cst.setString(8, null);
            cst.setString(9, null);
            cst.setString(10, null);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                ruta.setCategoria_id(rs.getString("ru_id"));
                ruta.setCategoria_titulo(rs.getString("ru_titulo"));
                ruta.setCategoria_ruta(rs.getString("ru_ruta"));
                ruta.setCategoria_icono(rs.getString("ru_icon"));
                ruta.setCategoria_color_1(rs.getString("ru_color_1"));
                ruta.setCategoria_color_2(rs.getString("ru_color_2"));

                ruta.setGeneral_id(rs.getString("rug_id"));
                ruta.setGeneral_titulo(rs.getString("rug_titulo"));
                ruta.setGeneral_ruta(rs.getString("rug_ruta"));
                ruta.setGeneral_icono(rs.getString("rug_icon"));
                ruta.setGeneral_color_1(rs.getString("rug_color_1"));
                ruta.setGeneral_color_2(rs.getString("rug_color_2"));
                ruta.setGeneral_componente(rs.getString("rug_componente"));

            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt("No se ha podido eliminar la ruta del nivel 2");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("obtenerPorId");
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
            errorGeneral.setClase("ServicioRutasNivel2");
            errorGeneral.setMetodo("obtenerPorId");
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

        return ruta;
    }

}
