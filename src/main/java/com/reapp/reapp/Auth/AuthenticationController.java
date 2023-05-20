package com.reapp.reapp.Auth;

import lombok.RequiredArgsConstructor;

import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Respuestas.RespuestaGeneral;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {

    private final ServiceUser userService;
    private final ServiceToken tokenService;
    private final PasswordEncoder passwordEncoder;
    private final ServiceJwt jwtService;

    @PostMapping("/registro")
    public ResponseEntity<RespuestaGeneral> registro(
            @RequestBody ModeloAuthRegisterUser request, HttpServletRequest request4) {

        ModeloUser user = new ModeloUser();
        ModeloUser userDB = new ModeloUser();
        RespuestaGeneral resp = new RespuestaGeneral();

        String user_id = UUID.randomUUID().toString();
        String pass_key = UUID.randomUUID().toString();
        String token_id = UUID.randomUUID().toString();

        user.setId(user_id);
        user.setUsername(request.getEmail());
        user.setCorreo_lower(request.getEmail().toLowerCase());
        user.setEstado("V");
        user.setNombre(request.getFirstname());
        user.setPass_key(pass_key);
        user.setPassword(passwordEncoder.encode(request.getPassword()));
        user.setRol_id(request.getId_rol());

        try {

            userService.registro(user);
            userDB = userService.obtenerPorId(user_id);
            var jwtToken = jwtService.generateToken(userDB.getId(), token_id, pass_key);
            resp.setToken(jwtToken);
            tokenService.crearActualizarToken(userDB.getId(), jwtToken, token_id);

            resp.setOk(true);
            resp.setCode(HttpStatus.CREATED.value());
            resp.setStatus(HttpStatus.CREATED);
            resp.setMensaje("Se ha creado el usuario exitosamente!");
            resp.setToken(jwtToken);

        } catch (CustomException e) {
            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/registro");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

    @PostMapping("/login")
    public ResponseEntity<RespuestaGeneral> login(
            @RequestBody ModeloAuthLogin request) {

        ModeloUser userDB = new ModeloUser();
        RespuestaGeneral resp = new RespuestaGeneral();
        String token_id = UUID.randomUUID().toString();
        String pass_key = UUID.randomUUID().toString();

        try {

            userDB = userService.obtenerPorEmail(request.getEmail().toLowerCase());
            userService.compararContrasena(request.getPassword(), userDB.getPassword());
            userService.ingreso(userDB, pass_key);
            String jwtToken = jwtService.generateToken(userDB.getId(), token_id, pass_key);
            tokenService.crearActualizarToken(userDB.getId(), jwtToken, token_id);
            resp.setToken(jwtToken);

            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Credenciales correctas");
            resp.setToken(jwtToken);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("AuthenticationController");
            errorControlador.setEndpoint("/api/v1/auth/login");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
