package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloDashboardCuadricula;
import com.reapp.reapp.Modelos.ModeloGraficaConfig;
import com.reapp.reapp.Modelos.ModeloGraficaConsulta;
import com.reapp.reapp.Modelos.ModeloGraficaDatasetConfig;
import com.reapp.reapp.Modelos.ModeloGraficaDatasetData;

@Service
public class ServicioDashboard {

    private static final String tipo = "Servicio";
    private static final String clase = "ServicioDashboard";

    private static final String listar_cuadricula = "listar";
    private static final String listarDatasetGraficas = "listarDatasetGraficas";

    public List<ModeloDashboardCuadricula> listar_cuadricula(String nombre) throws CustomException {

        List<ModeloDashboardCuadricula> lista = new ArrayList<>();

        String query = "{CALL admin_dashboards.sp_admin_dashboards(?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QLCC");
            cst.setString(3, nombre);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloDashboardCuadricula resultado = new ModeloDashboardCuadricula();

                resultado.setId(rs.getString("ad_id"));
                resultado.setNombre(rs.getString("ad_nombre"));
                resultado.setTipo(rs.getString("ad_tipo"));
                resultado.setTamano(rs.getString("ad_tamano"));
                resultado.setComponente_id(rs.getString("ad_componente_id"));

                lista.add(resultado);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener la lista de cuadriculas del dashboard, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listar_cuadricula);
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
            errorGeneral.setMetodo(listar_cuadricula);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public ModeloGraficaConfig listarConfigGrafica(String idGrafica) throws CustomException {

        String query = "{CALL admin_dashboards.sp_admin_graficas_consultas(?,?,?)}";

        ModeloGraficaConfig resultado = new ModeloGraficaConfig();

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QGCID");
            cst.setString(3, idGrafica);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {
                resultado.setId(rs.getString("agc_id"));
                resultado.setNombre(rs.getString("agc_nombre"));
                resultado.setTitulo(rs.getString("agc_titulo"));
                resultado.setTipo_principal(rs.getString("agc_tipo_principal"));
                resultado.setCant_registros(rs.getInt("agc_cant_registros"));
                resultado.setIntervalo_operacion(rs.getString("agc_intervalo_operacion"));
                resultado.setIntervalo_tiempo(rs.getString("agc_intervalo_tiempo"));
                resultado.setIntervalo_valor(rs.getString("agc_intervalo_valor"));
                resultado.setY_label(rs.getString("agc_y_label"));
                resultado.setY_color(rs.getString("agc_y_color"));
                resultado.setY_sugg_max(rs.getFloat("agc_y_sugg_max"));
                resultado.setY_sugg_min(rs.getFloat("agc_y_sugg_min"));
                resultado.setY_begintAtZero(rs.getString("agc_y_begintAtZero"));
                resultado.setY_tick_limit(rs.getString("agc_y_tick_limit"));
                resultado.setX_color(rs.getString("agc_x_color"));
                resultado.setX_tick_limit(rs.getString("agc_x_tick_limit"));
                resultado.setStacked(rs.getString("agc_stacked"));
                resultado.setBackground(rs.getString("agc_background"));
                resultado.setObservable(rs.getInt("agc_observable"));
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener la lista de datasets config de la grafica, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listarDatasetGraficas);
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
            errorGeneral.setMetodo(listarDatasetGraficas);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return resultado;
    }

    public List<ModeloGraficaDatasetConfig> listarDatasetConfigGrafica(String idGrafica) throws CustomException {

        List<ModeloGraficaDatasetConfig> lista = new ArrayList<>();

        String query = "{CALL admin_dashboards.sp_admin_graficas_consultas(?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QGDID");
            cst.setString(3, idGrafica);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloGraficaDatasetConfig resultado = new ModeloGraficaDatasetConfig();
                resultado.setGrafica_id(rs.getString("agd_grafica_id"));
                resultado.setDataset_id(rs.getString("agd_dataset_id"));
                resultado.setDataset_posicion(rs.getInt("agd_dataset_posicion"));
                resultado.setProc_nombre(rs.getString("agd_proc_nombre"));
                resultado.setProc_tipo(rs.getString("agd_proc_tipo"));
                resultado.setProc_operacion(rs.getString("agd_proc_operacion"));
                resultado.setRutina(rs.getString("agd_rutina"));
                resultado.setDataset_label(rs.getString("agd_dataset_label"));
                resultado.setTipo(rs.getString("agd_tipo"));
                resultado.setFondo_color(rs.getString("agd_fondo_color"));
                resultado.setBorde_color(rs.getString("agd_borde_color"));
                resultado.setBorde_tamano(rs.getString("agd_borde_tamano"));
                resultado.setPunto_color_fondo(rs.getString("agd_punto_color_fondo"));
                resultado.setPunto_color_hover(rs.getString("agd_punto_color_hover"));
                resultado.setPunto_color_borde(rs.getString("agd_punto_color_borde"));
                resultado.setPunto_tamano(rs.getString("agd_punto_tamano"));
                resultado.setStack(rs.getInt("agd_stack"));
                resultado.setFill(rs.getString("agd_fill"));
                lista.add(resultado);
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener la lista de datasets config de la grafica, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listarDatasetGraficas);
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
            errorGeneral.setMetodo(listarDatasetGraficas);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return lista;
    }

    public List<ModeloGraficaDatasetData> listarDatasetsDataGrafica(ModeloGraficaConsulta configConsulta,
            ModeloGraficaConfig configGrafica,
            List<ModeloGraficaDatasetConfig> configDatasets)
            throws CustomException {

        List<ModeloGraficaDatasetData> listarDatasetsDataGrafica = new ArrayList<>();
        Long timeNow = Calendar.getInstance().getTimeInMillis();
        Timestamp ts = new Timestamp(timeNow);
        Calendar cal = Calendar.getInstance();
        cal.setTime(ts);
        cal.add(Calendar.MINUTE, -1);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String fechaFinal = "";

        String query = "{CALL admin_dashboards.sp_admin_graficas_procedimientos(?,?,?,?,?,?,?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            for (ModeloGraficaDatasetConfig datasetConfig : configDatasets) {

                if (configConsulta.getConsultaFecha().equals("N/A")) {
                    fechaFinal = String.valueOf(sdf.format(cal.getTime()));
                } else {
                    fechaFinal = configConsulta.getConsultaFecha();
                }

                cst.setString(1, datasetConfig.getProc_nombre());
                cst.setString(2, datasetConfig.getProc_tipo());
                cst.setString(3, datasetConfig.getProc_operacion());
                cst.setString(4, datasetConfig.getRutina());
                cst.setString(5, fechaFinal);
                cst.setInt(6, configGrafica.getCant_registros());
                cst.setString(7, configGrafica.getIntervalo_operacion());
                cst.setString(8, configGrafica.getIntervalo_tiempo());
                cst.setString(9, configGrafica.getIntervalo_valor());

                ResultSet rs = cst.executeQuery();

                while (rs.next()) {
                    ModeloGraficaDatasetData resultado = new ModeloGraficaDatasetData();
                    resultado.setDataRutina(rs.getString(1));
                    resultado.setDataFecha(rs.getString(2));
                    resultado.setDataCantidad(rs.getFloat(3));
                    resultado.setDataPosicion(datasetConfig.getDataset_posicion());
                    listarDatasetsDataGrafica.add(resultado);
                }
            }

        } catch (SQLException e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(e.getMessage());
            errorGeneral.setMessageExt(
                    "No se ha podido obtener la lista de datasets config de la grafica, favor validar con un administrador con el codigo de referencia");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo(tipo);
            errorGeneral.setClase(clase);
            errorGeneral.setMetodo(listarDatasetGraficas);
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
            errorGeneral.setMetodo(listarDatasetGraficas);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }
        return listarDatasetsDataGrafica;
    }

    public List<String> obtenerLabels(List<ModeloGraficaDatasetData> listaDatasetData) throws CustomException {

        List<String> labels = new ArrayList<>();

        try {
            for (ModeloGraficaDatasetData data : listaDatasetData) {
                if ((String.valueOf(data.getDataPosicion()).equals("1"))) {
                    labels.add(data.getDataFecha());

                }
            }
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
            errorGeneral.setMetodo(listarDatasetGraficas);
            errorGeneral.setError(e);

            throw new CustomException("", errorGeneral, e);
        }

        return labels;
    }

    // public SimpleDateFormat devuelveFormatoFecha(String configTipoRegistro) {

    // SimpleDateFormat sdf;
    // String yearMonthDayHourMinuteSeconds = "yyyy-MM-dd HH:mm:00";

    // switch (configTipoRegistro) {
    // case "mm":
    // sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
    // break;
    // case "mme":
    // sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
    // break;

    // case "hh":
    // sdf = new SimpleDateFormat("yyyy-MM-dd HH:59:00");
    // break;

    // case "hhe":
    // sdf = new SimpleDateFormat("yyyy-MM-dd HH:59:00");
    // break;

    // case "dd":
    // sdf = new SimpleDateFormat("yyyy-MM-dd 23:59:00");
    // break;
    // default:
    // sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
    // break;
    // }
    // return sdf;
    // }

}
