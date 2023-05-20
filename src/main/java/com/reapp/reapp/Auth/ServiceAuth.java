package com.reapp.reapp.Auth;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServiceAuth {

    @Value("${JWT.config.interval}")
    private String intervalConfig;

    @Value("${JWT.config.number}")
    private int numberConfig;

    public ModeloUser usuarioRequest() throws CustomException {

        ModeloUser user = new ModeloUser();

        try {

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            user = (ModeloUser) authentication.getPrincipal();

        } catch (Exception e) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("No se ha ingresado el token.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarRequest");

            throw new CustomException("", errorGeneral, null);
        }

        return user;
    }

    public void validarRequest(String request) throws CustomException {

        if (request == null || !request.startsWith("Bearer ")) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("No se ha ingresado el token.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarRequest");

            throw new CustomException("", errorGeneral, null);

        }
    }

    public void validarClaims(ModeloClaims claims) throws CustomException {

        if (claims.getId() == null) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("validarClaims.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarClaims");

            throw new CustomException("", errorGeneral, null);

        }
    }

    public void validarSecurityContextHolder() throws CustomException {

        if (SecurityContextHolder.getContext().getAuthentication() != null) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("validarSecurityContextHolder.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarClaims");

            throw new CustomException("", errorGeneral, null);

        }
    }

    public void validarUserClaims(ModeloUser user, ModeloClaims claims) throws CustomException {

        Long dateIat = claims.getIat();
        Long dateExp = claims.getExp();
        Long difference = dateExp - dateIat;
        int limit = calcularExpiration();

        if (difference != limit) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Se realizaron cambios en el Backend, favor iniciar sesion de nuevo!");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarTokenUser");

            throw new CustomException("", errorGeneral, null);
        }

        if (!claims.getPass_key().equals(user.getPass_key())) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Se ha iniciado sesion en otro dispositivo.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarTokenUser");

            throw new CustomException("", errorGeneral, null);

        }

    }

    private int calcularExpiration() {
        int resp = 0;
        switch (intervalConfig) {
            case "segundos":
                resp = 1000 * numberConfig;
                break;
            case "minutos":
                resp = 1000 * 60 * numberConfig;
                break;
            case "horas":
                resp = 1000 * 60 * 60 * numberConfig;
                break;
            case "dias":
                resp = 1000 * 60 * 60 * 24 * numberConfig;
                break;
            default:
                resp = 1000 * numberConfig;
                break;
        }
        return resp;
    }

}
