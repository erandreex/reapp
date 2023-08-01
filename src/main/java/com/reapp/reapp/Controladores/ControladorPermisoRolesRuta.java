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
import com.reapp.reapp.Servicios.ServicioPermisoRolesRutas;
import com.reapp.reapp.Servicios.ServicioRutas;
import com.reapp.reapp.Servicios.ServicioRutasCategoria;
import com.reapp.reapp.Servicios.ServicioUsuariosRoles;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos/roles/rutas")
@RequiredArgsConstructor
public class ControladorPermisoRolesRuta {

    private final ServicioPermisoRolesRutas servicioPermisoRolesRutas;
    private final ServicioRutasCategoria servicioRutasCategoria;
    private final ServicioRutas servicioRutas;
    private final ServicioUsuariosRoles servicioUsuariosRoles;

    private static final String tipo = "Controlador";
    private static final String clase = "ControladorPermisoRolesRuta";

    private static final String listar = "listar";
    private static final String agregar = "agregar";
    private static final String remover = "remover";

    @GetMapping("/listar")
    public ResponseEntity<ModeloRespuestaGeneral> listar() {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {

            respuesta.put("permisos-roles-rutas", servicioPermisoRolesRutas.listar());
            respuesta.put("rutas", servicioRutas.externolistarRutas());
            respuesta.put("rutas-categorias", servicioRutasCategoria.obtenerListaCategorias());
            respuesta.put("roles", servicioUsuariosRoles.listarRolesExterno());

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

    @PostMapping("/agregar")
    public ResponseEntity<ModeloRespuestaGeneral> agregar(@RequestBody ModeloPermisoRolRuta permiso) {

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
            errorControlador.setMetodo(agregar);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

    @PostMapping("/remover")
    public ResponseEntity<ModeloRespuestaGeneral> remover(@RequestBody ModeloPermisoRolRuta permiso) {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioPermisoRolesRutas.remover(permiso);
            respuesta.put("permiso-rol-ruta", servicioPermisoRolesRutas.obtenerPorId(permiso.getId()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha removido el permiso-ruta exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {
            System.out.println(e);
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setTipo(tipo);
            errorControlador.setMetodo(remover);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
