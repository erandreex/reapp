package com.reapp.reapp.Servicios;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.FieldPosition;
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

        String query = "{CALL admin.dashboards.sp_admin_dashboards(?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QPNO");
            cst.setString(3, nombre);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloDashboardCuadricula resultado = new ModeloDashboardCuadricula();
                resultado.setId(rs.getString("ad_id"));
                resultado.setDashboard(rs.getString("ad_dashboard"));
                resultado.setTipo(rs.getString("ad_tipo"));
                resultado.setIdentificador(rs.getString("ad_identificador"));
                resultado.setTamano(rs.getString("ad_tamano"));

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

    public List<ModeloGraficaDatasetConfig> listarDatasetConfigGrafica(String idGrafica) throws CustomException {

        List<ModeloGraficaDatasetConfig> lista = new ArrayList<>();

        String query = "{CALL admin.dashboards.sp_admin_graficas_consultas(?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QGID");
            cst.setString(3, idGrafica);

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloGraficaDatasetConfig resultado = new ModeloGraficaDatasetConfig();
                resultado.setConfigNombre(rs.getString("ag_nombre"));
                resultado.setConfigDashboard(rs.getString("ad_dashboard"));
                resultado.setConfigPosicion(rs.getInt("ag_posicion"));
                resultado.setConfigSubPosicion(rs.getInt("ag_sub_posicion"));
                resultado.setConfigTipoConsulta(rs.getString("ag_tipo_consulta"));
                resultado.setConfigCantRegistros(rs.getInt("ag_cant_registros"));
                resultado.setConfigTipoRegistros(rs.getString("ag_tipo_registros"));
                resultado.setConfigTipoRutina(rs.getString("ag_tipo_rutina"));
                resultado.setConfigRutina(rs.getString("ag_rutina"));
                resultado.setConfigTitulo(rs.getString("ag_titulo"));
                resultado.setConfigLabely(rs.getString("ag_label_y"));
                resultado.setConfigTipoPrincipal(rs.getString("ag_tipo_principal"));
                resultado.setConfigTipoSecundario(rs.getString("ag_tipo_secundario"));
                resultado.setConfigColorFondo(rs.getString("ag_color_fondo"));
                resultado.setConfigColorBorde(rs.getString("ag_color_borde"));
                resultado.setConfigTamanoBorde(rs.getString("ag_tamano_borde"));
                resultado.setConfigFill(rs.getString("ag_fill"));
                resultado.setConfigColorFondoPunto(rs.getString("ag_color_fondo_punto"));
                resultado.setConfigColorHoverPunto(rs.getString("ag_color_hover_punto"));
                resultado.setConfigColorBordePunto(rs.getString("ag_color_borde_punto"));
                resultado.setConfigTamanoPunto(rs.getString("ag_tamano_punto"));
                resultado.setConfigStacked(rs.getString("ag_stacked"));
                resultado.setConfigStack(rs.getInt("ag_stack"));
                resultado.setConfigMaxTickLimit(rs.getInt("ag_maxticklimit"));
                resultado.setConfigSuggestedMax(rs.getInt("ag_suggestedmax"));
                resultado.setConfigValorLimite(rs.getInt("ag_valor_limite"));
                resultado.setConfigColorValorLimite(rs.getString("ag_color_valor_limite"));
                resultado.setConfigIntervaloTiempo(rs.getInt("ag_intervalo_tiempo"));
                resultado.setConfigValorMinimo(rs.getFloat("ag_valor_minimo"));
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
            List<ModeloGraficaDatasetConfig> configList)
            throws CustomException {

        List<ModeloGraficaDatasetData> lista = new ArrayList<>();
        Long timeNow = Calendar.getInstance().getTimeInMillis();
        Timestamp ts = new Timestamp(timeNow);
        Calendar cal = Calendar.getInstance();
        cal.setTime(ts);
        cal.add(Calendar.MINUTE, -1);
        SimpleDateFormat sdf;
        String fechaFinal = "";
        StringBuffer sb = new StringBuffer("Date:");

        String query = "{CALL admin_dashboards.sp_admin_graficas(?,?,?,?,?,?)}";

        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            for (ModeloGraficaDatasetConfig datasetConfig : configList) {

                if (configConsulta.getConsultaFecha().equals("N/A")) {
                    sdf = devuelveFormatoFecha(datasetConfig.getConfigTipoRegistros());
                    fechaFinal = String.valueOf(sdf.format(cal.getTime(), sb, new FieldPosition(0)));
                } else {
                    fechaFinal = configConsulta.getConsultaFecha();
                }

                int cantRegistros = configConsulta.getCantRegistros();

                cst.setString(1, datasetConfig.getConfigTipoConsulta());
                cst.setString(2, datasetConfig.getConfigTipoRutina());
                cst.setString(3, datasetConfig.getConfigRutina());
                cst.setString(4, fechaFinal);
                cst.setInt(5, cantRegistros);
                cst.setInt(6, datasetConfig.getConfigIntervaloTiempo());

            }

            ResultSet rs = cst.executeQuery();

            while (rs.next()) {

                ModeloGraficaDatasetData resultado = new ModeloGraficaDatasetData();
                resultado.setDataTipo(rs.getString(1));
                resultado.setDataRutina(rs.getString(2));
                resultado.setDataFecha(rs.getString(3));
                resultado.setDataCantidad(rs.getFloat(4));
                resultado.setDataPosicion(rs.getInt(5));
                resultado.setDataSubPosicion(rs.getInt(6));

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

    public SimpleDateFormat devuelveFormatoFecha(String configTipoRegistro) {

        SimpleDateFormat sdf;
        String yearMonthDayHourMinuteSeconds = "yyyy-MM-dd HH:mm:00";

        switch (configTipoRegistro) {
            case "mm":
                sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
                break;
            case "mme":
                sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
                break;

            case "hh":
                sdf = new SimpleDateFormat("yyyy-MM-dd HH:59:00");
                break;

            case "hhe":
                sdf = new SimpleDateFormat("yyyy-MM-dd HH:59:00");
                break;

            case "dd":
                sdf = new SimpleDateFormat("yyyy-MM-dd 23:59:00");
                break;
            default:
                sdf = new SimpleDateFormat(yearMonthDayHourMinuteSeconds);
                break;
        }
        return sdf;
    }

}
