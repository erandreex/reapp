package com.reapp.reapp.Config;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
import com.reapp.reapp.Auth.ServicioUsuariosAuth;
import com.reapp.reapp.Auth.ServicioValidacionesAuth;
import com.reapp.reapp.Enum.EnumParametros;
import com.reapp.reapp.Auth.ModeloClaims;
import com.reapp.reapp.Auth.ModeloToken;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorCliente;
import com.reapp.reapp.Modelos.ModeloRespuestaGeneral;
import com.reapp.reapp.Modelos.ModeloUsuario;
import com.reapp.reapp.Servicios.ServicioParametros;
import com.reapp.reapp.Servicios.ServicioUsuarios;

import ch.qos.logback.core.pattern.parser.Parser;

@Component
@RequiredArgsConstructor
@Order(1)
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final ServicioJwt servicioJwt;
    private final ServicioToken tokenService;
    private final ServicioUsuariosAuth servicioUsuariosAuth;
    private final ServicioValidacionesAuth servicioValidacionesAuth;
    private final ServicioParametros servicioParametros;

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
        final String token_intervalo;
        final String token_valor;

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
            token_intervalo = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_INTERVALO);
            token_valor = servicioParametros.buscarParametro(EnumParametros.TOKEN_EXPIRACION_VALOR);
            servicioValidacionesAuth.validarExpiracionActual(claims, token_intervalo, Integer.parseInt(token_valor));
            usuarioDB = servicioUsuariosAuth.obtenerPorId(claims.getUsuario_id());
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
            responseBody.put("ok", false);
            responseBody.put("code", e.getErrorGeneral().getCode());
            responseBody.put("status", e.getErrorGeneral().getStatus().toString());
            responseBody.put("mensaje", e.getErrorGeneral().getMessageExt());
            responseBody.put("token", "");
            responseBody.put("respuesta", "");
            responseBody.put("error", "");
            response.setStatus(HttpStatus.UNAUTHORIZED.value());
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            response.getWriter().write(responseBody.toString());
            response.flushBuffer();
            return;
        }
        filterChain.doFilter(request, response);
    }

}
