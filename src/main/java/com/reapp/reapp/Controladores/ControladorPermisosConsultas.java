package com.reapp.reapp.Controladores;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Auth.ModeloUser;
import com.reapp.reapp.Auth.ServiceAuth;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Respuestas.RespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioPermisosConsultas;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos/consultas/")
@RequiredArgsConstructor
public class ControladorPermisosConsultas {

    private final ServiceAuth serviceAuth;
    private final ServicioPermisosConsultas servicioPermisosConsultas;

    private static final String clase = "ControladorPermisosConsultas";

    private static final String rutas = "rutas";
    private static final String tipo = "Controlador";

    @GetMapping(rutas)
    public ResponseEntity<RespuestaGeneral> rutas() {

        RespuestaGeneral resp = new RespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            ModeloUser user = serviceAuth.usuarioRequest();
            respuesta.put("rutas", servicioPermisosConsultas.rutas(user.getRol_id()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setMetodo(rutas);
            errorControlador.setTipo(tipo);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);
    }

}
