package com.reapp.reapp.config;

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
import com.reapp.reapp.Auth.ServiceJwt;
import com.reapp.reapp.Auth.ServiceToken;
import com.reapp.reapp.Auth.ServiceUser;
import com.reapp.reapp.Auth.ModeloClaims;
import com.reapp.reapp.Auth.ModeloToken;
import com.reapp.reapp.Auth.ModeloUser;
import com.reapp.reapp.Auth.ServiceAuth;
import com.reapp.reapp.Excepciones.CustomException;

@Component
@RequiredArgsConstructor
@Order(1)
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final ServiceJwt jwtService;
    private final ServiceToken tokenService;
    private final ServiceUser userService;
    private final ServiceAuth authService;

    @Override
    protected void doFilterInternal(
            @NonNull HttpServletRequest request,
            @NonNull HttpServletResponse response,
            @NonNull FilterChain filterChain) throws ServletException, IOException {

        final String authHeader = request.getHeader("Authorization");
        final ModeloClaims claims;
        final ModeloUser userDB;
        final ModeloToken tokenDB;
        final String jwt;

        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        try {

            jwt = authHeader.substring(7);
            jwtService.valiteToken(jwt);
            claims = jwtService.extractAll(jwt);
            authService.validarClaims(claims);
            authService.validarSecurityContextHolder();
            userDB = this.userService.obtenerPorId(claims.getId());
            authService.validarUserClaims(userDB, claims);
            tokenDB = tokenService.findByToken(userDB, claims.getToken_id());
            // TODO: Validaciones del tokenDB

            UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                    userDB,
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
