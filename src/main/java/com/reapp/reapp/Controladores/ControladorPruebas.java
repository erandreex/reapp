package com.reapp.reapp.Controladores;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Conexiones.ConexionMariaDB;

@RestController
@RequestMapping("api/v1/pruebas")
public class ControladorPruebas {

    @GetMapping("/respuesta")
    public boolean getTest1() {
        System.out.println("Controlador Pruebas - Respuesta");
        return true;
    }

    @GetMapping("/database")
    public boolean getTest2() {

        String query = "{CALL pruebas.sp_pruebas(?,?)}";
        Boolean respuesta = false;
        System.out.println("Controlador Pruebas - Database");
        try (Connection mariaDB = ConexionMariaDB.getConexion();
                CallableStatement cst = mariaDB.prepareCall(query);) {

            cst.setString(1, "Q");
            cst.setString(2, "QT");

            try (ResultSet rs = cst.executeQuery();) {
                while (rs.next()) {
                    if (rs.getString(1).equals("1")) {
                        respuesta = true;
                    }
                }
            } catch (Exception e) {
                System.out.println("Error 1: " + e.getMessage());

            }

        } catch (Exception e) {
            System.out.println("Error 2: " + e.getMessage());
        }

        return respuesta;
    }

}
