package com.reapp.reapp.Controladores;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloGraficaConsulta;
import com.reapp.reapp.Modelos.ModeloGraficaDatasetData;
import com.reapp.reapp.Modelos.ModeloGraficaDatasetConfig;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioDashboard;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/dashboard/")
@RequiredArgsConstructor
public class ControladorDashboard {

    private final ServicioDashboard servicioDashboard;

    private static final String tipo = "Controlador";
    private static final String clase = "ControladorAcceso";

    private static final String m_listar_cuadricula = "listar_cuadricula";

    @GetMapping("cuadricula/${dashboard}")
    public ResponseEntity<ModeloRespuestaGeneral> config(@PathVariable("dashboard") String dashboard) {
        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        try {

            respuesta.put("cuadricula", servicioDashboard.listar_cuadricula(dashboard));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido la lista de cuadriculas dashboard exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(m_listar_cuadricula);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @PostMapping("consulta/datagrafica")
    public ResponseEntity<ModeloRespuestaGeneral> consultaDataGrafica(@RequestBody ModeloGraficaConsulta body) {
        List<ModeloGraficaDatasetConfig> listaDatasetConfig = new ArrayList<>();
        List<ModeloGraficaDatasetData> listaDatasetData = new ArrayList<>();

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            listaDatasetConfig = servicioDashboard.listarDatasetConfigGrafica(body.getIdGrafica());
            listaDatasetData = servicioDashboard.listarDatasetsDataGrafica(body, listaDatasetConfig);

            respuesta.put("datasetsConfig", listaDatasetConfig);
            respuesta.put("datasetsData", listaDatasetData);

            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido la lista de cuadriculas dashboard exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(m_listar_cuadricula);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
