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

import com.reapp.reapp.Servicios.ServicioRutasCategoria;
import com.reapp.reapp.Servicios.ServicioRutas;
import com.reapp.reapp.Servicios.ServicioAccesos;
import com.reapp.reapp.Modelos.ModeloRutaGeneral;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.CustomException;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/rutas/")
@RequiredArgsConstructor
public class ControladorRutas {

    private final ServicioRutas servicioRutas;
    private final ServicioRutasCategoria servicioRutasCategoria;
    private final ServicioAccesos servicioAccesos;

    private static final String clase = "ControladorRutas";
    private static final String controlador = "ControladorRutas";

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
            servicioAccesos.controladorEndpoint(controlador, "listar");
            respuesta.put("rutas", servicioRutas.listar());
            respuesta.put("categorias", servicioRutasCategoria.obtenerListaCategorias());

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
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloRutaGeneral ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioAccesos.controladorEndpoint(controlador, "crear");
            servicioRutas.crear(ruta, id);
            respuesta.put("ruta", servicioRutas.obtenerPorId(id));
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
    public ResponseEntity<ModeloRespuestaGeneral> actualizar(@RequestBody ModeloRutaGeneral ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "actualizar");
            servicioRutas.actualizar(ruta);
            respuesta.put("ruta", servicioRutas.obtenerPorId(ruta.getId()));
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
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloRutaGeneral ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "remover");
            servicioRutas.validarRemover(ruta);

            servicioRutas.remover(ruta);
            respuesta.put("ruta", servicioRutas.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
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
