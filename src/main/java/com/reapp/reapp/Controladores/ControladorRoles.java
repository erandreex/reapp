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
import com.reapp.reapp.Modelos.ModeloRol;
import com.reapp.reapp.Respuestas.RespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioRoles;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/roles/")
@RequiredArgsConstructor
public class ControladorRoles {

    private final ServicioRoles servicioRoles;
    private static final String clase = "ControladorRoles";

    private static final String listar = "listar";
    private static final String crear = "crear";
    private static final String actualizar = "actualizar";
    private static final String remover = "remover";

    @GetMapping(listar)
    public ResponseEntity<RespuestaGeneral> listar() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            respuesta.put("rutas", servicioRoles.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha obtenido los roles exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase(clase);
            errorControlador.setMetodo(listar);

            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);
    }

    @PostMapping(crear)
    public ResponseEntity<RespuestaGeneral> crear(@RequestBody ModeloRol rol) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioRoles.crear(rol, id);
            respuesta.put("rol", servicioRoles.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setMetodo(crear);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(actualizar)
    public ResponseEntity<RespuestaGeneral> actualizar(@RequestBody ModeloRol ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRoles.actualizar(ruta);
            respuesta.put("rol", servicioRoles.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha actualizado el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setMetodo(actualizar);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @PostMapping(remover)
    public ResponseEntity<RespuestaGeneral> remover(@RequestBody ModeloRol ruta) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            servicioRoles.remover(ruta);
            respuesta.put("rol", servicioRoles.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha removido el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
