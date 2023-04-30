package com.reapp.reapp.Permisos;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reapp.reapp.Auth.ModeloClaims;
import com.reapp.reapp.Auth.ModeloUser;
import com.reapp.reapp.Auth.ServiceJwt;
import com.reapp.reapp.Auth.ServiceToken;
import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.HandlerAllException;
import com.reapp.reapp.Excepciones.ModeloErrorControlador;
import com.reapp.reapp.Respuestas.RespuestaGeneral;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("api/v1/permisos")
@RequiredArgsConstructor
public class ControladorPermisos {

    private final ServicioPermiso servicioPermiso;
    private final ServiceJwt jwtService;
    private final ServiceToken serviceToken;

    @PostMapping("/ruta/{componente}")
    public ResponseEntity<RespuestaGeneral> crear(@PathVariable("componente") String componente) {

        RespuestaGeneral resp = new RespuestaGeneral();
        Boolean control = false;
        String jwt = "";

        try {

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            ModeloUser user = (ModeloUser) authentication.getPrincipal();
            ModeloClaims claims = (ModeloClaims) authentication.getCredentials();

            control = jwtService.validarTiempo(claims);
            jwt = jwtService.check(control, claims);
            serviceToken.actualizarToken(control, claims, jwt);

            servicioPermiso.validarRuta(componente, user.getRol_id());
            resp.setOk(true);
            resp.setCode(HttpStatus.OK.value());
            resp.setStatus(HttpStatus.OK);
            resp.setMensaje("Acceso permitido!");
            resp.setToken(jwt);

        } catch (CustomException e) {

            ModeloErrorControlador errorControlador = new ModeloErrorControlador();

            errorControlador.setClase("ControladorPermisoRolesRuta");
            errorControlador.setEndpoint("/api/v1/roles/crear");

            throw new HandlerAllException("error", e.getErrorGeneral(), errorControlador, e);
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(resp);

    }

}
