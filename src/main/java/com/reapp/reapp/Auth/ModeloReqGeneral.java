package com.reapp.reapp.Auth;

import com.reapp.reapp.Modelos.ModeloUsuario;

public class ModeloReqGeneral {

    private ModeloUsuario usuario;
    private ModeloClaims claims;
    private ModeloReqInfo request;

    public ModeloReqGeneral(ModeloUsuario usuario, ModeloClaims claims, ModeloReqInfo request) {
        this.usuario = usuario;
        this.claims = claims;
        this.request = request;

    }

    public ModeloUsuario getUsuario() {
        return usuario;
    }

    public void setUsuario(ModeloUsuario usuario) {
        this.usuario = usuario;
    }

    public ModeloClaims getClaims() {
        return claims;
    }

    public void setClaims(ModeloClaims claims) {
        this.claims = claims;
    }

    public ModeloReqInfo getRequest() {
        return request;
    }

    public void setRequest(ModeloReqInfo request) {
        this.request = request;
    }

}
