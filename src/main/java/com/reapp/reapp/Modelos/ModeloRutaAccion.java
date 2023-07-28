package com.reapp.reapp.Modelos;

public class ModeloRutaAccion {

    private String id;
    private String controlador;
    private String endpoint;
    private String metodo;
    private String estado;
    private String descripcion;
    private String ruta_id;
    private String ruta_titulo;
    private String categoria_titulo;
    private String categoria_id;

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

    public String getRuta_id() {
        return ruta_id;
    }

    public void setRuta_id(String ruta_id) {
        this.ruta_id = ruta_id;
    }

    public String getRuta_titulo() {
        return ruta_titulo;
    }

    public void setRuta_titulo(String ruta_titulo) {
        this.ruta_titulo = ruta_titulo;
    }

    public String getCategoria_titulo() {
        return categoria_titulo;
    }

    public void setCategoria_titulo(String categoria_titulo) {
        this.categoria_titulo = categoria_titulo;
    }

    public String getCategoria_id() {
        return categoria_id;
    }

    public void setCategoria_id(String categoria_id) {
        this.categoria_id = categoria_id;
    }

}
