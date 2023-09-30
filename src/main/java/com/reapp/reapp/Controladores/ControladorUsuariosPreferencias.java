package com.reapp.reapp.Controladores;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Servicios.ServicioUsuariosPreferencias;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/usuarios/preferencias/")
@RequiredArgsConstructor
public class ControladorUsuariosPreferencias {

    private final ServicioUsuariosPreferencias servicioUsuariosPreferencias;
    private final ServicioAuth servicioAuth;

    private static final String controlador = "ControladorUsuariosPreferencias";

    private static final String listar = "listar";

    @GetMapping(listar)
    public ResponseEntity<ModeloRespuestaGeneral> listar() {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();
        List<String> lista = new ArrayList<>();
        String temaPreferencia = "default";

        try {
            ModeloUsuario user = servicioAuth.usuarioRequest();
            lista.add("tema");
            temaPreferencia = servicioUsuariosPreferencias.valorPreferencia(user, "tema");
            respuesta.put("preferenciasGenerales", servicioUsuariosPreferencias.listarPreferencias(user, lista));
            respuesta.put("tema", servicioUsuariosPreferencias.listarTema(temaPreferencia));

            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se ha obtenido las preferencias exitosamente!");
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

}
