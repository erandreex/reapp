package com.reapp.reapp.Config;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class NotFound implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException authException) throws IOException {
        // Aquí puedes personalizar la respuesta según tus necesidades
        ObjectNode responseBody = JsonNodeFactory.instance.objectNode();
        responseBody.put("ok", false);
        responseBody.put("code", 404);
        responseBody.put("status", HttpStatus.NOT_FOUND.toString());
        responseBody.put("mensaje", "Endpoint no encontrado!");
        responseBody.put("token", "");
        responseBody.put("respuesta", "");
        responseBody.put("error", "");
        response.setStatus(HttpStatus.NOT_FOUND.value());
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.getWriter().write(responseBody.toString());
        response.flushBuffer();
    }

}
