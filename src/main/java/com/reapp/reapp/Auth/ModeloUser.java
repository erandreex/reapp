package com.reapp.reapp.Auth;

public class ModeloUser {

    private String id;
    private String correo;
    private String nombre;
    private String password;
    private String correo_lower;
    private String pass_key;
    private String estado;
    private String id_rol;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return correo;
    }

    public void setUsername(String correo) {
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCorreo_lower() {
        return correo_lower;
    }

    public void setCorreo_lower(String correo_lower) {
        this.correo_lower = correo_lower;
    }

    public String getPass_key() {
        return pass_key;
    }

    public void setPass_key(String pass_key) {
        this.pass_key = pass_key;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getId_rol() {
        return id_rol;
    }

    public void setId_rol(String id_rol) {
        this.id_rol = id_rol;
    }

}
