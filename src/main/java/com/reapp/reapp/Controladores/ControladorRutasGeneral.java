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

import com.reapp.reapp.Auth.ModeloUser;
import com.reapp.reapp.Auth.ServiceAuth;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloRutaGeneral;
import com.reapp.reapp.Respuestas.RespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioRutasGeneral;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/rutas/general")
@RequiredArgsConstructor
public class ControladorRutasGeneral {

    private final ServicioRutasGeneral servicioRutasGeneral;
    private final ServiceAuth serviceAuth;

    @GetMapping("/listar")
    public ResponseEntity<RespuestaGeneral> listar() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            respuesta.put("rutas", servicioRutasGeneral.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRutasGeneral");
            errorControlador.setEndpoint("/api/v1/rutas/general");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

    @GetMapping("/listar/rol")
    public ResponseEntity<RespuestaGeneral> listaUsuario() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            ModeloUser user = serviceAuth.usuarioRequest();
            respuesta.put("rutas", servicioRutasGeneral.listarxRol(user.getRol_id()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRutasGeneral");
            errorControlador.setEndpoint("/api/v1/rutas/general");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

    @PostMapping("/crear")
    public ResponseEntity<RespuestaGeneral> crear(@RequestBody ModeloRutaGeneral ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {

            servicioRutasGeneral.crear(ruta, id);
            respuesta.put("ruta 2", servicioRutasGeneral.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRutasGeneral");
            errorControlador.setEndpoint("/api/v1/rutas/general");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/actualizar")
    public ResponseEntity<RespuestaGeneral> actualizar(@RequestBody ModeloRutaGeneral ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasGeneral.actualizar(ruta);
            respuesta.put("ruta", servicioRutasGeneral.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha actualizado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRutasGeneral");
            errorControlador.setEndpoint("/api/v1/rutas/general");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/remover")
    public ResponseEntity<RespuestaGeneral> remover(@RequestBody ModeloRutaGeneral ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRutasGeneral.remover(ruta);
            respuesta.put("ruta 2", servicioRutasGeneral.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha removido la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRutasGeneral");
            errorControlador.setEndpoint("/api/v1/rutas/general");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
