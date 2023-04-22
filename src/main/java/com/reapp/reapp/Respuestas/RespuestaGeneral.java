package com.reapp.reapp.Respuestas;

import java.util.Map;

import org.springframework.http.HttpStatus;

import com.reapp.reapp.Excepciones.ModeloErrorCliente;

public class RespuestaGeneral {

    private boolean ok;
    private int code;
    private HttpStatus status;
    private String mensaje;
    private String token;
    private Map<String, Object> respuesta;
    private ModeloErrorCliente error;

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean ok) {
        this.ok = ok;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public HttpStatus getStatus() {
        return status;
    }

    public void setStatus(HttpStatus status) {
        this.status = status;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Map<String, Object> getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(Map<String, Object> respuesta) {
        this.respuesta = respuesta;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public ModeloErrorCliente getError() {
        return error;
    }

    public void setError(ModeloErrorCliente error) {
        this.error = error;
    }

}
