package com.reapp.reapp.Auth;

import io.jsonwebtoken.Claims;

public class ModeloClaims {

    private String id;
    private String pass_key;
    private String token_id;
    private String token;
    private Long iat;
    private Long exp;

    public ModeloClaims(Claims claims, String token) {
        this.id = (String) claims.get("id");
        this.pass_key = (String) claims.get("pass_key");
        this.token_id = (String) claims.get("token_id");
        this.iat = (Long) claims.getIssuedAt().getTime();
        this.exp = (Long) claims.getExpiration().getTime();
        this.token = token;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass_key() {
        return pass_key;
    }

    public void setPass_key(String pass_key) {
        this.pass_key = pass_key;
    }

    public String getToken_id() {
        return token_id;
    }

    public void setToken_id(String token_id) {
        this.token_id = token_id;
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

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

}
