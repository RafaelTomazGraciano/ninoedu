package com.uenp.ninoedu.model.enums;

import lombok.Getter;

@Getter
public enum Estagio {
    SILABA(1),
    PALAVRA(2),
    FRASE(3),
    TEXTO(4);

    private final int valor;

    Estagio(int valor) {
        this.valor = valor;
    }

    public static Estagio valueOf(Integer valor) {
        if (valor == null) {
            return null;
        }
        for (Estagio estagio : Estagio.values()) {
            if (estagio.valor == valor) {
                return estagio;
            }
        }
        throw new IllegalArgumentException("Valor de estágio inválido: " + valor);
    }
}