package com.reapp.reapp.Auth;

import io.jsonwebtoken.Claims;

public class ModeloClaims {

    private String id;
    private String pass_key;

    public ModeloClaims(Claims claims) {
        this.id = (String) claims.get("id");
        this.pass_key = (String) claims.get("pass_key");
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

}
