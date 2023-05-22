package com.reapp.reapp.Excepciones;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(HandlerAllException.class)
    public ResponseEntity<ModeloRespuestaGeneral> handleException(CustomException ex) {

        ModeloRespuestaGeneral respuesta = new ModeloRespuestaGeneral();
        ModeloErrorCliente error = new ModeloErrorCliente();

        error.setId(ex.getErrorGeneral().getId());
        error.setFecha(ex.getErrorGeneral().getDate());
        error.setMensaje(ex.getErrorGeneral().getMessageExt());

        respuesta.setOk(false);
        respuesta.setCode(ex.getErrorGeneral().getCode());
        respuesta.setStatus(ex.getErrorGeneral().getStatus());
        respuesta.setMensaje(ex.getErrorGeneral().getMessageExt());
        respuesta.setToken("TOKEN");
        respuesta.setError(error);

        return ResponseEntity.status(ex.getErrorGeneral().getCode()).body(respuesta);
    }

}
