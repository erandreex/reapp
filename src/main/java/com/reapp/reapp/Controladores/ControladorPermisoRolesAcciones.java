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
import com.reapp.reapp.Modelos.ModeloPermisoRolAccion;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioPermisoRolesAcciones;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos/roles/acciones")
@RequiredArgsConstructor
public class ControladorPermisoRolesAcciones {

    private final ServicioPermisoRolesAcciones servicioPermisoRolesAcciones;

    private static final String clase = "ControladorPermisoRolesAcciones";
    private static final String tipo = "Controlador";

    private static final String crear = "crear";

    @PostMapping("/crear")
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloPermisoRolAccion permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioPermisoRolesAcciones.crear(permiso, id);
            respuesta.put("permiso", servicioPermisoRolesAcciones.obtenerPorId(id));
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

}
