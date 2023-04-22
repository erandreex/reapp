package com.reapp.reapp.Modelos;

public class ModeloPermisoRolRuta {

    private String id;
    private String rol_id;
    private String ruta_id;
    private String estado;
    private String titulo_ruta;
    private String titulo_categoria;
    private String rol_nombre;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRol_id() {
        return rol_id;
    }

    public void setRol_id(String rol_id) {
        this.rol_id = rol_id;
    }

    public String getRuta_id() {
        return ruta_id;
    }

    public void setRuta_id(String ruta_id) {
        this.ruta_id = ruta_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTitulo_ruta() {
        return titulo_ruta;
    }

    public void setTitulo_ruta(String titulo_ruta) {
        this.titulo_ruta = titulo_ruta;
    }

    public String getTitulo_categoria() {
        return titulo_categoria;
    }

    public void setTitulo_categoria(String titulo_categoria) {
        this.titulo_categoria = titulo_categoria;
    }

    public String getRol_nombre() {
        return rol_nombre;
    }

    public void setRol_nombre(String rol_nombre) {
        this.rol_nombre = rol_nombre;
    }

}
