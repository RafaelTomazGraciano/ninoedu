package com.uenp.ninoedu.model.enums;

import lombok.Getter;

@Getter
public enum FormatoImagem {
    FOTO(1),
    DESENHO(2);

    private final int valor;

    FormatoImagem(int valor) {
        this.valor = valor;
    }

    public static FormatoImagem fromValue(Integer valor) {
        if (valor == null) return null;
        for (FormatoImagem formato : FormatoImagem.values()) {
            if (formato.valor == valor) {
                return formato;
            }
        }
        throw new IllegalArgumentException("Valor de FormatoImagem inválido: " + valor);
    }
}
