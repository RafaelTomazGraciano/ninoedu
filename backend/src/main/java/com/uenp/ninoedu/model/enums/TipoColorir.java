package com.uenp.ninoedu.model.enums;

import lombok.Getter;

@Getter
public enum TipoColorir {
    NAO_COLORIR(1),
    JOGO_COLORIR(2),
    CLIQUE_COLORIR(3);

    private final int valor;

    TipoColorir(int valor) {
        this.valor = valor;
    }

    public static TipoColorir fromValue(Integer valor) {
        if (valor == null) return null;
        for (TipoColorir tipo : TipoColorir.values()) {
            if (tipo.valor == valor) {
                return tipo;
            }
        }
        throw new IllegalArgumentException("Valor de TipoColorir inválido: " + valor);
    }
}
