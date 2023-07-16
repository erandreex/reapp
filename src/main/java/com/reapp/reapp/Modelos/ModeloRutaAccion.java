package com.reapp.reapp.Modelos;

public class ModeloRutaAccion {

    private String id;
    private String controlador;
    private String endpoint;
    private String metodo;
    private String estado;
    private String descripcion;
    private String fk_ruta;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getControlador() {
        return controlador;
    }

    public void setControlador(String controlador) {
        this.controlador = controlador;
    }

    public String getEndpoint() {
        return endpoint;
    }

    public void setEndpoint(String endpoint) {
        this.endpoint = endpoint;
    }

    public String getMetodo() {
        return metodo;
    }

    public void setMetodo(String metodo) {
        this.metodo = metodo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFk_ruta() {
        return fk_ruta;
    }

    public void setFk_ruta(String fk_ruta) {
        this.fk_ruta = fk_ruta;
    }

}
