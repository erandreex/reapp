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
import com.reapp.reapp.Modelos.ModeloPermisoRolRuta;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Modelos.ModeloRol;
import com.reapp.reapp.Servicios.ServicioAccesos;
import com.reapp.reapp.Servicios.ServicioPermisoRolesRutas;
import com.reapp.reapp.Servicios.ServicioUsuariosRoles;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/roles/")
@RequiredArgsConstructor
public class ControladorUsuariosRoles {

    private final ServicioUsuariosRoles servicioUsuariosRoles;
    private final ServicioAccesos servicioAccesos;
    private final ServicioPermisoRolesRutas servicioPermisoRolesRutas;

    private static final String controlador = "ControladorUsuariosRoles";

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

            respuesta.put("roles", servicioUsuariosRoles.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha obtenido los roles exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            System.out.println(e.getErrorGeneral().getMessageInt());
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase(controlador);
            errorControlador.setMetodo(listar);

            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);
    }

    @PostMapping(crear)
    public ResponseEntity<ModeloRespuestaGeneral> crear(@RequestBody ModeloRol rol) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        String rol_id = UUID.randomUUID().toString();
        String idEx = UUID.randomUUID().toString();
        String idEx2 = UUID.randomUUID().toString();

        ModeloPermisoRolRuta rolRuta = new ModeloPermisoRolRuta();

        try {
            servicioAccesos.controladorEndpoint(controlador, "crear");
            servicioUsuariosRoles.crear(rol, rol_id);

            rolRuta.setRol_id(rol_id);
            rolRuta.setRuta_id("bc3f5e36-3903-4cb1-9b14-3dc264fd7fbb");
            servicioPermisoRolesRutas.crear(rolRuta, idEx);

            rolRuta.setRuta_id("45ea42d1-5802-4c91-9944-875d1f3e3641");
            servicioPermisoRolesRutas.crear(rolRuta, idEx2);

            respuesta.put("rol", servicioUsuariosRoles.obtenerPorId(rol_id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(controlador);
            errorControlador.setMetodo(crear);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping(actualizar)
    public ResponseEntity<ModeloRespuestaGeneral> actualizar(@RequestBody ModeloRol ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "actualizar");

            servicioUsuariosRoles.actualizar(ruta);
            respuesta.put("rol", servicioUsuariosRoles.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha actualizado el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(controlador);
            errorControlador.setMetodo(actualizar);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @PostMapping(remover)
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloRol ruta) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "remover");

            servicioUsuariosRoles.validarRemover(ruta);
            servicioUsuariosRoles.remover(ruta);

            respuesta.put("rol", servicioUsuariosRoles.obtenerPorId(ruta.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha removido el rol exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(controlador);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("Error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
