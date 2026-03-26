package com.uenp.ninoedu.model.enums;

public enum TipoUsuario {
    ADMIN("ROLE_ADMIN"),
    COMUM("ROLE_COMUM");

    private final String role;

    TipoUsuario(String role) {
        this.role = role;
    }

    public String getRole() {
        return role;
    }

    public String getTipo() {
        return this.name(); // Retorna "ADMIN" ou "COMUM"
    }
}