package com.reapp.reapp.Auth;

import java.util.Date;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.security.core.context.SecurityContextHolder;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Utilidades.UtilidadesGenerales;

@Service
public class ServicioValidacionesAuth {

    // Metodo que calcula si el token, debe renovarse!
    public Boolean consultaRenovacionToken(ModeloClaims claims) throws CustomException {
        Boolean respuesta = false;
        try {
            Long dateNow = System.currentTimeMillis();
            Long dateIat = claims.getIat();
            Long dateExp = claims.getExp();
            Long difference = dateExp - dateIat;
            Long limit = (difference * 3) / 4;
            if (dateNow >= limit) {
                respuesta = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return respuesta;
    }

    public boolean validarPassword(String password, String passwordEncrypt) throws CustomException {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        boolean result = false;
        try {
            result = encoder.matches(password, passwordEncrypt);
            if (!result) {
                throw new Exception("Credenciales invalidas!");
            }
        } catch (Exception e) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral.setMessageExt("Credenciales invalidas!");
            errorGeneral.setStatus(HttpStatus.BAD_REQUEST);
            errorGeneral.setCode(HttpStatus.BAD_REQUEST.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("UserService");
            errorGeneral.setMetodo("comparePassword");
            throw new CustomException("", errorGeneral, e);
        }
        return result;
    }

    public void validarClaims(ModeloClaims claims) throws CustomException {

        if (claims.getUsuario_id() == null || claims.getToken_id() == null || claims.getPass_key() == null) {
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

    public void validarExpiracionActual(ModeloClaims claims, String intervalo, int valor) throws CustomException {

        Long dateIat = claims.getIat();
        Long dateExp = claims.getExp();
        Long difference = dateExp - dateIat;
        int limit = UtilidadesGenerales.calcularExpiracionToken(intervalo, valor);

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
    }

    public void validarUsuariorClaims(ModeloUsuario user, ModeloClaims claims) throws CustomException {

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

    public void validarUsuarioEstado(String estado) throws CustomException {

        if (!estado.equals("A")) {
            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();
            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt("Error Mensaje interno");
            errorGeneral
                    .setMessageExt(
                            "El usuario no se encuentra activo (A), favor ponerse en contacto con un administrador");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("ServicioValidacionesAuth");
            errorGeneral.setMetodo("validarUsuarioEstado");

            throw new CustomException("", errorGeneral, null);
        }
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

}
