package com.reapp.reapp.Auth;

import io.jsonwebtoken.Claims;

public class ModeloClaims {

    private String usuario_id;
    private String token_id;
    private String pass_key;
    private String token;
    private Long iat;
    private Long exp;

    public ModeloClaims(Claims claims, String token) {
        this.usuario_id = (String) claims.get("usuario_id");
        this.token_id = (String) claims.get("token_id");
        this.pass_key = (String) claims.get("pass_key");
        this.iat = (Long) claims.getIssuedAt().getTime();
        this.exp = (Long) claims.getExpiration().getTime();
        this.token = token;

    }

    public String getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(String usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getToken_id() {
        return token_id;
    }

    public void setToken_id(String token_id) {
        this.token_id = token_id;
    }

    public String getPass_key() {
        return pass_key;
    }

    public void setPass_key(String pass_key) {
        this.pass_key = pass_key;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Long getIat() {
        return iat;
    }

    public void setIat(Long iat) {
        this.iat = iat;
    }

    public Long getExp() {
        return exp;
    }

    public void setExp(Long exp) {
        this.exp = exp;
    }

}
