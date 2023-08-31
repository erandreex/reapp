package com.reapp.reapp.Controladores;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Auth.ServicioAuth;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioAccesos;
import com.reapp.reapp.Servicios.ServicioPermisosConsultas;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/index")
@RequiredArgsConstructor
public class ControladorIndex {

    private final ServicioAuth servicioAuth;
    private final ServicioPermisosConsultas servicioPermisosConsultas;
    private final ServicioAccesos servicioAccesos;

    private static final String tipo = "Controlador";
    private static final String clase = "ControladorIndex";
    private static final String controlador = "ControladorIndex";

    private static final String m_rutas = "rutas";

    @GetMapping("/consultas/rutas")
    public ResponseEntity<ModeloRespuestaGeneral> listarRutas() {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            servicioAccesos.controladorEndpoint(controlador, "listarRutas");

            ModeloUsuario user = servicioAuth.usuarioRequest();
            respuesta.put("rutas", servicioPermisosConsultas.rutas(user.getRol_id()));
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido las rutas exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setClase(clase);
            errorControlador.setMetodo(m_rutas);
            errorControlador.setTipo(tipo);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);
    }

}
