package com.reapp.reapp.Modelos;

public class ModeloGraficaConfig {

    private String id;
    private String nombre;
    private String titulo;
    private int cant_registros;
    private String tipo_registros;
    private String label_y;
    private String stacked;
    private String background;
    private int max_tick_limit;
    private int max_suggested;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getCant_registros() {
        return cant_registros;
    }

    public void setCant_registros(int cant_registros) {
        this.cant_registros = cant_registros;
    }

    public String getTipo_registros() {
        return tipo_registros;
    }

    public void setTipo_registros(String tipo_registros) {
        this.tipo_registros = tipo_registros;
    }

    public String getLabel_y() {
        return label_y;
    }

    public void setLabel_y(String label_y) {
        this.label_y = label_y;
    }

    public String getStacked() {
        return stacked;
    }

    public void setStacked(String stacked) {
        this.stacked = stacked;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public int getMax_tick_limit() {
        return max_tick_limit;
    }

    public void setMax_tick_limit(int max_tick_limit) {
        this.max_tick_limit = max_tick_limit;
    }

    public int getMax_suggested() {
        return max_suggested;
    }

    public void setMax_suggested(int max_suggested) {
        this.max_suggested = max_suggested;
    }

}
