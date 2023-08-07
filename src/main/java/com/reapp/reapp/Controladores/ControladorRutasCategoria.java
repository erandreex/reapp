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
import com.reapp.reapp.Modelos.ModeloRutaCategoria;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioAccesos;
import com.reapp.reapp.Servicios.ServicioRutasCategoria;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/rutas/categoria/")
@RequiredArgsConstructor
public class ControladorRutasCategoria {

    private final ServicioRutasCategoria servicioRutasCategoria;
    private final ServicioAccesos servicioAccesos;

    private static final String clase = "ControladorRutasCategoria";
    private static final String controlador = "ControladorRutasCategoria";

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

            respuesta.put("rutas_categorias", servicioRutasCategoria.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha obtenido las categorias de rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(listar);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

    @PostMapping(crear)
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloRutaCategoria ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioAccesos.controladorEndpoint(controlador, "crear");

            servicioRutasCategoria.crear(ruta, id);
            respuesta.put("ruta_categoria", servicioRutasCategoria.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado la categoria de ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(crear);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(actualizar)
    public ResponseEntity<ModeloRespuestaGeneral> actualizar(@RequestBody ModeloRutaCategoria ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "actualizar");

            servicioRutasCategoria.actualizar(ruta);
            respuesta.put("ruta_categoria", servicioRutasCategoria.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha actualizado la categoria de ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(actualizar);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(remover)
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloRutaCategoria ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "remover");

            respuesta.put("ruta_categoria", "");
            servicioRutasCategoria.remover(ruta);
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setRespuesta(respuesta);

            resp.setMensaje("Se ha removido la categoria de ruta exitosamente!");

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
