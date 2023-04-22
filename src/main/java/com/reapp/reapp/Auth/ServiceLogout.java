package com.reapp.reapp.Auth;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;

import java.sql.Connection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Conexiones.ConexionMariaDB;

@Service
@RequiredArgsConstructor
public class ServiceLogout implements LogoutHandler {

    private final ServiceToken tokenService;

    @Override
    public void logout(
            HttpServletRequest request,
            HttpServletResponse response,
            Authentication authentication) {
        final String authHeader = request.getHeader("Authorization");
        final String jwt;
        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            return;
        }
        jwt = authHeader.substring(7);

        boolean storedToken = false;

        try (Connection mariaDB = ConexionMariaDB.getConexion()) {
            // storedToken = tokenService.findByToken(mariaDB, jwt, "1");
        } catch (Exception e) {
            System.out.println("Punto y coma");
        }

        if (!storedToken) {
            SecurityContextHolder.clearContext();
        }
    }
}
