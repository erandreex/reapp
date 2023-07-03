package com.reapp.reapp.Controladores;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Auth.ModeloClaims;
import com.reapp.reapp.Auth.ServicioAuth;
import com.reapp.reapp.Auth.ServicioJwt;
import com.reapp.reapp.Auth.ServicioToken;
import com.reapp.reapp.Auth.ServicioValidacionesAuth;
import com.reapp.reapp.Enum.EnumParametros;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Servicios.ServicioAccesos;
import com.reapp.reapp.Servicios.ServicioParametros;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/acceso/")
@RequiredArgsConstructor
public class ControladorAcesso {

    private final ServicioAuth servicioAuth;
    private final ServicioValidacionesAuth servicioValidacionesAuth;
    private final ServicioJwt servicioJwt;
    private final ServicioToken servicioToken;
    private final ServicioAccesos servicioAccesos;
    private final ServicioParametros servicioParametros;

    private static final String clase = "ControladorAcesso";

    private static final String ruta = "ruta";
    private static final String tipo = "Controlador";

    @GetMapping("ruta/{componente}")
    public ResponseEntity<ModeloRespuestaGeneral> ruta(@PathVariable("componente") String componente) {
        ModeloRespuestaGeneral resp = new ModeloRespuestaGeneral();
        Boolean control = false;
        Boolean control2 = false;

        String jwt = "";
        String token_intervalo = "";
        String token_valor = "";

        try {

            ModeloUsuario usuario = servicioAuth.usuarioRequest();
            ModeloClaims claims = servicioAuth.claimsRequest();
            jwt = claims.getToken();
            control = servicioValidacionesAuth.consultaRenovacionToken(claims);

            if (control) {
                token_intervalo = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_INTERVALO);
                token_valor = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_VALOR);
                jwt = servicioJwt.renovarToken(claims, token_intervalo, token_valor);
                servicioToken.actualizar(claims, jwt);
            }

            control2 = servicioAccesos.ruta(componente, usuario.getRol_id());

            if (control2) {
                resp.setOk(true);
                resp.setCode(HttpStatus.OK.value());
                resp.setStatus(HttpStatus.OK);
                resp.setMensaje("Acceso permitido!");
                resp.setToken(jwt);
            } else {
                resp.setOk(false);
                resp.setCode(HttpStatus.OK.value());
                resp.setStatus(HttpStatus.OK);
                resp.setMensaje("Acceso no valido!");
                resp.setToken("");
            }

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase(clase);
            errorControlador.setMetodo(ruta);
            errorControlador.setTipo(tipo);

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.OK).body(resp);

    }

}
