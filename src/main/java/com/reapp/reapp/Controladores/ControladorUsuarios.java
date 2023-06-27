package com.reapp.reapp.Controladores;

import lombok.RequiredArgsConstructor;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Auth.ServicioUsuariosAuth;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioUsuarios;
import com.reapp.reapp.Servicios.ServicioUsuariosRoles;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/v1/usuarios/")
@RequiredArgsConstructor
public class ControladorUsuarios {

    private final PasswordEncoder passwordEncoder;
    private final ServicioUsuarios servicioUsuario;
    private final ServicioUsuariosAuth servicioUsuariosAuth;
    private final ServicioUsuariosRoles servicioUsuariosRoles;

    private final String registro = "registro";
    private final String listar = "listar";

    @PostMapping(registro)
    public ResponseEntity<ModeloRespuestaGeneral> registro(
            @RequestBody ModeloUsuario body, HttpServletRequest request) {

        ModeloUsuario usuario = new ModeloUsuario();
        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        String usuario_id = UUID.randomUUID().toString();
        String pass_key = UUID.randomUUID().toString();

        usuario.setId(usuario_id);
        usuario.setNombre(body.getNombre());
        usuario.setApellido(body.getApellido());
        usuario.setUsername(body.getUsername());
        usuario.setPassword(passwordEncoder.encode(body.getPassword()));
        usuario.setCorreo(body.getCorreo());
        usuario.setCorreo_lower(body.getCorreo().toLowerCase());
        usuario.setPass_key(pass_key);
        usuario.setEstado("V");
        usuario.setRol_id(body.getRol_id());

        try {

            servicioUsuario.registro(usuario);
            respuesta.put("usuario", servicioUsuariosAuth.obtenerPorId(usuario_id));
            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el usuario exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/registro");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @GetMapping(listar)
    public ResponseEntity<ModeloRespuestaGeneral> listar() {

        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Map<String, Object> respuesta = new HashMap<>();

        try {
            respuesta.put("usuarios", servicioUsuariosAuth.listar());
            respuesta.put("roles", servicioUsuariosRoles.listar());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Se han obtenido los usuarios exitosamente!");
            resp.setRespuesta(respuesta);

        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/registro");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }
}
