package com.reapp.reapp.Modelos;

public class ModeloRutaGeneral {

    private String id;
    private String fk_categoria;
    private String titulo;
    private String ruta;
    private String icon;
    private String color_1;
    private String color_2;
    private String componente;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getColor_1() {
        return color_1;
    }

    public void setColor_1(String color_1) {
        this.color_1 = color_1;
    }

    public String getColor_2() {
        return color_2;
    }

    public void setColor_2(String color_2) {
        this.color_2 = color_2;
    }

    public String getFk_categoria() {
        return fk_categoria;
    }

    public void setFk_categoria(String fk_categoria) {
        this.fk_categoria = fk_categoria;
    }

    public String getComponente() {
        return componente;
    }

    public void setComponente(String componente) {
        this.componente = componente;
    }

}
