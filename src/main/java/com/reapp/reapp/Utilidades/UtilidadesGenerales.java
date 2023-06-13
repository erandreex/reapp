package com.reapp.reapp.Utilidades;

public class UtilidadesGenerales {

    public static int calcularExpiracionToken(String intervalo, int valor) {
        int resp = 0;

        switch (intervalo) {
            case "segundos":
                resp = 1000 * valor;
                break;
            case "minutos":
                resp = 1000 * 60 * valor;
                break;
            case "horas":
                resp = 1000 * 60 * 60 * valor;
                break;
            case "dias":
                resp = 1000 * 60 * 60 * 24 * valor;
                break;
            default:
                resp = 1000 * valor;
                break;
        }
        return resp;
    }

}
