package com.reapp.reapp.Auth;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Header;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.reapp.reapp.Excepciones.CustomException;
import com.reapp.reapp.Excepciones.ModeloErrorGeneral;

@Service
public class ServiceJwt {

    private static final String SECRET_KEY = "404E635266556A586E3272357538782F413F4428472B4B6250645367566B5970";

    @Value("${JWT.config.interval}")
    private String intervalConfig;

    @Value("${JWT.config.number}")
    private int numberConfig;

    public ModeloClaims extractAll(String token) {
        final Claims claims = Jwts
                .parserBuilder()
                .setSigningKey(getSignInKey())
                .build()
                .parseClaimsJws(token)
                .getBody();
        ModeloClaims modeloClaims = new ModeloClaims(claims);
        return modeloClaims;
    }

    public String generateToken(ModeloUser userModel, String token_id, String pass_key) {
        return generateToken(new HashMap<>(), userModel, token_id, pass_key);
    }

    public String generateToken(
            Map<String, Object> extraClaims,
            ModeloUser userModel,
            String token_id,
            String pass_key) {

        extraClaims.put("id", userModel.getId());
        extraClaims.put("pass_key", pass_key);
        extraClaims.put("token_id", token_id);

        return Jwts
                .builder()
                .setHeaderParam("typ", Header.JWT_TYPE)
                .setClaims(extraClaims)
                .setSubject(userModel.getCorreo_lower())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + calcularExpiration()))
                .signWith(getSignInKey(), SignatureAlgorithm.HS256)
                .compact();
    }

    private Key getSignInKey() {
        byte[] keyBytes = Decoders.BASE64.decode(SECRET_KEY);
        return Keys.hmacShaKeyFor(keyBytes);
    }

    public Boolean valiteToken(String token) throws CustomException {
        Boolean resp = false;
        try {
            Jwts.parserBuilder().setSigningKey(getSignInKey()).build().parseClaimsJws(token).getBody();
            // ExpiredJwtException
            // UnsupportedJwtException
            // MalformedJwtException
            // SignatureException
            // JwtException
        } catch (ExpiredJwtException ex) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getMessage());
            errorGeneral.setMessageExt("Ha expirado su sesión, favor ingresar nuevamente!");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("JwtService");
            errorGeneral.setMetodo("valiteToken");
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);
        }

        catch (Exception ex) {

            ModeloErrorGeneral errorGeneral = new ModeloErrorGeneral();

            errorGeneral.setId(UUID.randomUUID().toString());
            errorGeneral.setDate(new Date());
            errorGeneral.setMessageInt(ex.getMessage());
            errorGeneral.setMessageExt("Token no valido. Favor ingresar nuevamente!");
            errorGeneral.setStatus(HttpStatus.UNAUTHORIZED);
            errorGeneral.setCode(HttpStatus.UNAUTHORIZED.value());
            errorGeneral.setTipo("Servicio");
            errorGeneral.setClase("JwtService");
            errorGeneral.setMetodo("valiteToken");
            errorGeneral.setError(ex);

            throw new CustomException("", errorGeneral, ex);
        }
        return resp;
    }

    private int calcularExpiration() {

        int resp = 0;

        switch (intervalConfig) {
            case "segundos":
                resp = 1000 * numberConfig;
                break;

            case "minutos":
                resp = 1000 * 60 * numberConfig;
                break;
            case "horas":
                resp = 1000 * 60 * 60 * numberConfig;
                break;

            case "dias":
                resp = 1000 * 60 * 60 * 24 * numberConfig;
                break;

            default:
                resp = 1000 * numberConfig;
                break;
        }

        return resp;
    }

}
