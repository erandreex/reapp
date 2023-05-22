package com.reapp.reapp.Auth;

import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;

@Service
public class ServicioAuth {

    public ModeloUsuario usuarioRequest() throws CustomException {
        ModeloUsuario user = new ModeloUsuario();
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            user = (ModeloUsuario) authentication.getPrincipal();
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

    public ModeloClaims claimsRequest() throws CustomException {
        ModeloClaims claims;
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            claims = (ModeloClaims) authentication.getCredentials();
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
        return claims;
    }

}
