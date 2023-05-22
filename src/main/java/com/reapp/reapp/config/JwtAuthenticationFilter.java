package com.reapp.reapp.Config;

import java.io.IOException;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;

import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.lang.NonNull;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.reapp.reapp.Auth.ServicioJwt;
import com.reapp.reapp.Auth.ServicioToken;
import com.reapp.reapp.Auth.ServicioValidacionesAuth;
import com.reapp.reapp.Auth.ModeloClaims;
import com.reapp.reapp.Auth.ModeloToken;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Servicios.ServicioUsuarios;

@Component
@RequiredArgsConstructor
@Order(1)
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final ServicioJwt servicioJwt;
    private final ServicioToken tokenService;
    private final ServicioUsuarios servicioUsuario;
    private final ServicioValidacionesAuth servicioValidacionesAuth;

    @Override
    protected void doFilterInternal(
            @NonNull HttpServletRequest request,
            @NonNull HttpServletResponse response,
            @NonNull FilterChain filterChain) throws ServletException, IOException {

        final String authHeader = request.getHeader("Authorization");
        final ModeloClaims claims;
        final ModeloUsuario usuarioDB;
        final ModeloToken tokenDB;
        final String jwt;

        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        try {

            jwt = authHeader.substring(7);
            servicioJwt.validarToken(jwt);
            claims = servicioJwt.extractAll(jwt);
            servicioValidacionesAuth.validarClaims(claims);
            servicioValidacionesAuth.validarSecurityContextHolder();
            // TODO: Validar si el tiempo de expiracion concuerda con el de la DB
            usuarioDB = servicioUsuario.obtenerPorId(claims.getUsuario_id());
            servicioValidacionesAuth.validarUsuariorClaims(usuarioDB, claims);
            tokenDB = tokenService.obtenerPorId(usuarioDB, claims.getToken_id());
            // TODO: Validaciones del tokenDB

            UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                    usuarioDB,
                    claims,
                    null);

            authToken.setDetails(
                    new WebAuthenticationDetailsSource().buildDetails(request));
            SecurityContextHolder.getContext().setAuthentication(authToken);

        } catch (CustomException e) {

            ObjectNode responseBody = JsonNodeFactory.instance.objectNode();
            responseBody.put("id", e.getErrorGeneral().getId());
            responseBody.put("date", e.getErrorGeneral().getDate().toString());
            responseBody.put("messageExt", e.getErrorGeneral().getMessageExt());
            responseBody.put("code", e.getErrorGeneral().getCode());

            response.setStatus(HttpStatus.UNAUTHORIZED.value());
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            response.getWriter().write(responseBody.toString());
            response.flushBuffer();
            return;

        }

        filterChain.doFilter(request, response);
    }

}
