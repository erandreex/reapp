package com.reapp.reapp.Auth;

import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServiceAuth {

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

    public void validarTokenUserClaims(ModeloUser user, ModeloToken token, ModeloClaims claims) throws CustomException {

        if (!claims.getId().equals(user.getId())) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("validarTokenUserClaims.");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("AuthService");
            errorGeneral.setMetodo("validarClaims");

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

}
