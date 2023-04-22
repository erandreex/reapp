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
import com.reapp.reapp.Respuestas.RespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioRutasCategoria;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/rutas/categoria")
@RequiredArgsConstructor
public class ControladorRutasCategoria {

    private final ServicioRutasCategoria servicioRutasCategoria;

    @GetMapping("/listar")
    public ResponseEntity<RespuestaGeneral> listar() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            respuesta.put("rutas", servicioRutasCategoria.lista());
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/register");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

    @PostMapping("/crear")
    public ResponseEntity<RespuestaGeneral> crear(@RequestBody ModeloRutaCategoria ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioRutasCategoria.crear(ruta, id);
            respuesta.put("ruta", servicioRutasCategoria.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/register");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/actualizar")
    public ResponseEntity<RespuestaGeneral> actualizar(@RequestBody ModeloRutaCategoria ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasCategoria.actualizar(ruta);
            respuesta.put("ruta categoria", servicioRutasCategoria.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha actualizado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/register");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/remover")
    public ResponseEntity<RespuestaGeneral> remover(@RequestBody ModeloRutaCategoria ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasCategoria.remover(ruta);
            // respuesta.put("ruta 2", servicioRutasCategoria.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha removido la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/register");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
