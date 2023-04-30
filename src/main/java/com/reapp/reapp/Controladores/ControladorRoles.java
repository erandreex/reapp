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
@RequestMapping("api/v1/roles")
@RequiredArgsConstructor
public class ControladorRoles {

    private final ServicioRoles servicioRoles;

    @GetMapping("/listar")
    public ResponseEntity<RespuestaGeneral> listar() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            respuesta.put("rutas", servicioRoles.lista());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha obtenido los roles exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorRoles");
            errorControlador.setEndpoint("/api/v1/roles/listar");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);
    }

    @PostMapping("/crear")
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
            resp.setMensaje("Se ha creado la ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase("ControladorRoles");
            errorControlador.setEndpoint("/api/v1/roles/crear");
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/actualizar")
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
            errorControlador.setClase("ControladorRoles");
            errorControlador.setEndpoint("/api/v1/roles/actualizar");
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @PostMapping("/remover")
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
            errorControlador.setClase("ControladorRoles");
            errorControlador.setEndpoint("/api/v1/roles/remover");
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
