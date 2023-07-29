package com.reapp.reapp.Controladores;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloPermisoRolRuta;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioPermisoRolesRutas;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos/roles/rutas")
@RequiredArgsConstructor
public class ControladorPermisoRolesRuta {

    private final ServicioPermisoRolesRutas servicioPermisoRolesRutas;

    private static final String tipo = "Controlador";
    private static final String clase = "ControladorPermisoRolesRuta";

    private static final String listar = "listar";
    private static final String crear = "crear";
    private static final String actualizar = "actualizar";
    private static final String remover = "remover";

    @PostMapping("/listar")
    public ResponseEntity<ModeloRespuestaGeneral> listar(@RequestBody ModeloPermisoRolRuta permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            respuesta.put("permisos-roles-rutas", servicioPermisoRolesRutas.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido los permisos exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase(clase);
            errorControlador.setTipo(tipo);
            errorControlador.setMetodo(listar);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/crear")
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloPermisoRolRuta permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {

            servicioPermisoRolesRutas.crear(permiso, id);
            respuesta.put("permiso-rol-ruta", servicioPermisoRolesRutas.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el permiso-ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase(clase);
            errorControlador.setTipo(tipo);
            errorControlador.setMetodo(crear);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/actualizar")
    public ResponseEntity<ModeloRespuestaGeneral> actualizar(@RequestBody ModeloPermisoRolRuta permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioPermisoRolesRutas.actualizar(permiso);
            respuesta.put("permiso-rol-ruta", servicioPermisoRolesRutas.obtenerPorId(permiso.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha actualizar el permiso-ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setTipo(tipo);
            errorControlador.setMetodo(actualizar);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/remover")
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloPermisoRolRuta permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioPermisoRolesRutas.actualizar(permiso);
            respuesta.put("permiso-rol-ruta", servicioPermisoRolesRutas.obtenerPorId(permiso.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha removido el permiso-ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setTipo(tipo);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
