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
import com.reapp.reapp.Modelos.ModeloPermisoRolRutaAccion;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;

import com.reapp.reapp.Servicios.ServicioPermisoRolesRutasAcciones;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos/rolesrutasacciones")
@RequiredArgsConstructor
public class ControladorPermisoRolesRutaAcciones {

    private final ServicioPermisoRolesRutasAcciones servicioPermisoRolesRutasAcciones;

    @PostMapping("/crear")
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloPermisoRolRutaAccion permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String id = UUID.randomUUID().toString();

        try {
            servicioPermisoRolesRutasAcciones.crear(permiso, id);
            respuesta.put("permiso", servicioPermisoRolesRutasAcciones.obtenerPorId(id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el permiso-ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorPermisoRolesRuta");
            errorControlador.setEndpoint("api/v1/permisos/rolesrutas/crear");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
