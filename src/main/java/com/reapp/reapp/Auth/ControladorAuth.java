package com.reapp.reapp.Auth;

import lombok.RequiredArgsConstructor;

import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Enum.EnumParametros;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioParametros;
import com.reapp.reapp.Servicios.ServicioUsuarios;

@RestController
@RequestMapping("/api/v1/auth/")
@RequiredArgsConstructor
public class ControladorAuth {

    private final ServicioUsuarios servicioUsuarios;
    private final ServicioUsuariosAuth servicioUsuariosAuth;
    private final ServicioToken tokenService;
    private final ServicioJwt jwtService;
    private final ServicioValidacionesAuth servicioValidacionesAuth;
    private final ServicioParametros servicioParametros;

    private static final String clase = "ControladorAuth";
    private static final String tipo = "Controlador";
    private static final String login = "login";

    @PostMapping(login)
    public ResponseEntity<ModeloRespuestaGeneral> login(
            @RequestBody ModeloAuthLogin request) {

        ModeloUsuario userDB = new ModeloUsuario();
        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        String token_id = UUID.randomUUID().toString();
        String pass_key = UUID.randomUUID().toString();
        String token_intervalo = "";
        String token_valor = "";

        try {

            userDB = servicioUsuariosAuth.obtenerPorUsernameOCorreo(request.getCredencial());
            servicioValidacionesAuth.validarPassword(request.getPassword(), userDB.getPassword());
            servicioValidacionesAuth.validarUsuarioEstado(userDB.getEstado());
            token_intervalo = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_INTERVALO);
            token_valor = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_VALOR);

            String jwtToken = jwtService.generateToken(userDB.getId(), token_id, pass_key, token_intervalo,
                    token_valor);

            servicioUsuarios.ingreso(userDB, pass_key);
            tokenService.crear(userDB.getId(), jwtToken, token_id);
            resp.setToken(jwtToken);

            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Inicio de sesion satisfactorio");
            resp.setToken(jwtToken);

        } catch (CustomException e) {

            System.out.println(e.getMessage());

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();
            errorControlador.setTipo(tipo);
            errorControlador.setClase(clase);
            errorControlador.setMetodo(login);
            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
