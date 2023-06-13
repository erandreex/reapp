package com.reapp.reapp.Controladores;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Modelos.ModeloRutaAccion;
import com.reapp.reapp.Servicios.ServicioRutasAcciones;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/rutas/acciones/")
@RequiredArgsConstructor

public class ControladorRutasAcciones {

    private final ServicioRutasAcciones servicioRutasAcciones;
    private static final String clase = "ControladorRutasAcciones";
    private static final String tipo = "Controlador";

    // Metodos
    private static final String listar = "listar";
    private static final String crear = "crear";
    private static final String actualizar = "actualizar";
    private static final String remover = "remover";

    @GetMapping(listar)
    public ResponseEntity<ModeloRespuestaGeneral> listar() {
        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        try {
            respuesta.put("rutas-acciones", servicioRutasAcciones.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);
        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(listar);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }
        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

    @PostMapping(crear)
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloRutaAccion rutaAccion) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {

            servicioRutasAcciones.crear(rutaAccion, id);
            respuesta.put("ruta-accion", servicioRutasAcciones.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(crear);

            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(actualizar)
    public ResponseEntity<ModeloRespuestaGeneral> actualizar(@RequestBody ModeloRutaAccion rutaAccion) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasAcciones.actualizar(rutaAccion);
            respuesta.put("ruta-accion", servicioRutasAcciones.obtenerPorId(rutaAccion.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha actualizado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(actualizar);

            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(remover)
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloRutaAccion rutaAccion) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasAcciones.remover(rutaAccion);
            respuesta.put("ruta-accion", servicioRutasAcciones.obtenerPorId(rutaAccion.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha removido la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
